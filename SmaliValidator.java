import java.io.*;
import java.util.*;
import java.util.regex.Pattern;

public class SmaliValidator {
    private static int errorCount = 0;
    private static List<String> errors = new ArrayList<>();
    
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("用法: java SmaliValidator <smali文件路径>");
            System.exit(1);
        }
        
        String filePath = args[0];
        System.out.println("🔍 验证smali文件: " + filePath);
        
        try {
            validateSmaliFile(filePath);
            
            if (errorCount == 0) {
                System.out.println("✅ 验证通过: 未发现语法错误");
                System.exit(0);
            } else {
                System.out.println("❌ 验证失败: 发现 " + errorCount + " 个错误");
                for (String error : errors) {
                    System.out.println("  - " + error);
                }
                System.exit(1);
            }
        } catch (IOException e) {
            System.out.println("❌ 文件读取错误: " + e.getMessage());
            System.exit(1);
        }
    }
    
    private static void validateSmaliFile(String filePath) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line;
        int lineNumber = 0;
        Stack<String> methodStack = new Stack<>();
        Set<String> labels = new HashSet<>();
        List<String> gotoTargets = new ArrayList<>();
        
        while ((line = reader.readLine()) != null) {
            lineNumber++;
            line = line.trim();
            
            // 跳过空行和注释
            if (line.isEmpty() || line.startsWith("#")) {
                continue;
            }
            
            // 检查方法定义
            if (line.startsWith(".method")) {
                methodStack.push("method@" + lineNumber);
            } else if (line.equals(".end method")) {
                if (methodStack.isEmpty()) {
                    addError(lineNumber, "发现 .end method 但没有对应的 .method");
                } else {
                    methodStack.pop();
                }
            }
            
            // 收集标签
            if (line.matches("^\\s*:[a-zA-Z_][a-zA-Z0-9_]*$")) {
                String label = line.substring(1);
                labels.add(label);
            }
            
            // 收集goto目标
            if (line.contains("goto")) {
                String[] parts = line.split("\\s+");
                for (String part : parts) {
                    if (part.startsWith(":")) {
                        gotoTargets.add(part.substring(1));
                    }
                }
            }
            
            // 检查基本语法
            validateLineSyntax(line, lineNumber);
        }
        
        reader.close();
        
        // 检查未闭合的方法
        if (!methodStack.isEmpty()) {
            addError(-1, "有 " + methodStack.size() + " 个方法未正确闭合");
        }
        
        // 检查goto目标是否存在
        for (String target : gotoTargets) {
            if (!labels.contains(target)) {
                addError(-1, "goto目标不存在: " + target);
            }
        }
        
        System.out.println("📊 统计信息:");
        System.out.println("  - 总行数: " + lineNumber);
        System.out.println("  - 标签数: " + labels.size());
        System.out.println("  - goto语句: " + gotoTargets.size());
    }
    
    private static void validateLineSyntax(String line, int lineNumber) {
        // 检查常见的语法错误
        
        // 检查不完整的语句
        if (line.endsWith(",")) {
            addError(lineNumber, "语句不完整，以逗号结尾");
        }
        
        // 检查寄存器使用
        if (line.contains("v") && line.matches(".*v\\d+.*")) {
            // 检查寄存器范围（简单检查）
            if (line.matches(".*v[0-9]{3,}.*")) {
                addError(lineNumber, "寄存器编号可能过大");
            }
        }
        
        // 检查方法调用格式
        if (line.contains("invoke-") && !line.matches(".*invoke-[a-z]+\\s+.*")) {
            addError(lineNumber, "invoke语句格式可能有误");
        }
        
        // 检查字符串格式
        if (line.contains("const-string") && !line.contains("\"")) {
            addError(lineNumber, "const-string语句缺少字符串内容");
        }
    }
    
    private static void addError(int lineNumber, String message) {
        errorCount++;
        String error = (lineNumber > 0) ? 
            "行 " + lineNumber + ": " + message : 
            "全局: " + message;
        errors.add(error);
    }
}