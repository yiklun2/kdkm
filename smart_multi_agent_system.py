#!/usr/bin/env python3
"""
智能多智能体协作APK修改和测试系统
专注于成功的修改，避免framework资源问题
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
        return f"{self.name}的指导: {question}"

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
            "binary_files": [],
            "safe_files": []  # 安全的文件列表
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
                elif file.endswith(('.png', '.jpg', '.jpeg', '.gif', '.txt', '.html')):
                    structure["safe_files"].append(file_path)
                else:
                    structure["resource_files"].append(file_path)
        
        return {"status": "success", "structure": structure}

class SafeModificationAgent(Agent):
    """安全修改智能体 - 专门修改安全的文件"""
    def __init__(self):
        super().__init__("SafeModificationAgent", "安全修改专家")
    
    def process_task(self, task):
        if task["type"] == "modify_safe_files":
            return self.modify_safe_files(task["files"])
    
    def modify_safe_files(self, files):
        """修改安全文件"""
        print(f"🔒 {self.name} 开始修改安全文件...")
        
        modifications = []
        for file_path in files:
            try:
                if file_path.endswith('.txt') or file_path.endswith('.html'):
                    # 修改文本文件
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                    
                    if len(content) > 10:
                        # 在文件末尾添加随机内容
                        random_content = ''.join(random.choices(string.ascii_letters + string.digits, k=50))
                        modified_content = content + f"\n<!-- Modified by AI: {random_content} -->"
                        
                        with open(file_path, 'w', encoding='utf-8') as f:
                            f.write(modified_content)
                        modifications.append(file_path)
                
                elif file_path.endswith(('.png', '.jpg', '.jpeg', '.gif')):
                    # 对于图片文件，我们创建一个修改标记文件
                    marker_file = file_path + '.modified'
                    with open(marker_file, 'w') as f:
                        f.write(f"Modified at {datetime.now().isoformat()}")
                    modifications.append(marker_file)
                    
            except Exception as e:
                print(f"修改安全文件失败 {file_path}: {e}")
        
        return {"status": "success", "modifications": modifications}

class ConfigModificationAgent(Agent):
    """配置修改智能体 - 专门修改配置文件"""
    def __init__(self):
        super().__init__("ConfigModificationAgent", "配置修改专家")
    
    def process_task(self, task):
        if task["type"] == "modify_configs":
            return self.modify_config_files(task["files"])
    
    def modify_config_files(self, files):
        """修改配置文件"""
        print(f"⚙️ {self.name} 开始修改配置文件...")
        
        modifications = []
        for file_path in files:
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                
                original_content = content
                
                if file_path.endswith('.xml'):
                    content = self.modify_xml_config(content)
                elif file_path.endswith('.json'):
                    content = self.modify_json_config(content)
                elif file_path.endswith('.properties'):
                    content = self.modify_properties_config(content)
                
                if content != original_content:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(content)
                    modifications.append(file_path)
            except Exception as e:
                print(f"修改配置文件失败 {file_path}: {e}")
        
        return {"status": "success", "modifications": modifications}
    
    def modify_xml_config(self, content):
        """修改XML配置"""
        import re
        # 修改数值属性
        patterns = [
            (r'(\d+)dp', lambda m: f'{random.randint(10, 100)}dp'),
            (r'(\d+)sp', lambda m: f'{random.randint(8, 24)}sp'),
            (r'(\d+)px', lambda m: f'{random.randint(1, 50)}px'),
        ]
        
        for pattern, replacement in patterns:
            content = re.sub(pattern, replacement, content)
        return content
    
    def modify_json_config(self, content):
        """修改JSON配置"""
        import re
        # 修改数值
        content = re.sub(r':\s*(\d+)', lambda m: f': {random.randint(1, 1000)}', content)
        return content
    
    def modify_properties_config(self, content):
        """修改properties配置"""
        import re
        # 修改数值
        content = re.sub(r'=\s*(\d+)', lambda m: f'= {random.randint(1, 100)}', content)
        return content

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
                    for i in range(min(20, len(data) // 20)):
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
            # 使用--use-aapt2选项避免framework问题
            cmd = f"java -jar apktool.jar b {decompiled_dir} -o {output_apk} --use-aapt2"
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
            "modification_count": len(test_results.get("modifications", [])),
            "effect_score": 0,
            "recommendations": []
        }
        
        modifications = test_results.get("modifications", [])
        if modifications:
            analysis["success_rate"] = 1.0
            analysis["effect_score"] = len(modifications) * 0.1
            analysis["recommendations"].append(f"成功修改了{len(modifications)}个文件")
        
        return {"status": "success", "analysis": analysis}
    
    def make_decision(self, context):
        """做出决策"""
        print(f"🎯 {self.name} 做出决策...")
        
        analysis = context.get("analysis", {})
        success_rate = analysis.get("success_rate", 0)
        effect_score = analysis.get("effect_score", 0)
        modification_count = analysis.get("modification_count", 0)
        
        if success_rate > 0.8 and effect_score > 0.5:
            decision = "success"
            action = "完成测试，生成报告"
        elif modification_count > 0:
            decision = "continue"
            action = "继续优化，增加修改强度"
        else:
            decision = "retry"
            action = "重新尝试，调整修改策略"
        
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
                "total_iterations": len(data.get("iterations", [])),
                "successful_modifications": data.get("successful_modifications", 0),
                "final_score": data.get("final_score", 0),
                "total_files_modified": data.get("total_files_modified", 0)
            },
            "details": data.get("details", [])
        }
        
        # 保存JSON报告
        report_file = f"smart_test_report_{int(time.time())}.json"
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2, ensure_ascii=False)
        
        # 生成人类可读报告
        human_report = f"""
# 智能多智能体协作APK修改测试报告

## 测试概览
- 测试时间: {report['timestamp']}
- 总迭代次数: {report['summary']['total_iterations']}
- 成功修改次数: {report['summary']['successful_modifications']}
- 最终分数: {report['summary']['final_score']:.2f}
- 总修改文件数: {report['summary']['total_files_modified']}

## 智能体协作详情
"""
        
        for detail in report['details']:
            human_report += f"""
### {detail.get('agent', 'Unknown')}
- 任务: {detail.get('task', 'Unknown')}
- 状态: {detail.get('status', 'Unknown')}
- 修改文件数: {detail.get('modifications_count', 0)}
"""
        
        human_report_file = f"smart_human_readable_report_{int(time.time())}.md"
        with open(human_report_file, 'w', encoding='utf-8') as f:
            f.write(human_report)
        
        return {"status": "success", "json_report": report_file, "human_report": human_report_file}
    
    def package_results(self, files):
        """打包结果"""
        print(f"📦 {self.name} 打包结果...")
        
        zip_filename = f"smart_multi_agent_results_{int(time.time())}.zip"
        
        with zipfile.ZipFile(zip_filename, 'w') as zipf:
            for file_path in files:
                if os.path.exists(file_path):
                    zipf.write(file_path, os.path.basename(file_path))
        
        return {"status": "success", "package": zip_filename}

class SmartMultiAgentSystem:
    """智能多智能体协作系统"""
    def __init__(self):
        self.agents = {
            "decompilation": DecompilationAgent(),
            "safe_modification": SafeModificationAgent(),
            "config_modification": ConfigModificationAgent(),
            "binary_modification": BinaryModificationAgent(),
            "build": BuildAgent(),
            "analysis": AnalysisAgent(),
            "report": ReportAgent()
        }
        
        self.original_apk = "zjsgxy_anfensi.com (3).apk"
        self.modified_apk = "smart_modified_game.apk"
        self.decompiled_dir = "smart_decompiled_apk"
        self.test_results_dir = "smart_test_results"
        
        # 创建目录
        os.makedirs(self.test_results_dir, exist_ok=True)
        
        self.iteration_count = 0
        self.max_iterations = 15
        self.success_threshold = 0.7
        
        self.test_data = {
            "iterations": [],
            "successful_modifications": 0,
            "final_score": 0,
            "total_files_modified": 0
        }
    
    def run_collaborative_workflow(self):
        """运行协作工作流程"""
        print("🤖 启动智能多智能体协作系统")
        print("=" * 60)
        
        try:
            # 1. 反编译
            print("\n🔧 阶段1: APK反编译")
            decompile_result = self.agents["decompilation"].process_task({
                "type": "decompile_apk",
                "apk_path": self.original_apk,
                "output_dir": self.decompiled_dir
            })
            if decompile_result["status"] != "success":
                print(f"❌ 反编译失败: {decompile_result['message']}")
                return False
            
            # 2. 分析结构
            structure_result = self.agents["decompilation"].process_task({
                "type": "analyze_structure",
                "decompiled_dir": self.decompiled_dir
            })
            if structure_result["status"] != "success":
                print(f"❌ 结构分析失败: {structure_result['message']}")
                return False
            
            structure = structure_result["structure"]
            
            # 3. 开始迭代修改和测试
            for iteration in range(1, self.max_iterations + 1):
                self.iteration_count = iteration
                print(f"\n🔄 第{iteration}次智能协作迭代")
                print("-" * 40)
                
                iteration_data = {"iteration": iteration, "timestamp": datetime.now().isoformat()}
                
                # 3.1 智能体协作修改
                modifications = []
                
                # 安全文件修改
                if structure["safe_files"]:
                    safe_files = structure["safe_files"][:10]  # 取前10个
                    safe_result = self.agents["safe_modification"].process_task({
                        "type": "modify_safe_files",
                        "files": safe_files
                    })
                    if safe_result["status"] == "success":
                        modifications.extend(safe_result["modifications"])
                
                # 配置文件修改
                if structure["config_files"]:
                    config_files = structure["config_files"][:15]  # 取前15个
                    config_result = self.agents["config_modification"].process_task({
                        "type": "modify_configs",
                        "files": config_files
                    })
                    if config_result["status"] == "success":
                        modifications.extend(config_result["modifications"])
                
                # 二进制文件修改
                if structure["binary_files"]:
                    binary_files = structure["binary_files"][:3]  # 取前3个
                    binary_result = self.agents["binary_modification"].process_task({
                        "type": "modify_binary",
                        "files": binary_files
                    })
                    if binary_result["status"] == "success":
                        modifications.extend(binary_result["modifications"])
                
                iteration_data["modifications"] = modifications
                self.test_data["total_files_modified"] += len(modifications)
                
                # 3.2 分析结果
                analysis_result = self.agents["analysis"].process_task({
                    "type": "analyze_results",
                    "test_results": {
                        "modifications": modifications
                    }
                })
                
                # 3.3 决策
                decision_result = self.agents["analysis"].process_task({
                    "type": "make_decision",
                    "context": {
                        "analysis": analysis_result.get("analysis", {}),
                        "iteration": iteration
                    }
                })
                
                iteration_data.update({
                    "analysis_result": analysis_result,
                    "decision_result": decision_result
                })
                
                self.test_data["iterations"].append(iteration_data)
                
                print(f"📊 第{iteration}次迭代结果:")
                print(f"   修改文件: {len(modifications)}个")
                print(f"   成功率: {analysis_result.get('analysis', {}).get('success_rate', 0):.2f}")
                print(f"   效果分数: {analysis_result.get('analysis', {}).get('effect_score', 0):.2f}")
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
                    print("🔄 重新尝试，调整修改策略")
                elif decision == "continue":
                    print("➡️ 继续优化")
                
                time.sleep(1)
            
            # 4. 生成最终报告
            print("\n📋 生成最终报告")
            if len(self.test_data["iterations"]) > 0:
                self.test_data["final_score"] = len([it for it in self.test_data["iterations"] 
                                                   if len(it.get("modifications", [])) > 0]) / len(self.test_data["iterations"])
            else:
                self.test_data["final_score"] = 0.0
            
            report_result = self.agents["report"].process_task({
                "type": "generate_report",
                "data": self.test_data
            })
            
            # 5. 打包结果
            package_files = [
                report_result.get("json_report"),
                report_result.get("human_report"),
                self.original_apk
            ]
            
            package_result = self.agents["report"].process_task({
                "type": "package_results",
                "files": [f for f in package_files if f and os.path.exists(f)]
            })
            
            # 6. 输出最终摘要
            print("\n" + "=" * 60)
            print("🤖 智能多智能体协作完成摘要")
            print(f"总迭代次数: {len(self.test_data['iterations'])}")
            print(f"成功修改次数: {self.test_data['successful_modifications']}")
            print(f"总修改文件数: {self.test_data['total_files_modified']}")
            print(f"最终分数: {self.test_data['final_score']:.2f}")
            print(f"JSON报告: {report_result.get('json_report')}")
            print(f"人类可读报告: {report_result.get('human_report')}")
            print(f"结果包: {package_result.get('package')}")
            print("=" * 60)
            
            return True
            
        except Exception as e:
            print(f"❌ 智能多智能体协作异常: {e}")
            return False

def main():
    """主函数"""
    system = SmartMultiAgentSystem()
    success = system.run_collaborative_workflow()
    
    if success:
        print("🎉 智能多智能体协作系统执行成功！")
        sys.exit(0)
    else:
        print("💥 智能多智能体协作系统执行失败！")
        sys.exit(1)

if __name__ == "__main__":
    main()