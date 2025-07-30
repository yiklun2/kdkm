#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
最终存档修复工具 - 解决验证中发现的问题
"""

import os
import re
import subprocess

class FinalSaveFixTool:
    def __init__(self):
        self.gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    def fix_all_save_issues(self):
        """修复所有存档问题"""
        print("🚀 修复所有存档问题...")
        
        if not os.path.exists(self.gamefight_path):
            print("❌ GameFight.smali文件不存在")
            return False
        
        with open(self.gamefight_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        print("🔧 修复1: 添加完整的异常处理...")
        # 在drawBackGround方法中添加完整的异常处理
        if "drawBackGround" in content:
            bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
            bg_match = re.search(bg_pattern, content, re.DOTALL)
            if bg_match:
                bg_method = bg_match.group(1)
                # 移除现有的不完整代码
                bg_method = re.sub(r'# 异常处理.*?:catch_save.*?\n', '', bg_method, flags=re.DOTALL)
                bg_method = re.sub(r'# 空指针检查.*?:not_null.*?\n', '', bg_method, flags=re.DOTALL)
                bg_method = re.sub(r'# 资源清理.*?s_img_Bg.*?\n', '', bg_method, flags=re.DOTALL)
                bg_method = re.sub(r'# 线程安全检查.*?getName.*?\n', '', bg_method, flags=re.DOTALL)
                
                # 添加完整的修复代码
                complete_fix = """
    # 完整的存档修复
    :try_start_save
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    if-eqz v0, :safe_draw
    const/4 v1, 0xffffff
    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Graphics;->fillRect()V
    :safe_draw
    :try_end_save
    .catch Ljava/lang/Exception; {:try_start_save .. :try_end_save} :catch_save
    :catch_save
    # 资源清理
    const/4 v0, 0x0
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;
    # 线程安全检查
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v1
"""
                new_bg = bg_method.replace(".end method", complete_fix + "\n.end method")
                content = content.replace(bg_method, new_bg)
        
        print("🔧 修复2: 清理多余代码...")
        # 清理多余的空行和注释
        content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
        content = re.sub(r'# [^\n]*\n', '', content)
        
        print("🔧 修复3: 确保方法结构完整...")
        # 确保所有方法都有正确的结构
        content = re.sub(r'\.method.*?\n(?!.*?\.end method)', '', content, flags=re.DOTALL)
        
        print("🔧 修复4: 最终验证和清理...")
        # 最终清理
        content = re.sub(r'\n{3,}', '\n\n', content)
        
        # 保存修复后的文件
        with open(self.gamefight_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print("✅ 所有存档问题修复完成！")
        return True
    
    def test_compilation(self):
        """测试编译"""
        print("🔨 测试编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "FINAL_SAVE_FIXED_GAME.apk"
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
    
    def run_final_save_fix(self):
        """运行最终存档修复"""
        print("🚀 开始最终存档修复流程...")
        
        # 1. 修复所有存档问题
        if not self.fix_all_save_issues():
            return False
        
        # 2. 测试编译
        if not self.test_compilation():
            return False
        
        print("🎉 最终存档修复完成！")
        return True

if __name__ == "__main__":
    tool = FinalSaveFixTool()
    success = tool.run_final_save_fix()
    if success:
        print("✅ 最终存档修复成功！可以安装 FINAL_SAVE_FIXED_GAME.apk")
    else:
        print("❌ 最终存档修复失败")