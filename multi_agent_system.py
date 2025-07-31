#!/usr/bin/env python3
"""
多智能体协作APK修改和测试系统
包含10个专门化智能体，互相协作、互相指导
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
import threading
import queue
from abc import ABC, abstractmethod

class Agent(ABC):
    """智能体基类"""
    def __init__(self, name, role):
        self.name = name
        self.role = role
        self.knowledge_base = {}
        self.task_queue = queue.Queue()
        self.results_queue = queue.Queue()
        self.is_running = False
        
    @abstractmethod
    def process_task(self, task):
        """处理任务的核心逻辑"""
        pass
    
    def share_knowledge(self, other_agent, knowledge):
        """与其他智能体分享知识"""
        other_agent.knowledge_base.update(knowledge)
        print(f"🤝 {self.name} 向 {other_agent.name} 分享知识")
    
    def request_guidance(self, other_agent, question):
        """向其他智能体请求指导"""
        guidance = other_agent.provide_guidance(question)
        print(f"❓ {self.name} 向 {other_agent.name} 请求指导: {question}")
        return guidance
    
    def provide_guidance(self, question):
        """为其他智能体提供指导"""
        # 基于知识库提供指导
        return f"{self.name}的指导: {question}"

class EnvironmentAgent(Agent):
    """环境管理智能体 - 负责Docker、模拟器环境"""
    def __init__(self):
        super().__init__("EnvironmentAgent", "环境管理专家")
        self.docker_image = "beevelop/android"
        self.docker_container = "my_android_tester"
    
    def process_task(self, task):
        if task["type"] == "setup_environment":
            return self.setup_environment()
        elif task["type"] == "check_environment":
            return self.check_environment()
        elif task["type"] == "cleanup_environment":
            return self.cleanup_environment()
    
    def setup_environment(self):
        """设置测试环境"""
        print(f"🔧 {self.name} 开始设置环境...")
        
        # 检查docker
        if not self.check_docker():
            return {"status": "error", "message": "Docker未安装或未运行"}
        
        # 拉取镜像
        if not self.pull_image():
            return {"status": "error", "message": "镜像拉取失败"}
        
        # 启动容器
        if not self.start_container():
            return {"status": "error", "message": "容器启动失败"}
        
        return {"status": "success", "message": "环境设置完成"}
    
    def check_docker(self):
        """检查Docker状态"""
        try:
            result = subprocess.run(["sudo", "docker", "info"], capture_output=True, text=True)
            return result.returncode == 0
        except:
            return False
    
    def pull_image(self):
        """拉取Docker镜像"""
        try:
            result = subprocess.run(["sudo", "docker", "pull", self.docker_image], capture_output=True, text=True)
            return result.returncode == 0
        except:
            return False
    
    def start_container(self):
        """启动容器"""
        try:
            # 停止旧容器
            subprocess.run(["sudo", "docker", "rm", "-f", self.docker_container], capture_output=True)
            
            # 启动新容器
            cmd = [
                "sudo", "docker", "run", "-d", "--privileged",
                "-p", "5555:5555",
                "--name", self.docker_container,
                self.docker_image
            ]
            result = subprocess.run(cmd, capture_output=True, text=True)
            if result.returncode == 0:
                time.sleep(30)  # 等待启动
                return True
            return False
        except:
            return False

class DecompilationAgent(Agent):
    """反编译智能体 - 负责APK反编译"""
    def __init__(self):
        super().__init__("DecompilationAgent", "反编译专家")
    
    def process_task(self, task):
        if task["type"] == "decompile_apk":
            return self.decompile_apk(task["apk_path"], task["output_dir"])
        elif task["type"] == "analyze_structure":
            return self.analyze_structure(task["decompiled_dir"])
    
    def decompile_apk(self, apk_path, output_dir):
        """反编译APK"""
        print(f"🔧 {self.name} 开始反编译APK...")
        
        try:
            # 清理输出目录
            if os.path.exists(output_dir):
                shutil.rmtree(output_dir)
            
            # 使用apktool反编译
            cmd = f"java -jar apktool.jar d '{apk_path}' -o {output_dir}"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                return {"status": "success", "output_dir": output_dir}
            else:
                return {"status": "error", "message": result.stderr}
        except Exception as e:
            return {"status": "error", "message": str(e)}
    
    def analyze_structure(self, decompiled_dir):
        """分析反编译后的结构"""
        structure = {
            "smali_files": [],
            "resource_files": [],
            "config_files": [],
            "binary_files": []
        }
        
        for root, dirs, files in os.walk(decompiled_dir):
            for file in files:
                file_path = os.path.join(root, file)
                if file.endswith('.smali'):
                    structure["smali_files"].append(file_path)
                elif file.endswith(('.xml', '.json', '.properties')):
                    structure["config_files"].append(file_path)
                elif file.endswith(('.so', '.dex', '.bin')):
                    structure["binary_files"].append(file_path)
                else:
                    structure["resource_files"].append(file_path)
        
        return {"status": "success", "structure": structure}

class SmaliModificationAgent(Agent):
    """Smali修改智能体 - 专门修改smali代码"""
    def __init__(self):
        super().__init__("SmaliModificationAgent", "Smali代码修改专家")
    
    def process_task(self, task):
        if task["type"] == "modify_smali":
            return self.modify_smali_files(task["files"], task["modification_type"])
    
    def modify_smali_files(self, files, modification_type):
        """修改smali文件"""
        print(f"🔨 {self.name} 开始修改smali文件...")
        
        modifications = []
        for file_path in files:
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                
                original_content = content
                
                if modification_type == "integer_constants":
                    content = self.modify_integer_constants(content)
                elif modification_type == "string_constants":
                    content = self.modify_string_constants(content)
                elif modification_type == "float_constants":
                    content = self.modify_float_constants(content)
                
                if content != original_content:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(content)
                    modifications.append(file_path)
            except Exception as e:
                print(f"修改文件失败 {file_path}: {e}")
        
        return {"status": "success", "modifications": modifications}
    
    def modify_integer_constants(self, content):
        """修改整数常量"""
        import re
        patterns = [
            (r'const/16 (v\d+), (0x[0-9a-fA-F]+)', lambda m: f'const/16 {m.group(1)}, 0x{random.randint(1, 65535):04x}'),
            (r'const (v\d+), (0x[0-9a-fA-F]+)', lambda m: f'const {m.group(1)}, 0x{random.randint(1, 16777215):06x}'),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        return content
    
    def modify_string_constants(self, content):
        """修改字符串常量"""
        import re
        pattern = r'const-string (v\d+), "([^"]*)"'
        def replace_string(match):
            original = match.group(2)
            if len(original) > 0:
                modified = ''.join(random.choices(string.ascii_letters + string.digits, k=len(original)))
                return f'const-string {match.group(1)}, "{modified}"'
            return match.group(0)
        
        return re.sub(pattern, replace_string, content)
    
    def modify_float_constants(self, content):
        """修改浮点数常量"""
        import re
        pattern = r'const/high16 (v\d+), (0x[0-9a-fA-F]+)'
        def replace_float(match):
            return f'const/high16 {match.group(1)}, 0x{random.randint(1, 65535):04x}'
        
        return re.sub(pattern, replace_float, content)

class ResourceModificationAgent(Agent):
    """资源修改智能体 - 专门修改资源文件"""
    def __init__(self):
        super().__init__("ResourceModificationAgent", "资源文件修改专家")
    
    def process_task(self, task):
        if task["type"] == "modify_resources":
            return self.modify_resource_files(task["files"])
    
    def modify_resource_files(self, files):
        """修改资源文件"""
        print(f"🎨 {self.name} 开始修改资源文件...")
        
        modifications = []
        for file_path in files:
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                
                original_content = content
                
                if file_path.endswith('.xml'):
                    content = self.modify_xml_values(content)
                else:
                    content = self.modify_text_content(content)
                
                if content != original_content:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(content)
                    modifications.append(file_path)
            except Exception as e:
                print(f"修改资源文件失败 {file_path}: {e}")
        
        return {"status": "success", "modifications": modifications}
    
    def modify_xml_values(self, content):
        """修改XML值"""
        import re
        patterns = [
            (r'android:layout_width="(\d+)dp"', lambda m: f'android:layout_width="{random.randint(50, 300)}dp"'),
            (r'android:layout_height="(\d+)dp"', lambda m: f'android:layout_height="{random.randint(50, 300)}dp"'),
            (r'android:textSize="(\d+)sp"', lambda m: f'android:textSize="{random.randint(10, 30)}sp"'),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        return content
    
    def modify_text_content(self, content):
        """修改文本内容"""
        import re
        return re.sub(r'\b(\d+)\b', lambda m: str(random.randint(1, 1000)), content)

class BinaryModificationAgent(Agent):
    """二进制修改智能体 - 专门修改二进制文件"""
    def __init__(self):
        super().__init__("BinaryModificationAgent", "二进制文件修改专家")
    
    def process_task(self, task):
        if task["type"] == "modify_binary":
            return self.modify_binary_files(task["files"])
    
    def modify_binary_files(self, files):
        """修改二进制文件"""
        print(f"🔧 {self.name} 开始修改二进制文件...")
        
        modifications = []
        for file_path in files:
            try:
                with open(file_path, 'rb') as f:
                    data = bytearray(f.read())
                
                if len(data) > 100:
                    # 随机修改字节
                    for i in range(min(50, len(data) // 10)):
                        pos = random.randint(0, len(data) - 1)
                        data[pos] = random.randint(0, 255)
                    
                    with open(file_path, 'wb') as f:
                        f.write(data)
                    modifications.append(file_path)
            except Exception as e:
                print(f"修改二进制文件失败 {file_path}: {e}")
        
        return {"status": "success", "modifications": modifications}

class BuildAgent(Agent):
    """构建智能体 - 负责APK重新打包和签名"""
    def __init__(self):
        super().__init__("BuildAgent", "APK构建专家")
    
    def process_task(self, task):
        if task["type"] == "rebuild_apk":
            return self.rebuild_apk(task["decompiled_dir"], task["output_apk"])
        elif task["type"] == "sign_apk":
            return self.sign_apk(task["apk_path"])
    
    def rebuild_apk(self, decompiled_dir, output_apk):
        """重新打包APK"""
        print(f"📦 {self.name} 开始重新打包APK...")
        
        try:
            cmd = f"java -jar apktool.jar b {decompiled_dir} -o {output_apk}"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0 and os.path.exists(output_apk):
                return {"status": "success", "apk_path": output_apk}
            else:
                return {"status": "error", "message": result.stderr}
        except Exception as e:
            return {"status": "error", "message": str(e)}
    
    def sign_apk(self, apk_path):
        """签名APK"""
        print(f"✍️ {self.name} 开始签名APK...")
        
        try:
            # 生成密钥
            keystore_path = "temp.keystore"
            if not os.path.exists(keystore_path):
                subprocess.run(f"keytool -genkey -v -keystore {keystore_path} -alias temp -keyalg RSA -keysize 2048 -validity 10000 -storepass password -keypass password -dname 'CN=Temp, OU=Temp, O=Temp, L=Temp, ST=Temp, C=US'", 
                             shell=True, capture_output=True)
            
            # 签名
            cmd = f"jarsigner -keystore {keystore_path} -storepass password -keypass password {apk_path} temp"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                return {"status": "success"}
            else:
                return {"status": "error", "message": result.stderr}
        except Exception as e:
            return {"status": "error", "message": str(e)}

class InstallationAgent(Agent):
    """安装智能体 - 负责APK安装和启动"""
    def __init__(self):
        super().__init__("InstallationAgent", "APK安装专家")
        self.device_id = "localhost:5555"
    
    def process_task(self, task):
        if task["type"] == "install_apk":
            return self.install_apk(task["apk_path"])
        elif task["type"] == "launch_app":
            return self.launch_app(task["package_name"])
    
    def install_apk(self, apk_path):
        """安装APK"""
        print(f"📱 {self.name} 开始安装APK...")
        
        try:
            # 连接设备
            subprocess.run(f"adb connect {self.device_id}", shell=True, capture_output=True)
            
            # 安装APK
            cmd = f"adb -s {self.device_id} install -r '{apk_path}'"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if "success" in result.stdout.lower():
                return {"status": "success"}
            else:
                return {"status": "error", "message": result.stderr}
        except Exception as e:
            return {"status": "error", "message": str(e)}
    
    def launch_app(self, package_name):
        """启动应用"""
        print(f"🚀 {self.name} 开始启动应用...")
        
        try:
            cmd = f"adb -s {self.device_id} shell am start -n {package_name}/.MainActivity"
            result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                time.sleep(5)  # 等待启动
                return {"status": "success"}
            else:
                return {"status": "error", "message": result.stderr}
        except Exception as e:
            return {"status": "error", "message": str(e)}

class TestingAgent(Agent):
    """测试智能体 - 负责测试和效果检测"""
    def __init__(self):
        super().__init__("TestingAgent", "测试专家")
        self.device_id = "localhost:5555"
    
    def process_task(self, task):
        if task["type"] == "test_app":
            return self.test_app(task["package_name"])
        elif task["type"] == "check_crash":
            return self.check_crash(task["package_name"])
        elif task["type"] == "analyze_effects":
            return self.analyze_effects()
    
    def test_app(self, package_name):
        """测试应用"""
        print(f"🧪 {self.name} 开始测试应用...")
        
        # 检查进程状态
        result = subprocess.run(f"adb -s {self.device_id} shell ps -A | grep {package_name}", 
                              shell=True, capture_output=True, text=True)
        
        if result.stdout.strip():
            return {"status": "success", "running": True}
        else:
            return {"status": "success", "running": False}
    
    def check_crash(self, package_name):
        """检查崩溃"""
        print(f"🔍 {self.name} 检查应用崩溃...")
        
        # 检查logcat中的崩溃信息
        result = subprocess.run(f"adb -s {self.device_id} logcat -d | grep -i 'fatal\\|crash\\|exception'", 
                              shell=True, capture_output=True, text=True)
        
        if result.stdout.strip():
            return {"status": "success", "crashed": True, "logs": result.stdout}
        else:
            return {"status": "success", "crashed": False}
    
    def analyze_effects(self):
        """分析修改效果"""
        print(f"📊 {self.name} 分析修改效果...")
        
        effects = []
        
        # 截图分析
        try:
            screenshot_path = self.take_screenshot()
            if screenshot_path:
                analysis = self.analyze_screenshot(screenshot_path)
                effects.append({"type": "visual", "data": analysis})
        except Exception as e:
            print(f"截图分析失败: {e}")
        
        # 内存使用分析
        try:
            memory_info = self.get_memory_usage()
            effects.append({"type": "memory", "data": memory_info})
        except Exception as e:
            print(f"内存分析失败: {e}")
        
        return {"status": "success", "effects": effects}
    
    def take_screenshot(self):
        """截图"""
        try:
            screenshot_path = f"screenshot_{int(time.time())}.png"
            subprocess.run(f"adb -s {self.device_id} shell screencap -p /sdcard/screenshot.png", shell=True, check=True)
            subprocess.run(f"adb -s {self.device_id} pull /sdcard/screenshot.png {screenshot_path}", shell=True, check=True)
            return screenshot_path
        except:
            return None
    
    def analyze_screenshot(self, screenshot_path):
        """分析截图"""
        try:
            image = cv2.imread(screenshot_path)
            if image is not None:
                height, width = image.shape[:2]
                mean_color = cv2.mean(image)
                return {
                    "resolution": f"{width}x{height}",
                    "mean_color": [int(c) for c in mean_color[:3]]
                }
        except:
            pass
        return {}
    
    def get_memory_usage(self):
        """获取内存使用"""
        try:
            result = subprocess.run(f"adb -s {self.device_id} shell dumpsys meminfo", 
                                  shell=True, capture_output=True, text=True)
            return {"memory_info": result.stdout[:500]}  # 只返回前500字符
        except:
            return {}

class AnalysisAgent(Agent):
    """分析智能体 - 负责结果分析和决策"""
    def __init__(self):
        super().__init__("AnalysisAgent", "分析决策专家")
    
    def process_task(self, task):
        if task["type"] == "analyze_results":
            return self.analyze_results(task["test_results"])
        elif task["type"] == "make_decision":
            return self.make_decision(task["context"])
    
    def analyze_results(self, test_results):
        """分析测试结果"""
        print(f"📈 {self.name} 分析测试结果...")
        
        analysis = {
            "success_rate": 0,
            "crash_rate": 0,
            "effect_score": 0,
            "recommendations": []
        }
        
        if test_results.get("running", False):
            analysis["success_rate"] = 1.0
            analysis["recommendations"].append("应用运行正常")
        else:
            analysis["crash_rate"] = 1.0
            analysis["recommendations"].append("应用可能崩溃")
        
        if test_results.get("crashed", False):
            analysis["crash_rate"] = 1.0
            analysis["recommendations"].append("检测到崩溃，需要修复")
        
        effects = test_results.get("effects", [])
        if effects:
            analysis["effect_score"] = len(effects) * 0.2
            analysis["recommendations"].append(f"检测到{len(effects)}种效果")
        
        return {"status": "success", "analysis": analysis}
    
    def make_decision(self, context):
        """做出决策"""
        print(f"🎯 {self.name} 做出决策...")
        
        analysis = context.get("analysis", {})
        success_rate = analysis.get("success_rate", 0)
        crash_rate = analysis.get("crash_rate", 0)
        effect_score = analysis.get("effect_score", 0)
        
        if success_rate > 0.8 and effect_score > 0.5:
            decision = "success"
            action = "完成测试，生成报告"
        elif crash_rate > 0.5:
            decision = "retry"
            action = "重新修改，减少破坏性改动"
        else:
            decision = "continue"
            action = "继续优化，增加修改强度"
        
        return {"status": "success", "decision": decision, "action": action}

class ReportAgent(Agent):
    """报告智能体 - 负责生成报告和打包结果"""
    def __init__(self):
        super().__init__("ReportAgent", "报告生成专家")
    
    def process_task(self, task):
        if task["type"] == "generate_report":
            return self.generate_report(task["data"])
        elif task["type"] == "package_results":
            return self.package_results(task["files"])
    
    def generate_report(self, data):
        """生成报告"""
        print(f"📋 {self.name} 生成报告...")
        
        report = {
            "timestamp": datetime.now().isoformat(),
            "summary": {
                "total_iterations": data.get("iterations", 0),
                "successful_modifications": data.get("successful_modifications", 0),
                "final_score": data.get("final_score", 0)
            },
            "details": data.get("details", [])
        }
        
        # 保存JSON报告
        report_file = f"test_report_{int(time.time())}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        # 生成人类可读报告
        human_report = f"""
# 多智能体协作APK修改测试报告

## 测试概览
- 测试时间: {report['timestamp']}
- 总迭代次数: {report['summary']['total_iterations']}
- 成功修改次数: {report['summary']['successful_modifications']}
- 最终分数: {report['summary']['final_score']:.2f}

## 智能体协作详情
"""
        
        for detail in report['details']:
            human_report += f"""
### {detail.get('agent', 'Unknown')}
- 任务: {detail.get('task', 'Unknown')}
- 状态: {detail.get('status', 'Unknown')}
- 结果: {detail.get('result', 'Unknown')}
"""
        
        human_report_file = f"human_readable_report_{int(time.time())}.md"
        with open(human_report_file, 'w', encoding='utf-8') as f:
            f.write(human_report)
        
        return {"status": "success", "json_report": report_file, "human_report": human_report_file}
    
    def package_results(self, files):
        """打包结果"""
        print(f"📦 {self.name} 打包结果...")
        
        zip_filename = f"multi_agent_results_{int(time.time())}.zip"
        
        with zipfile.ZipFile(zip_filename, 'w') as zipf:
            for file_path in files:
                if os.path.exists(file_path):
                    zipf.write(file_path, os.path.basename(file_path))
        
        return {"status": "success", "package": zip_filename}

class MultiAgentSystem:
    """多智能体协作系统"""
    def __init__(self):
        self.agents = {
            "environment": EnvironmentAgent(),
            "decompilation": DecompilationAgent(),
            "smali_modification": SmaliModificationAgent(),
            "resource_modification": ResourceModificationAgent(),
            "binary_modification": BinaryModificationAgent(),
            "build": BuildAgent(),
            "installation": InstallationAgent(),
            "testing": TestingAgent(),
            "analysis": AnalysisAgent(),
            "report": ReportAgent()
        }
        
        self.original_apk = "zjsgxy_anfensi.com (3).apk"
        self.modified_apk = "modified_game.apk"
        self.decompiled_dir = "decompiled_apk"
        self.test_results_dir = "test_results"
        
        # 创建目录
        os.makedirs(self.test_results_dir, exist_ok=True)
        
        self.iteration_count = 0
        self.max_iterations = 20
        self.success_threshold = 0.7
        
        self.test_data = {
            "iterations": [],
            "successful_modifications": 0,
            "final_score": 0
        }
    
    def run_collaborative_workflow(self):
        """运行协作工作流程"""
        print("🤖 启动多智能体协作系统")
        print("=" * 60)
        
        try:
            # 1. 环境设置
            print("\n🔧 阶段1: 环境设置")
            env_result = self.agents["environment"].process_task({"type": "setup_environment"})
            if env_result["status"] != "success":
                print(f"❌ 环境设置失败: {env_result['message']}")
                return False
            
            # 2. 反编译
            print("\n🔧 阶段2: APK反编译")
            decompile_result = self.agents["decompilation"].process_task({
                "type": "decompile_apk",
                "apk_path": self.original_apk,
                "output_dir": self.decompiled_dir
            })
            if decompile_result["status"] != "success":
                print(f"❌ 反编译失败: {decompile_result['message']}")
                return False
            
            # 3. 分析结构
            structure_result = self.agents["decompilation"].process_task({
                "type": "analyze_structure",
                "decompiled_dir": self.decompiled_dir
            })
            if structure_result["status"] != "success":
                print(f"❌ 结构分析失败: {structure_result['message']}")
                return False
            
            structure = structure_result["structure"]
            
            # 4. 开始迭代修改和测试
            for iteration in range(1, self.max_iterations + 1):
                self.iteration_count = iteration
                print(f"\n🔄 第{iteration}次协作迭代")
                print("-" * 40)
                
                iteration_data = {"iteration": iteration, "timestamp": datetime.now().isoformat()}
                
                # 4.1 智能体协作修改
                modifications = []
                
                # 根据迭代次数选择不同的修改策略
                if iteration <= 5:
                    # 前5次只修改资源文件，避免smali语法错误
                    if structure["resource_files"]:
                        resource_files = structure["resource_files"][:20]  # 取前20个
                        resource_result = self.agents["resource_modification"].process_task({
                            "type": "modify_resources",
                            "files": resource_files
                        })
                        if resource_result["status"] == "success":
                            modifications.extend(resource_result["modifications"])
                    
                    # 二进制修改
                    if structure["binary_files"]:
                        binary_files = structure["binary_files"][:3]  # 取前3个
                        binary_result = self.agents["binary_modification"].process_task({
                            "type": "modify_binary",
                            "files": binary_files
                        })
                        if binary_result["status"] == "success":
                            modifications.extend(binary_result["modifications"])
                else:
                    # 后续迭代增加smali修改
                    if structure["smali_files"]:
                        smali_files = structure["smali_files"][:5]  # 取前5个
                        smali_result = self.agents["smali_modification"].process_task({
                            "type": "modify_smali",
                            "files": smali_files,
                            "modification_type": "string_constants"  # 先修改字符串，更安全
                        })
                        if smali_result["status"] == "success":
                            modifications.extend(smali_result["modifications"])
                    
                    # 资源修改
                    if structure["resource_files"]:
                        resource_files = structure["resource_files"][:10]  # 取前10个
                        resource_result = self.agents["resource_modification"].process_task({
                            "type": "modify_resources",
                            "files": resource_files
                        })
                        if resource_result["status"] == "success":
                            modifications.extend(resource_result["modifications"])
                    
                    # 二进制修改
                    if structure["binary_files"]:
                        binary_files = structure["binary_files"][:2]  # 取前2个
                        binary_result = self.agents["binary_modification"].process_task({
                            "type": "modify_binary",
                            "files": binary_files
                        })
                        if binary_result["status"] == "success":
                            modifications.extend(binary_result["modifications"])
                
                iteration_data["modifications"] = modifications
                
                # 4.2 重新构建
                build_result = self.agents["build"].process_task({
                    "type": "rebuild_apk",
                    "decompiled_dir": self.decompiled_dir,
                    "output_apk": self.modified_apk
                })
                
                if build_result["status"] != "success":
                    print(f"❌ 重新构建失败: {build_result['message']}")
                    continue
                
                # 4.3 签名
                sign_result = self.agents["build"].process_task({
                    "type": "sign_apk",
                    "apk_path": self.modified_apk
                })
                
                if sign_result["status"] != "success":
                    print(f"❌ 签名失败: {sign_result['message']}")
                    continue
                
                # 4.4 安装
                install_result = self.agents["installation"].process_task({
                    "type": "install_apk",
                    "apk_path": self.modified_apk
                })
                
                if install_result["status"] != "success":
                    print(f"❌ 安装失败: {install_result['message']}")
                    continue
                
                # 4.5 测试
                test_result = self.agents["testing"].process_task({
                    "type": "test_app",
                    "package_name": "com.example.game"  # 默认包名
                })
                
                crash_result = self.agents["testing"].process_task({
                    "type": "check_crash",
                    "package_name": "com.example.game"
                })
                
                effects_result = self.agents["testing"].process_task({
                    "type": "analyze_effects"
                })
                
                # 4.6 分析结果
                analysis_result = self.agents["analysis"].process_task({
                    "type": "analyze_results",
                    "test_results": {
                        "running": test_result.get("running", False),
                        "crashed": crash_result.get("crashed", False),
                        "effects": effects_result.get("effects", [])
                    }
                })
                
                # 4.7 决策
                decision_result = self.agents["analysis"].process_task({
                    "type": "make_decision",
                    "context": {
                        "analysis": analysis_result.get("analysis", {}),
                        "iteration": iteration
                    }
                })
                
                iteration_data.update({
                    "test_result": test_result,
                    "crash_result": crash_result,
                    "effects_result": effects_result,
                    "analysis_result": analysis_result,
                    "decision_result": decision_result
                })
                
                self.test_data["iterations"].append(iteration_data)
                
                print(f"📊 第{iteration}次迭代结果:")
                print(f"   修改文件: {len(modifications)}个")
                print(f"   运行状态: {'正常' if test_result.get('running') else '异常'}")
                print(f"   崩溃状态: {'是' if crash_result.get('crashed') else '否'}")
                print(f"   效果数量: {len(effects_result.get('effects', []))}")
                print(f"   决策: {decision_result.get('decision')}")
                
                # 检查是否达到成功标准
                analysis = analysis_result.get("analysis", {})
                success_rate = analysis.get("success_rate", 0)
                effect_score = analysis.get("effect_score", 0)
                
                if success_rate > 0.8 and effect_score > 0.5:
                    print(f"🎉 达到成功标准！")
                    self.test_data["successful_modifications"] += 1
                    break
                
                # 根据决策调整策略
                decision = decision_result.get("decision")
                if decision == "retry":
                    print("🔄 重新尝试，减少修改强度")
                elif decision == "continue":
                    print("➡️ 继续优化")
                
                time.sleep(2)
            
            # 5. 生成最终报告
            print("\n📋 生成最终报告")
            if len(self.test_data["iterations"]) > 0:
                self.test_data["final_score"] = len([it for it in self.test_data["iterations"] 
                                                   if it.get("test_result", {}).get("running", False)]) / len(self.test_data["iterations"])
            else:
                self.test_data["final_score"] = 0.0
            
            report_result = self.agents["report"].process_task({
                "type": "generate_report",
                "data": self.test_data
            })
            
            # 6. 打包结果
            package_files = [
                report_result.get("json_report"),
                report_result.get("human_report"),
                self.modified_apk
            ]
            
            package_result = self.agents["report"].process_task({
                "type": "package_results",
                "files": [f for f in package_files if f and os.path.exists(f)]
            })
            
            # 7. 输出最终摘要
            print("\n" + "=" * 60)
            print("🤖 多智能体协作完成摘要")
            print(f"总迭代次数: {len(self.test_data['iterations'])}")
            print(f"成功修改次数: {self.test_data['successful_modifications']}")
            print(f"最终分数: {self.test_data['final_score']:.2f}")
            print(f"JSON报告: {report_result.get('json_report')}")
            print(f"人类可读报告: {report_result.get('human_report')}")
            print(f"结果包: {package_result.get('package')}")
            print("=" * 60)
            
            return True
            
        except Exception as e:
            print(f"❌ 多智能体协作异常: {e}")
            return False

def main():
    """主函数"""
    system = MultiAgentSystem()
    success = system.run_collaborative_workflow()
    
    if success:
        print("🎉 多智能体协作系统执行成功！")
        sys.exit(0)
    else:
        print("💥 多智能体协作系统执行失败！")
        sys.exit(1)

if __name__ == "__main__":
    main()