.class public Ljavax/microedition/lcdui/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field private static final flag:Ljava/lang/String; = "|"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private close:Z

.field private g:Ljavax/microedition/lcdui/Graphics;

.field private height:I

.field private subs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/microedition/lcdui/Image;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    .line 257
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Ljavax/microedition/lcdui/Image;->width:I

    .line 293
    iput p2, p0, Ljavax/microedition/lcdui/Image;->height:I

    .line 294
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 295
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/16 v1, 0x64

    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v1, v2, v3}, Lorg/loon/framework/android/game/core/LSystem;->gc(IJ)V

    .line 269
    iput p1, p0, Ljavax/microedition/lcdui/Image;->width:I

    .line 270
    iput p2, p0, Ljavax/microedition/lcdui/Image;->height:I

    .line 271
    if-eqz p3, :cond_0

    .line 273
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 272
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 275
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 281
    iput p1, p0, Ljavax/microedition/lcdui/Image;->width:I

    .line 282
    iput p2, p0, Ljavax/microedition/lcdui/Image;->height:I

    .line 284
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 283
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 285
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Image;-><init>(Ljavax/microedition/lcdui/Image;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 298
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    return-void
.end method

.method public static createImage(II)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 69
    new-instance v0, Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    return-object v0
.end method

.method public static createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 73
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, p0, p1, p2}, Ljavax/microedition/lcdui/Image;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public static createImage(IIZ)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "transparency"    # Z

    .prologue
    .line 65
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, p0, p1, p2}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    return-object v0
.end method

.method public static createImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "transparency"    # Z

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "res":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1

    .line 93
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .restart local v0    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;
    .locals 20
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "transform"    # I

    .prologue
    .line 144
    mul-int v1, p3, p4

    new-array v2, v1, [I

    .line 145
    .local v2, "buf":[I
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Ljavax/microedition/lcdui/Image;->getPixels([IIIIIII)[I

    .line 148
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 149
    move/from16 v14, p3

    .line 150
    .local v14, "th":I
    move/from16 v17, p4

    .line 155
    .local v17, "tw":I
    :goto_0
    if-eqz p5, :cond_0

    .line 156
    array-length v1, v2

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 157
    .local v16, "trans":[I
    const/4 v9, 0x0

    .line 158
    .local v9, "sp":I
    const/4 v12, 0x0

    .local v12, "sy":I
    :goto_1
    move/from16 v0, p4

    if-lt v12, v0, :cond_2

    .line 210
    move-object/from16 v2, v16

    .line 213
    .end local v9    # "sp":I
    .end local v12    # "sy":I
    .end local v16    # "trans":[I
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, v17

    invoke-static {v2, v0, v14, v1}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    return-object v1

    .line 152
    .end local v14    # "th":I
    .end local v17    # "tw":I
    :cond_1
    move/from16 v14, p4

    .line 153
    .restart local v14    # "th":I
    move/from16 v17, p3

    .restart local v17    # "tw":I
    goto :goto_0

    .line 163
    .restart local v9    # "sp":I
    .restart local v12    # "sy":I
    .restart local v16    # "trans":[I
    :cond_2
    packed-switch p5, :pswitch_data_0

    .line 200
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "illegal transformation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :pswitch_0
    sub-int v1, v17, v12

    add-int/lit8 v18, v1, -0x1

    .line 166
    .local v18, "tx":I
    const/16 v19, 0x0

    .line 167
    .local v19, "ty":I
    move/from16 v13, v17

    .line 204
    .local v13, "td":I
    :goto_2
    mul-int v1, v19, v17

    add-int v15, v1, v18

    .line 205
    .local v15, "tp":I
    const/4 v11, 0x0

    .local v11, "sx":I
    move v10, v9

    .end local v9    # "sp":I
    .local v10, "sp":I
    :goto_3
    move/from16 v0, p3

    if-lt v11, v0, :cond_3

    .line 158
    add-int/lit8 v12, v12, 0x1

    move v9, v10

    .end local v10    # "sp":I
    .restart local v9    # "sp":I
    goto :goto_1

    .line 170
    .end local v11    # "sx":I
    .end local v13    # "td":I
    .end local v15    # "tp":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_1
    add-int/lit8 v18, v17, -0x1

    .line 171
    .restart local v18    # "tx":I
    sub-int v1, v14, v12

    add-int/lit8 v19, v1, -0x1

    .line 172
    .restart local v19    # "ty":I
    const/4 v13, -0x1

    .line 173
    .restart local v13    # "td":I
    goto :goto_2

    .line 175
    .end local v13    # "td":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_2
    move/from16 v18, v12

    .line 176
    .restart local v18    # "tx":I
    add-int/lit8 v19, v14, -0x1

    .line 177
    .restart local v19    # "ty":I
    move/from16 v0, v17

    neg-int v13, v0

    .line 178
    .restart local v13    # "td":I
    goto :goto_2

    .line 180
    .end local v13    # "td":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_3
    add-int/lit8 v18, v17, -0x1

    .line 181
    .restart local v18    # "tx":I
    move/from16 v19, v12

    .line 182
    .restart local v19    # "ty":I
    const/4 v13, -0x1

    .line 183
    .restart local v13    # "td":I
    goto :goto_2

    .line 185
    .end local v13    # "td":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_4
    sub-int v1, v17, v12

    add-int/lit8 v18, v1, -0x1

    .line 186
    .restart local v18    # "tx":I
    add-int/lit8 v19, v14, -0x1

    .line 187
    .restart local v19    # "ty":I
    move/from16 v0, v17

    neg-int v13, v0

    .line 188
    .restart local v13    # "td":I
    goto :goto_2

    .line 190
    .end local v13    # "td":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_5
    const/16 v18, 0x0

    .line 191
    .restart local v18    # "tx":I
    sub-int v1, v14, v12

    add-int/lit8 v19, v1, -0x1

    .line 192
    .restart local v19    # "ty":I
    const/4 v13, 0x1

    .line 193
    .restart local v13    # "td":I
    goto :goto_2

    .line 195
    .end local v13    # "td":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :pswitch_6
    move/from16 v18, v12

    .line 196
    .restart local v18    # "tx":I
    const/16 v19, 0x0

    .line 197
    .restart local v19    # "ty":I
    move/from16 v13, v17

    .line 198
    .restart local v13    # "td":I
    goto :goto_2

    .line 206
    .end local v9    # "sp":I
    .restart local v10    # "sp":I
    .restart local v11    # "sx":I
    .restart local v15    # "tp":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "sp":I
    .restart local v9    # "sp":I
    aget v1, v2, v10

    aput v1, v16, v15

    .line 207
    add-int/2addr v15, v13

    .line 205
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "sp":I
    .restart local v10    # "sp":I
    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static createImage([B)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage([BZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage([BII)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "imageData"    # [B
    .param p1, "imageOffset"    # I
    .param p2, "imageLength"    # I

    .prologue
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, p2, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage([BIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage([BIIZ)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "imageData"    # [B
    .param p1, "imageOffset"    # I
    .param p2, "imageLength"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage([BIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage([BZ)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "transparency"    # Z

    .prologue
    .line 61
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage([BZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(IIILandroid/graphics/Bitmap$Config;)[Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "count"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 244
    new-array v1, p0, [Ljavax/microedition/lcdui/Image;

    .line 245
    .local v1, "image":[Ljavax/microedition/lcdui/Image;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 248
    return-object v1

    .line 246
    :cond_0
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, p1, p2, p3}, Ljavax/microedition/lcdui/Image;-><init>(IILandroid/graphics/Bitmap$Config;)V

    aput-object v2, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createImage(IIIZ)[Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p0, "count"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 227
    new-array v1, p0, [Ljavax/microedition/lcdui/Image;

    .line 228
    .local v1, "image":[Ljavax/microedition/lcdui/Image;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 231
    return-object v1

    .line 229
    :cond_0
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, p1, p2, p3}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    aput-object v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "rgb"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "processAlpha"    # Z

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 113
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 117
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_1
    new-instance v3, Ljavax/microedition/lcdui/Image;

    invoke-direct {v3, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3

    .line 115
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "config":Landroid/graphics/Bitmap$Config;
    goto :goto_0

    .line 118
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 121
    if-eqz p3, :cond_1

    .line 122
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 126
    .restart local v1    # "config":Landroid/graphics/Bitmap$Config;
    :goto_2
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 124
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .restart local v1    # "config":Landroid/graphics/Bitmap$Config;
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->clone()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/microedition/lcdui/Image;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public convertConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 442
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    .line 444
    .local v0, "flag":Z
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 445
    .local v1, "tmp":Landroid/graphics/Bitmap;
    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 446
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->isClose()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 448
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v3, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    .line 451
    .end local v0    # "flag":Z
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public create()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->subs:Ljava/util/Map;

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/lcdui/Image;->close:Z

    .line 559
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    iput-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 563
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheSubImage(IIII)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 463
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/Image;->getCacheSubImage(IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSubImage(IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 477
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->subs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->subs:Ljava/util/Map;

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->subs:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/microedition/lcdui/Image;

    .line 482
    .local v6, "img":Ljavax/microedition/lcdui/Image;
    if-nez v6, :cond_1

    .line 483
    iget-object v8, p0, Ljavax/microedition/lcdui/Image;->subs:Ljava/util/Map;

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_1
    return-object v6
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 313
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 314
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 316
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    return-object v0
.end method

.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->isClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    .line 327
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->isClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    .line 334
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->g:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getMirrorImage()Ljavax/microedition/lcdui/Image;
    .locals 7

    .prologue
    .line 423
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 424
    iget-object v3, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    monitor-enter v3

    .line 425
    :try_start_0
    iget v2, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v4, p0, Ljavax/microedition/lcdui/Image;->height:I

    iget-object v5, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 426
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 425
    invoke-static {v2, v4, v5}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 427
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 428
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    iget-object v2, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v0, v2, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V

    .line 429
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 430
    monitor-exit v3

    .line 433
    .end local v0    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v1    # "image":Ljavax/microedition/lcdui/Image;
    :goto_0
    return-object v1

    .line 424
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    move-object v1, p0

    .line 433
    goto :goto_0
.end method

.method public getPixel(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 397
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels()[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 354
    iget v0, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v3, p0, Ljavax/microedition/lcdui/Image;->height:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 355
    .local v1, "pixels":[I
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v6, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v7, p0, Ljavax/microedition/lcdui/Image;->height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 356
    return-object v1
.end method

.method public getPixels(IIII)[I
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 365
    mul-int v0, p3, p4

    new-array v1, v0, [I

    .line 366
    .local v1, "pixels":[I
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 367
    return-object v1
.end method

.method public getPixels(IIIIII)[I
    .locals 8
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 371
    mul-int v0, p5, p6

    new-array v1, v0, [I

    .line 372
    .local v1, "pixels":[I
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 373
    return-object v1
.end method

.method public getPixels([I)[I
    .locals 8
    .param p1, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v6, p0, Ljavax/microedition/lcdui/Image;->width:I

    iget v7, p0, Ljavax/microedition/lcdui/Image;->height:I

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 361
    return-object p1
.end method

.method public getPixels([IIIIIII)[I
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 378
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 379
    return-object p1
.end method

.method public getRGB(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 407
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getRGB([IIIIIII)[I
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 402
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 403
    return-object p1
.end method

.method public getSubImage(IIII)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 514
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 513
    return-object v0
.end method

.method public getSubImage(IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 500
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->hashBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public isClose()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Ljavax/microedition/lcdui/Image;->close:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 548
    goto :goto_0
.end method

.method public scaledInstance(II)Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    .line 526
    .local v2, "width":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 527
    .local v0, "height":I
    if-ne v2, p1, :cond_0

    if-ne v0, p2, :cond_0

    .line 531
    .end local p0    # "this":Ljavax/microedition/lcdui/Image;
    :goto_0
    return-object p0

    .line 530
    .restart local p0    # "this":Ljavax/microedition/lcdui/Image;
    :cond_0
    iget-object v3, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 531
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance p0, Ljavax/microedition/lcdui/Image;

    .end local p0    # "this":Ljavax/microedition/lcdui/Image;
    invoke-direct {p0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Image;->width:I

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/Image;->height:I

    .line 308
    iput-object p1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 309
    return-void
.end method

.method public setPixel(III)V
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 415
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, p3, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 416
    return-void
.end method

.method public setPixel(Lorg/loon/framework/android/game/core/graphics/LColor;II)V
    .locals 2
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 411
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 412
    return-void
.end method

.method public setPixels([III)V
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 384
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 388
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 389
    return-void
.end method

.method public setPixels([IIIII)[I
    .locals 8
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 392
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 393
    return-object p1
.end method

.method public setRGB(III)V
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 419
    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, p3, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 420
    return-void
.end method
