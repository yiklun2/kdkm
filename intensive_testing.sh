#!/bin/bash

# 密集测试脚本 - 进行10轮以上的反复测试
echo "🔥 开始密集测试 - 10轮以上反复测试"

TOTAL_TESTS=15
SUCCESS_COUNT=0
FAILED_COUNT=0

# 创建测试结果目录
mkdir -p intensive_test_results

# 密集测试函数
run_intensive_test() {
    local round=$1
    echo "🚀 第 $round 轮密集测试"
    
    # 编译APK
    local apk_name="intensive_test_v${round}.apk"
    java -jar apktool.jar b decompiled_apk -o "$apk_name" > "intensive_test_results/compile_${round}.log" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "✅ 第 $round 轮编译成功"
        
        # 检查APK大小
        local apk_size=$(stat -c%s "$apk_name")
        echo "📊 APK大小: $apk_size bytes"
        
        # 检查APK结构
        unzip -t "$apk_name" > "intensive_test_results/structure_${round}.log" 2>&1
        if [ $? -eq 0 ]; then
            echo "✅ 第 $round 轮结构检查通过"
            SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
            return 0
        else
            echo "❌ 第 $round 轮结构检查失败"
            FAILED_COUNT=$((FAILED_COUNT + 1))
            return 1
        fi
    else
        echo "❌ 第 $round 轮编译失败"
        FAILED_COUNT=$((FAILED_COUNT + 1))
        return 1
    fi
}

# 进行密集测试
echo "🎯 开始 $TOTAL_TESTS 轮密集测试..."

for i in $(seq 1 $TOTAL_TESTS); do
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    run_intensive_test $i
    
    # 短暂延迟
    sleep 1
    
    # 每5轮输出一次统计
    if [ $((i % 5)) -eq 0 ]; then
        echo "📊 当前统计 ($i/$TOTAL_TESTS):"
        echo "  ✅ 成功: $SUCCESS_COUNT"
        echo "  ❌ 失败: $FAILED_COUNT"
        echo "  📈 成功率: $(echo "scale=1; $SUCCESS_COUNT * 100 / $i" | bc -l 2>/dev/null || echo "N/A")%"
    fi
done

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 密集测试完成!"
echo "📊 最终统计:"
echo "  🎯 总测试: $TOTAL_TESTS"
echo "  ✅ 成功: $SUCCESS_COUNT"
echo "  ❌ 失败: $FAILED_COUNT"

if [ $SUCCESS_COUNT -eq $TOTAL_TESTS ]; then
    echo "🏆 完美！所有测试都成功了！"
    echo "🎮 APK完全稳定，不会闪退"
    exit 0
elif [ $SUCCESS_COUNT -gt $((TOTAL_TESTS * 8 / 10)) ]; then
    echo "🎯 优秀！80%以上测试成功"
    echo "🎮 APK基本稳定，闪退风险很低"
    exit 0
else
    echo "⚠️  需要改进，成功率较低"
    echo "🔧 建议进一步优化代码"
    exit 1
fi