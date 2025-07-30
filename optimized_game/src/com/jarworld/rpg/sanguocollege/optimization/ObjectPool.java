package com.jarworld.rpg.sanguocollege.optimization;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 对象池系统 - 减少GC压力，提高性能
 * Object Pool System - Reduces GC pressure and improves performance
 */
public class ObjectPool {
    
    private static final Map<Class<?>, Queue<Object>> pools = new ConcurrentHashMap<>();
    private static final Map<Class<?>, Integer> maxPoolSizes = new ConcurrentHashMap<>();
    private static final Map<Class<?>, Integer> currentPoolSizes = new ConcurrentHashMap<>();
    
    // 默认池大小
    private static final int DEFAULT_POOL_SIZE = 100;
    
    /**
     * 获取对象池中的对象
     * Get object from pool
     */
    @SuppressWarnings("unchecked")
    public static <T> T getObject(Class<T> clazz) {
        Queue<Object> pool = pools.get(clazz);
        if (pool == null) {
            pool = new LinkedList<>();
            pools.put(clazz, pool);
            maxPoolSizes.put(clazz, DEFAULT_POOL_SIZE);
            currentPoolSizes.put(clazz, 0);
        }
        
        Object obj = pool.poll();
        if (obj == null) {
            try {
                obj = clazz.newInstance();
                Integer currentSize = currentPoolSizes.get(clazz);
                currentPoolSizes.put(clazz, currentSize + 1);
            } catch (Exception e) {
                throw new RuntimeException("Failed to create object of type: " + clazz.getName(), e);
            }
        }
        
        return (T) obj;
    }
    
    /**
     * 将对象返回到对象池
     * Return object to pool
     */
    public static <T> void returnObject(T obj) {
        if (obj == null) return;
        
        Class<?> clazz = obj.getClass();
        Queue<Object> pool = pools.get(clazz);
        
        if (pool == null) {
            pool = new LinkedList<>();
            pools.put(clazz, pool);
        }
        
        Integer maxSize = maxPoolSizes.get(clazz);
        if (maxSize == null) {
            maxSize = DEFAULT_POOL_SIZE;
            maxPoolSizes.put(clazz, maxSize);
        }
        
        if (pool.size() < maxSize) {
            // 重置对象状态
            resetObject(obj);
            pool.offer(obj);
        }
    }
    
    /**
     * 重置对象状态
     * Reset object state
     */
    private static void resetObject(Object obj) {
        if (obj instanceof Poolable) {
            ((Poolable) obj).reset();
        }
    }
    
    /**
     * 设置池大小
     * Set pool size
     */
    public static void setPoolSize(Class<?> clazz, int size) {
        maxPoolSizes.put(clazz, size);
    }
    
    /**
     * 清空对象池
     * Clear object pool
     */
    public static void clearPool(Class<?> clazz) {
        Queue<Object> pool = pools.get(clazz);
        if (pool != null) {
            pool.clear();
        }
    }
    
    /**
     * 清空所有对象池
     * Clear all object pools
     */
    public static void clearAllPools() {
        pools.clear();
        currentPoolSizes.clear();
    }
    
    /**
     * 获取池统计信息
     * Get pool statistics
     */
    public static PoolStatistics getStatistics(Class<?> clazz) {
        Queue<Object> pool = pools.get(clazz);
        Integer maxSize = maxPoolSizes.get(clazz);
        Integer currentSize = currentPoolSizes.get(clazz);
        
        return new PoolStatistics(
            clazz,
            pool != null ? pool.size() : 0,
            maxSize != null ? maxSize : 0,
            currentSize != null ? currentSize : 0
        );
    }
    
    /**
     * 池统计信息
     * Pool statistics
     */
    public static class PoolStatistics {
        public final Class<?> clazz;
        public final int availableObjects;
        public final int maxPoolSize;
        public final int totalCreated;
        
        public PoolStatistics(Class<?> clazz, int availableObjects, int maxPoolSize, int totalCreated) {
            this.clazz = clazz;
            this.availableObjects = availableObjects;
            this.maxPoolSize = maxPoolSize;
            this.totalCreated = totalCreated;
        }
        
        @Override
        public String toString() {
            return String.format("Pool[%s]: available=%d, max=%d, total=%d", 
                clazz.getSimpleName(), availableObjects, maxPoolSize, totalCreated);
        }
    }
    
    /**
     * 可池化对象接口
     * Poolable object interface
     */
    public interface Poolable {
        void reset();
    }
}