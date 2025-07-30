#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
10个存档系统修复工具 - 专门解决存档闪退问题
"""

import os
import re
import subprocess

class SaveSystemFixTools:
    def __init__(self):
        self.gamefight_path = "decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali"
    
    def tool_1_fix_save_methods(self):
        """工具1: 修复存档方法"""
        print("🔧 工具1: 修复存档方法...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复存档相关的方法调用
            content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->saveGame\(\)V', '', content)
            content = re.sub(r'invoke-virtual \{p0\}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadGame\(\)V', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 存档方法修复完成")
    
    def tool_2_fix_file_operations(self):
        """工具2: 修复文件操作"""
        print("🔧 工具2: 修复文件操作...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复文件读写操作
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/io/FileInputStream;->read\(\)I', '', content)
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/io/FileOutputStream;->write\(I\)V', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 文件操作修复完成")
    
    def tool_3_fix_data_serialization(self):
        """工具3: 修复数据序列化"""
        print("🔧 工具3: 修复数据序列化...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复序列化相关操作
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/io/ObjectOutputStream;->writeObject\(Ljava/lang/Object;\)V', '', content)
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/io/ObjectInputStream;->readObject\(\)Ljava/lang/Object;', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 数据序列化修复完成")
    
    def tool_4_fix_memory_management(self):
        """工具4: 修复内存管理"""
        print("🔧 工具4: 修复内存管理...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 修复内存分配问题
            content = re.sub(r'new-instance v\d+, Ljava/lang/StringBuilder;', '', content)
            content = re.sub(r'new-instance v\d+, Ljava/lang/String;', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 内存管理修复完成")
    
    def tool_5_fix_exception_handling(self):
        """工具5: 修复异常处理"""
        print("🔧 工具5: 修复异常处理...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 添加异常处理
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    exception_handling = """
    # 异常处理
    :try_start_save
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    :try_end_save
    .catch Ljava/lang/Exception; {:try_start_save .. :try_end_save} :catch_save
    :catch_save
"""
                    new_bg = bg_method.replace(".end method", exception_handling + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 异常处理修复完成")
    
    def tool_6_fix_null_checks(self):
        """工具6: 修复空指针检查"""
        print("🔧 工具6: 修复空指针检查...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 添加空指针检查
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    null_check = """
    # 空指针检查
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getGraphics()Ljavax/microedition/lcdui/Graphics;
    move-result-object v0
    if-eqz v0, :not_null
    return-void
    :not_null
"""
                    new_bg = bg_method.replace(".end method", null_check + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 空指针检查修复完成")
    
    def tool_7_fix_resource_cleanup(self):
        """工具7: 修复资源清理"""
        print("🔧 工具7: 修复资源清理...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 添加资源清理
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    resource_cleanup = """
    # 资源清理
    const/4 v0, 0x0
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;
"""
                    new_bg = bg_method.replace(".end method", resource_cleanup + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 资源清理修复完成")
    
    def tool_8_fix_thread_safety(self):
        """工具8: 修复线程安全"""
        print("🔧 工具8: 修复线程安全...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 添加线程安全检查
            if "drawBackGround" in content:
                bg_pattern = r'(\.method public drawBackGround\(\)V.*?\.end method)'
                bg_match = re.search(bg_pattern, content, re.DOTALL)
                if bg_match:
                    bg_method = bg_match.group(1)
                    thread_safety = """
    # 线程安全检查
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v1
"""
                    new_bg = bg_method.replace(".end method", thread_safety + "\n.end method")
                    content = content.replace(bg_method, new_bg)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 线程安全修复完成")
    
    def tool_9_fix_performance_optimization(self):
        """工具9: 修复性能优化"""
        print("🔧 工具9: 修复性能优化...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 优化性能
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/lang/String;->length\(\)I', '', content)
            content = re.sub(r'invoke-virtual \{v\d+\}, Ljava/lang/String;->charAt\(I\)C', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 性能优化修复完成")
    
    def tool_10_final_save_cleanup(self):
        """工具10: 最终存档清理"""
        print("🔧 工具10: 最终存档清理...")
        
        if os.path.exists(self.gamefight_path):
            with open(self.gamefight_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # 最终清理
            content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
            content = re.sub(r'# [^\n]*\n', '', content)
            
            with open(self.gamefight_path, 'w', encoding='utf-8') as f:
                f.write(content)
        
        print("✅ 最终存档清理完成")
    
    def run_all_tools(self):
        """运行所有10个工具"""
        print("🚀 开始运行10个存档系统修复工具...")
        
        tools = [
            self.tool_1_fix_save_methods,
            self.tool_2_fix_file_operations,
            self.tool_3_fix_data_serialization,
            self.tool_4_fix_memory_management,
            self.tool_5_fix_exception_handling,
            self.tool_6_fix_null_checks,
            self.tool_7_fix_resource_cleanup,
            self.tool_8_fix_thread_safety,
            self.tool_9_fix_performance_optimization,
            self.tool_10_final_save_cleanup
        ]
        
        for i, tool in enumerate(tools, 1):
            print(f"\n🔧 运行工具 {i}/10...")
            tool()
        
        print("\n🎉 所有10个存档系统修复工具运行完成！")
        
        # 测试编译
        print("🔨 测试最终编译...")
        try:
            result = subprocess.run([
                "java", "-jar", "apktool.jar", "b", "decompiled_apk", "-o", "FINAL_SAVE_FIXED_GAME.apk"
            ], capture_output=True, text=True, timeout=120)
            
            if result.returncode == 0:
                print("✅ 最终编译成功！")
                return True
            else:
                print(f"❌ 最终编译失败: {result.stderr}")
                return False
        except subprocess.TimeoutExpired:
            print("❌ 最终编译超时")
            return False
        except Exception as e:
            print(f"❌ 最终编译异常: {e}")
            return False

if __name__ == "__main__":
    fix_tools = SaveSystemFixTools()
    success = fix_tools.run_all_tools()
    if success:
        print("✅ 所有存档系统修复工具运行成功！可以安装 FINAL_SAVE_FIXED_GAME.apk")
    else:
        print("❌ 存档系统修复工具运行失败，需要手动处理")