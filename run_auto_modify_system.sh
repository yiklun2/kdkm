#!/bin/bash

echo "🎯 启动自动化APK修改和测试系统"
echo "=================================="

# 检查必要文件
if [ ! -f "zjsgxy_anfensi.com (3).apk" ]; then
    echo "❌ 错误：找不到APK文件 'zjsgxy_anfensi.com (3).apk'"
    exit 1
fi

if [ ! -f "apktool.jar" ]; then
    echo "❌ 错误：找不到apktool.jar"
    exit 1
fi

# 检查Docker
if ! command -v docker &> /dev/null; then
    echo "❌ 错误：Docker未安装，请先运行 setup_environment.sh"
    exit 1
fi

# 检查Python依赖
python3 -c "import cv2, numpy" 2>/dev/null
if [ $? -ne 0 ]; then
    echo "⚠️  警告：缺少Python依赖，正在安装..."
    pip3 install opencv-python numpy
fi

# 设置权限
chmod +x auto_modify_and_test_system.py

echo "🚀 开始运行自动化修改和测试系统..."
echo ""

# 运行主程序
python3 auto_modify_and_test_system.py

echo ""
echo "🎯 系统运行完成！"