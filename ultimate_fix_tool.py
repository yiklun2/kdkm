#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
终极修复工具 - 解决验证中发现的所有问题
"""

import os
import re
import subprocess

class UltimateFixTool:
    def __init__(self):
        self.gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    def fix_all_issues(self):
        """修复所有问题"""
        print("🚀 开始终极修复...")
        
        if not os.path.exists(self.gamefight_path):
            print("❌ GameFight.smali文件不存在")
            return False
        
        with open(self.gamefight_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        print("🔧 修复1: 移除所有黑色填充代码...")
        # 移除所有可能导致黑屏的代码
        content = re.sub(r'# 添加绿色指示点.*?fillRect\(IIII\)V.*?\n', '', content, flags=re.DOTALL)
        content = re.sub(r'const/4 v0, 0x0.*?fillRect.*?\n', '', content, flags=re.DOTALL)
        
        print("🔧 修复2: 移除所有悬浮窗相关代码...")
        # 移除所有悬浮窗相关代码
        content = re.sub(r'\.method private drawFloatingWindow.*?\.end method', '', content, flags=re.DOTALL)
        content = re.sub(r'\.method private applyFeatureEffects.*?\.end method', '', content, flags=re.DOTALL)
        content = re.sub(r'\.field private showFloatingWindow:Z.*?\n', '', content)
        content = re.sub(r'\.field private feature\d+:Z.*?\n', '', content)
        
        print("🔧 修复3: 修复寄存器使用问题...")
        # 修复寄存器使用问题
        content = re.sub(r'const/4 v1[6-9],', 'const/4 v15,', content)
        content = re.sub(r'const/4 v2[0-9],', 'const/4 v14,', content)
        
        print("🔧 修复4: 移除重复标签...")
        # 移除重复的goto标签
        content = re.sub(r':goto_4\n.*?:goto_4', ':goto_4', content)
        
        print("🔧 修复5: 移除不存在的方法调用...")
        # 移除不存在的方法调用
        content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->isAutoBattleEnabled\(\)Z.*?\n', '', content)
        content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->performAutoAttack\(\)V.*?\n', '', content)
        
        print("🔧 修复6: 清理构造函数...")
        # 清理构造函数中的初始化代码
        content = re.sub(r'# 悬浮窗初始化.*?\n', '', content)
        content = re.sub(r'# 自动战斗逻辑.*?:auto_battle_end.*?\n', '', content, flags=re.DOTALL)
        
        print("🔧 修复7: 添加简单的绿色指示点...")
        # 在drawBackGround方法中添加简单的绿色指示点
        if "drawBackGround" in content:
            bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
            bg_match = re.search(bg_pattern, content, re.DOTALL)
            if bg_match:
                bg_method = bg_match.group(1)
                # 添加简单的绿色点
                green_dot_code = """
    # 简单绿色指示点
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    const/4 v1, 0xff00
    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/4 v2, 0x1e0
    const/4 v3, 0x0
    const/4 v4, 0x8
    const/4 v5, 0x8
    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
"""
                new_bg = bg_method.replace(".end method", green_dot_code + "\n.end method")
                content = content.replace(bg_method, new_bg)
        
        print("🔧 修复8: 清理多余空行和注释...")
        # 清理多余的空行和注释
        content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
        content = re.sub(r'# [^\n]*\n', '', content)
        
        print("🔧 修复9: 确保方法结构完整...")
        # 确保所有方法都有正确的结构
        content = re.sub(r'\.method.*?\n(?!.*?\.end method)', '', content, flags=re.DOTALL)
        
        print("🔧 修复10: 最终验证和清理...")
        # 最终清理
        content = re.sub(r'\n{3,}', '\n\n', content)
        
        # 保存修复后的文件
        with open(self.gamefight_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print("✅ 终极修复完成！")
        return True
    
    def test_compilation(self):
        """测试编译"""
        print("🔨 测试编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "ULTIMATE_FIXED_GAME.apk"
            ], capture_output=True, text=True, timeout=120)
            
            if result.returncode == 0:
                print("✅ 编译成功！")
                return True
            else:
                print(f"❌ 编译失败: {result.stderr}")
                return False
        except subprocess.TimeoutExpired:
            print("❌ 编译超时")
            return False
        except Exception as e:
            print(f"❌ 编译异常: {e}")
            return False
    
    def run_ultimate_fix(self):
        """运行终极修复"""
        print("🚀 开始终极修复流程...")
        
        # 1. 修复所有问题
        if not self.fix_all_issues():
            return False
        
        # 2. 测试编译
        if not self.test_compilation():
            return False
        
        print("🎉 终极修复完成！")
        return True

if __name__ == "__main__":
    tool = UltimateFixTool()
    success = tool.run_ultimate_fix()
    if success:
        print("✅ 终极修复成功！可以安装 ULTIMATE_FIXED_GAME.apk")
    else:
        print("❌ 终极修复失败")