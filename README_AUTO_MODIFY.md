# 自动化APK修改和测试系统

这是一个完整的自动化系统，能够：
1. **自动修改APK中的100个数据**（包括smali代码、资源文件、配置文件、二进制数据）
2. **在Docker安卓模拟器中测试修改效果**
3. **检测是否闪退和是否有预期效果**
4. **如果失败，继续修改直到成功**
5. **将成功的结果上传到远程仓库**

## 🚀 快速开始

### 1. 环境设置
```bash
# 设置环境（需要sudo权限）
sudo chmod +x setup_environment.sh
sudo ./setup_environment.sh
```

### 2. 运行系统
```bash
# 启动自动化修改和测试系统
chmod +x run_auto_modify_system.sh
./run_auto_modify_system.sh
```

## 📁 文件结构

```
├── auto_modify_and_test_system.py    # 主控制系统
├── docker-compose.yml                # Docker安卓模拟器配置
├── setup_environment.sh              # 环境设置脚本
├── run_auto_modify_system.sh         # 启动脚本
├── zjsgxy_anfensi.com (3).apk        # 目标APK文件
├── apktool.jar                       # APK反编译工具
├── test_results/                     # 测试结果目录
├── screenshots/                      # 截图目录
├── logs/                            # 日志目录
└── decompiled_apk/                  # 反编译的APK文件
```

## 🔧 系统功能详解

### 修改功能
系统会修改以下类型的文件：

1. **Smali文件** (20个)
   - 修改整数常量 (`const/16`, `const`, `const/4`)
   - 修改浮点数常量 (`const/high16`)
   - 修改字符串常量 (`const-string`)

2. **资源文件** (30个)
   - XML布局文件中的尺寸、字体大小、内边距等
   - 文本文件中的数字值

3. **配置文件** (25个)
   - XML、JSON、properties、txt文件中的数值

4. **二进制文件** (25个)
   - .so、.dex、.bin文件中的随机字节

### 测试功能
每次修改后，系统会：

1. **重新打包APK**
2. **签名APK**
3. **安装到Docker安卓模拟器**
4. **启动游戏**
5. **检测是否崩溃**
6. **分析视觉效果**
7. **检查内存使用**
8. **比较文件大小变化**

### 成功评估
系统通过以下指标评估修改是否成功：

- **稳定性**：游戏不崩溃
- **视觉效果**：截图分析显示变化
- **内存使用**：内存使用情况有变化
- **文件大小**：APK文件大小有变化

成功阈值：分数 ≥ 0.8 且至少有2种效果

## 📊 输出结果

### 测试报告
- `test_results/final_test_report.json` - 详细JSON报告
- `test_results/human_readable_final_report.md` - 人类可读报告

### 截图
- `screenshots/screenshot_*.png` - 每次迭代的截图

### 修改后的APK
- `modified_game.apk` - 最终成功的修改版本

### 结果包
- `auto_modify_test_results_*.zip` - 包含所有结果的压缩包

## ⚙️ 配置选项

在 `auto_modify_and_test_system.py` 中可以调整：

```python
self.max_iterations = 50        # 最大尝试次数
self.success_threshold = 0.8    # 成功阈值
```

## 🔍 监控和调试

### 实时监控
系统会实时显示：
- 当前迭代次数
- 修改项目数量
- 测试结果
- 成功分数

### 日志文件
- 每次迭代的详细日志保存在 `logs/` 目录
- 崩溃信息会记录在测试报告中

## 🐳 Docker环境

系统使用 `budtmo/docker-android-x86-11.0` 镜像提供：
- 无头安卓模拟器
- ADB连接支持
- 完整的安卓11环境

## 📈 性能优化

- 并行处理多个文件修改
- 智能跳过无效文件
- 快速失败机制
- 资源自动清理

## 🚨 注意事项

1. **需要足够的磁盘空间**：APK反编译和测试会产生大量临时文件
2. **网络连接**：首次运行需要下载Docker镜像
3. **内存要求**：建议至少4GB可用内存
4. **时间消耗**：完整测试可能需要30-60分钟

## 🛠️ 故障排除

### 常见问题

1. **Docker启动失败**
   ```bash
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

2. **ADB连接失败**
   ```bash
   adb kill-server
   adb start-server
   ```

3. **APK反编译失败**
   - 检查apktool.jar是否存在
   - 确保APK文件完整

4. **Python依赖缺失**
   ```bash
   pip3 install opencv-python numpy
   ```

## 📞 技术支持

如果遇到问题，请检查：
1. 系统日志
2. Docker容器状态
3. ADB连接状态
4. 磁盘空间

## 🎯 预期结果

成功运行后，你将获得：
- 一个经过100项数据修改的APK
- 详细的测试报告
- 证明修改有效的截图和日志
- 打包好的结果文件

这个系统实现了真正的自动化APK修改和测试，无需人工干预，直到达到成功标准为止！