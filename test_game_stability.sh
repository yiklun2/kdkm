#!/bin/bash

# 游戏稳定性测试脚本
# 用于检测APK是否会闪退

echo "🎮 开始游戏稳定性测试..."

# 测试计数器
TEST_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

# 创建测试日志目录
mkdir -p test_logs

# 函数：编译APK
compile_apk() {
    local version=$1
    echo "📦 编译APK版本 $version..."
    
    cd /workspace
    java -jar apktool.jar b decompiled_apk -o "test_game_v${version}.apk" 2>&1 | tee "test_logs/compile_v${version}.log"
    
    if [ $? -eq 0 ]; then
        echo "✅ 编译成功: test_game_v${version}.apk"
        return 0
    else
        echo "❌ 编译失败: test_game_v${version}.apk"
        return 1
    fi
}

# 函数：检查APK完整性
check_apk_integrity() {
    local apk_file=$1
    echo "🔍 检查APK完整性: $apk_file"
    
    # 检查文件是否存在
    if [ ! -f "$apk_file" ]; then
        echo "❌ APK文件不存在"
        return 1
    fi
    
    # 检查文件大小
    local file_size=$(stat -c%s "$apk_file")
    if [ $file_size -lt 1000000 ]; then
        echo "❌ APK文件过小 (${file_size} bytes)"
        return 1
    fi
    
    # 检查APK结构
    unzip -t "$apk_file" > "test_logs/apk_check_$(basename $apk_file).log" 2>&1
    if [ $? -eq 0 ]; then
        echo "✅ APK结构完整"
        return 0
    else
        echo "❌ APK结构损坏"
        return 1
    fi
}

# 函数：使用aapt检查APK
check_with_aapt() {
    local apk_file=$1
    echo "🔧 使用aapt检查APK: $apk_file"
    
    # 检查是否有aapt工具
    if command -v aapt &> /dev/null; then
        aapt dump badging "$apk_file" > "test_logs/aapt_$(basename $apk_file).log" 2>&1
        if [ $? -eq 0 ]; then
            echo "✅ aapt检查通过"
            return 0
        else
            echo "❌ aapt检查失败"
            return 1
        fi
    else
        echo "⚠️  aapt工具未找到，跳过此检查"
        return 0
    fi
}

# 函数：分析smali代码
analyze_smali_code() {
    echo "📝 分析smali代码..."
    
    # 检查语法错误
    local error_count=0
    
    # 检查方法匹配
    local method_start=$(grep -c "^\.method" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali)
    local method_end=$(grep -c "^\.end method" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali)
    
    if [ $method_start -ne $method_end ]; then
        echo "❌ 方法定义不匹配: 开始($method_start) vs 结束($method_end)"
        error_count=$((error_count + 1))
    else
        echo "✅ 方法定义匹配"
    fi
    
    # 检查标签和跳转
    local goto_count=$(grep -c "goto" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali)
    local label_count=$(grep -c "^[[:space:]]*:" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali)
    
    echo "📊 跳转语句: $goto_count, 标签: $label_count"
    
    # 检查寄存器使用
    grep "\.locals" decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali > "test_logs/locals_analysis.log"
    
    return $error_count
}

# 函数：运行完整测试
run_full_test() {
    local version=$1
    echo "🚀 运行完整测试 - 版本 $version"
    
    TEST_COUNT=$((TEST_COUNT + 1))
    
    # 步骤1: 分析代码
    analyze_smali_code
    local analysis_result=$?
    
    # 步骤2: 编译APK
    compile_apk $version
    local compile_result=$?
    
    if [ $compile_result -ne 0 ]; then
        echo "❌ 测试失败: 编译错误"
        FAILED_COUNT=$((FAILED_COUNT + 1))
        return 1
    fi
    
    # 步骤3: 检查APK完整性
    check_apk_integrity "test_game_v${version}.apk"
    local integrity_result=$?
    
    # 步骤4: 使用aapt检查
    check_with_aapt "test_game_v${version}.apk"
    local aapt_result=$?
    
    # 综合结果
    if [ $analysis_result -eq 0 ] && [ $compile_result -eq 0 ] && [ $integrity_result -eq 0 ] && [ $aapt_result -eq 0 ]; then
        echo "✅ 测试通过: 版本 $version"
        SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
        return 0
    else
        echo "❌ 测试失败: 版本 $version"
        FAILED_COUNT=$((FAILED_COUNT + 1))
        return 1
    fi
}

# 函数：生成测试报告
generate_report() {
    echo "📊 生成测试报告..."
    
    local report_file="test_logs/stability_report_$(date +%Y%m%d_%H%M%S).txt"
    
    cat > "$report_file" << EOF
🎮 游戏稳定性测试报告
====================

测试时间: $(date)
总测试次数: $TEST_COUNT
成功次数: $SUCCESS_COUNT
失败次数: $FAILED_COUNT
成功率: $(echo "scale=2; $SUCCESS_COUNT * 100 / $TEST_COUNT" | bc -l)%

详细结果:
EOF
    
    # 添加详细日志
    for log_file in test_logs/*.log; do
        if [ -f "$log_file" ]; then
            echo "--- $(basename $log_file) ---" >> "$report_file"
            tail -10 "$log_file" >> "$report_file"
            echo "" >> "$report_file"
        fi
    done
    
    echo "📄 报告已保存到: $report_file"
    cat "$report_file"
}

# 主测试流程
main() {
    echo "🎯 开始自动化稳定性测试..."
    
    # 运行多次测试
    for i in {1..5}; do
        echo "🔄 第 $i 轮测试"
        run_full_test $i
        echo "⏱️  等待2秒..."
        sleep 2
    done
    
    # 生成最终报告
    generate_report
    
    echo "🎉 测试完成!"
    echo "✅ 成功: $SUCCESS_COUNT/$TEST_COUNT"
    echo "❌ 失败: $FAILED_COUNT/$TEST_COUNT"
    
    if [ $SUCCESS_COUNT -gt 0 ]; then
        echo "🎮 推荐使用: test_game_v${SUCCESS_COUNT}.apk"
        return 0
    else
        echo "⚠️  所有测试都失败了，需要进一步修复"
        return 1
    fi
}

# 运行主程序
main "$@"