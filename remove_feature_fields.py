#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
移除功能字段工具
"""

import os
import re
import subprocess

def remove_feature_fields():
    """移除所有功能字段"""
    print("🧹 移除所有功能字段...")
    
    gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    if not os.path.exists(gamefight_path):
        print("❌ GameFight.smali文件不存在")
        return False
    
    with open(gamefight_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print("🔧 移除功能字段...")
    
    # 移除所有feature字段
    for i in range(1, 101):
        field_pattern = f'\\.field public feature{i:02d}_[^:]*:Z.*?\n'
        content = re.sub(field_pattern, '', content)
    
    # 移除构造函数中的初始化代码
    content = re.sub(r'const/4 v\d+, 0x[01].*?#.*?feature.*?\n', '', content)
    content = re.sub(r'iput-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
    
    # 移除字段访问代码
    content = re.sub(r'iget-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
    content = re.sub(r'iput-boolean v\d+, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->feature\d+:Z.*?\n', '', content)
    
    # 清理多余空行
    content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
    
    # 保存文件
    with open(gamefight_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print("✅ 功能字段移除完成！")
    return True

def test_compilation():
    """测试编译"""
    print("🔨 测试编译...")
    try:
        result = subprocess.run([
            "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "PERFECT_FIXED_GAME.apk"
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
    print("🚀 开始移除功能字段...")
    
    if remove_feature_fields():
        if test_compilation():
            print("🎉 完美修复完成！可以安装 PERFECT_FIXED_GAME.apk")
        else:
            print("❌ 编译失败")
    else:
        print("❌ 移除功能字段失败")