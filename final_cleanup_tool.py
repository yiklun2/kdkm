#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
最终清理工具 - 移除剩余的功能字段
"""

import os
import re
import subprocess

class FinalCleanupTool:
    def __init__(self):
        self.gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    def cleanup_remaining_fields(self):
        """清理剩余的功能字段"""
        print("🧹 清理剩余的功能字段...")
        
        if not os.path.exists(self.gamefight_path):
            print("❌ GameFight.smali文件不存在")
            return False
        
        with open(self.gamefight_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        print("🔧 清理1: 移除所有功能字段...")
        # 移除所有功能字段
        content = re.sub(r'\.field private feature\d+:Z.*?\n', '', content)
        content = re.sub(r'\.field private showFloatingWindow:Z.*?\n', '', content)
        content = re.sub(r'\.field private.*?feature.*?:Z.*?\n', '', content)
        
        print("🔧 清理2: 移除字段初始化代码...")
        # 移除构造函数中的字段初始化
        content = re.sub(r'const/4 v\d+, 0x[01].*?#.*?feature.*?\n', '', content)
        content = re.sub(r'iput-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
        
        print("🔧 清理3: 移除字段访问代码...")
        # 移除字段访问代码
        content = re.sub(r'iget-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
        content = re.sub(r'iput-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
        
        print("🔧 清理4: 移除相关条件判断...")
        # 移除相关的条件判断
        content = re.sub(r'if-eqz v\d+, :.*?feature.*?\n', '', content)
        content = re.sub(r'if-nez v\d+, :.*?feature.*?\n', '', content)
        
        print("🔧 清理5: 最终清理...")
        # 最终清理
        content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
        content = re.sub(r'# [^\n]*feature[^\n]*\n', '', content)
        
        # 保存清理后的文件
        with open(self.gamefight_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print("✅ 最终清理完成！")
        return True
    
    def test_compilation(self):
        """测试编译"""
        print("🔨 测试编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "FINAL_CLEAN_GAME.apk"
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
    
    def run_final_cleanup(self):
        """运行最终清理"""
        print("🚀 开始最终清理流程...")
        
        # 1. 清理剩余字段
        if not self.cleanup_remaining_fields():
            return False
        
        # 2. 测试编译
        if not self.test_compilation():
            return False
        
        print("🎉 最终清理完成！")
        return True

if __name__ == "__main__":
    tool = FinalCleanupTool()
    success = tool.run_final_cleanup()
    if success:
        print("✅ 最终清理成功！可以安装 FINAL_CLEAN_GAME.apk")
    else:
        print("❌ 最终清理失败")