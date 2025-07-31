.class public final Lorg/loon/framework/android/game/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field private static final DEF_DIV_SCALE:I = 0xa

.field private static final zeros:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const-string v2, "00000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0000000000"

    aput-object v2, v0, v1

    .line 141
    sput-object v0, Lorg/loon/framework/android/game/utils/NumberUtils;->zeros:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static add(DD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D

    .prologue
    .line 326
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "b2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static addZeros(JI)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # J
    .param p2, "numDigits"    # I

    .prologue
    .line 152
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/loon/framework/android/game/utils/NumberUtils;->addZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addZeros(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 164
    .local v0, "length":I
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/loon/framework/android/game/utils/NumberUtils;->zeros:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 167
    :cond_0
    return-object p0
.end method

.method public static div(DD)D
    .locals 2
    .param p0, "v1"    # D
    .param p2, "v2"    # D

    .prologue
    .line 374
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, p3, v0}, Lorg/loon/framework/android/game/utils/NumberUtils;->div(DDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static div(DDI)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "scale"    # I

    .prologue
    .line 390
    if-gez p4, :cond_0

    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 392
    const-string v3, "The scale must be a positive integer or zero"

    .line 391
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "b2":Ljava/math/BigDecimal;
    const/4 v2, 0x4

    invoke-virtual {v0, v1, p4, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static getRandomInt(II)I
    .locals 7
    .param p0, "num1"    # I
    .param p1, "num2"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "result":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-gt p1, p0, :cond_1

    .line 119
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 120
    if-lt v0, p1, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    goto :goto_0
.end method

.method public static getRandomUnsignedInt(I)I
    .locals 1
    .param p0, "maxInt"    # I

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/NumberUtils;->getRandomUnsignedInt(II)I

    move-result v0

    return v0
.end method

.method public static getRandomUnsignedInt(II)I
    .locals 7
    .param p0, "maxInt"    # I
    .param p1, "doNotInclude"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "val":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-gt p1, p0, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 90
    if-lt v0, p1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    goto :goto_0
.end method

.method public static getRandomUnsignedInt(III)I
    .locals 8
    .param p0, "maxInt"    # I
    .param p1, "doNotInclude1"    # I
    .param p2, "doNotInclude2"    # I

    .prologue
    .line 46
    const/4 v0, 0x2

    .line 47
    .local v0, "n":I
    if-ne p1, p2, :cond_0

    .line 48
    add-int/lit8 p2, p0, 0x1

    .line 50
    :cond_0
    if-le p1, p2, :cond_1

    .line 51
    move v0, p2

    .line 52
    move p2, p1

    .line 53
    move p1, v0

    .line 54
    const/4 v0, 0x2

    .line 56
    :cond_1
    if-gez p1, :cond_2

    .line 57
    add-int/lit8 p1, p0, 0x1

    .line 59
    :cond_2
    if-gez p2, :cond_3

    .line 60
    add-int/lit8 p2, p0, 0x1

    .line 62
    :cond_3
    if-le p1, p0, :cond_4

    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 65
    :cond_4
    if-le p2, p0, :cond_5

    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 68
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 69
    int-to-double v4, p0

    int-to-double v6, v0

    sub-double/2addr v4, v6

    .line 68
    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 70
    .local v1, "val":I
    if-lt v1, p1, :cond_6

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_6
    if-lt v1, p2, :cond_7

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_7
    return v1
.end method

.method public static isEmpty(I)Z
    .locals 2
    .param p0, "val"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 209
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 210
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNan(Ljava/lang/String;)Z
    .locals 7
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5f

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "result":Z
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    .line 189
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 181
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 183
    :try_start_0
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "test":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v1, 0x1

    move v2, v1

    .line 189
    .restart local v2    # "result":I
    goto :goto_0

    .line 186
    .end local v2    # "result":I
    .end local v3    # "test":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    move v2, v1

    .line 187
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public static mid(III)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 138
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static minusPercent(FF)F
    .locals 2
    .param p0, "maxValue"    # F
    .param p1, "minusValue"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 251
    div-float v0, p1, p0

    mul-float/2addr v0, v1

    sub-float v0, v1, v0

    return v0
.end method

.method public static mul(DD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D

    .prologue
    .line 358
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "b2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static percent(FF)F
    .locals 2
    .param p0, "maxValue"    # F
    .param p1, "minValue"    # F

    .prologue
    .line 262
    div-float v0, p1, p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static round(DI)D
    .locals 4
    .param p0, "v"    # D
    .param p2, "scale"    # I

    .prologue
    .line 411
    if-gez p2, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 413
    const-string v3, "The scale must be a positive integer or zero"

    .line 412
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "b":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "one":Ljava/math/BigDecimal;
    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static sub(DD)D
    .locals 4
    .param p0, "v1"    # D
    .param p2, "v2"    # D

    .prologue
    .line 342
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, "b2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static toConvertCnNumber(JI)Ljava/lang/String;
    .locals 11
    .param p0, "value"    # J
    .param p2, "type"    # I

    .prologue
    .line 275
    const/16 v9, 0xa

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u96f6"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "\u58f9"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "\u8d30"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "\u53c1"

    aput-object v10, v2, v9

    const/4 v9, 0x4

    const-string v10, "\u8086"

    aput-object v10, v2, v9

    const/4 v9, 0x5

    const-string v10, "\u4f0d"

    aput-object v10, v2, v9

    const/4 v9, 0x6

    const-string v10, "\u9646"

    aput-object v10, v2, v9

    const/4 v9, 0x7

    const-string v10, "\u67d2"

    aput-object v10, v2, v9

    const/16 v9, 0x8

    const-string v10, "\u634c"

    aput-object v10, v2, v9

    const/16 v9, 0x9

    const-string v10, "\u7396"

    aput-object v10, v2, v9

    .line 276
    .local v2, "chNumber":[Ljava/lang/String;
    const/16 v9, 0x8

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "\u62fe"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "\u4f70"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string v10, "\u4edf"

    aput-object v10, v3, v9

    const/4 v9, 0x4

    const-string v10, "\u4e07"

    aput-object v10, v3, v9

    const/4 v9, 0x5

    const-string v10, "\u5341"

    aput-object v10, v3, v9

    const/4 v9, 0x6

    const-string v10, "\u767e"

    aput-object v10, v3, v9

    const/4 v9, 0x7

    const-string v10, "\u4edf"

    aput-object v10, v3, v9

    .line 277
    .local v3, "digit":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 287
    :goto_0
    const-string v8, ""

    .line 289
    .local v8, "retStr":Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "inputStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "i":I
    :goto_1
    if-gtz v4, :cond_0

    .line 304
    const-string v9, "\u96f6\u96f6"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 305
    .local v7, "pos":I
    :goto_2
    if-gez v7, :cond_3

    .line 310
    const-string v9, "\u96f6\u4e07"

    const-string v10, "\u4e07"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 312
    return-object v8

    .line 279
    .end local v4    # "i":I
    .end local v5    # "inputStr":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v8    # "retStr":Ljava/lang/String;
    :pswitch_0
    const/16 v9, 0xa

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u96f6"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "\u58f9"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "\u8d30"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "\u53c1"

    aput-object v10, v0, v9

    const/4 v9, 0x4

    const-string v10, "\u8086"

    aput-object v10, v0, v9

    const/4 v9, 0x5

    const-string v10, "\u4f0d"

    aput-object v10, v0, v9

    const/4 v9, 0x6

    const-string v10, "\u9646"

    aput-object v10, v0, v9

    const/4 v9, 0x7

    const-string v10, "\u67d2"

    aput-object v10, v0, v9

    const/16 v9, 0x8

    .line 280
    const-string v10, "\u634c"

    aput-object v10, v0, v9

    const/16 v9, 0x9

    const-string v10, "\u7396"

    aput-object v10, v0, v9

    .line 281
    .local v0, "capsCNumber":[Ljava/lang/String;
    move-object v2, v0

    .line 283
    .end local v0    # "capsCNumber":[Ljava/lang/String;
    :pswitch_1
    const/16 v9, 0xa

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u96f6"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "\u4e00"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "\u4e8c"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "\u4e09"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "\u56db"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "\u4e94"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "\u516d"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "\u4e03"

    aput-object v10, v6, v9

    const/16 v9, 0x8

    .line 284
    const-string v10, "\u516b"

    aput-object v10, v6, v9

    const/16 v9, 0x9

    const-string v10, "\u4e5d"

    aput-object v10, v6, v9

    .line 285
    .local v6, "minCNumber":[Ljava/lang/String;
    move-object v2, v6

    goto/16 :goto_0

    .line 291
    .end local v6    # "minCNumber":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "inputStr":Ljava/lang/String;
    .restart local v8    # "retStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 292
    .local v1, "ch":C
    const/16 v9, 0x30

    if-eq v1, v9, :cond_1

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v1, -0x30

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 295
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 294
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 290
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 297
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u96f6\u4e07"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 300
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u96f6"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 306
    .end local v1    # "ch":C
    .restart local v7    # "pos":I
    :cond_3
    const-string v9, "\u96f6\u96f6"

    const-string v10, "\u96f6"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 307
    const-string v9, "\u96f6\u96f6"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toPercent(JJ)D
    .locals 10
    .param p0, "divisor"    # J
    .param p2, "dividend"    # J

    .prologue
    const-wide/16 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 221
    cmp-long v4, p0, v5

    if-eqz v4, :cond_0

    cmp-long v4, p2, v5

    if-nez v4, :cond_1

    .line 222
    :cond_0
    const-wide/16 v4, 0x0

    .line 227
    :goto_0
    return-wide v4

    .line 224
    :cond_1
    long-to-double v4, p0

    mul-double v0, v4, v8

    .line 225
    .local v0, "cd":D
    long-to-double v4, p2

    mul-double v2, v4, v8

    .line 227
    .local v2, "pd":D
    div-double v4, v0, v2

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v8

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method public static toRandom(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 237
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 238
    .local v0, "rad":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 239
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/2addr v1, p0

    return v1
.end method
