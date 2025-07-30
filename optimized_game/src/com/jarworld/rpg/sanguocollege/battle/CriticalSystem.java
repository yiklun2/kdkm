package com.jarworld.rpg.sanguocollege.battle;

import java.util.*;

/**
 * 暴击系统 - 随机暴击机制
 * Critical System - Random critical hit mechanism
 */
public class CriticalSystem {
    
    private Random random;
    private Map<BattleCharacter, CriticalData> criticalData;
    
    // 基础暴击率
    private static final float BASE_CRITICAL_RATE = 0.05f; // 5%
    private static final float CRITICAL_DAMAGE_MULTIPLIER = 1.5f; // 150%伤害
    
    public CriticalSystem() {
        this.random = new Random();
        this.criticalData = new HashMap<>();
    }
    
    /**
     * 检查是否暴击
     * Check if critical hit
     */
    public boolean checkCritical(BattleCharacter attacker) {
        float criticalRate = calculateCriticalRate(attacker);
        boolean isCritical = random.nextFloat() < criticalRate;
        
        if (isCritical) {
            recordCritical(attacker);
        }
        
        return isCritical;
    }
    
    /**
     * 计算暴击率
     * Calculate critical rate
     */
    private float calculateCriticalRate(BattleCharacter character) {
        float baseRate = BASE_CRITICAL_RATE;
        
        // 角色属性影响
        baseRate += character.getLuck() * 0.01f; // 每点幸运增加1%暴击率
        
        // 装备影响
        baseRate += character.getEquipmentCriticalBonus();
        
        // 技能影响
        baseRate += character.getSkillCriticalBonus();
        
        // 状态影响
        baseRate += character.getStatusCriticalBonus();
        
        // 确保暴击率在合理范围内
        return Math.max(0.0f, Math.min(1.0f, baseRate));
    }
    
    /**
     * 记录暴击
     * Record critical hit
     */
    private void recordCritical(BattleCharacter character) {
        CriticalData data = criticalData.get(character);
        if (data == null) {
            data = new CriticalData();
            criticalData.put(character, data);
        }
        
        data.criticalCount++;
        data.lastCriticalTime = System.currentTimeMillis();
        
        // 检查连续暴击
        if (data.lastCriticalTime - data.previousCriticalTime < 5000) { // 5秒内
            data.consecutiveCriticals++;
        } else {
            data.consecutiveCriticals = 1;
        }
        
        data.previousCriticalTime = data.lastCriticalTime;
    }
    
    /**
     * 获取暴击伤害倍数
     * Get critical damage multiplier
     */
    public float getCriticalDamageMultiplier(BattleCharacter character) {
        float multiplier = CRITICAL_DAMAGE_MULTIPLIER;
        
        // 装备影响
        multiplier += character.getEquipmentCriticalDamageBonus();
        
        // 技能影响
        multiplier += character.getSkillCriticalDamageBonus();
        
        // 连续暴击奖励
        CriticalData data = criticalData.get(character);
        if (data != null && data.consecutiveCriticals > 1) {
            multiplier += (data.consecutiveCriticals - 1) * 0.1f; // 每次连续暴击增加10%伤害
        }
        
        return multiplier;
    }
    
    /**
     * 获取暴击统计
     * Get critical statistics
     */
    public CriticalStatistics getCriticalStatistics(BattleCharacter character) {
        CriticalData data = criticalData.get(character);
        if (data == null) {
            return new CriticalStatistics();
        }
        
        return new CriticalStatistics(
            data.criticalCount,
            data.consecutiveCriticals,
            data.lastCriticalTime
        );
    }
    
    /**
     * 检查暴击成就
     * Check critical achievements
     */
    public List<CriticalAchievement> checkCriticalAchievements(BattleCharacter character) {
        List<CriticalAchievement> achievements = new ArrayList<>();
        CriticalData data = criticalData.get(character);
        
        if (data == null) return achievements;
        
        // 检查各种暴击成就
        if (data.criticalCount >= 10) {
            achievements.add(CriticalAchievement.FIRST_CRITICAL_MASTER);
        }
        if (data.criticalCount >= 100) {
            achievements.add(CriticalAchievement.CRITICAL_EXPERT);
        }
        if (data.criticalCount >= 1000) {
            achievements.add(CriticalAchievement.CRITICAL_LEGEND);
        }
        if (data.consecutiveCriticals >= 3) {
            achievements.add(CriticalAchievement.CRITICAL_CHAIN);
        }
        if (data.consecutiveCriticals >= 5) {
            achievements.add(CriticalAchievement.CRITICAL_MASTER);
        }
        
        return achievements;
    }
    
    /**
     * 重置暴击数据
     * Reset critical data
     */
    public void resetCriticalData(BattleCharacter character) {
        criticalData.remove(character);
    }
    
    /**
     * 重置所有数据
     * Reset all data
     */
    public void reset() {
        criticalData.clear();
    }
    
    /**
     * 暴击数据
     * Critical data
     */
    private static class CriticalData {
        int criticalCount = 0;
        int consecutiveCriticals = 0;
        long lastCriticalTime = 0;
        long previousCriticalTime = 0;
    }
    
    /**
     * 暴击统计
     * Critical statistics
     */
    public static class CriticalStatistics {
        public final int totalCriticals;
        public final int consecutiveCriticals;
        public final long lastCriticalTime;
        
        public CriticalStatistics() {
            this(0, 0, 0);
        }
        
        public CriticalStatistics(int totalCriticals, int consecutiveCriticals, long lastCriticalTime) {
            this.totalCriticals = totalCriticals;
            this.consecutiveCriticals = consecutiveCriticals;
            this.lastCriticalTime = lastCriticalTime;
        }
    }
    
    /**
     * 暴击成就
     * Critical achievements
     */
    public enum CriticalAchievement {
        FIRST_CRITICAL_MASTER("First Critical Master", "Achieve 10 critical hits"),
        CRITICAL_EXPERT("Critical Expert", "Achieve 100 critical hits"),
        CRITICAL_LEGEND("Critical Legend", "Achieve 1000 critical hits"),
        CRITICAL_CHAIN("Critical Chain", "Achieve 3 consecutive critical hits"),
        CRITICAL_MASTER("Critical Master", "Achieve 5 consecutive critical hits");
        
        private final String name;
        private final String description;
        
        CriticalAchievement(String name, String description) {
            this.name = name;
            this.description = description;
        }
        
        public String getName() { return name; }
        public String getDescription() { return description; }
    }
}