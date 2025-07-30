#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
游戏问题分析智能体
专门分析游戏中的各种问题
"""

import re
import os
import sys

class ProblemAnalysisAgent:
    def __init__(self, smali_file_path: str):
        self.smali_file = smali_file_path
        self.problems = {}
        
    def analyze_all_problems(self):
        """分析所有问题"""
        print("🔍 游戏问题分析智能体启动")
        print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 问题1: 黑屏问题分析
        self.problems['black_screen'] = self._analyze_black_screen(content)
        
        # 问题2: 悬浮窗显示问题
        self.problems['floating_window'] = self._analyze_floating_window(content)
        
        # 问题3: 游戏卡顿问题
        self.problems['performance'] = self._analyze_performance(content)
        
        # 问题4: 物理效果缺失
        self.problems['physics_effects'] = self._analyze_physics_effects(content)
        
        # 问题5: 修改效果不可见
        self.problems['modification_effects'] = self._analyze_modification_effects(content)
        
        return self.problems
    
    def _analyze_black_screen(self, content: str) -> dict:
        """分析黑屏问题"""
        print("\n🖤 分析问题1: 战斗页面黑屏")
        
        issues = []
        
        # 检查Graphics对象使用
        if 'drawFloatingWindowSafe' in content:
            # 查找Graphics相关代码
            graphics_lines = []
            lines = content.split('\n')
            for i, line in enumerate(lines):
                if 's_gph' in line or 'Graphics' in line:
                    graphics_lines.append((i+1, line.strip()))
            
            if len(graphics_lines) < 5:
                issues.append("Graphics对象使用过少，可能影响渲染")
        
        # 检查绘制方法
        if 'fillRect' in content:
            rect_count = content.count('fillRect')
            if rect_count > 0:
                issues.append(f"发现{rect_count}个fillRect调用，可能覆盖了背景")
        
        # 检查颜色设置
        if 'setColor' in content:
            color_lines = []
            lines = content.split('\n')
            for i, line in enumerate(lines):
                if 'setColor' in line and 'const/4 v0, 0x0' in lines[i-1] if i > 0 else False:
                    color_lines.append((i+1, line.strip()))
            
            if color_lines:
                issues.append(f"发现{len(color_lines)}个黑色设置，可能导致黑屏")
        
        return {
            'severity': 'high',
            'issues': issues,
            'cause': '可能是Graphics绘制覆盖了游戏背景'
        }
    
    def _analyze_floating_window(self, content: str) -> dict:
        """分析悬浮窗问题"""
        print("🪟 分析问题2: 悬浮窗不显示")
        
        issues = []
        
        # 检查悬浮窗字段
        if 'floatingWindowVisible' in content:
            # 检查初始化
            if 'iput-boolean v0, p0' in content and 'floatingWindowVisible' in content:
                issues.append("悬浮窗可见性字段存在")
            else:
                issues.append("悬浮窗可见性字段初始化可能有问题")
        else:
            issues.append("悬浮窗字段完全缺失")
        
        # 检查绘制方法
        if 'drawFloatingWindowSafe' in content:
            # 检查方法调用
            if 'invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFloatingWindowSafe()V' in content:
                issues.append("悬浮窗绘制方法存在且被调用")
            else:
                issues.append("悬浮窗绘制方法存在但未被调用")
        else:
            issues.append("悬浮窗绘制方法不存在")
        
        # 检查绘制内容
        if 'fillRect' in content and 'drawFloatingWindowSafe' in content:
            method_start = content.find('.method private drawFloatingWindowSafe()V')
            method_end = content.find('.end method', method_start)
            if method_start != -1 and method_end != -1:
                method_content = content[method_start:method_end]
                if 'const/16 v0, 0x120' in method_content:
                    issues.append("悬浮窗尺寸设置过大，可能超出屏幕")
        
        return {
            'severity': 'medium',
            'issues': issues,
            'cause': '悬浮窗可能被错误绘制或尺寸有问题'
        }
    
    def _analyze_performance(self, content: str) -> dict:
        """分析性能问题"""
        print("⚡ 分析问题3: 游戏卡顿")
        
        issues = []
        
        # 检查循环结构
        goto_count = content.count('goto')
        if goto_count > 100:
            issues.append(f"发现{goto_count}个goto语句，可能有性能问题")
        
        # 检查方法调用频率
        invoke_count = content.count('invoke-')
        if invoke_count > 1000:
            issues.append(f"发现{invoke_count}个方法调用，可能影响性能")
        
        # 检查Graphics操作
        graphics_ops = content.count('Graphics')
        if graphics_ops > 50:
            issues.append(f"发现{graphics_ops}个Graphics操作，可能影响渲染性能")
        
        return {
            'severity': 'medium',
            'issues': issues,
            'cause': '可能是添加的代码影响了游戏性能'
        }
    
    def _analyze_physics_effects(self, content: str) -> dict:
        """分析物理效果问题"""
        print("🔮 分析问题4: 物理效果缺失")
        
        issues = []
        
        # 检查战斗相关方法
        if 'attack' in content.lower() or 'fight' in content.lower():
            issues.append("找到战斗相关代码")
        else:
            issues.append("未找到战斗相关代码")
        
        # 检查是否移除了太多功能
        if 'applyFeatureEffects' in content:
            method_start = content.find('.method public applyFeatureEffects()V')
            method_end = content.find('.end method', method_start)
            if method_start != -1 and method_end != -1:
                method_content = content[method_start:method_end]
                if 'return-void' in method_content and len(method_content.split('\n')) < 10:
                    issues.append("applyFeatureEffects方法过于简单，可能移除了所有效果")
        
        return {
            'severity': 'high',
            'issues': issues,
            'cause': '可能是最小化修复时移除了太多功能'
        }
    
    def _analyze_modification_effects(self, content: str) -> dict:
        """分析修改效果问题"""
        print("✨ 分析问题5: 修改效果不可见")
        
        issues = []
        
        # 检查功能字段
        feature_fields = []
        lines = content.split('\n')
        for line in lines:
            if '.field public feature' in line:
                feature_fields.append(line.strip())
        
        if len(feature_fields) == 0:
            issues.append("所有功能字段都被移除了")
        else:
            issues.append(f"找到{len(feature_fields)}个功能字段")
        
        # 检查UI显示
        if 'drawFeatureList' in content:
            issues.append("功能列表绘制方法存在")
        else:
            issues.append("功能列表绘制方法不存在")
        
        return {
            'severity': 'high',
            'issues': issues,
            'cause': '可能是为了修复闪退而移除了所有功能'
        }

def main():
    agent = ProblemAnalysisAgent('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali')
    
    problems = agent.analyze_all_problems()
    
    print("\n📊 问题分析总结:")
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    
    for problem_name, problem_data in problems.items():
        print(f"\n🔴 {problem_name.upper()}")
        print(f"严重程度: {problem_data['severity']}")
        print(f"原因: {problem_data['cause']}")
        print("详细问题:")
        for issue in problem_data['issues']:
            print(f"  • {issue}")

if __name__ == "__main__":
    main()