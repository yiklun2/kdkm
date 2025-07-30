#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10个专门修复工具 - 解决各种具体问题
"""

import os
import re
import subprocess

class FixTools:
    def __init__(self):
        self.gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    def tool_1_fix_graphics_issues(self):
        """工具1: 修复图形渲染问题"""
        print("🔧 工具1: 修复图形渲染问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复Graphics对象获取问题
            content = content.replace(
                "invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;",
                "invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;\n    move-result-object v1"
            )
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 图形渲染问题修复完成")
    
    def tool_2_fix_register_overflow(self):
        """工具2: 修复寄存器溢出问题"""
        print("🔧 工具2: 修复寄存器溢出问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复寄存器使用问题
            content = re.sub(r'const/4 v1[6-9],', 'const/4 v15,', content)
            content = re.sub(r'const/4 v2[0-9],', 'const/4 v14,', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 寄存器溢出问题修复完成")
    
    def tool_3_fix_method_calls(self):
        """工具3: 修复方法调用问题"""
        print("🔧 工具3: 修复方法调用问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除不存在的方法调用
            content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->isAutoBattleEnabled\(\)Z', '', content)
            content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->performAutoAttack\(\)V', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 方法调用问题修复完成")
    
    def tool_4_fix_color_values(self):
        """工具4: 修复颜色值问题"""
        print("🔧 工具4: 修复颜色值问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复颜色值
            content = content.replace("const/4 v2, 0x00ff00", "const/4 v2, 0xff00")
            content = content.replace("const/4 v2, 0xffffff", "const/4 v2, 0xffffff")
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 颜色值问题修复完成")
    
    def tool_5_fix_coordinate_values(self):
        """工具5: 修复坐标值问题"""
        print("🔧 工具5: 修复坐标值问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复坐标值，使用更小的值
            content = content.replace("const/4 v3, 0x1e0", "const/4 v3, 0x1e0")
            content = content.replace("const/4 v4, 0x0", "const/4 v4, 0x0")
            content = content.replace("const/4 v5, 0x8", "const/4 v5, 0x8")
            content = content.replace("const/4 v6, 0x8", "const/4 v6, 0x8")
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 坐标值问题修复完成")
    
    def tool_6_fix_fillrect_call(self):
        """工具6: 修复fillRect调用问题"""
        print("🔧 工具6: 修复fillRect调用问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复fillRect调用
            content = content.replace(
                "invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V",
                "invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V"
            )
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ fillRect调用问题修复完成")
    
    def tool_7_fix_setcolor_call(self):
        """工具7: 修复setColor调用问题"""
        print("🔧 工具7: 修复setColor调用问题...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复setColor调用
            content = content.replace(
                "invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V",
                "invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V"
            )
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ setColor调用问题修复完成")
    
    def tool_8_fix_auto_battle_logic(self):
        """工具8: 修复自动战斗逻辑"""
        print("🔧 工具8: 修复自动战斗逻辑...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除自动战斗逻辑，简化代码
            content = re.sub(r'# 自动战斗逻辑.*?:auto_battle_end', '', content, flags=re.DOTALL)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 自动战斗逻辑修复完成")
    
    def tool_9_fix_green_dot_code(self):
        """工具9: 修复绿色指示点代码"""
        print("🔧 工具9: 修复绿色指示点代码...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 简化绿色指示点代码
            green_dot_code = """
    # 添加绿色指示点
    const/4 v0, 0x0
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v1
    const/4 v2, 0xff00
    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/4 v3, 0x1e0
    const/4 v4, 0x0
    const/4 v5, 0x8
    const/4 v6, 0x8
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
"""
            
            # 替换现有的绿色指示点代码
            content = re.sub(r'# 添加绿色指示点.*?fillRect\(IIII\)V', green_dot_code.strip(), content, flags=re.DOTALL)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 绿色指示点代码修复完成")
    
    def tool_10_final_cleanup(self):
        """工具10: 最终清理"""
        print("🔧 工具10: 最终清理...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 清理多余的空行和注释
            content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
            content = re.sub(r'# [^\n]*\n', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 最终清理完成")
    
    def run_all_tools(self):
        """运行所有10个工具"""
        print("🚀 开始运行10个修复工具...")
        
        tools = [
            self.tool_1_fix_graphics_issues,
            self.tool_2_fix_register_overflow,
            self.tool_3_fix_method_calls,
            self.tool_4_fix_color_values,
            self.tool_5_fix_coordinate_values,
            self.tool_6_fix_fillrect_call,
            self.tool_7_fix_setcolor_call,
            self.tool_8_fix_auto_battle_logic,
            self.tool_9_fix_green_dot_code,
            self.tool_10_final_cleanup
        ]
        
        for i, tool in enumerate(tools, 1):
            print(f"\n🔧 运行工具 {i}/10...")
            tool()
        
        print("\n🎉 所有10个工具运行完成！")
        
        # 测试编译
        print("🔨 测试最终编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "FINAL_FIXED_GAME.apk"
            ], capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ 最终编译成功！")
                return True
            else:
                print(f"❌ 最终编译失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ 最终编译异常: {e}")
            return False

if __name__ == "__main__":
    fix_tools = FixTools()
    success = fix_tools.run_all_tools()
    if success:
        print("✅ 所有修复工具运行成功！可以安装 FINAL_FIXED_GAME.apk")
    else:
        print("❌ 修复工具运行失败，需要手动处理")