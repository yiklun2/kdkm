.class public Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
.super Ljava/lang/Object;
.source "SpriteRotateSheet.java"


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private final halfHeight:I

.field private final halfWidth:I

.field private final height:I

.field private isCircle:Z

.field private number:I

.field private oldImage:Landroid/graphics/Bitmap;

.field private sheetRotationImages:Landroid/graphics/Bitmap;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 15
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "number"    # I
    .param p3, "c"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    move/from16 v0, p3

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->isCircle:Z

    .line 52
    move/from16 v0, p2

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->number:I

    .line 53
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->oldImage:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    .line 56
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->suited(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size not allowed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfWidth:I

    .line 61
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfHeight:I

    .line 62
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    .line 63
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    .line 64
    const/4 v13, 0x0

    .line 65
    .local v13, "tmp":Ljavax/microedition/lcdui/Image;
    const/4 v8, 0x0

    .line 66
    .local v8, "g":Ljavax/microedition/lcdui/Graphics;
    if-eqz p3, :cond_4

    .line 67
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    mul-int v1, v1, p2

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 67
    :goto_0
    invoke-static {v2, v3, v1}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v13

    .line 69
    invoke-virtual {v13}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v8

    .line 71
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, p2

    if-lt v9, v0, :cond_3

    .line 106
    :goto_2
    if-eqz v8, :cond_1

    .line 107
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 108
    const/4 v8, 0x0

    .line 110
    :cond_1
    invoke-virtual {v13}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    .line 111
    const/4 v13, 0x0

    .line 112
    return-void

    .line 68
    .end local v9    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    goto :goto_0

    .line 72
    .restart local v9    # "i":I
    :cond_3
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    mul-int v14, v9, v1

    .line 73
    .local v14, "x":I
    mul-int/lit16 v1, v9, 0x168

    div-int v1, v1, p2

    int-to-float v7, v1

    .line 74
    .local v7, "degrees":F
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->save()V

    .line 75
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v8, v7, v1, v2}, Ljavax/microedition/lcdui/Graphics;->rotateCanvas(FFF)V

    .line 76
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Ljavax/microedition/lcdui/Graphics;->setFilterBitmap(Z)V

    .line 77
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v14, v1}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 78
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->restore()V

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 81
    .end local v7    # "degrees":F
    .end local v9    # "i":I
    .end local v14    # "x":I
    :cond_4
    const/16 v1, 0x168

    new-array v11, v1, [Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 82
    .local v11, "lazyRotates":[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move/from16 v0, p2

    if-lt v9, v0, :cond_5

    .line 89
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    add-int/2addr v1, v2

    .line 90
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {v1, v2, v3}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v13

    .line 91
    invoke-virtual {v13}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v8

    .line 92
    const/4 v14, 0x0

    .line 93
    .restart local v14    # "x":I
    const/4 v9, 0x0

    :goto_4
    move/from16 v0, p2

    if-lt v9, v0, :cond_6

    .line 104
    const/4 v1, 0x0

    check-cast v1, [Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    goto :goto_2

    .line 83
    .end local v14    # "x":I
    :cond_5
    mul-int/lit16 v1, v9, 0x168

    div-int v10, v1, p2

    .line 84
    .local v10, "index":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    int-to-double v5, v10

    invoke-static/range {v1 .. v6}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->getNewBounds(IIIID)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v12

    .line 85
    .local v12, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    aput-object v12, v11, v9

    .line 86
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    iget v2, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    .line 87
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    iget v2, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    .line 82
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 94
    .end local v10    # "index":I
    .end local v12    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v14    # "x":I
    :cond_6
    mul-int/lit16 v1, v9, 0x168

    div-int v1, v1, p2

    int-to-float v7, v1

    .line 95
    .restart local v7    # "degrees":F
    aget-object v12, v11, v9

    .line 96
    .restart local v12    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int v14, v9, v1

    .line 97
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->save()V

    .line 98
    iget v1, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v14

    int-to-float v1, v1

    iget v2, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v8, v7, v1, v2}, Ljavax/microedition/lcdui/Graphics;->rotateCanvas(FFF)V

    .line 99
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Ljavax/microedition/lcdui/Graphics;->setFilterBitmap(Z)V

    .line 100
    iget v1, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v14

    .line 101
    iget v2, v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 100
    move-object/from16 v0, p1

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 102
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->restore()V

    .line 93
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "c"    # Z

    .prologue
    .line 43
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;-><init>(Ljavax/microedition/lcdui/Image;IZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IZ)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "number"    # I
    .param p3, "c"    # Z

    .prologue
    .line 47
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 48
    return-void
.end method

.method public static getNewBounds(IIIID)Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 19
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotate"    # D

    .prologue
    .line 116
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 117
    .local v11, "rotation":D
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 118
    .local v3, "angSin":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 119
    .local v1, "angCos":D
    move/from16 v0, p2

    int-to-double v13, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    .line 120
    move/from16 v0, p3

    int-to-double v15, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    .line 119
    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v8, v13

    .line 121
    .local v8, "newW":I
    move/from16 v0, p3

    int-to-double v13, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    .line 122
    move/from16 v0, p2

    int-to-double v15, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    .line 121
    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v7, v13

    .line 123
    .local v7, "newH":I
    div-int/lit8 v13, p2, 0x2

    add-int v5, p0, v13

    .line 124
    .local v5, "centerX":I
    div-int/lit8 v13, p3, 0x2

    add-int v6, p1, v13

    .line 125
    .local v6, "centerY":I
    div-int/lit8 v13, v8, 0x2

    sub-int v9, v5, v13

    .line 126
    .local v9, "newX":I
    div-int/lit8 v13, v7, 0x2

    sub-int v10, v6, v13

    .line 127
    .local v10, "newY":I
    new-instance v13, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v13, v9, v10, v8, v7}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    return-object v13
.end method

.method public static suited(II)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0x30

    const/16 v0, 0x10

    .line 131
    if-eq p0, p1, :cond_0

    if-le p0, v0, :cond_1

    if-ge p0, v1, :cond_1

    if-le p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 132
    :cond_0
    if-gt p0, v2, :cond_1

    if-gt p1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 131
    goto :goto_0
.end method

.method public static suited2(II)Z
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v1, 0x80

    const/16 v0, 0x10

    .line 136
    if-ne p0, p1, :cond_0

    if-le p0, v0, :cond_0

    if-le p1, v0, :cond_0

    .line 137
    if-ge p0, v1, :cond_0

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 136
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    .line 184
    monitor-exit v1

    .line 189
    :cond_0
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IID)V
    .locals 19
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "rotation"    # D

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 154
    :goto_0
    const-wide/16 v1, 0x0

    cmpg-double v1, p4, v1

    if-ltz v1, :cond_1

    .line 157
    :goto_1
    const-wide v1, 0x4076800000000000L    # 360.0

    cmpl-double v1, p4, v1

    if-gtz v1, :cond_2

    .line 160
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->number:I

    int-to-double v1, v1

    mul-double v1, v1, p4

    const-wide v3, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v17, v0

    .line 161
    .local v17, "spriteIndex":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->isCircle:Z

    if-eqz v1, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfWidth:I

    sub-int p2, p2, v1

    .line 163
    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfHeight:I

    sub-int p3, p3, v1

    .line 174
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    add-int v5, p2, v1

    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    add-int v6, p3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int v7, v17, v1

    const/4 v8, 0x0

    .line 176
    move-object/from16 v0, p0

    iget v1, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int v1, v1, v17

    move-object/from16 v0, p0

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    add-int v9, v1, v3

    .line 177
    move-object/from16 v0, p0

    iget v10, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 174
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;IIIIIIII)V

    .line 153
    monitor-exit v18

    .line 180
    .end local v17    # "spriteIndex":I
    :cond_0
    return-void

    .line 155
    :cond_1
    const-wide v1, 0x4076800000000000L    # 360.0

    add-double p4, p4, v1

    goto :goto_0

    .line 158
    :cond_2
    const-wide v1, 0x4076800000000000L    # 360.0

    sub-double p4, p4, v1

    goto :goto_1

    .line 165
    .restart local v17    # "spriteIndex":I
    :cond_3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 166
    .local v13, "rotate":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 167
    .local v15, "sinA":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 168
    .local v11, "cosA":D
    move/from16 v0, p2

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfWidth:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfWidth:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    move-object/from16 v0, p0

    iget v7, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfHeight:I

    int-to-double v7, v7

    .line 169
    mul-double/2addr v7, v15

    sub-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 168
    sub-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 p2, v0

    .line 170
    move/from16 v0, p3

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfHeight:I

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfHeight:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    move-object/from16 v0, p0

    iget v7, v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->halfWidth:I

    int-to-double v7, v7

    .line 171
    mul-double/2addr v7, v15

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 170
    sub-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 p3, v0

    goto/16 :goto_2

    .line 153
    .end local v11    # "cosA":D
    .end local v13    # "rotate":D
    .end local v15    # "sinA":D
    .end local v17    # "spriteIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public draw2(Ljavax/microedition/lcdui/Graphics;IID)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "rotation"    # D

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->number:I

    int-to-double v0, v0

    mul-double/2addr v0, p4

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-int v10, v0

    .line 143
    .local v10, "spriteIndex":I
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    add-int v4, p2, v0

    .line 144
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    add-int v5, p3, v0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int v6, v10, v0

    const/4 v7, 0x0

    .line 145
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    mul-int/2addr v0, v10

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapWidth:I

    add-int v8, v0, v2

    iget v9, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->bitmapHeight:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    .line 143
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;IIIIIIII)V

    .line 149
    .end local v10    # "spriteIndex":I
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->oldImage:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->height:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->number:I

    return v0
.end method

.method public getSheetImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->sheetRotationImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->width:I

    return v0
.end method
