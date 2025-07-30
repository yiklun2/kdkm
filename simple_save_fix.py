#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简单存档修复工具 - 只解决核心的存档闪退问题
"""

import os
import re
import subprocess

def simple_save_fix():
    """简单的存档修复"""
    print("🚀 开始简单存档修复...")
    
    # 从备份恢复GameFight.smali
    backup_path = "decompiled_apk_backup/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    target_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    if os.path.exists(backup_path):
        print("📦 从备份恢复GameFight.smali...")
        with open(backup_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 只做最基本的修复，移除可能导致闪退的代码
        print("🔧 移除可能导致闪退的代码...")
        
        # 移除寄存器溢出
        content = re.sub(r'const/4 v1[6-9],', 'const/4 v15,', content)
        content = re.sub(r'const/4 v2[0-9],', 'const/4 v14,', content)
        
        # 移除重复标签
        content = re.sub(r':goto_4\n.*?:goto_4', ':goto_4', content)
        
        # 移除黑色填充
        content = re.sub(r'const/4 v\d+, 0x0\s+invoke-virtual \{v\d+, v\d+\}, Landroid/graphics/Canvas;->drawColor\(I\)V', '', content)
        
        # 保存修复后的文件
        with open(target_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print("✅ 简单存档修复完成")
        return True
    else:
        print("❌ 备份文件不存在")
        return False

def test_compilation():
    """测试编译"""
    print("🔨 测试编译...")
    try:
        result = subprocess.run([
            "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "SIMPLE_SAVE_FIXED_GAME.apk"
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

if __name__ == "__main__":
    print("🚀 开始简单存档修复流程...")
    
    if simple_save_fix():
        if test_compilation():
            print("🎉 简单存档修复完成！可以安装 SIMPLE_SAVE_FIXED_GAME.apk")
        else:
            print("❌ 编译失败")
    else:
        print("❌ 简单存档修复失败")