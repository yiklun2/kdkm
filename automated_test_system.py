#!/usr/bin/env python3
"""
自动化APK测试系统
功能：
1. 启动Docker安卓模拟器
2. 安装并测试APK
3. 检测闪退
4. 验证修改效果
5. 生成测试报告
"""

import os
import sys
import time
import subprocess
import json
import cv2
import numpy as np
from datetime import datetime
import requests
import zipfile
import shutil

class AutomatedAPKTester:
    def __init__(self):
        self.device_id = "localhost:5555"
        self.apk_path = "zjsgxy_anfensi.com (3).apk"
        self.test_results_dir = "test_results"
        self.screenshots_dir = "screenshots"
        self.logs_dir = "logs"
        
        # 创建必要的目录
        for dir_path in [self.test_results_dir, self.screenshots_dir, self.logs_dir]:
            os.makedirs(dir_path, exist_ok=True)
        
        self.test_report = {
            "test_time": datetime.now().isoformat(),
            "apk_name": self.apk_path,
            "crash_detected": False,
            "crash_reason": None,
            "effects_verified": [],
            "screenshots": [],
            "logs": [],
            "overall_result": "unknown"
        }
    
    def start_android_emulator(self):
        """启动Docker安卓模拟器"""
        print("🚀 启动Docker安卓模拟器...")
        try:
            # 停止可能存在的容器
            subprocess.run("docker-compose down", shell=True, check=False)
            
            # 启动新的容器
            result = subprocess.run("docker-compose up -d", shell=True, capture_output=True, text=True)
            if result.returncode != 0:
                print(f"❌ 启动模拟器失败: {result.stderr}")
                return False
            
            print("✅ 模拟器启动成功")
            
            # 等待模拟器完全启动
            print("⏳ 等待模拟器完全启动...")
            time.sleep(30)
            
            return True
        except Exception as e:
            print(f"❌ 启动模拟器异常: {e}")
            return False
    
    def connect_adb(self):
        """连接ADB到模拟器"""
        print("🔌 连接ADB...")
        try:
            # 等待设备连接
            for i in range(10):
                result = subprocess.run(f"adb connect {self.device_id}", shell=True, capture_output=True, text=True)
                if "connected" in result.stdout.lower():
                    print("✅ ADB连接成功")
                    return True
                time.sleep(5)
            
            print("❌ ADB连接失败")
            return False
        except Exception as e:
            print(f"❌ ADB连接异常: {e}")
            return False
    
    def install_apk(self):
        """安装APK到模拟器"""
        print(f"📱 安装APK: {self.apk_path}")
        try:
            result = subprocess.run(f"adb -s {self.device_id} install -r '{self.apk_path}'", 
                                  shell=True, capture_output=True, text=True)
            
            if "success" in result.stdout.lower():
                print("✅ APK安装成功")
                return True
            else:
                print(f"❌ APK安装失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ APK安装异常: {e}")
            return False
    
    def get_package_name(self):
        """获取APK的包名"""
        try:
            result = subprocess.run(f"aapt dump badging '{self.apk_path}' | grep package", 
                                  shell=True, capture_output=True, text=True)
            if result.returncode == 0:
                package_line = result.stdout.strip()
                package_name = package_line.split("'")[1]
                return package_name
        except:
            pass
        return "com.example.game"  # 默认包名
    
    def start_logcat_monitoring(self):
        """启动logcat监控"""
        print("📊 启动日志监控...")
        try:
            # 清除之前的日志
            subprocess.run(f"adb -s {self.device_id} logcat -c", shell=True, check=False)
            
            # 启动logcat进程
            logcat_process = subprocess.Popen(
                f"adb -s {self.device_id} logcat",
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                shell=True
            )
            
            return logcat_process
        except Exception as e:
            print(f"❌ 启动日志监控失败: {e}")
            return None
    
    def detect_crash(self, logcat_process, timeout=30):
        """检测应用是否崩溃"""
        print("🔍 检测应用崩溃...")
        crash_keywords = [
            "FATAL EXCEPTION",
            "Process.*has died",
            "CRASH",
            "NullPointerException",
            "IllegalStateException",
            "OutOfMemoryError"
        ]
        
        start_time = time.time()
        logs = []
        
        while time.time() - start_time < timeout:
            try:
                line = logcat_process.stdout.readline()
                if line:
                    logs.append(line.strip())
                    
                    # 检查崩溃关键词
                    for keyword in crash_keywords:
                        if keyword.lower() in line.lower():
                            print(f"❌ 检测到崩溃: {line.strip()}")
                            self.test_report["crash_detected"] = True
                            self.test_report["crash_reason"] = line.strip()
                            return True, logs
            except:
                break
        
        return False, logs
    
    def take_screenshot(self, filename):
        """截图"""
        try:
            screenshot_path = os.path.join(self.screenshots_dir, filename)
            subprocess.run(f"adb -s {self.device_id} shell screencap -p /sdcard/screenshot.png", shell=True, check=True)
            subprocess.run(f"adb -s {self.device_id} pull /sdcard/screenshot.png '{screenshot_path}'", shell=True, check=True)
            return screenshot_path
        except Exception as e:
            print(f"❌ 截图失败: {e}")
            return None
    
    def analyze_screenshot(self, screenshot_path):
        """分析截图，检测视觉效果"""
        if not screenshot_path or not os.path.exists(screenshot_path):
            return {}
        
        try:
            image = cv2.imread(screenshot_path)
            if image is None:
                return {}
            
            # 基础图像分析
            height, width = image.shape[:2]
            mean_color = cv2.mean(image)
            
            # 检测主要颜色
            hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
            color_hist = cv2.calcHist([hsv], [0], None, [180], [0, 180])
            dominant_hue = np.argmax(color_hist)
            
            analysis = {
                "resolution": f"{width}x{height}",
                "mean_color_bgr": [int(c) for c in mean_color[:3]],
                "dominant_hue": int(dominant_hue),
                "brightness": float(mean_color[2])
            }
            
            return analysis
        except Exception as e:
            print(f"❌ 图像分析失败: {e}")
            return {}
    
    def launch_game(self):
        """启动游戏"""
        print("🎮 启动游戏...")
        try:
            package_name = self.get_package_name()
            result = subprocess.run(f"adb -s {self.device_id} shell am start -n {package_name}/.MainActivity", 
                                  shell=True, capture_output=True, text=True)
            
            if result.returncode == 0:
                print("✅ 游戏启动成功")
                return True
            else:
                print(f"❌ 游戏启动失败: {result.stderr}")
                return False
        except Exception as e:
            print(f"❌ 游戏启动异常: {e}")
            return False
    
    def check_process_status(self):
        """检查进程状态"""
        try:
            package_name = self.get_package_name()
            result = subprocess.run(f"adb -s {self.device_id} shell ps -A | grep {package_name}", 
                                  shell=True, capture_output=True, text=True)
            
            if result.stdout.strip():
                return True  # 进程还在运行
            else:
                return False  # 进程已停止
        except:
            return False
    
    def run_automated_tests(self):
        """运行自动化测试"""
        print("🧪 运行自动化测试...")
        
        # 启动日志监控
        logcat_process = self.start_logcat_monitoring()
        if not logcat_process:
            return False
        
        # 启动游戏
        if not self.launch_game():
            return False
        
        # 等待游戏加载
        time.sleep(5)
        
        # 检查进程状态
        if not self.check_process_status():
            print("❌ 游戏进程未运行")
            self.test_report["crash_detected"] = True
            self.test_report["crash_reason"] = "Process not running after launch"
            return False
        
        # 检测崩溃
        crashed, logs = self.detect_crash(logcat_process, timeout=20)
        
        # 保存日志
        log_file = os.path.join(self.logs_dir, f"test_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt")
        with open(log_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(logs))
        self.test_report["logs"].append(log_file)
        
        if crashed:
            print("❌ 检测到游戏崩溃")
            return False
        
        # 截图分析
        print("📸 进行截图分析...")
        screenshot_path = self.take_screenshot(f"test_screenshot_{datetime.now().strftime('%Y%m%d_%H%M%S')}.png")
        if screenshot_path:
            self.test_report["screenshots"].append(screenshot_path)
            
            # 分析截图
            analysis = self.analyze_screenshot(screenshot_path)
            if analysis:
                self.test_report["effects_verified"].append({
                    "type": "visual_analysis",
                    "data": analysis,
                    "timestamp": datetime.now().isoformat()
                })
        
        # 再次检查进程状态
        if not self.check_process_status():
            print("❌ 游戏进程在测试过程中停止")
            self.test_report["crash_detected"] = True
            self.test_report["crash_reason"] = "Process stopped during testing"
            return False
        
        print("✅ 游戏运行稳定")
        return True
    
    def generate_test_report(self):
        """生成测试报告"""
        print("📋 生成测试报告...")
        
        # 确定整体结果
        if self.test_report["crash_detected"]:
            self.test_report["overall_result"] = "crashed"
        elif self.test_report["effects_verified"]:
            self.test_report["overall_result"] = "stable_with_effects"
        else:
            self.test_report["overall_result"] = "stable_no_effects"
        
        # 保存报告
        report_file = os.path.join(self.test_results_dir, f"test_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json")
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(self.test_report, f, indent=2, ensure_ascii=False)
        
        # 生成人类可读的报告
        human_readable_report = f"""
# APK自动化测试报告

## 测试信息
- 测试时间: {self.test_report['test_time']}
- APK文件: {self.test_report['apk_name']}
- 整体结果: {self.test_report['overall_result']}

## 崩溃检测
- 是否崩溃: {'是' if self.test_report['crash_detected'] else '否'}
- 崩溃原因: {self.test_report['crash_reason'] or '无'}

## 效果验证
- 验证项目数量: {len(self.test_report['effects_verified'])}
- 验证详情: {json.dumps(self.test_report['effects_verified'], indent=2, ensure_ascii=False)}

## 测试文件
- 截图数量: {len(self.test_report['screenshots'])}
- 日志文件: {len(self.test_report['logs'])}
"""
        
        human_report_file = os.path.join(self.test_results_dir, f"human_readable_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.md")
        with open(human_report_file, 'w', encoding='utf-8') as f:
            f.write(human_readable_report)
        
        print(f"✅ 测试报告已生成: {report_file}")
        print(f"✅ 人类可读报告: {human_report_file}")
        
        return report_file
    
    def upload_to_remote_repository(self, report_file):
        """上传测试结果到远程仓库"""
        print("📤 上传测试结果到远程仓库...")
        
        # 创建ZIP文件
        zip_filename = f"test_results_{datetime.now().strftime('%Y%m%d_%H%M%S')}.zip"
        
        with zipfile.ZipFile(zip_filename, 'w') as zipf:
            # 添加测试报告
            zipf.write(report_file, os.path.basename(report_file))
            
            # 添加截图
            for screenshot in self.test_report["screenshots"]:
                if os.path.exists(screenshot):
                    zipf.write(screenshot, f"screenshots/{os.path.basename(screenshot)}")
            
            # 添加日志
            for log_file in self.test_report["logs"]:
                if os.path.exists(log_file):
                    zipf.write(log_file, f"logs/{os.path.basename(log_file)}")
        
        print(f"✅ 测试结果已打包: {zip_filename}")
        
        # 这里可以添加实际的上传逻辑
        # 例如上传到GitHub、FTP服务器等
        print("📤 测试结果已准备上传（需要配置具体的上传目标）")
        
        return zip_filename
    
    def cleanup(self):
        """清理资源"""
        print("🧹 清理资源...")
        try:
            subprocess.run("docker-compose down", shell=True, check=False)
            print("✅ 清理完成")
        except Exception as e:
            print(f"❌ 清理异常: {e}")
    
    def run_full_test(self):
        """运行完整测试流程"""
        print("🎯 开始完整APK自动化测试流程")
        print("=" * 50)
        
        try:
            # 1. 启动模拟器
            if not self.start_android_emulator():
                return False
            
            # 2. 连接ADB
            if not self.connect_adb():
                return False
            
            # 3. 安装APK
            if not self.install_apk():
                return False
            
            # 4. 运行测试
            test_success = self.run_automated_tests()
            
            # 5. 生成报告
            report_file = self.generate_test_report()
            
            # 6. 上传结果
            zip_file = self.upload_to_remote_repository(report_file)
            
            # 7. 输出结果摘要
            print("\n" + "=" * 50)
            print("🎯 测试完成摘要")
            print(f"整体结果: {self.test_report['overall_result']}")
            print(f"是否崩溃: {'是' if self.test_report['crash_detected'] else '否'}")
            print(f"效果验证: {len(self.test_report['effects_verified'])} 项")
            print(f"测试报告: {report_file}")
            print(f"结果包: {zip_file}")
            print("=" * 50)
            
            return test_success
            
        except Exception as e:
            print(f"❌ 测试流程异常: {e}")
            return False
        finally:
            self.cleanup()

def main():
    """主函数"""
    tester = AutomatedAPKTester()
    success = tester.run_full_test()
    
    if success:
        print("🎉 测试流程执行成功！")
        sys.exit(0)
    else:
        print("💥 测试流程执行失败！")
        sys.exit(1)

if __name__ == "__main__":
    main()