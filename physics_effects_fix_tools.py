#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
物理效果修复工具集 - 10个专门工具
"""

import re

class PhysicsEffectsFixTools:
    def __init__(self, smali_file: str):
        self.smali_file = smali_file
        self.fixes_applied = []
        
    def tool1_restore_feature_effects(self):
        """工具1: 恢复功能效果"""
        print("🛠️ 工具1: 恢复功能效果方法")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 恢复功能效果方法
        enhanced_effects = """
# 增强的功能效果方法
.method public applyFeatureEffects()V
    .locals 3

    .prologue
    # 自动战斗效果
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature01_AutoBattle:Z
    if-nez v0, :auto_battle_end
    const/4 v1, 0x1
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z
    :auto_battle_end
    
    # 战斗速度提升
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature02_BattleSpeed:Z
    if-nez v0, :speed_end
    # 减少战斗延迟
    const/4 v1, 0x0
    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_sleepTime:I
    :speed_end
    
    # 无敌模式
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    if-nez v0, :invincible_end
    const/16 v1, 0x2710
    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_ourHp:I
    :invincible_end
    
    return-void
.end method
"""
        
        # 替换现有的applyFeatureEffects方法
        if 'applyFeatureEffects' in content:
            pattern = r'# 简化的功能效果方法.*?\.end method'
            content = re.sub(pattern, enhanced_effects.strip(), content, flags=re.DOTALL)
            self.fixes_applied.append("恢复功能效果")
            print("✅ 恢复了增强的功能效果")
        else:
            # 如果不存在，添加新方法
            content = content.rstrip() + "\n" + enhanced_effects
            self.fixes_applied.append("添加功能效果")
            print("✅ 添加了新的功能效果方法")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool2_add_battle_features(self):
        """工具2: 添加战斗功能字段"""
        print("🛠️ 工具2: 添加战斗功能字段")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加基本的功能字段
        battle_fields = """
# 战斗增强功能字段
.field public feature01_AutoBattle:Z

.field public feature02_BattleSpeed:Z

.field public feature03_Invincible:Z

.field public feature04_InfiniteMana:Z

.field public feature05_OneHitKill:Z

"""
        
        # 在悬浮窗字段后插入
        if 'floatingWindowY:I' in content:
            insert_pos = content.find('.field public floatingWindowY:I')
            insert_pos = content.find('\n', insert_pos) + 1
            content = content[:insert_pos] + battle_fields + content[insert_pos:]
            
            self.fixes_applied.append("添加战斗功能字段")
            print("✅ 添加了5个战斗功能字段")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool3_initialize_features(self):
        """工具3: 初始化功能字段"""
        print("🛠️ 工具3: 初始化功能字段")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 在构造函数中初始化功能字段
        if '.method public constructor <init>()V' in content:
            init_code = """
    # 初始化战斗功能
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature01_AutoBattle:Z
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature02_BattleSpeed:Z
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature04_InfiniteMana:Z
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature05_OneHitKill:Z
"""
            
            # 在悬浮窗初始化后插入
            pattern = r'(const/4 v0, 0x0\s*iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowY:I)'
            replacement = r'\1' + init_code
            content = re.sub(pattern, replacement, content)
            
            self.fixes_applied.append("初始化功能字段")
            print("✅ 初始化了所有功能字段")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool4_add_damage_modification(self):
        """工具4: 添加伤害修改"""
        print("🛠️ 工具4: 添加伤害修改功能")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加伤害修改方法
        damage_method = """
# 伤害修改方法
.method public modifyDamage(I)I
    .locals 2
    .prologue
    
    # 检查一击必杀
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature05_OneHitKill:Z
    if-nez v0, :normal_damage
    const/16 v0, 0x270f
    return v0
    
    :normal_damage
    # 检查伤害提升
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature02_BattleSpeed:Z
    if-nez v0, :speed_damage
    mul-int/lit8 v0, p1, 0x2
    return v0
    
    :speed_damage
    return p1
.end method
"""
        
        content = content.rstrip() + "\n" + damage_method
        self.fixes_applied.append("添加伤害修改")
        print("✅ 添加了伤害修改功能")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool5_add_hp_mp_management(self):
        """工具5: 添加HP/MP管理"""
        print("🛠️ 工具5: 添加HP/MP管理功能")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加生命值/魔法值管理方法
        hp_mp_method = """
# HP/MP管理方法
.method public manageHpMp()V
    .locals 2
    .prologue
    
    # 无敌模式 - 保持满血
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    if-nez v0, :check_mp
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_ourMaxHp:I
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_ourHp:I
    
    :check_mp
    # 无限法力
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature04_InfiniteMana:Z
    if-nez v0, :end_manage
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_ourMaxMp:I
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_ourMp:I
    
    :end_manage
    return-void
.end method
"""
        
        content = content.rstrip() + "\n" + hp_mp_method
        self.fixes_applied.append("添加HP/MP管理")
        print("✅ 添加了HP/MP管理功能")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool6_add_ai_enhancement(self):
        """工具6: 添加AI增强"""
        print("🛠️ 工具6: 添加AI增强功能")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加AI增强方法
        ai_method = """
# AI增强方法
.method public enhanceBattleAI()V
    .locals 2
    .prologue
    
    # 自动战斗AI
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature01_AutoBattle:Z
    if-nez v0, :end_ai
    
    # 自动选择最佳技能
    const/4 v0, 0x1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_skillIndex:I
    
    # 自动选择目标
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_targetIndex:I
    
    :end_ai
    return-void
.end method
"""
        
        content = content.rstrip() + "\n" + ai_method
        self.fixes_applied.append("添加AI增强")
        print("✅ 添加了AI增强功能")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool7_add_visual_effects(self):
        """工具7: 添加视觉效果"""
        print("🛠️ 工具7: 添加视觉效果")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加视觉效果方法
        visual_method = """
# 视觉效果方法
.method public addVisualEffects()V
    .locals 3
    .prologue
    
    # 获取Graphics对象
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;
    if-nez v2, :effects_ok
    return-void
    
    :effects_ok
    # 无敌模式特效 - 金色边框
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    if-nez v0, :speed_effect
    const v0, 0xffd700
    invoke-interface {v2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/4 v0, 0x0
    const/4 v1, 0x0
    const/16 v2, 0xf0
    const/16 v3, 0x140
    invoke-interface {v2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V
    
    :speed_effect
    return-void
.end method
"""
        
        content = content.rstrip() + "\n" + visual_method
        self.fixes_applied.append("添加视觉效果")
        print("✅ 添加了视觉效果功能")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool8_integrate_feature_calls(self):
        """工具8: 集成功能调用"""
        print("🛠️ 工具8: 集成功能调用")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 在drawBackGround方法中调用所有功能
        if 'drawBackGround' in content:
            pattern = r'(\.method.*drawBackGround\(\)V.*?)(return-void\s*\.end method)'
            
            feature_calls = """    # 应用所有功能效果
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->applyFeatureEffects()V
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->manageHpMp()V
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->enhanceBattleAI()V
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->addVisualEffects()V
    
    """
            
            replacement = r'\1' + feature_calls + r'\2'
            content = re.sub(pattern, replacement, content, flags=re.DOTALL)
            
            self.fixes_applied.append("集成功能调用")
            print("✅ 集成了所有功能调用")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool9_add_feature_toggle(self):
        """工具9: 添加功能切换"""
        print("🛠️ 工具9: 添加功能切换")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加功能切换方法
        toggle_method = """
# 功能切换方法
.method public toggleFeature(I)V
    .locals 2
    .prologue
    
    packed-switch p1
        :pswitch_0  # feature01
        :pswitch_1  # feature02
        :pswitch_2  # feature03
        :pswitch_3  # feature04
        :pswitch_4  # feature05
    .end packed-switch
    
    return-void
    
    :pswitch_0
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature01_AutoBattle:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature01_AutoBattle:Z
    return-void
    
    :pswitch_1
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature02_BattleSpeed:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature02_BattleSpeed:Z
    return-void
    
    :pswitch_2
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature03_Invincible:Z
    return-void
    
    :pswitch_3
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature04_InfiniteMana:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature04_InfiniteMana:Z
    return-void
    
    :pswitch_4
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature05_OneHitKill:Z
    xor-int/lit8 v0, v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature05_OneHitKill:Z
    return-void
.end method
"""
        
        content = content.rstrip() + "\n" + toggle_method
        self.fixes_applied.append("添加功能切换")
        print("✅ 添加了功能切换机制")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool10_validate_physics_integration(self):
        """工具10: 验证物理集成"""
        print("🛠️ 工具10: 验证物理集成")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 检查所有添加的方法是否存在
        required_methods = [
            'applyFeatureEffects',
            'modifyDamage',
            'manageHpMp',
            'enhanceBattleAI',
            'addVisualEffects',
            'toggleFeature'
        ]
        
        missing_methods = []
        for method in required_methods:
            if method not in content:
                missing_methods.append(method)
        
        if missing_methods:
            print(f"⚠️ 缺少方法: {missing_methods}")
        else:
            self.fixes_applied.append("验证物理集成")
            print("✅ 所有物理效果方法都已集成")
    
    def apply_all_fixes(self):
        """应用所有修复"""
        print("🚀 开始修复物理效果问题...")
        print("=" * 50)
        
        self.tool1_restore_feature_effects()
        self.tool2_add_battle_features()
        self.tool3_initialize_features()
        self.tool4_add_damage_modification()
        self.tool5_add_hp_mp_management()
        self.tool6_add_ai_enhancement()
        self.tool7_add_visual_effects()
        self.tool8_integrate_feature_calls()
        self.tool9_add_feature_toggle()
        self.tool10_validate_physics_integration()
        
        print(f"\n🎉 物理效果修复完成! 应用了{len(self.fixes_applied)}个修复:")
        for fix in self.fixes_applied:
            print(f"  ✅ {fix}")

def main():
    tools = PhysicsEffectsFixTools('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali')
    tools.apply_all_fixes()

if __name__ == "__main__":
    main()