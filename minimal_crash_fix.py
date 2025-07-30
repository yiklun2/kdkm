#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
最小化闪退修复 - 只保留最基本最安全的悬浮窗
"""

import re

def minimal_fix():
    """最小化修复 - 移除所有复杂功能，只保留最基本的悬浮窗"""
    
    with open('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali', 'r', encoding='utf-8') as f:
        content = f.read()
    
    print("🔧 开始最小化修复...")
    
    # 1. 移除所有100个功能字段，只保留基本的悬浮窗字段
    # 查找字段定义区域
    field_pattern = r'(# 悬浮窗系统字段.*?)(# 100个功能开关字段.*?)(\.field public m_i_frame2f:I)'
    
    minimal_fields = """# 悬浮窗系统字段
.field public floatingWindowVisible:Z

.field public floatingWindowX:I

.field public floatingWindowY:I

"""
    
    content = re.sub(field_pattern, minimal_fields + r'\3', content, flags=re.DOTALL)
    
    # 2. 简化构造函数初始化
    constructor_pattern = r'(# 初始化悬浮窗.*?const/16 v0, 0x20\s*iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowHeight:I)'
    
    minimal_init = """# 初始化悬浮窗
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowVisible:Z
    
    const/16 v0, 0x120
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowX:I
    
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowY:I"""
    
    content = re.sub(constructor_pattern, minimal_init, content, flags=re.DOTALL)
    
    # 3. 创建最简单的悬浮窗方法
    simple_floating_window = """
# 最简单的悬浮窗方法
.method private drawFloatingWindowSafe()V
    .locals 3

    .prologue
    # 检查是否显示悬浮窗
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->floatingWindowVisible:Z
    if-nez v0, :show_window
    return-void

    :show_window
    # 获取Graphics对象
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;
    if-nez v2, :draw_safe
    return-void

    :draw_safe
    # 绘制简单方块
    const/4 v0, 0x0
    invoke-interface {v2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    
    const/16 v0, 0x120
    const/4 v1, 0x0
    invoke-interface {v2, v0, v1, v0, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    return-void
.end method
"""
    
    # 4. 替换复杂的悬浮窗方法
    floating_window_pattern = r'# 安全的悬浮窗绘制方法.*?\.end method'
    content = re.sub(floating_window_pattern, simple_floating_window.strip(), content, flags=re.DOTALL)
    
    # 5. 完全移除复杂的applyFeatureEffects方法
    feature_effects_pattern = r'# 简化的功能效果方法.*?\.end method'
    content = re.sub(feature_effects_pattern, '', content, flags=re.DOTALL)
    
    # 6. 移除悬浮窗方法调用前的功能效果调用
    apply_effects_call = r'# 应用功能效果\s*invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->applyFeatureEffects\(\)V\s*'
    content = re.sub(apply_effects_call, '', content)
    
    print("✅ 移除了所有复杂功能")
    print("✅ 只保留最基本的悬浮窗")
    
    # 写回文件
    with open('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali', 'w', encoding='utf-8') as f:
        f.write(content)
    
    print("🎯 最小化修复完成！")

if __name__ == "__main__":
    minimal_fix()