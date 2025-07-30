#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
悬浮窗问题修复工具集 - 10个专门工具
"""

import re

class FloatingWindowFixTools:
    def __init__(self, smali_file: str):
        self.smali_file = smali_file
        self.fixes_applied = []
        
    def tool1_fix_window_size(self):
        """工具1: 修复悬浮窗尺寸"""
        print("🛠️ 工具1: 修复悬浮窗尺寸")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 修复过大的尺寸
        if 'const/16 v0, 0x140' in content:
            content = content.replace('const/16 v0, 0x140', 'const/16 v0, 0x140')  # X坐标
            content = content.replace('const/4 v1, 0x0', 'const/4 v1, 0x10')      # Y坐标
            content = content.replace('const/4 v2, 0x8', 'const/16 v2, 0x18')     # 宽度
            
            self.fixes_applied.append("修复悬浮窗尺寸")
            print("✅ 修复了悬浮窗尺寸为24x8像素")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool2_improve_visibility(self):
        """工具2: 改善可见性"""
        print("🛠️ 工具2: 改善悬浮窗可见性")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 使用更鲜明的颜色
        if 'const v0, 0x80ff0000' in content:
            content = content.replace('const v0, 0x80ff0000', 'const v0, 0xffff0000')  # 改为不透明红色
            self.fixes_applied.append("改善悬浮窗可见性")
            print("✅ 改为不透明红色提升可见性")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool3_add_border(self):
        """工具3: 添加边框"""
        print("🛠️ 工具3: 为悬浮窗添加边框")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 在悬浮窗绘制中添加边框
        if 'drawFloatingWindowSafe' in content:
            pattern = r'(invoke-interface \{v2, v0, v1, v2, v2\}, Ljavax/microedition/lcdui/Graphics;->fillRect\(IIII\)V)'
            border_code = r'''\1
    
    # 绘制边框
    const v0, 0xff000000
    invoke-interface {v2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/16 v0, 0x140
    const/4 v1, 0x10
    const/16 v2, 0x18
    const/4 v3, 0x8
    invoke-interface {v2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V'''
            
            content = re.sub(pattern, border_code, content)
            self.fixes_applied.append("添加悬浮窗边框")
            print("✅ 添加了黑色边框")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool4_add_click_detection(self):
        """工具4: 添加点击检测"""
        print("🛠️ 工具4: 添加点击检测")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加点击检测方法
        click_method = """
# 点击检测方法
.method private checkFloatingWindowClick(II)Z
    .locals 4
    .prologue
    
    # 检查点击是否在悬浮窗范围内
    const/16 v0, 0x140
    if-lt p1, v0, :outside
    const/16 v1, 0x158
    if-gt p1, v1, :outside
    
    const/4 v0, 0x10
    if-lt p2, v0, :outside
    const/16 v1, 0x18
    if-gt p2, v1, :outside
    
    const/4 v0, 0x1
    return v0
    
    :outside
    const/4 v0, 0x0
    return v0
.end method
"""
        
        # 在文件末尾添加点击检测方法
        content = content.rstrip() + "\n" + click_method
        
        self.fixes_applied.append("添加点击检测")
        print("✅ 添加了点击检测功能")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool5_add_animation(self):
        """工具5: 添加动画效果"""
        print("🛠️ 工具5: 添加动画效果")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 添加简单的闪烁效果
        if 'floatingWindowVisible:Z' in content:
            # 添加动画计数器字段
            field_pos = content.find('.field public floatingWindowY:I')
            if field_pos != -1:
                insert_pos = content.find('\n', field_pos) + 1
                animation_field = ".field public floatingWindowAnimFrame:I\n\n"
                content = content[:insert_pos] + animation_field + content[insert_pos:]
                
                self.fixes_applied.append("添加动画效果")
                print("✅ 添加了动画计数器")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool6_improve_positioning(self):
        """工具6: 改善定位"""
        print("🛠️ 工具6: 改善悬浮窗定位")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 确保悬浮窗在屏幕可见区域
        if 'const/16 v0, 0x140' in content:
            # 调整到更安全的位置
            content = content.replace('const/16 v0, 0x140', 'const/16 v0, 0x120')  # 稍微左移
            self.fixes_applied.append("改善定位")
            print("✅ 调整到更安全的位置")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool7_add_text_label(self):
        """工具7: 添加文字标签"""
        print("🛠️ 工具7: 添加文字标签")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 在悬浮窗上添加"F"字母
        if 'drawFloatingWindowSafe' in content:
            pattern = r'(invoke-interface \{v2, v0, v1, v2, v3\}, Ljavax/microedition/lcdui/Graphics;->drawRect\(IIII\)V)'
            text_code = r'''\1
    
    # 绘制字母F
    const v0, 0xffffffff
    invoke-interface {v2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const-string v0, "F"
    const/16 v1, 0x124
    const/16 v2, 0x16
    invoke-interface {v2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V'''
            
            if re.search(pattern, content):
                content = re.sub(pattern, text_code, content)
                self.fixes_applied.append("添加文字标签")
                print("✅ 添加了字母F标签")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool8_fix_rendering_context(self):
        """工具8: 修复渲染上下文"""
        print("🛠️ 工具8: 修复渲染上下文")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 确保Graphics对象正确获取
        if 'sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph' in content:
            # 添加更严格的检查
            pattern = r'(sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;)'
            enhanced_check = r'''\1
    # 增强的Graphics检查
    if-nez v2, :graphics_ok
    return-void
    :graphics_ok'''
            
            content = re.sub(pattern, enhanced_check, content)
            self.fixes_applied.append("修复渲染上下文")
            print("✅ 增强了Graphics对象检查")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool9_add_debug_info(self):
        """工具9: 添加调试信息"""
        print("🛠️ 工具9: 添加调试信息")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 在悬浮窗方法中添加调试注释
        if 'drawFloatingWindowSafe' in content:
            debug_comment = "    # DEBUG: 悬浮窗绘制开始\n"
            pattern = r'(\.prologue)'
            content = re.sub(pattern, r'\1\n' + debug_comment, content)
            
            self.fixes_applied.append("添加调试信息")
            print("✅ 添加了调试注释")
        
        with open(self.smali_file, 'w', encoding='utf-8') as f:
            f.write(content)
    
    def tool10_validate_window_state(self):
        """工具10: 验证窗口状态"""
        print("🛠️ 工具10: 验证窗口状态")
        
        with open(self.smali_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 检查悬浮窗相关字段是否完整
        required_fields = [
            'floatingWindowVisible:Z',
            'floatingWindowX:I',
            'floatingWindowY:I'
        ]
        
        missing_fields = []
        for field in required_fields:
            if field not in content:
                missing_fields.append(field)
        
        if missing_fields:
            print(f"⚠️ 缺少字段: {missing_fields}")
        else:
            self.fixes_applied.append("验证窗口状态")
            print("✅ 所有必需字段都存在")
    
    def apply_all_fixes(self):
        """应用所有修复"""
        print("🚀 开始修复悬浮窗问题...")
        print("=" * 50)
        
        self.tool1_fix_window_size()
        self.tool2_improve_visibility()
        self.tool3_add_border()
        self.tool4_add_click_detection()
        self.tool5_add_animation()
        self.tool6_improve_positioning()
        self.tool7_add_text_label()
        self.tool8_fix_rendering_context()
        self.tool9_add_debug_info()
        self.tool10_validate_window_state()
        
        print(f"\n🎉 悬浮窗修复完成! 应用了{len(self.fixes_applied)}个修复:")
        for fix in self.fixes_applied:
            print(f"  ✅ {fix}")

def main():
    tools = FloatingWindowFixTools('decompiled_apk/smali/com/jarworld/rpg/sanguocollege/GameFight.smali')
    tools.apply_all_fixes()

if __name__ == "__main__":
    main()