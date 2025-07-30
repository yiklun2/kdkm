#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
游戏闪退修复智能体
专门分析和修复Android游戏APK中导致闪退的代码逻辑问题
"""

import re
import os
import sys
import subprocess
from typing import List, Dict, Tuple, Optional

class CrashFixAgent:
    def __init__(self, smali_file_path: str):
        self.smali_file = smali_file_path
        self.crash_patterns = []
        self.fixes_applied = []
        self.analysis_results = {}
        
    def analyze_crash_causes(self) -> Dict[str, any]:
        """分析可能导致闪退的原因"""
        print("🔍 开始分析闪退原因...")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        issues = {
            'null_pointer_risks': self._check_null_pointer_risks(content),
            'uninitialized_fields': self._check_uninitialized_fields(content),
            'method_signature_errors': self._check_method_signature_errors(content),
            'register_overflow': self._check_register_overflow(content),
            'infinite_loops': self._check_infinite_loops(content),
            'missing_return_statements': self._check_missing_return_statements(content),
            'graphics_context_errors': self._check_graphics_context_errors(content),
            'memory_leaks': self._check_memory_leaks(content),
            'exception_handling': self._check_exception_handling(content),
            'field_access_errors': self._check_field_access_errors(content)
        }
        
        self.analysis_results = issues
        return issues
    
    def _check_null_pointer_risks(self, content: str) -> List[Dict]:
        """检查空指针风险"""
        risks = []
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            # 检查对象使用前是否有null检查
            if 'invoke-' in line and 'sget-object' in lines[i-1] if i > 0 else False:
                prev_line = lines[i-1]
                # 查找是否有null检查
                null_check_found = False
                for j in range(max(0, i-5), i):
                    if 'if-nez' in lines[j] or 'if-eqz' in lines[j]:
                        null_check_found = True
                        break
                
                if not null_check_found:
                    risks.append({
                        'line': i + 1,
                        'content': line.strip(),
                        'issue': '可能的空指针访问',
                        'severity': 'high'
                    })
        
        return risks
    
    def _check_uninitialized_fields(self, content: str) -> List[Dict]:
        """检查未初始化的字段"""
        issues = []
        lines = content.split('\n')
        
        # 查找字段定义
        field_definitions = []
        for i, line in enumerate(lines):
            if line.strip().startswith('.field') and ':' in line:
                field_name = line.split()[-1].split(':')[0]
                field_definitions.append(field_name)
        
        # 检查字段是否在构造函数中初始化
        in_constructor = False
        constructor_initializations = set()
        
        for i, line in enumerate(lines):
            if '.method public constructor <init>' in line:
                in_constructor = True
            elif '.end method' in line and in_constructor:
                in_constructor = False
            elif in_constructor and 'iput' in line:
                # 提取字段名
                match = re.search(r'iput.*?->([^:]+):', line)
                if match:
                    constructor_initializations.add(match.group(1))
        
        # 查找未初始化的字段
        for field in field_definitions:
            if field not in constructor_initializations and 'floatingWindow' in field:
                issues.append({
                    'field': field,
                    'issue': '字段未在构造函数中初始化',
                    'severity': 'high'
                })
        
        return issues
    
    def _check_method_signature_errors(self, content: str) -> List[Dict]:
        """检查方法签名错误"""
        issues = []
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            if 'invoke-' in line:
                # 检查方法调用格式
                if not re.match(r'.*invoke-\w+.*\{.*\}.*', line):
                    issues.append({
                        'line': i + 1,
                        'content': line.strip(),
                        'issue': '方法调用格式错误',
                        'severity': 'medium'
                    })
        
        return issues
    
    def _check_register_overflow(self, content: str) -> List[Dict]:
        """检查寄存器溢出"""
        issues = []
        lines = content.split('\n')
        
        current_method = None
        locals_count = 0
        
        for i, line in enumerate(lines):
            if '.method' in line:
                current_method = line
                locals_count = 0
            elif '.locals' in line:
                locals_count = int(line.split()[-1])
            elif current_method and 'v' in line:
                # 查找最大寄存器编号
                registers = re.findall(r'v(\d+)', line)
                for reg in registers:
                    reg_num = int(reg)
                    if reg_num >= locals_count:
                        issues.append({
                            'line': i + 1,
                            'content': line.strip(),
                            'issue': f'寄存器v{reg_num}超出范围(最大v{locals_count-1})',
                            'severity': 'high'
                        })
        
        return issues
    
    def _check_infinite_loops(self, content: str) -> List[Dict]:
        """检查无限循环"""
        issues = []
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            if 'goto' in line:
                # 提取跳转目标
                parts = line.split()
                if len(parts) >= 2:
                    target = parts[-1].replace(':', '')
                    # 向后查找标签，如果在当前行之前，可能是循环
                    for j in range(max(0, i-20), i):
                        if f':{target}' in lines[j]:
                            # 检查循环条件
                            has_exit_condition = False
                            for k in range(j, i):
                                if 'if-' in lines[k]:
                                    has_exit_condition = True
                                    break
                            
                            if not has_exit_condition:
                                issues.append({
                                    'line': i + 1,
                                    'content': line.strip(),
                                    'issue': '可能的无限循环',
                                    'severity': 'high'
                                })
                            break
        
        return issues
    
    def _check_missing_return_statements(self, content: str) -> List[Dict]:
        """检查缺失的return语句"""
        issues = []
        lines = content.split('\n')
        
        in_method = False
        method_start = 0
        
        for i, line in enumerate(lines):
            if '.method' in line and not line.strip().endswith('V'):
                in_method = True
                method_start = i
            elif '.end method' in line and in_method:
                # 检查方法是否有return语句
                has_return = False
                for j in range(method_start, i):
                    if 'return' in lines[j]:
                        has_return = True
                        break
                
                if not has_return:
                    issues.append({
                        'line': method_start + 1,
                        'content': lines[method_start].strip(),
                        'issue': '方法缺少return语句',
                        'severity': 'medium'
                    })
                
                in_method = False
        
        return issues
    
    def _check_graphics_context_errors(self, content: str) -> List[Dict]:
        """检查Graphics上下文错误"""
        issues = []
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            if 'Graphics' in line and 'invoke-interface' in line:
                # 检查Graphics对象是否为null
                graphics_var = None
                parts = line.split()
                for part in parts:
                    if part.startswith('{') and part.endswith('}'):
                        graphics_var = part.strip('{}').split(',')[0]
                        break
                
                if graphics_var:
                    # 向前查找null检查
                    null_check_found = False
                    for j in range(max(0, i-10), i):
                        if f'if-nez {graphics_var}' in lines[j]:
                            null_check_found = True
                            break
                    
                    if not null_check_found:
                        issues.append({
                            'line': i + 1,
                            'content': line.strip(),
                            'issue': 'Graphics对象未进行null检查',
                            'severity': 'high'
                        })
        
        return issues
    
    def _check_memory_leaks(self, content: str) -> List[Dict]:
        """检查内存泄漏"""
        issues = []
        # 简化检查：查找没有对应释放的资源申请
        return issues
    
    def _check_exception_handling(self, content: str) -> List[Dict]:
        """检查异常处理"""
        issues = []
        lines = content.split('\n')
        
        # 查找可能抛出异常的操作但没有try-catch
        risky_operations = ['new-array', 'aget', 'aput', 'invoke-virtual']
        
        for i, line in enumerate(lines):
            for op in risky_operations:
                if op in line:
                    # 检查附近是否有异常处理
                    has_exception_handling = False
                    for j in range(max(0, i-5), min(len(lines), i+5)):
                        if '.catch' in lines[j] or 'try_start' in lines[j]:
                            has_exception_handling = True
                            break
                    
                    if not has_exception_handling and 'drawFloating' in line:
                        issues.append({
                            'line': i + 1,
                            'content': line.strip(),
                            'issue': '缺少异常处理',
                            'severity': 'medium'
                        })
        
        return issues
    
    def _check_field_access_errors(self, content: str) -> List[Dict]:
        """检查字段访问错误"""
        issues = []
        lines = content.split('\n')
        
        for i, line in enumerate(lines):
            if 'iget' in line or 'iput' in line:
                # 检查字段访问的对象是否可能为null
                parts = line.split()
                if len(parts) >= 3:
                    obj_register = parts[1].rstrip(',')
                    # 简单检查：如果是p0（this指针），通常是安全的
                    if obj_register != 'p0' and obj_register != 'v0':
                        # 检查是否有null检查
                        null_check_found = False
                        for j in range(max(0, i-5), i):
                            if f'if-nez {obj_register}' in lines[j]:
                                null_check_found = True
                                break
                        
                        if not null_check_found and 'floatingWindow' in line:
                            issues.append({
                                'line': i + 1,
                                'content': line.strip(),
                                'issue': '字段访问可能导致空指针异常',
                                'severity': 'high'
                            })
        
        return issues

def main():
    agent = CrashFixAgent('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali')
    
    print("🤖 游戏闪退修复智能体启动")
    print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
    
    # 分析闪退原因
    results = agent.analyze_crash_causes()
    
    total_issues = 0
    for category, issues in results.items():
        if issues:
            print(f"\n🚨 {category.replace('_', ' ').title()}:")
            for issue in issues:
                total_issues += 1
                print(f"  ❌ {issue}")
    
    if total_issues == 0:
        print("\n✅ 未发现明显的闪退风险")
    else:
        print(f"\n📊 总共发现 {total_issues} 个潜在问题")
        print("🔧 建议进行修复以避免闪退")

if __name__ == "__main__":
    main()