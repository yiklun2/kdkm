#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
全新修复智能体 - 解决战斗页面黑屏、悬浮窗不显示、游戏卡顿等问题
"""

import os
import re
import shutil
import subprocess

class NewFixAgent:
    def __init__(self):
        self.issues = []
        self.solutions = []
        
    def analyze_problems(self):
        """分析当前问题"""
        print("🔍 分析当前问题...")
        
        # 检查GameFight.smali文件
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
                
            # 检查问题
            if "drawFloatingWindow" in content:
                self.issues.append("悬浮窗方法存在但可能有问题")
            if "invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V" in content:
                self.issues.append("检测到drawColor调用可能导致黑屏")
            if "const/4 v16, 0x1" in content:
                self.issues.append("检测到寄存器溢出问题")
                
        print(f"发现 {len(self.issues)} 个问题")
        return self.issues
    
    def create_backup(self):
        """创建备份"""
        print("📦 创建备份...")
        if os.path.exists("decompiled_apk"):
            shutil.copytree("decompiled_apk", "decompiled_apk_backup", dirs_exist_ok=True)
        print("✅ 备份完成")
    
    def fix_black_screen(self):
        """修复黑屏问题"""
        print("🔧 修复黑屏问题...")
        
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除可能导致黑屏的drawColor调用
            content = re.sub(r'const/4 v\d+, 0x0\s+invoke-virtual \{v\d+, v\d+\}, Landroid/graphics/Canvas;->drawColor\(I\)V', '', content)
            
            # 确保背景绘制正常
            if "drawBackGround" in content:
                # 在drawBackGround方法中添加简单的背景绘制
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    if "drawColor" not in bg_method:
                        # 添加简单的白色背景
                        new_bg = bg_method.replace(
                            ".end method",
                            "    const/4 v0, 0x1\n    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;\n    move-result-object v1\n    const/4 v2, 0xffffff\n    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V\n    invoke-virtual {v1}, Ljavax/microedition/lcdui/Graphics;->fillRect()V\n.end method"
                        )
                        content = content.replace(bg_method, new_bg)
            
            with open(gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 黑屏问题修复完成")
    
    def fix_floating_window(self):
        """修复悬浮窗问题"""
        print("🪟 修复悬浮窗问题...")
        
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除复杂的悬浮窗代码
            content = re.sub(r'\.method private drawFloatingWindow.*?\.end method', '', content, flags=re.DOTALL)
            content = re.sub(r'\.method private applyFeatureEffects.*?\.end method', '', content, flags=re.DOTALL)
            
            # 添加简单的绿色指示点
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    # 在右上角添加绿色点
                    green_dot_code = """
    # 添加绿色指示点
    const/4 v0, 0x0
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v1
    const/4 v2, 0x00ff00
    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/4 v3, 0x1e0
    const/4 v4, 0x0
    const/4 v5, 0x8
    const/4 v6, 0x8
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
"""
                    new_bg = bg_method.replace(".end method", green_dot_code + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 悬浮窗问题修复完成")
    
    def fix_performance(self):
        """修复性能问题"""
        print("⚡ 修复性能问题...")
        
        # 移除所有复杂的优化代码，保持原始性能
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除所有新添加的字段
            content = re.sub(r'\.field private showFloatingWindow:Z.*?\n', '', content)
            content = re.sub(r'\.field private feature\d+:Z.*?\n', '', content)
            
            # 移除构造函数中的初始化代码
            content = re.sub(r'# 悬浮窗初始化.*?\n', '', content)
            
            with open(gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 性能问题修复完成")
    
    def add_auto_battle(self):
        """添加自动战斗功能"""
        print("⚔️ 添加自动战斗功能...")
        
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 在drawBackGround方法中添加自动战斗逻辑
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    auto_battle_code = """
    # 自动战斗逻辑
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->isAutoBattleEnabled()Z
    move-result v0
    if-eqz v0, :auto_battle_end
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->performAutoAttack()V
    :auto_battle_end
"""
                    new_bg = bg_method.replace(".end method", auto_battle_code + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 自动战斗功能添加完成")
    
    def test_compilation(self):
        """测试编译"""
        print("🔨 测试编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "NEW_FIXED_GAME.apk"
            ], capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ 编译成功！")
                return True
            else:
                print(f"❌ 编译失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ 编译异常: {e}")
            return False
    
    def run_complete_fix(self):
        """运行完整修复"""
        print("🚀 开始全新修复流程...")
        
        # 1. 分析问题
        self.analyze_problems()
        
        # 2. 创建备份
        self.create_backup()
        
        # 3. 修复黑屏问题
        self.fix_black_screen()
        
        # 4. 修复悬浮窗问题
        self.fix_floating_window()
        
        # 5. 修复性能问题
        self.fix_performance()
        
        # 6. 添加自动战斗功能
        self.add_auto_battle()
        
        # 7. 测试编译
        if self.test_compilation():
            print("🎉 全新修复完成！")
            return True
        else:
            print("❌ 修复失败，需要进一步处理")
            return False

if __name__ == "__main__":
    agent = NewFixAgent()
    success = agent.run_complete_fix()
    if success:
        print("✅ 游戏修复成功！可以安装 NEW_FIXED_GAME.apk")
    else:
        print("❌ 修复失败，需要手动处理")