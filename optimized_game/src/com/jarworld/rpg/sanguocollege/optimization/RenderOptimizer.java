package com.jarworld.rpg.sanguocollege.optimization;

import javax.microedition.lcdui.*;
import java.util.*;

/**
 * 渲染优化系统 - 双缓冲、视锥剔除、LOD系统
 * Render Optimization System - Double buffering, view frustum culling, LOD system
 */
public class RenderOptimizer {
    
    private Graphics backBuffer;
    private Image backBufferImage;
    private int screenWidth;
    private int screenHeight;
    
    // 视锥剔除
    private Rectangle viewFrustum;
    private List<RenderableObject> visibleObjects;
    
    // LOD系统
    private Map<Integer, LODLevel> lodLevels;
    private int currentLODLevel;
    
    // 渲染统计
    private RenderStatistics statistics;
    
    public RenderOptimizer(int width, int height) {
        this.screenWidth = width;
        this.screenHeight = height;
        this.visibleObjects = new ArrayList<>();
        this.lodLevels = new HashMap<>();
        this.statistics = new RenderStatistics();
        
        initializeBackBuffer();
        initializeLODSystem();
        updateViewFrustum(0, 0, width, height);
    }
    
    /**
     * 初始化双缓冲
     * Initialize double buffering
     */
    private void initializeBackBuffer() {
        try {
            backBufferImage = Image.createImage(screenWidth, screenHeight);
            backBuffer = backBufferImage.getGraphics();
        } catch (Exception e) {
            System.err.println("Failed to create back buffer: " + e.getMessage());
        }
    }
    
    /**
     * 初始化LOD系统
     * Initialize LOD system
     */
    private void initializeLODSystem() {
        // 高细节级别
        lodLevels.put(0, new LODLevel(0, 1.0f, 100, "High"));
        // 中细节级别
        lodLevels.put(1, new LODLevel(1, 0.7f, 200, "Medium"));
        // 低细节级别
        lodLevels.put(2, new LODLevel(2, 0.4f, 300, "Low"));
        // 极低细节级别
        lodLevels.put(3, new LODLevel(3, 0.2f, 500, "Very Low"));
        
        currentLODLevel = 0;
    }
    
    /**
     * 更新视锥
     * Update view frustum
     */
    public void updateViewFrustum(int x, int y, int width, int height) {
        viewFrustum = new Rectangle(x, y, width, height);
        // 扩展视锥以包含一些边界对象
        viewFrustum.x -= 50;
        viewFrustum.y -= 50;
        viewFrustum.width += 100;
        viewFrustum.height += 100;
    }
    
    /**
     * 视锥剔除 - 只渲染可见对象
     * View frustum culling - only render visible objects
     */
    public List<RenderableObject> cullObjects(List<RenderableObject> allObjects) {
        visibleObjects.clear();
        
        for (RenderableObject obj : allObjects) {
            if (isObjectVisible(obj)) {
                visibleObjects.add(obj);
            }
        }
        
        statistics.visibleObjects = visibleObjects.size();
        statistics.totalObjects = allObjects.size();
        
        return visibleObjects;
    }
    
    /**
     * 检查对象是否在视锥内
     * Check if object is in view frustum
     */
    private boolean isObjectVisible(RenderableObject obj) {
        if (viewFrustum == null || obj == null) return false;
        
        Rectangle objBounds = obj.getBounds();
        return viewFrustum.intersects(objBounds);
    }
    
    /**
     * 根据距离调整LOD级别
     * Adjust LOD level based on distance
     */
    public void adjustLODLevel(int cameraX, int cameraY) {
        int maxDistance = 0;
        
        for (RenderableObject obj : visibleObjects) {
            int distance = calculateDistance(cameraX, cameraY, obj.getX(), obj.getY());
            maxDistance = Math.max(maxDistance, distance);
        }
        
        // 根据最大距离选择LOD级别
        if (maxDistance < 100) {
            currentLODLevel = 0; // 高细节
        } else if (maxDistance < 200) {
            currentLODLevel = 1; // 中细节
        } else if (maxDistance < 300) {
            currentLODLevel = 2; // 低细节
        } else {
            currentLODLevel = 3; // 极低细节
        }
        
        statistics.currentLODLevel = currentLODLevel;
    }
    
    /**
     * 计算距离
     * Calculate distance
     */
    private int calculateDistance(int x1, int y1, int x2, int y2) {
        int dx = x2 - x1;
        int dy = y2 - y1;
        return (int) Math.sqrt(dx * dx + dy * dy);
    }
    
    /**
     * 开始渲染帧
     * Start rendering frame
     */
    public Graphics beginFrame() {
        // 清空后缓冲
        backBuffer.setColor(0x000000);
        backBuffer.fillRect(0, 0, screenWidth, screenHeight);
        
        statistics.frameCount++;
        statistics.startTime = System.currentTimeMillis();
        
        return backBuffer;
    }
    
    /**
     * 结束渲染帧
     * End rendering frame
     */
    public void endFrame(Graphics g) {
        statistics.endTime = System.currentTimeMillis();
        statistics.frameTime = statistics.endTime - statistics.startTime;
        
        // 计算FPS
        if (statistics.frameTime > 0) {
            statistics.currentFPS = 1000 / statistics.frameTime;
        }
        
        // 更新平均FPS
        statistics.updateAverageFPS();
    }
    
    /**
     * 获取后缓冲图像
     * Get back buffer image
     */
    public Image getBackBufferImage() {
        return backBufferImage;
    }
    
    /**
     * 获取当前LOD级别
     * Get current LOD level
     */
    public LODLevel getCurrentLODLevel() {
        return lodLevels.get(currentLODLevel);
    }
    
    /**
     * 获取渲染统计
     * Get render statistics
     */
    public RenderStatistics getStatistics() {
        return statistics;
    }
    
    /**
     * 优化纹理内存
     * Optimize texture memory
     */
    public void optimizeTextureMemory() {
        // 实现纹理压缩和内存管理
        System.gc(); // 建议垃圾回收
    }
    
    /**
     * 可渲染对象接口
     * Renderable object interface
     */
    public interface RenderableObject {
        int getX();
        int getY();
        Rectangle getBounds();
        void render(Graphics g, LODLevel lodLevel);
    }
    
    /**
     * LOD级别
     * LOD level
     */
    public static class LODLevel {
        public final int level;
        public final float detailFactor;
        public final int distanceThreshold;
        public final String name;
        
        public LODLevel(int level, float detailFactor, int distanceThreshold, String name) {
            this.level = level;
            this.detailFactor = detailFactor;
            this.distanceThreshold = distanceThreshold;
            this.name = name;
        }
    }
    
    /**
     * 渲染统计
     * Render statistics
     */
    public static class RenderStatistics {
        public int frameCount;
        public int visibleObjects;
        public int totalObjects;
        public int currentLODLevel;
        public long startTime;
        public long endTime;
        public long frameTime;
        public int currentFPS;
        public int averageFPS;
        private List<Integer> fpsHistory;
        
        public RenderStatistics() {
            fpsHistory = new ArrayList<>();
        }
        
        public void updateAverageFPS() {
            if (currentFPS > 0) {
                fpsHistory.add(currentFPS);
                if (fpsHistory.size() > 60) { // 保持60帧的历史
                    fpsHistory.remove(0);
                }
                
                int sum = 0;
                for (int fps : fpsHistory) {
                    sum += fps;
                }
                averageFPS = sum / fpsHistory.size();
            }
        }
        
        @Override
        public String toString() {
            return String.format("FPS: %d (avg: %d), Objects: %d/%d, LOD: %d, Frame: %dms",
                currentFPS, averageFPS, visibleObjects, totalObjects, currentLODLevel, frameTime);
        }
    }
}