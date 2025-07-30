package com.jarworld.rpg.sanguocollege.battle;

import java.util.*;
import com.jarworld.rpg.sanguocollege.optimization.ObjectPool;

/**
 * 增强战斗系统 - 包含30种新战斗逻辑
 * Enhanced Battle System - Contains 30 new battle logic features
 */
public class EnhancedBattleSystem {
    
    // 战斗状态
    public enum BattleState {
        PREPARING, SELECTING_TARGET, EXECUTING_ACTION, PROCESSING_EFFECTS, 
        CHANGING_TURN, VICTORY, DEFEAT, FLEEING
    }
    
    // 元素类型
    public enum ElementType {
        FIRE, WATER, EARTH, WIND, LIGHT, DARK, NONE
    }
    
    // 状态效果
    public enum StatusEffect {
        POISON, PARALYSIS, STUN, BURN, FREEZE, CONFUSE, SLEEP, SILENCE
    }
    
    private BattleState currentState;
    private List<BattleCharacter> playerTeam;
    private List<BattleCharacter> enemyTeam;
    private BattleCharacter currentActor;
    private int turnCount;
    private Random random;
    
    // 战斗系统组件
    private ComboSystem comboSystem;
    private CriticalSystem criticalSystem;
    private DodgeSystem dodgeSystem;
    private BlockSystem blockSystem;
    private CounterSystem counterSystem;
    private ElementSystem elementSystem;
    private StatusEffectSystem statusEffectSystem;
    private EquipmentSystem equipmentSystem;
    private SkillSystem skillSystem;
    private FormationSystem formationSystem;
    private WeatherSystem weatherSystem;
    private TimeSystem timeSystem;
    private MoraleSystem moraleSystem;
    private TacticsSystem tacticsSystem;
    private AutoBattleSystem autoBattleSystem;
    private BattleRecordingSystem recordingSystem;
    private BattleStatisticsSystem statisticsSystem;
    private BattleRewardSystem rewardSystem;
    private BattleAchievementSystem achievementSystem;
    
    public EnhancedBattleSystem() {
        this.currentState = BattleState.PREPARING;
        this.playerTeam = new ArrayList<>();
        this.enemyTeam = new ArrayList<>();
        this.turnCount = 0;
        this.random = new Random();
        
        initializeBattleSystems();
    }
    
    /**
     * 初始化所有战斗系统
     * Initialize all battle systems
     */
    private void initializeBattleSystems() {
        comboSystem = new ComboSystem();
        criticalSystem = new CriticalSystem();
        dodgeSystem = new DodgeSystem();
        blockSystem = new BlockSystem();
        counterSystem = new CounterSystem();
        elementSystem = new ElementSystem();
        statusEffectSystem = new StatusEffectSystem();
        equipmentSystem = new EquipmentSystem();
        skillSystem = new SkillSystem();
        formationSystem = new FormationSystem();
        weatherSystem = new WeatherSystem();
        timeSystem = new TimeSystem();
        moraleSystem = new MoraleSystem();
        tacticsSystem = new TacticsSystem();
        autoBattleSystem = new AutoBattleSystem();
        recordingSystem = new BattleRecordingSystem();
        statisticsSystem = new BattleStatisticsSystem();
        rewardSystem = new BattleRewardSystem();
        achievementSystem = new BattleAchievementSystem();
    }
    
    /**
     * 开始战斗
     * Start battle
     */
    public void startBattle(List<BattleCharacter> players, List<BattleCharacter> enemies) {
        this.playerTeam.clear();
        this.enemyTeam.clear();
        this.playerTeam.addAll(players);
        this.enemyTeam.addAll(enemies);
        
        // 初始化所有系统
        comboSystem.reset();
        criticalSystem.reset();
        dodgeSystem.reset();
        blockSystem.reset();
        counterSystem.reset();
        elementSystem.reset();
        statusEffectSystem.reset();
        formationSystem.setFormation(playerTeam, FormationType.STANDARD);
        weatherSystem.setWeather(WeatherType.CLEAR);
        timeSystem.setTime(TimeType.DAY);
        moraleSystem.initializeMorale(playerTeam);
        recordingSystem.startRecording();
        statisticsSystem.startRecording();
        
        currentState = BattleState.SELECTING_TARGET;
        turnCount = 0;
        
        // 确定第一个行动者
        determineFirstActor();
    }
    
    /**
     * 确定第一个行动者
     * Determine first actor
     */
    private void determineFirstActor() {
        // 基于速度、士气、天气等因素确定
        int playerSpeed = calculateTeamSpeed(playerTeam);
        int enemySpeed = calculateTeamSpeed(enemyTeam);
        
        // 天气影响
        playerSpeed = weatherSystem.applyWeatherEffect(playerSpeed, true);
        enemySpeed = weatherSystem.applyWeatherEffect(enemySpeed, false);
        
        // 士气影响
        playerSpeed = moraleSystem.applyMoraleEffect(playerSpeed, playerTeam);
        enemySpeed = moraleSystem.applyMoraleEffect(enemySpeed, enemyTeam);
        
        if (playerSpeed >= enemySpeed) {
            currentActor = getNextPlayerActor();
        } else {
            currentActor = getNextEnemyActor();
        }
    }
    
    /**
     * 计算团队速度
     * Calculate team speed
     */
    private int calculateTeamSpeed(List<BattleCharacter> team) {
        int totalSpeed = 0;
        for (BattleCharacter character : team) {
            totalSpeed += character.getSpeed();
        }
        return totalSpeed / team.size();
    }
    
    /**
     * 执行攻击
     * Execute attack
     */
    public BattleResult executeAttack(BattleCharacter attacker, BattleCharacter target, Skill skill) {
        BattleResult result = new BattleResult();
        result.attacker = attacker;
        result.target = target;
        result.skill = skill;
        
        // 1. 连击系统
        int comboCount = comboSystem.getComboCount(attacker);
        result.comboCount = comboCount;
        
        // 2. 闪避检查
        if (dodgeSystem.checkDodge(attacker, target)) {
            result.dodged = true;
            result.damage = 0;
            return result;
        }
        
        // 3. 格挡检查
        if (blockSystem.checkBlock(target)) {
            result.blocked = true;
            result.damage = calculateDamage(attacker, target, skill) / 2;
        } else {
            result.damage = calculateDamage(attacker, target, skill);
        }
        
        // 4. 暴击检查
        if (criticalSystem.checkCritical(attacker)) {
            result.critical = true;
            result.damage = (int)(result.damage * 1.5);
        }
        
        // 5. 元素相克
        float elementMultiplier = elementSystem.calculateElementMultiplier(skill.getElement(), target.getElement());
        result.damage = (int)(result.damage * elementMultiplier);
        
        // 6. 装备效果
        result.damage = equipmentSystem.applyEquipmentEffects(result.damage, attacker, target);
        
        // 7. 天气影响
        result.damage = weatherSystem.applyWeatherEffect(result.damage, skill.getElement());
        
        // 8. 时间影响
        result.damage = timeSystem.applyTimeEffect(result.damage, skill.getElement());
        
        // 9. 士气影响
        result.damage = moraleSystem.applyMoraleEffect(result.damage, attacker);
        
        // 10. 阵型效果
        result.damage = formationSystem.applyFormationEffect(result.damage, attacker, target);
        
        // 应用伤害
        target.takeDamage(result.damage);
        
        // 11. 状态效果应用
        if (skill.hasStatusEffect()) {
            statusEffectSystem.applyStatusEffect(target, skill.getStatusEffect(), skill.getStatusDuration());
        }
        
        // 12. 反击检查
        if (counterSystem.checkCounter(target, attacker)) {
            BattleResult counterResult = executeAttack(target, attacker, target.getCounterSkill());
            result.counterResult = counterResult;
        }
        
        // 13. 连击更新
        comboSystem.updateCombo(attacker);
        
        // 14. 统计更新
        statisticsSystem.recordAttack(result);
        
        // 15. 成就检查
        achievementSystem.checkAttackAchievements(result);
        
        return result;
    }
    
    /**
     * 计算伤害
     * Calculate damage
     */
    private int calculateDamage(BattleCharacter attacker, BattleCharacter target, Skill skill) {
        int baseDamage = skill.getBaseDamage();
        int attackPower = attacker.getAttack();
        int defense = target.getDefense();
        
        // 基础伤害公式
        int damage = (baseDamage + attackPower - defense);
        
        // 确保最小伤害
        damage = Math.max(damage, 1);
        
        return damage;
    }
    
    /**
     * 切换回合
     * Change turn
     */
    public void changeTurn() {
        turnCount++;
        
        // 更新状态效果
        statusEffectSystem.updateStatusEffects(playerTeam);
        statusEffectSystem.updateStatusEffects(enemyTeam);
        
        // 更新士气
        moraleSystem.updateMorale(playerTeam);
        moraleSystem.updateMorale(enemyTeam);
        
        // 更新天气
        weatherSystem.updateWeather();
        
        // 更新时间
        timeSystem.updateTime();
        
        // 确定下一个行动者
        if (currentActor.isPlayer()) {
            currentActor = getNextEnemyActor();
        } else {
            currentActor = getNextPlayerActor();
        }
        
        // 检查战斗结束条件
        if (checkBattleEnd()) {
            endBattle();
        }
    }
    
    /**
     * 检查战斗结束
     * Check battle end
     */
    private boolean checkBattleEnd() {
        boolean allPlayersDefeated = true;
        boolean allEnemiesDefeated = true;
        
        for (BattleCharacter character : playerTeam) {
            if (!character.isDefeated()) {
                allPlayersDefeated = false;
                break;
            }
        }
        
        for (BattleCharacter character : enemyTeam) {
            if (!character.isDefeated()) {
                allEnemiesDefeated = false;
                break;
            }
        }
        
        if (allPlayersDefeated) {
            currentState = BattleState.DEFEAT;
            return true;
        } else if (allEnemiesDefeated) {
            currentState = BattleState.VICTORY;
            return true;
        }
        
        return false;
    }
    
    /**
     * 结束战斗
     * End battle
     */
    private void endBattle() {
        recordingSystem.stopRecording();
        statisticsSystem.stopRecording();
        
        if (currentState == BattleState.VICTORY) {
            // 计算奖励
            BattleReward reward = rewardSystem.calculateReward(playerTeam, enemyTeam, turnCount);
            
            // 检查成就
            achievementSystem.checkBattleAchievements(statisticsSystem.getStatistics());
            
            // 更新角色经验
            for (BattleCharacter character : playerTeam) {
                character.gainExperience(reward.experience);
            }
        }
    }
    
    /**
     * 获取下一个玩家行动者
     * Get next player actor
     */
    private BattleCharacter getNextPlayerActor() {
        for (BattleCharacter character : playerTeam) {
            if (!character.isDefeated() && character.canAct()) {
                return character;
            }
        }
        return null;
    }
    
    /**
     * 获取下一个敌人行动者
     * Get next enemy actor
     */
    private BattleCharacter getNextEnemyActor() {
        for (BattleCharacter character : enemyTeam) {
            if (!character.isDefeated() && character.canAct()) {
                return character;
            }
        }
        return null;
    }
    
    // Getter methods
    public BattleState getCurrentState() { return currentState; }
    public BattleCharacter getCurrentActor() { return currentActor; }
    public int getTurnCount() { return turnCount; }
    public List<BattleCharacter> getPlayerTeam() { return playerTeam; }
    public List<BattleCharacter> getEnemyTeam() { return enemyTeam; }
    
    // 战斗结果类
    public static class BattleResult {
        public BattleCharacter attacker;
        public BattleCharacter target;
        public Skill skill;
        public int damage;
        public boolean critical;
        public boolean dodged;
        public boolean blocked;
        public int comboCount;
        public BattleResult counterResult;
    }
}