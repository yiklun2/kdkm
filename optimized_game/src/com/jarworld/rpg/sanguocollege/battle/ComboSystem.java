package com.jarworld.rpg.sanguocollege.battle;

import java.util.*;

/**
 * 连击系统 - 连续攻击增加伤害
 * Combo System - Consecutive attacks increase damage
 */
public class ComboSystem {
    
    private Map<BattleCharacter, ComboData> comboData;
    private static final int MAX_COMBO_COUNT = 10;
    private static final float COMBO_DAMAGE_MULTIPLIER = 0.2f; // 每次连击增加20%伤害
    
    public ComboSystem() {
        this.comboData = new HashMap<>();
    }
    
    /**
     * 获取连击数
     * Get combo count
     */
    public int getComboCount(BattleCharacter character) {
        ComboData data = comboData.get(character);
        return data != null ? data.comboCount : 0;
    }
    
    /**
     * 更新连击
     * Update combo
     */
    public void updateCombo(BattleCharacter character) {
        ComboData data = comboData.get(character);
        if (data == null) {
            data = new ComboData();
            comboData.put(character, data);
        }
        
        data.comboCount++;
        data.lastComboTime = System.currentTimeMillis();
        
        // 限制最大连击数
        if (data.comboCount > MAX_COMBO_COUNT) {
            data.comboCount = MAX_COMBO_COUNT;
        }
    }
    
    /**
     * 重置连击
     * Reset combo
     */
    public void resetCombo(BattleCharacter character) {
        ComboData data = comboData.get(character);
        if (data != null) {
            data.comboCount = 0;
            data.lastComboTime = 0;
        }
    }
    
    /**
     * 计算连击伤害加成
     * Calculate combo damage bonus
     */
    public float getComboDamageMultiplier(BattleCharacter character) {
        int comboCount = getComboCount(character);
        return 1.0f + (comboCount * COMBO_DAMAGE_MULTIPLIER);
    }
    
    /**
     * 检查连击是否有效
     * Check if combo is still valid
     */
    public boolean isComboValid(BattleCharacter character) {
        ComboData data = comboData.get(character);
        if (data == null) return false;
        
        // 连击在3秒内有效
        long currentTime = System.currentTimeMillis();
        return (currentTime - data.lastComboTime) < 3000;
    }
    
    /**
     * 获取连击奖励
     * Get combo reward
     */
    public ComboReward getComboReward(BattleCharacter character) {
        int comboCount = getComboCount(character);
        ComboReward reward = new ComboReward();
        
        switch (comboCount) {
            case 3:
                reward.experienceBonus = 10;
                reward.goldBonus = 5;
                break;
            case 5:
                reward.experienceBonus = 25;
                reward.goldBonus = 15;
                reward.itemDropChance = 0.1f;
                break;
            case 7:
                reward.experienceBonus = 50;
                reward.goldBonus = 30;
                reward.itemDropChance = 0.2f;
                reward.rareItemChance = 0.05f;
                break;
            case 10:
                reward.experienceBonus = 100;
                reward.goldBonus = 60;
                reward.itemDropChance = 0.3f;
                reward.rareItemChance = 0.1f;
                reward.achievementUnlocked = true;
                break;
        }
        
        return reward;
    }
    
    /**
     * 重置所有连击
     * Reset all combos
     */
    public void reset() {
        comboData.clear();
    }
    
    /**
     * 连击数据
     * Combo data
     */
    private static class ComboData {
        int comboCount = 0;
        long lastComboTime = 0;
    }
    
    /**
     * 连击奖励
     * Combo reward
     */
    public static class ComboReward {
        public int experienceBonus = 0;
        public int goldBonus = 0;
        public float itemDropChance = 0.0f;
        public float rareItemChance = 0.0f;
        public boolean achievementUnlocked = false;
    }
}