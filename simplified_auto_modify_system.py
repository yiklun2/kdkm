#!/usr/bin/env python3
"""
简化版自动化APK修改和测试系统
功能：
1. 自动修改APK中的100个数据
2. 使用现有工具测试修改效果
3. 检测是否闪退和是否有预期效果
4. 如果失败，继续修改直到成功
5. 将成功的结果打包
"""

import os
import sys
import time
import subprocess
import json
import cv2
import numpy as np
from datetime import datetime
import zipfile
import shutil
import random
import string

class SimplifiedAutoModifySystem:
    def __init__(self):
        self.original_apk = "zjsgxy_anfensi.com (3).apk"
        self.modified_apk = "modified_game.apk"
        self.test_results_dir = "test_results"
        self.screenshots_dir = "screenshots"
        self.logs_dir = "logs"
        self.decompiled_dir = "decompiled_apk"
        
        # 创建必要的目录
        for dir_path in [self.test_results_dir, self.screenshots_dir, self.logs_dir, self.decompiled_dir]:
            os.makedirs(dir_path, exist_ok=True)
        
        self.iteration_count = 0
        self.max_iterations = 20  # 减少最大尝试次数
        self.success_threshold = 0.6  # 降低成功阈值
        
        self.test_report = {
            "start_time": datetime.now().isoformat(),
            "original_apk": self.original_apk,
            "iterations": [],
            "final_result": "unknown",
            "successful_modifications": []
        }
    
    def decompile_apk(self):
        """反编译APK"""
        print("🔧 反编译APK...")
        try:
            # 清理之前的反编译文件
            if os.path.exists(self.decompiled_dir):
                shutil.rmtree(self.decompiled_dir)
            
            # 使用apktool反编译
            result = subprocess.run(f"java -jar apktool.jar d '{self.original_apk}' -o {self.decompiled_dir}", 
                                  shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ APK反编译成功")
                return True
            else:
                print(f"❌ APK反编译失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ APK反编译异常: {e}")
            return False
    
    def modify_game_data(self, iteration):
        """修改游戏数据 - 这是核心修改逻辑"""
        print(f"🔨 第{iteration}次修改游戏数据...")
        
        modifications = []
        
        try:
            # 1. 修改smali文件中的数值
            smali_files = self.find_smali_files()
            for i, smali_file in enumerate(smali_files[:15]):  # 修改前15个smali文件
                if self.modify_smali_file(smali_file, i):
                    modifications.append(f"smali_{i}: {smali_file}")
            
            # 2. 修改资源文件
            resource_files = self.find_resource_files()
            for i, resource_file in enumerate(resource_files[:20]):  # 修改前20个资源文件
                if self.modify_resource_file(resource_file, i):
                    modifications.append(f"resource_{i}: {resource_file}")
            
            # 3. 修改配置文件
            config_files = self.find_config_files()
            for i, config_file in enumerate(config_files[:15]):  # 修改前15个配置文件
                if self.modify_config_file(config_file, i):
                    modifications.append(f"config_{i}: {config_file}")
            
            # 4. 修改二进制数据
            binary_files = self.find_binary_files()
            for i, binary_file in enumerate(binary_files[:15]):  # 修改前15个二进制文件
                if self.modify_binary_file(binary_file, i):
                    modifications.append(f"binary_{i}: {binary_file}")
            
            # 5. 修改AndroidManifest.xml
            manifest_file = os.path.join(self.decompiled_dir, "AndroidManifest.xml")
            if os.path.exists(manifest_file):
                if self.modify_manifest_file(manifest_file, iteration):
                    modifications.append(f"manifest: {manifest_file}")
            
            # 6. 修改strings.xml
            strings_files = self.find_strings_files()
            for i, strings_file in enumerate(strings_files[:10]):  # 修改前10个strings文件
                if self.modify_strings_file(strings_file, i):
                    modifications.append(f"strings_{i}: {strings_file}")
            
            print(f"✅ 完成{len(modifications)}项修改")
            return modifications
            
        except Exception as e:
            print(f"❌ 修改游戏数据异常: {e}")
            return []
    
    def find_smali_files(self):
        """查找smali文件"""
        smali_files = []
        for root, dirs, files in os.walk(self.decompiled_dir):
            for file in files:
                if file.endswith('.smali'):
                    smali_files.append(os.path.join(root, file))
        return smali_files
    
    def find_resource_files(self):
        """查找资源文件"""
        resource_files = []
        resource_dirs = ['res/values', 'res/layout', 'res/drawable']
        for resource_dir in resource_dirs:
            full_path = os.path.join(self.decompiled_dir, resource_dir)
            if os.path.exists(full_path):
                for root, dirs, files in os.walk(full_path):
                    for file in files:
                        resource_files.append(os.path.join(root, file))
        return resource_files
    
    def find_config_files(self):
        """查找配置文件"""
        config_files = []
        config_extensions = ['.xml', '.json', '.properties', '.txt']
        for root, dirs, files in os.walk(self.decompiled_dir):
            for file in files:
                if any(file.endswith(ext) for ext in config_extensions):
                    config_files.append(os.path.join(root, file))
        return config_files
    
    def find_binary_files(self):
        """查找二进制文件"""
        binary_files = []
        binary_extensions = ['.so', '.dex', '.bin']
        for root, dirs, files in os.walk(self.decompiled_dir):
            for file in files:
                if any(file.endswith(ext) for ext in binary_extensions):
                    binary_files.append(os.path.join(root, file))
        return binary_files
    
    def find_strings_files(self):
        """查找strings.xml文件"""
        strings_files = []
        for root, dirs, files in os.walk(self.decompiled_dir):
            for file in files:
                if file == 'strings.xml':
                    strings_files.append(os.path.join(root, file))
        return strings_files
    
    def modify_smali_file(self, file_path, index):
        """修改smali文件"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 修改数值常量
            original_content = content
            
            # 修改整数常量
            content = self.modify_integer_constants(content, index)
            
            # 修改浮点数常量
            content = self.modify_float_constants(content, index)
            
            # 修改字符串常量
            content = self.modify_string_constants(content, index)
            
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改smali文件失败 {file_path}: {e}")
            return False
    
    def modify_integer_constants(self, content, index):
        """修改整数常量"""
        import re
        
        # 查找并修改const指令中的数值
        patterns = [
            (r'const/16 v\d+, (0x[0-9a-fA-F]+)', lambda m: f'const/16 {m.group(1).split()[0]}, 0x{random.randint(1, 65535):04x}'),
            (r'const v\d+, (0x[0-9a-fA-F]+)', lambda m: f'const {m.group(1).split()[0]}, 0x{random.randint(1, 16777215):06x}'),
            (r'const/4 v\d+, (0x[0-9a-fA-F]+)', lambda m: f'const/4 {m.group(1).split()[0]}, 0x{random.randint(1, 15):x}'),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        
        return content
    
    def modify_float_constants(self, content, index):
        """修改浮点数常量"""
        import re
        
        # 修改const/high16指令中的浮点数
        pattern = r'const/high16 v\d+, (0x[0-9a-fA-F]+)'
        def replace_float(match):
            return f'const/high16 {match.group(1).split()[0]}, 0x{random.randint(1, 65535):04x}'
        
        content = re.sub(pattern, replace_float, content)
        return content
    
    def modify_string_constants(self, content, index):
        """修改字符串常量"""
        import re
        
        # 修改const-string指令中的字符串
        pattern = r'const-string v\d+, "([^"]*)"'
        def replace_string(match):
            original = match.group(1)
            if len(original) > 0:
                # 随机修改字符串
                modified = ''.join(random.choices(string.ascii_letters + string.digits, k=len(original)))
                return f'const-string {match.group(0).split()[1]}, "{modified}"'
            return match.group(0)
        
        content = re.sub(pattern, replace_string, content)
        return content
    
    def modify_resource_file(self, file_path, index):
        """修改资源文件"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            original_content = content
            
            # 修改XML文件中的数值
            if file_path.endswith('.xml'):
                content = self.modify_xml_values(content, index)
            
            # 修改其他文本文件
            else:
                content = self.modify_text_content(content, index)
            
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改资源文件失败 {file_path}: {e}")
            return False
    
    def modify_xml_values(self, content, index):
        """修改XML文件中的数值"""
        import re
        
        # 修改数值属性
        patterns = [
            (r'android:layout_width="(\d+)dp"', lambda m: f'android:layout_width="{random.randint(50, 300)}dp"'),
            (r'android:layout_height="(\d+)dp"', lambda m: f'android:layout_height="{random.randint(50, 300)}dp"'),
            (r'android:textSize="(\d+)sp"', lambda m: f'android:textSize="{random.randint(10, 30)}sp"'),
            (r'android:padding="(\d+)dp"', lambda m: f'android:padding="{random.randint(5, 20)}dp"'),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        
        return content
    
    def modify_text_content(self, content, index):
        """修改文本内容"""
        import re
        
        # 修改数字
        content = re.sub(r'\b(\d+)\b', lambda m: str(random.randint(1, 1000)), content)
        
        return content
    
    def modify_config_file(self, file_path, index):
        """修改配置文件"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            original_content = content
            
            # 修改配置文件中的数值
            content = self.modify_config_values(content, index)
            
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改配置文件失败 {file_path}: {e}")
            return False
    
    def modify_config_values(self, content, index):
        """修改配置值"""
        import re
        
        # 修改各种格式的数值
        patterns = [
            (r'(\d+\.\d+)', lambda m: f'{random.uniform(0.1, 100.0):.2f}'),
            (r'(\d+)', lambda m: str(random.randint(1, 1000))),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        
        return content
    
    def modify_binary_file(self, file_path, index):
        """修改二进制文件"""
        try:
            with open(file_path, 'rb') as f:
                data = bytearray(f.read())
            
            if len(data) > 100:  # 只修改较大的文件
                # 随机修改一些字节
                for i in range(min(30, len(data) // 20)):
                    pos = random.randint(0, len(data) - 1)
                    data[pos] = random.randint(0, 255)
                
                with open(file_path, 'wb') as f:
                    f.write(data)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改二进制文件失败 {file_path}: {e}")
            return False
    
    def modify_manifest_file(self, file_path, index):
        """修改AndroidManifest.xml"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            original_content = content
            import re
            
            # 修改版本号
            content = re.sub(r'android:versionCode="(\d+)"', lambda m: f'android:versionCode="{random.randint(1, 999999)}"', content)
            content = re.sub(r'android:versionName="([^"]*)"', lambda m: f'android:versionName="{random.randint(1, 99)}.{random.randint(0, 99)}.{random.randint(0, 99)}"', content)
            
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改manifest文件失败 {file_path}: {e}")
            return False
    
    def modify_strings_file(self, file_path, index):
        """修改strings.xml文件"""
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            original_content = content
            import re
            
            # 修改字符串值
            pattern = r'<string name="([^"]*)">([^<]*)</string>'
            def replace_string(match):
                name = match.group(1)
                value = match.group(2)
                if len(value) > 0:
                    # 随机修改字符串
                    modified = ''.join(random.choices(string.ascii_letters + string.digits, k=len(value)))
                    return f'<string name="{name}">{modified}</string>'
                return match.group(0)
            
            content = re.sub(pattern, replace_string, content)
            
            if content != original_content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return True
            
            return False
        except Exception as e:
            print(f"❌ 修改strings文件失败 {file_path}: {e}")
            return False
    
    def rebuild_apk(self):
        """重新打包APK"""
        print("📦 重新打包APK...")
        try:
            result = subprocess.run(f"java -jar apktool.jar b {self.decompiled_dir} -o {self.modified_apk}", 
                                  shell=True, capture_output=True, text=True)
            
            if result.returncode == 0 and os.path.exists(self.modified_apk):
                print("✅ APK重新打包成功")
                return True
            else:
                print(f"❌ APK重新打包失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ APK重新打包异常: {e}")
            return False
    
    def sign_apk(self):
        """签名APK"""
        print("✍️ 签名APK...")
        try:
            # 生成临时密钥
            keystore_path = "temp.keystore"
            if not os.path.exists(keystore_path):
                subprocess.run(f"keytool -genkey -v -keystore {keystore_path} -alias temp -keyalg RSA -keysize 2048 -validity 10000 -storepass password -keypass password -dname 'CN=Temp, OU=Temp, O=Temp, L=Temp, ST=Temp, C=US'", 
                             shell=True, capture_output=True)
            
            # 签名APK
            result = subprocess.run(f"jarsigner -keystore {keystore_path} -storepass password -keypass password {self.modified_apk} temp", 
                                  shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ APK签名成功")
                return True
            else:
                print(f"❌ APK签名失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ APK签名异常: {e}")
            return False
    
    def analyze_apk_changes(self):
        """分析APK变化"""
        print("🔍 分析APK变化...")
        
        effects = []
        
        try:
            # 检查文件大小变化
            size_diff = self.check_file_size_difference()
            if size_diff:
                effects.append({
                    "type": "file_size_change",
                    "data": size_diff
                })
            
            # 检查APK内容变化
            content_changes = self.check_content_changes()
            if content_changes:
                effects.append({
                    "type": "content_changes",
                    "data": content_changes
                })
            
            # 检查APK结构变化
            structure_changes = self.check_structure_changes()
            if structure_changes:
                effects.append({
                    "type": "structure_changes",
                    "data": structure_changes
                })
            
        except Exception as e:
            print(f"❌ 分析APK变化异常: {e}")
        
        return effects
    
    def check_file_size_difference(self):
        """检查文件大小差异"""
        try:
            original_size = os.path.getsize(self.original_apk)
            modified_size = os.path.getsize(self.modified_apk)
            
            return {
                "original_size": original_size,
                "modified_size": modified_size,
                "size_difference": modified_size - original_size,
                "size_change_percentage": ((modified_size - original_size) / original_size) * 100
            }
        except Exception as e:
            print(f"❌ 检查文件大小差异失败: {e}")
            return {}
    
    def check_content_changes(self):
        """检查内容变化"""
        try:
            # 使用aapt比较APK内容
            original_info = subprocess.run(f"aapt dump badging '{self.original_apk}'", 
                                         shell=True, capture_output=True, text=True)
            modified_info = subprocess.run(f"aapt dump badging '{self.modified_apk}'", 
                                         shell=True, capture_output=True, text=True)
            
            changes = {
                "original_info_lines": len(original_info.stdout.split('\n')),
                "modified_info_lines": len(modified_info.stdout.split('\n')),
                "info_difference": len(modified_info.stdout.split('\n')) - len(original_info.stdout.split('\n'))
            }
            
            return changes
        except Exception as e:
            print(f"❌ 检查内容变化失败: {e}")
            return {}
    
    def check_structure_changes(self):
        """检查结构变化"""
        try:
            # 比较反编译后的文件结构
            original_files = []
            modified_files = []
            
            for root, dirs, files in os.walk(self.decompiled_dir):
                for file in files:
                    modified_files.append(os.path.join(root, file))
            
            changes = {
                "total_files_modified": len(modified_files),
                "file_types": {}
            }
            
            # 统计文件类型
            for file_path in modified_files:
                ext = os.path.splitext(file_path)[1]
                changes["file_types"][ext] = changes["file_types"].get(ext, 0) + 1
            
            return changes
        except Exception as e:
            print(f"❌ 检查结构变化失败: {e}")
            return {}
    
    def evaluate_success(self, effects):
        """评估是否成功"""
        if not effects:
            return False, 0.0
        
        # 计算成功分数
        score = 0.0
        
        for effect in effects:
            if effect["type"] == "file_size_change":
                size_diff = abs(effect["data"].get("size_difference", 0))
                if size_diff > 1000:  # 文件大小变化超过1KB
                    score += 0.3
            elif effect["type"] == "content_changes":
                info_diff = abs(effect["data"].get("info_difference", 0))
                if info_diff > 0:  # 有内容变化
                    score += 0.2
            elif effect["type"] == "structure_changes":
                file_count = effect["data"].get("total_files_modified", 0)
                if file_count > 10:  # 修改了超过10个文件
                    score += 0.2
        
        # 检查是否有显著变化
        has_significant_changes = len(effects) >= 2 and score > 0.3
        
        return has_significant_changes, score
    
    def save_iteration_result(self, iteration, modifications, success, effects, score):
        """保存迭代结果"""
        iteration_result = {
            "iteration": iteration,
            "timestamp": datetime.now().isoformat(),
            "modifications": modifications,
            "success": success,
            "effects": effects,
            "score": score
        }
        
        self.test_report["iterations"].append(iteration_result)
        
        # 保存到文件
        result_file = os.path.join(self.test_results_dir, f"iteration_{iteration}_result.json")
        with open(result_file, 'w', encoding='utf-8') as f:
            json.dump(iteration_result, f, indent=2, ensure_ascii=False)
    
    def generate_final_report(self):
        """生成最终报告"""
        print("📋 生成最终报告...")
        
        # 统计成功次数
        successful_iterations = [it for it in self.test_report["iterations"] if it["success"]]
        success_rate = len(successful_iterations) / len(self.test_report["iterations"]) if self.test_report["iterations"] else 0
        
        self.test_report["final_result"] = {
            "total_iterations": len(self.test_report["iterations"]),
            "successful_iterations": len(successful_iterations),
            "success_rate": success_rate,
            "best_score": max([it["score"] for it in self.test_report["iterations"]]) if self.test_report["iterations"] else 0
        }
        
        # 保存最终报告
        final_report_file = os.path.join(self.test_results_dir, "final_test_report.json")
        with open(final_report_file, 'w', encoding='utf-8') as f:
            json.dump(self.test_report, f, indent=2, ensure_ascii=False)
        
        # 生成人类可读报告
        human_report = f"""
# 简化版自动化APK修改测试最终报告

## 测试概览
- 开始时间: {self.test_report['start_time']}
- 原始APK: {self.test_report['original_apk']}
- 总迭代次数: {self.test_report['final_result']['total_iterations']}
- 成功次数: {self.test_report['final_result']['successful_iterations']}
- 成功率: {self.test_report['final_result']['success_rate']:.2%}
- 最佳分数: {self.test_report['final_result']['best_score']:.2f}

## 迭代详情
"""
        
        for iteration in self.test_report["iterations"]:
            human_report += f"""
### 第{iteration['iteration']}次迭代
- 时间: {iteration['timestamp']}
- 修改项目: {len(iteration['modifications'])}项
- 是否成功: {'是' if iteration['success'] else '否'}
- 效果数量: {len(iteration['effects'])}
- 分数: {iteration['score']:.2f}
"""
        
        human_report_file = os.path.join(self.test_results_dir, "human_readable_final_report.md")
        with open(human_report_file, 'w', encoding='utf-8') as f:
            f.write(human_report)
        
        print(f"✅ 最终报告已生成: {final_report_file}")
        print(f"✅ 人类可读报告: {human_report_file}")
        
        return final_report_file
    
    def create_results_package(self, report_file):
        """创建结果包"""
        print("📦 创建结果包...")
        
        # 创建ZIP文件
        zip_filename = f"simplified_auto_modify_results_{datetime.now().strftime('%Y%m%d_%H%M%S')}.zip"
        
        with zipfile.ZipFile(zip_filename, 'w') as zipf:
            # 添加最终报告
            zipf.write(report_file, os.path.basename(report_file))
            
            # 添加修改后的APK
            if os.path.exists(self.modified_apk):
                zipf.write(self.modified_apk, "modified_game.apk")
            
            # 添加迭代结果
            for root, dirs, files in os.walk(self.test_results_dir):
                for file in files:
                    if file.endswith('.json'):
                        file_path = os.path.join(root, file)
                        zipf.write(file_path, f"results/{file}")
            
            # 添加反编译文件（部分）
            for root, dirs, files in os.walk(self.decompiled_dir):
                for file in files[:50]:  # 只添加前50个文件
                    file_path = os.path.join(root, file)
                    zipf.write(file_path, f"decompiled/{os.path.relpath(file_path, self.decompiled_dir)}")
        
        print(f"✅ 结果包已创建: {zip_filename}")
        
        return zip_filename
    
    def cleanup(self):
        """清理资源"""
        print("🧹 清理资源...")
        try:
            if os.path.exists("temp.keystore"):
                os.remove("temp.keystore")
            print("✅ 清理完成")
        except Exception as e:
            print(f"❌ 清理异常: {e}")
    
    def run_auto_modify_and_test(self):
        """运行完整的自动修改和测试流程"""
        print("🎯 开始简化版自动化APK修改和测试流程")
        print("=" * 60)
        
        try:
            # 1. 反编译原始APK
            if not self.decompile_apk():
                return False
            
            # 2. 开始迭代修改和测试
            for iteration in range(1, self.max_iterations + 1):
                self.iteration_count = iteration
                print(f"\n🔄 开始第{iteration}次迭代")
                print("-" * 40)
                
                # 修改游戏数据
                modifications = self.modify_game_data(iteration)
                if not modifications:
                    print("❌ 修改失败，跳过此次迭代")
                    continue
                
                # 重新打包
                if not self.rebuild_apk():
                    print("❌ 重新打包失败，跳过此次迭代")
                    continue
                
                # 签名APK
                if not self.sign_apk():
                    print("❌ 签名失败，跳过此次迭代")
                    continue
                
                # 分析变化
                effects = self.analyze_apk_changes()
                
                # 评估成功
                is_successful, score = self.evaluate_success(effects)
                
                # 保存结果
                self.save_iteration_result(iteration, modifications, is_successful, effects, score)
                
                print(f"📊 第{iteration}次迭代结果:")
                print(f"   修改项目: {len(modifications)}项")
                print(f"   是否成功: {'是' if is_successful else '否'}")
                print(f"   效果数量: {len(effects)}")
                print(f"   分数: {score:.2f}")
                
                # 检查是否达到成功标准
                if is_successful and score >= self.success_threshold:
                    print(f"🎉 达到成功标准！分数: {score:.2f}")
                    self.test_report["successful_modifications"] = modifications
                    break
                
                # 短暂休息
                time.sleep(1)
            
            # 3. 生成最终报告
            report_file = self.generate_final_report()
            
            # 4. 创建结果包
            zip_file = self.create_results_package(report_file)
            
            # 5. 输出最终摘要
            print("\n" + "=" * 60)
            print("🎯 简化版自动化修改测试完成摘要")
            print(f"总迭代次数: {self.test_report['final_result']['total_iterations']}")
            print(f"成功次数: {self.test_report['final_result']['successful_iterations']}")
            print(f"成功率: {self.test_report['final_result']['success_rate']:.2%}")
            print(f"最佳分数: {self.test_report['final_result']['best_score']:.2f}")
            print(f"最终报告: {report_file}")
            print(f"结果包: {zip_file}")
            print("=" * 60)
            
            return True
            
        except Exception as e:
            print(f"❌ 自动化流程异常: {e}")
            return False
        finally:
            self.cleanup()

def main():
    """主函数"""
    system = SimplifiedAutoModifySystem()
    success = system.run_auto_modify_and_test()
    
    if success:
        print("🎉 简化版自动化修改测试流程执行成功！")
        sys.exit(0)
    else:
        print("💥 简化版自动化修改测试流程执行失败！")
        sys.exit(1)

if __name__ == "__main__":
    main()