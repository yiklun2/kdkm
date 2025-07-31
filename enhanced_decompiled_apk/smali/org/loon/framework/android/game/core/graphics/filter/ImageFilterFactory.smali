.class public Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
.super Ljava/lang/Object;
.source "ImageFilterFactory.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllBlackFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllRedFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllWhiteFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlackWhiteFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlueFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GreenFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$MagentaFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PinkFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PsychedeliaFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedBlueSwapFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$SwapFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowFilter;,
        Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowInvertFilter;
    }
.end annotation


# static fields
.field private static filterFactry:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->filterFactry:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoRGB(FFF)I
    .locals 13
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "brightness"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 305
    const/4 v6, 0x0

    .local v6, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v0, 0x0

    .line 306
    .local v0, "b":I
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_0

    .line 307
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    move v2, v0

    move v6, v0

    .line 347
    :goto_0
    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v6, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v0, 0x0

    or-int/2addr v8, v9

    return v8

    .line 309
    :cond_0
    float-to-double v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v8, p0, v8

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float v3, v8, v9

    .line 310
    .local v3, "h":F
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v1, v3, v8

    .line 311
    .local v1, "f":F
    sub-float v8, v12, p1

    mul-float v4, p2, v8

    .line 312
    .local v4, "p":F
    mul-float v8, p1, v1

    sub-float v8, v12, v8

    mul-float v5, p2, v8

    .line 313
    .local v5, "q":F
    sub-float v8, v12, v1

    mul-float/2addr v8, p1

    sub-float v8, v12, v8

    mul-float v7, p2, v8

    .line 314
    .local v7, "t":F
    float-to-int v8, v3

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 316
    :pswitch_0
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 317
    mul-float v8, v7, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 318
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    .line 319
    goto :goto_0

    .line 321
    :pswitch_1
    mul-float v8, v5, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 322
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 323
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    .line 324
    goto :goto_0

    .line 326
    :pswitch_2
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 327
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 328
    mul-float v8, v7, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    .line 329
    goto :goto_0

    .line 331
    :pswitch_3
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 332
    mul-float v8, v5, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 333
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    .line 334
    goto :goto_0

    .line 336
    :pswitch_4
    mul-float v8, v7, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 337
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 338
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    .line 339
    goto :goto_0

    .line 341
    :pswitch_5
    mul-float v8, p2, v11

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 342
    mul-float v8, v4, v11

    add-float/2addr v8, v10

    float-to-int v2, v8

    .line 343
    mul-float v8, v5, v11

    add-float/2addr v8, v10

    float-to-int v0, v8

    goto/16 :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBtoHSB(III[F)[F
    .locals 11
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsbvals"    # [F

    .prologue
    const/4 v10, 0x0

    .line 352
    if-nez p3, :cond_0

    .line 353
    const/4 v8, 0x3

    new-array p3, v8, [F

    .line 355
    :cond_0
    if-le p0, p1, :cond_4

    move v2, p0

    .line 356
    .local v2, "cmax":I
    :goto_0
    if-le p2, v2, :cond_1

    .line 357
    move v2, p2

    .line 358
    :cond_1
    if-ge p0, p1, :cond_5

    move v3, p0

    .line 359
    .local v3, "cmin":I
    :goto_1
    if-ge p2, v3, :cond_2

    .line 360
    move v3, p2

    .line 362
    :cond_2
    int-to-float v8, v2

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v1, v8, v9

    .line 363
    .local v1, "brightness":F
    if-eqz v2, :cond_6

    .line 364
    sub-int v8, v2, v3

    int-to-float v8, v8

    int-to-float v9, v2

    div-float v7, v8, v9

    .line 367
    .local v7, "saturation":F
    :goto_2
    cmpl-float v8, v7, v10

    if-nez v8, :cond_7

    .line 368
    const/4 v5, 0x0

    .line 383
    .local v5, "hue":F
    :cond_3
    :goto_3
    const/4 v8, 0x0

    aput v5, p3, v8

    .line 384
    const/4 v8, 0x1

    aput v7, p3, v8

    .line 385
    const/4 v8, 0x2

    aput v1, p3, v8

    .line 386
    return-object p3

    .end local v1    # "brightness":F
    .end local v2    # "cmax":I
    .end local v3    # "cmin":I
    .end local v5    # "hue":F
    .end local v7    # "saturation":F
    :cond_4
    move v2, p1

    .line 355
    goto :goto_0

    .restart local v2    # "cmax":I
    :cond_5
    move v3, p1

    .line 358
    goto :goto_1

    .line 366
    .restart local v1    # "brightness":F
    .restart local v3    # "cmin":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "saturation":F
    goto :goto_2

    .line 370
    :cond_7
    sub-int v8, v2, p0

    int-to-float v8, v8

    sub-int v9, v2, v3

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 371
    .local v6, "redc":F
    sub-int v8, v2, p1

    int-to-float v8, v8

    sub-int v9, v2, v3

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 372
    .local v4, "greenc":F
    sub-int v8, v2, p2

    int-to-float v8, v8

    sub-int v9, v2, v3

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 373
    .local v0, "bluec":F
    if-ne p0, v2, :cond_8

    .line 374
    sub-float v5, v0, v4

    .line 379
    .restart local v5    # "hue":F
    :goto_4
    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v5, v8

    .line 380
    cmpg-float v8, v5, v10

    if-gez v8, :cond_3

    .line 381
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v5, v8

    goto :goto_3

    .line 375
    .end local v5    # "hue":F
    :cond_8
    if-ne p1, v2, :cond_9

    .line 376
    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v8, v6

    sub-float v5, v8, v0

    .restart local v5    # "hue":F
    goto :goto_4

    .line 378
    .end local v5    # "hue":F
    :cond_9
    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v8, v4

    sub-float v5, v8, v6

    .restart local v5    # "hue":F
    goto :goto_4
.end method

.method public static getAllRed(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 246
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getAllRed(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 256
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 257
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getAllWBlack(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 290
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getAllWBlack(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 300
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 301
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getAllWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 267
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 268
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getAllWhite(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 278
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 279
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 113
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 114
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBlackWhite(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 124
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 125
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 59
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getGray(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 47
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 48
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getGreen(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 158
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getGreen(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 168
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 169
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->filterFactry:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->filterFactry:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 37
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->filterFactry:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    return-object v0
.end method

.method public static getMagenta(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 179
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 180
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getMagenta(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 190
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 191
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getPink(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 201
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 202
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getPink(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 212
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 213
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getRate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 92
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getRate(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 102
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 103
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getRed(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 136
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getRed(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 146
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 147
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 223
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 224
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getWhite(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 234
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 235
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getYellow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 70
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getYellow(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 80
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    .line 81
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "filter"    # I

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 398
    const/4 p1, 0x0

    .line 460
    .end local p1    # "img":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 400
    .restart local p1    # "img":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p2, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    packed-switch p2, :pswitch_data_0

    .line 460
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 406
    :pswitch_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GreenFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GreenFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 407
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 409
    :pswitch_1
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedBlueSwapFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedBlueSwapFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 410
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 412
    :pswitch_2
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowInvertFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowInvertFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 413
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 415
    :pswitch_3
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PsychedeliaFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PsychedeliaFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 416
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 418
    :pswitch_4
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RedFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 419
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 421
    :pswitch_5
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$MagentaFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$MagentaFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 422
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 424
    :pswitch_6
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PinkFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PinkFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 425
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 427
    :pswitch_7
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$YellowFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 428
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 430
    :pswitch_8
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlueFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlueFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 431
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 433
    :pswitch_9
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$SwapFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$SwapFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 434
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 436
    :pswitch_a
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    const/4 v1, 0x1

    const/16 v2, 0x19

    invoke-direct {v0, p0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;ZI)V

    .line 437
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 439
    :pswitch_b
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlackWhiteFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlackWhiteFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 440
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 442
    :pswitch_c
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 443
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 445
    :pswitch_d
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 446
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 448
    :pswitch_e
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllRedFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllRedFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 449
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 451
    :pswitch_f
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllWhiteFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllWhiteFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 452
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 454
    :pswitch_10
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllBlackFilter;

    .end local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$AllBlackFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V

    .line 455
    .restart local v0    # "imgfilter":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;
    goto :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public doFilter(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "imgfilter"    # Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;

    .prologue
    .line 464
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;

    invoke-direct {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;-><init>(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;)V

    .line 466
    .local v0, "imageProducer":Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->doFilter()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public doFilter(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "filter"    # I

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
