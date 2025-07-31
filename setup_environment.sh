#!/bin/bash

echo "🔧 设置自动化APK测试环境..."

# 检查是否为root用户
if [ "$EUID" -eq 0 ]; then
    echo "⚠️  检测到root权限，继续安装..."
else
    echo "⚠️  建议使用sudo运行此脚本以获得完整权限"
fi

# 更新包管理器
echo "📦 更新包管理器..."
apt-get update

# 安装Docker
echo "🐳 安装Docker..."
if ! command -v docker &> /dev/null; then
    apt-get install -y docker.io docker-compose
    systemctl start docker
    systemctl enable docker
    echo "✅ Docker安装完成"
else
    echo "✅ Docker已安装"
fi

# 安装ADB工具
echo "📱 安装ADB工具..."
if ! command -v adb &> /dev/null; then
    apt-get install -y android-tools-adb
    echo "✅ ADB安装完成"
else
    echo "✅ ADB已安装"
fi

# 安装AAPT工具
echo "🔧 安装AAPT工具..."
if ! command -v aapt &> /dev/null; then
    apt-get install -y aapt
    echo "✅ AAPT安装完成"
else
    echo "✅ AAPT已安装"
fi

# 安装Python依赖
echo "🐍 安装Python依赖..."
apt-get install -y python3 python3-pip python3-opencv python3-numpy

# 安装Python包
pip3 install opencv-python numpy requests

echo "✅ 环境设置完成！"
echo ""
echo "🚀 现在可以运行测试系统："
echo "python3 automated_test_system.py"