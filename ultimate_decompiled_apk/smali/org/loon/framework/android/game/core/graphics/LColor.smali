.class public Lorg/loon/framework/android/game/core/graphics/LColor;
.super Ljava/lang/Object;
.source "LColor.java"


# static fields
.field private static final ALPHA:I = 0x18

.field private static final BLUE:I = 0x0

.field private static final FACTOR:D = 0.7

.field private static final GREEN:I = 0x8

.field private static final RED:I = 0x10

.field public static final black:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final blue:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final cyan:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final darkGray:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final gray:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final green:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final lightGray:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final magenta:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final orange:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final pink:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final red:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final transparent:I = -0x1000000

.field public static final white:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public static final yellow:Lorg/loon/framework/android/game/core/graphics/LColor;


# instance fields
.field private alpha:I

.field private b:I

.field private g:I

.field private r:I

.field private rgba:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v2, 0x80

    const/16 v1, 0x40

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 28
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v3, v3, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 30
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v5, v5, v5}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->lightGray:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 32
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v2, v2, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->gray:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 34
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v1, v1, v1}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->darkGray:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 36
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v4, v4, v4}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 38
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v3, v4, v4}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 40
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    invoke-direct {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->pink:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 42
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    const/16 v1, 0xc8

    invoke-direct {v0, v3, v1, v4}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 44
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v3, v3, v4}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->yellow:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 46
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v4, v3, v4}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->green:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 48
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v3, v4, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->magenta:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 50
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v4, v3, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->cyan:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 52
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v4, v4, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->blue:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 24
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 112
    mul-float v0, p1, v3

    float-to-double v0, v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    mul-float v1, p2, v3

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    .line 113
    mul-float v2, p3, v3

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    .line 115
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 126
    mul-float v0, p1, v4

    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    mul-float v1, p2, v4

    float-to-double v1, v1

    add-double/2addr v1, v5

    double-to-int v1, v1

    .line 127
    mul-float v2, p3, v4

    float-to-double v2, v2

    add-double/2addr v2, v5

    double-to-int v2, v2

    mul-float v3, p4, v4

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(IIII)V

    .line 129
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    .line 157
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    .line 158
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    .line 159
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getAlpha(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    .line 160
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 101
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(IIII)V

    .line 102
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    .line 78
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    .line 79
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    .line 80
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->rgba:[I

    .line 82
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "rgba"    # I
    .param p2, "hasalpha"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    .line 140
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    .line 141
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    .line 142
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getAlpha(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    .line 145
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    .line 146
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue(I)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 4
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 90
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    iget v3, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(IIII)V

    .line 91
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    .line 169
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    .line 170
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    .line 171
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    .line 172
    return-void
.end method

.method public static getARGB(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "alpha"    # I

    .prologue
    .line 309
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static getAlpha(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 319
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static getBlue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 349
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getGreen(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 339
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getPixel(III)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 194
    const/high16 v0, -0x1000000

    shl-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static getPixel(I[IIIII)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 533
    if-gez p2, :cond_0

    .line 534
    const/4 p2, 0x0

    .line 536
    :cond_0
    if-lt p2, p4, :cond_1

    .line 537
    add-int/lit8 p2, p4, -0x1

    .line 539
    :cond_1
    if-gez p3, :cond_2

    .line 540
    const/4 p3, 0x0

    .line 542
    :cond_2
    if-lt p3, p5, :cond_3

    .line 543
    add-int/lit8 p3, p5, -0x1

    .line 545
    :cond_3
    mul-int v1, p4, p3

    add-int/2addr v1, p2

    aget v0, p1, v1

    .line 546
    .local v0, "val":I
    sparse-switch p0, :sswitch_data_0

    .line 560
    :goto_0
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 548
    :sswitch_0
    shr-int/lit8 v0, v0, 0x18

    .line 549
    goto :goto_0

    .line 551
    :sswitch_1
    shr-int/lit8 v0, v0, 0x10

    .line 552
    goto :goto_0

    .line 554
    :sswitch_2
    shr-int/lit8 v0, v0, 0x8

    .line 555
    goto :goto_0

    .line 557
    :sswitch_3
    shr-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 546
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPixel([IIII)I
    .locals 1
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 261
    mul-int v0, p1, p3

    add-int/2addr v0, p2

    aget v0, p0, v0

    return v0
.end method

.method public static getRGB(I)I
    .locals 4
    .param p0, "pixels"    # I

    .prologue
    .line 293
    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 294
    .local v2, "r":I
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 295
    .local v1, "g":I
    and-int/lit16 v0, p0, 0xff

    .line 296
    .local v0, "b":I
    invoke-static {v2, v1, v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB(III)I

    move-result v3

    return v3
.end method

.method public static getRGB(III)I
    .locals 1
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 283
    const/16 v0, 0xff

    invoke-static {p0, p1, p2, v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getARGB(IIII)I

    move-result v0

    return v0
.end method

.method public static getRed(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 329
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static premultiply(I)I
    .locals 6
    .param p0, "argbColor"    # I

    .prologue
    .line 359
    ushr-int/lit8 v0, p0, 0x18

    .line 360
    .local v0, "a":I
    if-nez v0, :cond_1

    .line 361
    const/4 p0, 0x0

    .line 371
    .end local p0    # "argbColor":I
    :cond_0
    :goto_0
    return p0

    .line 362
    .restart local p0    # "argbColor":I
    :cond_1
    const/16 v4, 0xff

    if-eq v0, v4, :cond_0

    .line 365
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 366
    .local v3, "r":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 367
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 368
    .local v1, "b":I
    mul-int v4, v0, v3

    add-int/lit8 v4, v4, 0x7f

    div-int/lit16 v3, v4, 0xff

    .line 369
    mul-int v4, v0, v2

    add-int/lit8 v4, v4, 0x7f

    div-int/lit16 v2, v4, 0xff

    .line 370
    mul-int v4, v0, v1

    add-int/lit8 v4, v4, 0x7f

    div-int/lit16 v1, v4, 0xff

    .line 371
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int p0, v4, v1

    goto :goto_0
.end method

.method public static premultiply(II)I
    .locals 5
    .param p0, "rgbColor"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 383
    if-gtz p1, :cond_0

    .line 384
    const/4 v3, 0x0

    .line 395
    :goto_0
    return v3

    .line 385
    :cond_0
    const/16 v3, 0xff

    if-lt p1, v3, :cond_1

    .line 386
    const/high16 v3, -0x1000000

    or-int/2addr v3, p0

    goto :goto_0

    .line 388
    :cond_1
    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 389
    .local v2, "r":I
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 390
    .local v1, "g":I
    and-int/lit16 v0, p0, 0xff

    .line 392
    .local v0, "b":I
    mul-int v3, p1, v2

    add-int/lit8 v3, v3, 0x7f

    div-int/lit16 v2, v3, 0xff

    .line 393
    mul-int v3, p1, v1

    add-int/lit8 v3, v3, 0x7f

    div-int/lit16 v1, v3, 0xff

    .line 394
    mul-int v3, p1, v0

    add-int/lit8 v3, v3, 0x7f

    div-int/lit16 v0, v3, 0xff

    .line 395
    shl-int/lit8 v3, p1, 0x18

    shl-int/lit8 v4, v2, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    goto :goto_0
.end method

.method public static putPixel(II[IIIII)V
    .locals 3
    .param p0, "val"    # I
    .param p1, "color"    # I
    .param p2, "pixels"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 482
    if-gez p3, :cond_0

    .line 483
    const/4 p3, 0x0

    .line 485
    :cond_0
    if-lt p3, p5, :cond_1

    .line 486
    add-int/lit8 p3, p5, -0x1

    .line 488
    :cond_1
    if-gez p4, :cond_2

    .line 489
    const/4 p4, 0x0

    .line 491
    :cond_2
    if-lt p4, p6, :cond_3

    .line 492
    add-int/lit8 p4, p6, -0x1

    .line 494
    :cond_3
    if-gez p0, :cond_4

    .line 495
    const/4 p0, 0x0

    .line 497
    :cond_4
    const/16 v1, 0xff

    if-le p0, v1, :cond_5

    .line 498
    const/16 p0, 0xff

    .line 500
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 514
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aget v0, p2, v1

    .line 517
    .local v0, "nval":I
    :goto_0
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aput v0, p2, v1

    .line 518
    return-void

    .line 502
    .end local v0    # "nval":I
    :sswitch_0
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aget v1, p2, v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x18

    or-int v0, v1, v2

    .line 503
    .restart local v0    # "nval":I
    goto :goto_0

    .line 505
    .end local v0    # "nval":I
    :sswitch_1
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aget v1, p2, v1

    const v2, -0xff0001

    and-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x10

    or-int v0, v1, v2

    .line 506
    .restart local v0    # "nval":I
    goto :goto_0

    .line 508
    .end local v0    # "nval":I
    :sswitch_2
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aget v1, p2, v1

    const v2, -0xff01

    and-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x8

    or-int v0, v1, v2

    .line 509
    .restart local v0    # "nval":I
    goto :goto_0

    .line 511
    .end local v0    # "nval":I
    :sswitch_3
    mul-int v1, p5, p4

    add-int/2addr v1, p3

    aget v1, p2, v1

    and-int/lit16 v1, v1, -0x100

    shl-int/lit8 v2, p0, 0x0

    or-int v0, v1, v2

    .line 512
    .restart local v0    # "nval":I
    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public static sharpen([IIID)V
    .locals 18
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "f"    # D

    .prologue
    .line 432
    move-object/from16 v0, p0

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 433
    .local v17, "tmp":[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    move/from16 v0, p2

    if-lt v5, v0, :cond_0

    .line 459
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, p2

    if-lt v5, v0, :cond_3

    .line 464
    const/16 v17, 0x0

    check-cast v17, [I

    .line 465
    return-void

    .line 435
    :cond_0
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_2
    move/from16 v0, p1

    if-lt v8, v0, :cond_1

    .line 434
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 436
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v16

    if-lt v0, v3, :cond_2

    .line 435
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 437
    :cond_2
    const/4 v2, 0x0

    .line 438
    .local v2, "color":I
    packed-switch v16, :pswitch_data_0

    .line 449
    :goto_4
    add-int/lit8 v4, v8, -0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(I[IIIII)I

    move-result v3

    int-to-double v3, v3

    .line 450
    move-wide/from16 v0, p3

    neg-double v6, v0

    .line 449
    mul-double/2addr v3, v6

    .line 450
    add-int/lit8 v9, v5, -0x1

    move v6, v2

    move-object/from16 v7, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v6 .. v11}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(I[IIIII)I

    move-result v6

    int-to-double v6, v6

    move-wide/from16 v0, p3

    neg-double v10, v0

    mul-double/2addr v6, v10

    .line 449
    add-double v10, v3, v6

    move-object/from16 v3, p0

    move v4, v8

    move/from16 v6, p1

    move/from16 v7, p2

    .line 451
    invoke-static/range {v2 .. v7}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(I[IIIII)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, p3

    add-double/2addr v6, v12

    mul-double/2addr v3, v6

    .line 449
    add-double/2addr v3, v10

    .line 452
    add-int/lit8 v9, v5, 0x1

    move v6, v2

    move-object/from16 v7, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v6 .. v11}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(I[IIIII)I

    move-result v6

    int-to-double v6, v6

    move-wide/from16 v0, p3

    neg-double v10, v0

    mul-double/2addr v6, v10

    .line 449
    add-double v10, v3, v6

    .line 453
    add-int/lit8 v4, v8, -0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 452
    invoke-static/range {v2 .. v7}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(I[IIIII)I

    move-result v3

    int-to-double v3, v3

    .line 454
    move-wide/from16 v0, p3

    neg-double v6, v0

    .line 452
    mul-double/2addr v3, v6

    .line 449
    add-double/2addr v3, v10

    double-to-int v9, v3

    .local v9, "val":I
    move v10, v2

    move-object/from16 v11, v17

    move v12, v8

    move v13, v5

    move/from16 v14, p1

    move/from16 v15, p2

    .line 455
    invoke-static/range {v9 .. v15}, Lorg/loon/framework/android/game/core/graphics/LColor;->putPixel(II[IIIII)V

    .line 436
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 440
    .end local v9    # "val":I
    :pswitch_0
    const/16 v2, 0x10

    .line 441
    goto :goto_4

    .line 443
    :pswitch_1
    const/16 v2, 0x8

    .line 444
    goto :goto_4

    .line 446
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_4

    .line 460
    .end local v2    # "color":I
    .end local v8    # "x":I
    .end local v16    # "i":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "x":I
    :goto_5
    move/from16 v0, p1

    if-lt v8, v0, :cond_4

    .line 459
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 461
    :cond_4
    mul-int v3, p1, v5

    add-int/2addr v3, v8

    mul-int v4, p1, v5

    add-int/2addr v4, v8

    aget v4, v17, v4

    aput v4, p0, v3

    .line 460
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static unpremultiply(I)I
    .locals 6
    .param p0, "preARGBColor"    # I

    .prologue
    .line 406
    ushr-int/lit8 v0, p0, 0x18

    .line 407
    .local v0, "a":I
    if-nez v0, :cond_1

    .line 408
    const/4 p0, 0x0

    .line 419
    .end local p0    # "preARGBColor":I
    :cond_0
    :goto_0
    return p0

    .line 409
    .restart local p0    # "preARGBColor":I
    :cond_1
    const/16 v4, 0xff

    if-eq v0, v4, :cond_0

    .line 412
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 413
    .local v3, "r":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 414
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 416
    .local v1, "b":I
    mul-int/lit16 v4, v3, 0xff

    div-int v3, v4, v0

    .line 417
    mul-int/lit16 v4, v2, 0xff

    div-int v2, v4, v0

    .line 418
    mul-int/lit16 v4, v1, 0xff

    div-int v1, v4, v0

    .line 419
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int p0, v4, v1

    goto :goto_0
.end method


# virtual methods
.method public brighter()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 12

    .prologue
    const/16 v11, 0xff

    const-wide v9, 0x3fe6666666666666L    # 0.7

    .line 206
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v3

    .line 207
    .local v3, "r":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v1

    .line 208
    .local v1, "g":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v0

    .line 210
    .local v0, "b":I
    const/4 v2, 0x3

    .line 211
    .local v2, "i":I
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 212
    new-instance v4, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v4, v2, v2, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    .line 223
    :goto_0
    return-object v4

    .line 214
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 215
    move v3, v2

    .line 217
    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 218
    move v1, v2

    .line 220
    :cond_2
    if-lez v0, :cond_3

    if-ge v0, v2, :cond_3

    .line 221
    move v0, v2

    .line 223
    :cond_3
    new-instance v4, Lorg/loon/framework/android/game/core/graphics/LColor;

    int-to-double v5, v3

    div-double/2addr v5, v9

    double-to-int v5, v5

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 224
    int-to-double v6, v1

    div-double/2addr v6, v9

    double-to-int v6, v6

    .line 223
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 224
    int-to-double v7, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 223
    invoke-direct {v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    goto :goto_0
.end method

.method public darker()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x3fe6666666666666L    # 0.7

    .line 228
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 229
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 228
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 230
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 229
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 228
    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    return-object v0
.end method

.method public equals(Lorg/loon/framework/android/game/core/graphics/LColor;)Z
    .locals 2
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 271
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getARGB()I
    .locals 4

    .prologue
    .line 239
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    invoke-static {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;->getARGB(IIII)I

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    return v0
.end method

.method public getBlue()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    return v0
.end method

.method public getGreen()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    return v0
.end method

.method public getPixel(Lorg/loon/framework/android/game/core/graphics/LColor;)I
    .locals 3
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 190
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(III)I

    move-result v0

    return v0
.end method

.method public getRGB()I
    .locals 3

    .prologue
    .line 248
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->g:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->b:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB(III)I

    move-result v0

    return v0
.end method

.method public getRGBs()[I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->rgba:[I

    return-object v0
.end method

.method public getRed()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->r:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 202
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->setAlphaValue(I)V

    .line 203
    return-void
.end method

.method public setAlphaValue(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 198
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LColor;->alpha:I

    .line 199
    return-void
.end method
