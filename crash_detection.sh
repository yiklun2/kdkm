#!/bin/bash

# APK崩溃检测脚本
# 检查APK中可能导致闪退的问题

echo "🚨 开始APK崩溃检测..."

APK_FILE="test_game_v5.apk"
TEMP_DIR="crash_check_temp"

# 创建临时目录
mkdir -p "$TEMP_DIR"

# 函数：检查DEX文件
check_dex_file() {
    echo "🔍 检查DEX文件..."
    
    # 解压APK获取classes.dex
    unzip -q "$APK_FILE" classes.dex -d "$TEMP_DIR"
    
    if [ ! -f "$TEMP_DIR/classes.dex" ]; then
        echo "❌ 未找到classes.dex文件"
        return 1
    fi
    
    # 检查DEX文件大小
    local dex_size=$(stat -c%s "$TEMP_DIR/classes.dex")
    echo "📊 DEX文件大小: $dex_size bytes"
    
    if [ $dex_size -lt 100000 ]; then
        echo "❌ DEX文件过小，可能有问题"
        return 1
    fi
    
    # 使用dexdump检查DEX文件（如果可用）
    if command -v dexdump &> /dev/null; then
        dexdump "$TEMP_DIR/classes.dex" > "$TEMP_DIR/dexdump.log" 2>&1
        if [ $? -eq 0 ]; then
            echo "✅ DEX文件结构正常"
        else
            echo "❌ DEX文件结构有问题"
            return 1
        fi
    else
        echo "⚠️  dexdump工具未找到，跳过DEX详细检查"
    fi
    
    return 0
}

# 函数：检查AndroidManifest.xml
check_manifest() {
    echo "🔍 检查AndroidManifest.xml..."
    
    # 使用aapt检查manifest（如果可用）
    if command -v aapt &> /dev/null; then
        aapt dump xmltree "$APK_FILE" AndroidManifest.xml > "$TEMP_DIR/manifest_check.log" 2>&1
        if [ $? -eq 0 ]; then
            echo "✅ AndroidManifest.xml正常"
            
            # 检查关键配置
            if grep -q "android.permission.WRITE_EXTERNAL_STORAGE" "$TEMP_DIR/manifest_check.log"; then
                echo "✅ 存储权限已声明"
            else
                echo "⚠️  未找到存储权限声明"
            fi
            
        else
            echo "❌ AndroidManifest.xml有问题"
            return 1
        fi
    else
        echo "⚠️  aapt工具未找到，跳过manifest检查"
    fi
    
    return 0
}

# 函数：检查资源文件
check_resources() {
    echo "🔍 检查资源文件..."
    
    # 检查resources.arsc
    unzip -q "$APK_FILE" resources.arsc -d "$TEMP_DIR"
    
    if [ -f "$TEMP_DIR/resources.arsc" ]; then
        local res_size=$(stat -c%s "$TEMP_DIR/resources.arsc")
        echo "📊 resources.arsc大小: $res_size bytes"
        
        if [ $res_size -gt 1000 ]; then
            echo "✅ 资源文件正常"
        else
            echo "❌ 资源文件过小"
            return 1
        fi
    else
        echo "❌ 未找到resources.arsc"
        return 1
    fi
    
    # 检查关键图片资源
    unzip -l "$APK_FILE" | grep -E "\.(png|jpg|jpeg)" > "$TEMP_DIR/images_list.txt"
    local image_count=$(wc -l < "$TEMP_DIR/images_list.txt")
    echo "📊 图片资源数量: $image_count"
    
    if [ $image_count -gt 10 ]; then
        echo "✅ 图片资源充足"
    else
        echo "⚠️  图片资源较少"
    fi
    
    return 0
}

# 函数：检查可能的崩溃点
check_crash_points() {
    echo "🔍 检查可能的崩溃点..."
    
    local crash_count=0
    
    # 检查新添加的字段是否正确初始化
    if grep -q "floatingWindowVisible:Z" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali; then
        echo "✅ 找到悬浮窗字段定义"
        
        # 检查是否有对应的初始化代码
        if grep -q "iput-boolean.*floatingWindowVisible" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali; then
            echo "✅ 悬浮窗字段已初始化"
        else
            echo "❌ 悬浮窗字段未初始化"
            crash_count=$((crash_count + 1))
        fi
    fi
    
    # 检查新方法是否正确定义
    if grep -q "drawFloatingWindowSafe" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali; then
        echo "✅ 找到悬浮窗方法定义"
    else
        echo "❌ 未找到悬浮窗方法定义"
        crash_count=$((crash_count + 1))
    fi
    
    # 检查方法调用是否匹配
    local method_calls=$(grep -c "invoke.*drawFloatingWindowSafe" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali)
    if [ $method_calls -gt 0 ]; then
        echo "✅ 悬浮窗方法有被调用 ($method_calls 次)"
    else
        echo "⚠️  悬浮窗方法未被调用"
    fi
    
    # 检查Graphics对象的使用
    if grep -q "s_gph:Ljavax/microedition/lcdui/Graphics" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali; then
        echo "✅ Graphics对象正确引用"
    else
        echo "❌ Graphics对象引用有问题"
        crash_count=$((crash_count + 1))
    fi
    
    echo "📊 潜在崩溃点: $crash_count"
    return $crash_count
}

# 函数：生成安全报告
generate_safety_report() {
    echo "📋 生成安全报告..."
    
    local report_file="crash_detection_report.txt"
    
    cat > "$report_file" << EOF
🚨 APK崩溃检测报告
==================

检测时间: $(date)
APK文件: $APK_FILE

检测结果摘要:
EOF
    
    # 运行所有检查并记录结果
    check_dex_file
    local dex_result=$?
    echo "DEX文件检查: $([ $dex_result -eq 0 ] && echo "✅ 通过" || echo "❌ 失败")" >> "$report_file"
    
    check_manifest
    local manifest_result=$?
    echo "Manifest检查: $([ $manifest_result -eq 0 ] && echo "✅ 通过" || echo "❌ 失败")" >> "$report_file"
    
    check_resources
    local resources_result=$?
    echo "资源文件检查: $([ $resources_result -eq 0 ] && echo "✅ 通过" || echo "❌ 失败")" >> "$report_file"
    
    check_crash_points
    local crash_result=$?
    echo "崩溃点检查: $([ $crash_result -eq 0 ] && echo "✅ 通过" || echo "⚠️  发现 $crash_result 个问题")" >> "$report_file"
    
    # 综合评估
    local total_issues=$((dex_result + manifest_result + resources_result + crash_result))
    
    echo "" >> "$report_file"
    echo "综合评估:" >> "$report_file"
    if [ $total_issues -eq 0 ]; then
        echo "🎉 APK安全性良好，崩溃风险低" >> "$report_file"
    elif [ $total_issues -le 2 ]; then
        echo "⚠️  APK有轻微问题，崩溃风险中等" >> "$report_file"
    else
        echo "🚨 APK有严重问题，崩溃风险高" >> "$report_file"
    fi
    
    echo "📄 报告已保存到: $report_file"
    cat "$report_file"
    
    return $total_issues
}

# 主检测流程
main() {
    if [ ! -f "$APK_FILE" ]; then
        echo "❌ APK文件不存在: $APK_FILE"
        echo "请先运行 ./test_game_stability.sh 生成APK文件"
        exit 1
    fi
    
    echo "🎯 检测APK: $APK_FILE"
    
    # 运行完整检测
    generate_safety_report
    local result=$?
    
    # 清理临时文件
    rm -rf "$TEMP_DIR"
    
    echo "🎉 检测完成!"
    
    if [ $result -eq 0 ]; then
        echo "✅ APK安全，可以使用"
        exit 0
    else
        echo "⚠️  APK存在 $result 个问题，建议修复"
        exit 1
    fi
}

# 运行主程序
main "$@"