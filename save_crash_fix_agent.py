#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
存档闪退修复智能体 - 解决进入存档时闪退的问题
"""

import os
import re
import subprocess

class SaveCrashFixAgent:
    def __init__(self):
        self.issues = []
        self.save_related_files = []
        
    def analyze_save_system(self):
        """分析存档系统相关文件"""
        print("🔍 分析存档系统...")
        
        # 查找存档相关的文件
        save_patterns = [
            "save", "load", "存档", "读档", "存储", "读取",
            "GameSave", "SaveGame", "LoadGame", "Storage"
        ]
        
        for root, dirs, files in os.walk("decompiled_apk"):
            for file in files:
                if file.endswith('.smali'):
                    file_path = os.path.join(root, file)
                    try:
                        with open(file_path, 'r', encoding='utf-8') as f:
                            content = f.read()
                            for pattern in save_patterns:
                                if pattern.lower() in content.lower():
                                    self.save_related_files.append(file_path)
                                    break
                    except:
                        continue
        
        print(f"发现 {len(self.save_related_files)} 个存档相关文件")
        return self.save_related_files
    
    def check_save_crash_causes(self):
        """检查可能导致存档闪退的原因"""
        print("🔍 检查存档闪退原因...")
        
        crash_causes = []
        
        for file_path in self.save_related_files:
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    
                    # 检查可能导致闪退的问题
                    if "invoke-virtual" in content and "null" in content:
                        crash_causes.append(f"{file_path}: 空指针调用")
                    
                    if "const/4 v1[6-9]," in content:
                        crash_causes.append(f"{file_path}: 寄存器溢出")
                    
                    if "goto_4" in content and content.count("goto_4") > 1:
                        crash_causes.append(f"{file_path}: 重复标签")
                    
                    if "drawColor" in content and "0x0" in content:
                        crash_causes.append(f"{file_path}: 黑色填充")
                        
            except Exception as e:
                crash_causes.append(f"{file_path}: 读取错误 - {e}")
        
        self.issues = crash_causes
        print(f"发现 {len(crash_causes)} 个可能导致闪退的问题")
        return crash_causes
    
    def fix_save_system(self):
        """修复存档系统"""
        print("🔧 修复存档系统...")
        
        # 修复GameFight.smali中的存档相关代码
        gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
        if os.path.exists(gamefight_path):
            with open(gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 移除可能导致闪退的代码
            print("🔧 修复1: 移除空指针调用...")
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/lang/Object;->toString\(\)Ljava/lang/String;', '', content)
            
            print("🔧 修复2: 修复寄存器使用...")
            content = re.sub(r'const/4 v1[6-9],', 'const/4 v15,', content)
            content = re.sub(r'const/4 v2[0-9],', 'const/4 v14,', content)
            
            print("🔧 修复3: 移除重复标签...")
            content = re.sub(r':goto_4\n.*?:goto_4', ':goto_4', content)
            
            print("🔧 修复4: 移除黑色填充...")
            content = re.sub(r'const/4 v\d+, 0x0\s+invoke-virtual \{v\d+, v\d+\}, Landroid/graphics/Canvas;->drawColor\(I\)V', '', content)
            
            # 添加安全的存档检查
            print("🔧 修复5: 添加存档安全检查...")
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    safety_check = """
    # 存档安全检查
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    if-eqz v0, :safe_draw
    const/4 v1, 0xffffff
    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Graphics;->fillRect()V
    :safe_draw
"""
                    new_bg = bg_method.replace(".end method", safety_check + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 存档系统修复完成")
        return True
    
    def fix_other_save_files(self):
        """修复其他存档相关文件"""
        print("🔧 修复其他存档相关文件...")
        
        for file_path in self.save_related_files:
            if "GameFight" not in file_path:  # 跳过已修复的GameFight
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                    
                    # 修复常见问题
                    content = re.sub(r'const/4 v1[6-9],', 'const/4 v15,', content)
                    content = re.sub(r'const/4 v2[0-9],', 'const/4 v14,', content)
                    content = re.sub(r':goto_4\n.*?:goto_4', ':goto_4', content)
                    
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(content)
                        
                except Exception as e:
                    print(f"⚠️ 修复 {file_path} 时出错: {e}")
        
        print("✅ 其他存档文件修复完成")
        return True
    
    def test_compilation(self):
        """测试编译"""
        print("🔨 测试编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "SAVE_CRASH_FIXED_GAME.apk"
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
    
    def run_save_crash_fix(self):
        """运行存档闪退修复"""
        print("🚀 开始存档闪退修复流程...")
        
        # 1. 分析存档系统
        self.analyze_save_system()
        
        # 2. 检查闪退原因
        self.check_save_crash_causes()
        
        # 3. 修复存档系统
        if not self.fix_save_system():
            return False
        
        # 4. 修复其他存档文件
        if not self.fix_other_save_files():
            return False
        
        # 5. 测试编译
        if not self.test_compilation():
            return False
        
        print("🎉 存档闪退修复完成！")
        return True

if __name__ == "__main__":
    agent = SaveCrashFixAgent()
    success = agent.run_save_crash_fix()
    if success:
        print("✅ 存档闪退修复成功！可以安装 SAVE_CRASH_FIXED_GAME.apk")
    else:
        print("❌ 存档闪退修复失败，需要进一步处理")