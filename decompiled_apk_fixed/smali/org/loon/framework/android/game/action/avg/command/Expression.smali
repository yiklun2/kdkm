.class public interface abstract Lorg/loon/framework/android/game/action/avg/command/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field public static final BEGIN_TAG:Ljava/lang/String; = "begin"

.field public static final BRACKET_LEFT_TAG:Ljava/lang/String; = "("

.field public static final BRACKET_RIGHT_TAG:Ljava/lang/String; = ")"

.field public static final CALL_TAG:Ljava/lang/String; = "call"

.field public static final ELSE_TAG:Ljava/lang/String; = "else"

.field public static final END_TAG:Ljava/lang/String; = "end"

.field public static final FLAG:Ljava/lang/String; = "@"

.field public static final FLAG_CHAR:C

.field public static final FLAG_C_TAG:Ljava/lang/String; = "#"

.field public static final FLAG_I_TAG:Ljava/lang/String; = "\'"

.field public static final FLAG_LS_B_TAG:Ljava/lang/String; = "/*"

.field public static final FLAG_LS_E_TAG:Ljava/lang/String; = "*/"

.field public static final FLAG_L_TAG:Ljava/lang/String; = "//"

.field public static final GLOBAL_RAND:Ljava/util/Random;

.field public static final IF_END_TAG:Ljava/lang/String; = "endif"

.field public static final IF_TAG:Ljava/lang/String; = "if"

.field public static final INCLUDE_TAG:Ljava/lang/String; = "include"

.field public static final IN_TAG:Ljava/lang/String; = "in"

.field public static final OUT_TAG:Ljava/lang/String; = "out"

.field public static final PRINT_TAG:Ljava/lang/String; = "print"

.field public static final RAND_TAG:Ljava/lang/String; = "rand"

.field public static final RESET_CACHE_TAG:Ljava/lang/String; = "reset"

.field public static final SELECTS_TAG:Ljava/lang/String; = "selects"

.field public static final SET_TAG:Ljava/lang/String; = "set"

.field public static final V_SELECT_KEY:Ljava/lang/String; = "SELECT"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Expression;->GLOBAL_RAND:Ljava/util/Random;

    .line 94
    const-string v0, "@"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lorg/loon/framework/android/game/action/avg/command/Expression;->FLAG_CHAR:C

    .line 25
    return-void
.end method
