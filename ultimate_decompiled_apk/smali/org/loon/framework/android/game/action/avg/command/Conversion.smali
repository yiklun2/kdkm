.class public abstract Lorg/loon/framework/android/game/action/avg/command/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/avg/command/Expression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;
    }
.end annotation


# static fields
.field private static final ops:[Ljava/lang/String;


# instance fields
.field protected compute:Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\+"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\\-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\\*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\\/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\\("

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 31
    const-string v2, "\\)"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Conversion;->ops:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;-><init>(Lorg/loon/framework/android/game/action/avg/command/Conversion;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Conversion;->compute:Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;

    .line 28
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Conversion;->ops:[Ljava/lang/String;

    return-object v0
.end method

.method public static isChinese(Ljava/lang/Object;)Z
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0xfe

    const/4 v7, 0x2

    .line 102
    const/4 v4, 0x0

    .line 104
    .local v4, "result":Z
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 105
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 120
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    :goto_1
    return v4

    .line 106
    .restart local v1    # "chars":[C
    .restart local v2    # "i":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 107
    .local v0, "bytes":[B
    array-length v5, v0

    if-ne v5, v7, :cond_1

    .line 108
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 109
    .local v3, "ints":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v5

    .line 110
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v5

    .line 111
    const/4 v5, 0x0

    aget v5, v3, v5

    const/16 v6, 0x81

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, v8, :cond_1

    const/4 v5, 0x1

    aget v5, v3, v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_1

    .line 112
    const/4 v5, 0x1

    aget v5, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v8, :cond_1

    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_1

    .line 105
    .end local v3    # "ints":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "bytes":[B
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static isEnglishAndNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 44
    .local v1, "letter":C
    const/16 v3, 0x61

    if-gt v3, v1, :cond_2

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-gt v3, v1, :cond_3

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    .line 45
    :cond_3
    const/16 v3, 0x30

    if-gt v3, v1, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    .line 46
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 42
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNumber(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    :try_start_0
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v1, 0x1

    .local v0, "ne":Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 89
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 90
    .restart local v0    # "ne":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static operate(CII)Ljava/lang/Integer;
    .locals 2
    .param p0, "flag"    # C
    .param p1, "v1"    # I
    .param p2, "v2"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .end local p2    # "v2":I
    :goto_0
    return-object v0

    .line 147
    .restart local p2    # "v2":I
    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    add-int v1, p1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    new-instance v0, Ljava/lang/Integer;

    if-lez p2, :cond_0

    neg-int p2, p2

    .end local p2    # "v2":I
    :cond_0
    add-int v1, p1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 151
    .restart local p2    # "v2":I
    :pswitch_3
    new-instance v0, Ljava/lang/Integer;

    mul-int v1, p1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 153
    :pswitch_4
    new-instance v0, Ljava/lang/Integer;

    div-int v1, p1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static operate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "flag"    # Ljava/lang/String;
    .param p1, "v1"    # Ljava/lang/String;
    .param p2, "v2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->operate(CII)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected static replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "i":I
    const/4 v2, 0x0

    .line 170
    .local v2, "j":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 172
    .local v3, "line2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 173
    .local v4, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 174
    .local v5, "oLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v6, v3

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 175
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 176
    add-int/2addr v1, v5

    .line 177
    move v2, v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 181
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 184
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "line2":[C
    .end local v4    # "newString2":[C
    .end local v5    # "oLength":I
    .end local p0    # "line":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 178
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "line2":[C
    .restart local v4    # "newString2":[C
    .restart local v5    # "oLength":I
    .restart local p0    # "line":Ljava/lang/String;
    :cond_1
    sub-int v6, v1, v2

    invoke-virtual {v0, v3, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 179
    add-int/2addr v1, v5

    .line 177
    move v2, v1

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v3, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 62
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 63
    .local v0, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    return-object v2

    .line 64
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public static splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
