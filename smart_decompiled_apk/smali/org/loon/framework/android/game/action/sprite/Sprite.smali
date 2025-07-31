.class public Lorg/loon/framework/android/game/action/sprite/Sprite;
.super Lorg/loon/framework/android/game/core/LObject;
.source "Sprite.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;
.implements Lorg/loon/framework/android/game/action/sprite/Collidable;
.implements Lorg/loon/framework/android/game/core/graphics/Trans;


# static fields
.field private static final defaultTimer:J = 0x96L

.field private static final serialVersionUID:J = -0x1b81df5081db1800L


# instance fields
.field private animation:Lorg/loon/framework/android/game/action/sprite/Animation;

.field private factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

.field private filterType:I

.field private image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private spriteName:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private transform:I

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(DD)V

    .line 79
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sprite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;DD)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljavax/microedition/lcdui/Image;)V

    .line 215
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;DD)V
    .locals 1
    .param p1, "spriteName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 65
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 99
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setLocation(DD)V

    .line 100
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->spriteName:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    .line 103
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDII)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "row"    # I
    .param p7, "col"    # I

    .prologue
    .line 139
    const-wide/16 v8, 0x96

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;DDIIJ)V

    .line 140
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;DDIIJ)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "row"    # I
    .param p7, "col"    # I
    .param p8, "timer"    # J

    .prologue
    .line 154
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;IDDIIJ)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDDII)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "maxFrame"    # I
    .param p3, "x"    # D
    .param p5, "y"    # D
    .param p7, "row"    # I
    .param p8, "col"    # I

    .prologue
    .line 169
    const-wide/16 v9, 0x96

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;IDDIIJ)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDDIIJ)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "maxFrame"    # I
    .param p3, "x"    # D
    .param p5, "y"    # D
    .param p7, "row"    # I
    .param p8, "col"    # I
    .param p9, "timer"    # J

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sprite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    .line 186
    invoke-direct/range {v0 .. v11}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;Ljava/lang/String;IDDIIJ)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 114
    const/4 v2, -0x1

    const-wide/16 v9, 0x96

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v3

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v10}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;IDDIIJ)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "timer"    # J

    .prologue
    .line 126
    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move v8, p3

    move-wide v9, p4

    invoke-direct/range {v0 .. v10}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;IDDIIJ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IDDIIJ)V
    .locals 12
    .param p1, "spriteName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "maxFrame"    # I
    .param p4, "x"    # D
    .param p6, "y"    # D
    .param p8, "row"    # I
    .param p9, "col"    # I
    .param p10, "timer"    # J

    .prologue
    .line 203
    .line 204
    const/4 v2, 0x1

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-static {p2, v0, v1, v2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p10

    .line 205
    invoke-direct/range {v2 .. v11}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Image;IDDJ)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Image;IDDJ)V
    .locals 6
    .param p1, "spriteName"    # Ljava/lang/String;
    .param p2, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p3, "maxFrame"    # I
    .param p4, "x"    # D
    .param p6, "y"    # D
    .param p8, "timer"    # J

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 65
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 295
    invoke-virtual {p0, p4, p5, p6, p7}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setLocation(DD)V

    .line 296
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->spriteName:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p8

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;[Ljavax/microedition/lcdui/Image;IJ)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    .line 300
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 301
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/microedition/lcdui/Image;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;DD)V

    .line 224
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    const-wide/16 v2, 0x0

    .line 232
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;DD)V

    .line 233
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;DD)V
    .locals 8
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 243
    const-wide/16 v6, 0x96

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;DDJ)V

    .line 244
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;DDJ)V
    .locals 9
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "timer"    # J

    .prologue
    .line 265
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;IDDJ)V

    .line 266
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;IDDJ)V
    .locals 10
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "maxFrame"    # I
    .param p3, "x"    # D
    .param p5, "y"    # D
    .param p7, "timer"    # J

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sprite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    .line 280
    invoke-direct/range {v0 .. v9}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Image;IDDJ)V

    .line 281
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;J)V
    .locals 9
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "timer"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 253
    const/4 v2, -0x1

    const-wide/16 v7, 0x96

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v3

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;IDDJ)V

    .line 254
    return-void
.end method

.method private setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;[Ljavax/microedition/lcdui/Image;IJ)V
    .locals 3
    .param p1, "myAnimation"    # Lorg/loon/framework/android/game/action/sprite/Animation;
    .param p2, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p3, "maxFrame"    # I
    .param p4, "timer"    # J

    .prologue
    .line 358
    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 367
    :cond_0
    return-void

    .line 360
    :cond_1
    new-instance v1, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    aget-object v2, p2, v0

    invoke-direct {v1, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljavax/microedition/lcdui/Image;)V

    invoke-virtual {p1, v1, p4, p5}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 364
    new-instance v1, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    aget-object v2, p2, v0

    invoke-direct {v1, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljavax/microedition/lcdui/Image;)V

    invoke-virtual {p1, v1, p4, p5}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/16 v9, 0x14

    const/4 v2, 0x0

    .line 594
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 598
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    if-eqz v0, :cond_0

    .line 601
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 611
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    invoke-virtual {v0, v3, v4}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 612
    .local v1, "tmp":Landroid/graphics/Bitmap;
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    if-nez v0, :cond_3

    .line 613
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 618
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    const/4 v1, 0x0

    .line 620
    goto :goto_0

    .line 603
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    :pswitch_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getHeight()I

    move-result v5

    .line 607
    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v7

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v8

    move-object v0, p1

    move v3, v2

    .line 606
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Landroid/graphics/Bitmap;IIIIIIII)V

    goto :goto_0

    .line 615
    .restart local v1    # "tmp":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    .line 616
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v7

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v8

    move-object v0, p1

    move v3, v2

    .line 615
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Landroid/graphics/Bitmap;IIIIIIII)V

    goto :goto_1

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getAnimation()Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 665
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 666
    .local v0, "simg":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 529
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    .line 531
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 530
    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 536
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getWidth()I

    move-result v3

    .line 534
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getHeight()I

    move-result v4

    .line 533
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getDistance(Lorg/loon/framework/android/game/action/sprite/Sprite;)D
    .locals 2
    .param p1, "second"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 520
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getMiddlePoint()Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    move-result-object v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getMiddlePoint()Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;->distance(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 471
    .local v0, "si":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-nez v0, :cond_0

    .line 472
    const/4 v1, -0x1

    .line 474
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage(I)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    return-object v0
.end method

.method public getLImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 587
    .local v0, "si":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-nez v0, :cond_0

    .line 588
    const/4 v1, 0x0

    .line 590
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getMask(III)Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v1

    goto :goto_0
.end method

.method public getMiddlePoint()Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;
    .locals 4

    .prologue
    .line 509
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 510
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 509
    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getPolygon()Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 484
    .local v0, "si":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-nez v0, :cond_0

    .line 485
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-direct {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>()V

    .line 487
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getPolygon(III)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v1

    goto :goto_0
.end method

.method public getSpriteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->spriteName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTotalFrames()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getTotalFrames()I

    move-result v0

    return v0
.end method

.method public getTransform()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 463
    .local v0, "si":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-nez v0, :cond_0

    .line 464
    const/4 v1, -0x1

    .line 466
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public isCircToCirc(Lorg/loon/framework/android/game/action/sprite/Sprite;)Z
    .locals 2
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 557
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 558
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    .line 557
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isCircToCirc(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    return v0
.end method

.method public isPixelCollision(Lorg/loon/framework/android/game/action/sprite/Sprite;)Z
    .locals 1
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 579
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isPixelHit(Lorg/loon/framework/android/game/action/sprite/Sprite;Lorg/loon/framework/android/game/action/sprite/Sprite;)Z

    move-result v0

    return v0
.end method

.method public isRectToCirc(Lorg/loon/framework/android/game/action/sprite/Sprite;)Z
    .locals 2
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 569
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    .line 568
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isRectToCirc(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    return v0
.end method

.method public isRectToRect(Lorg/loon/framework/android/game/action/sprite/Sprite;)Z
    .locals 2
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 546
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    .line 546
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isRectToRect(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 653
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->setAlpha(F)V

    .line 654
    return-void
.end method

.method public setAnimation(Ljava/lang/String;IIIJ)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "maxFrame"    # I
    .param p3, "row"    # I
    .param p4, "col"    # I
    .param p5, "timer"    # J

    .prologue
    .line 380
    new-instance v1, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    .line 381
    const/4 v0, 0x1

    .line 380
    invoke-static {p1, p3, p4, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;[Ljavax/microedition/lcdui/Image;IJ)V

    .line 382
    return-void
.end method

.method public setAnimation(Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "timer"    # J

    .prologue
    .line 393
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setAnimation(Ljava/lang/String;IIIJ)V

    .line 394
    return-void
.end method

.method public setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;)V
    .locals 0
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;

    .prologue
    .line 423
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 424
    return-void
.end method

.method public setAnimation([Ljavax/microedition/lcdui/Image;IJ)V
    .locals 6
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "maxFrame"    # I
    .param p3, "timer"    # J

    .prologue
    .line 404
    new-instance v1, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;[Ljavax/microedition/lcdui/Image;IJ)V

    .line 405
    return-void
.end method

.method public setAnimation([Ljavax/microedition/lcdui/Image;J)V
    .locals 6
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "timer"    # J

    .prologue
    .line 414
    new-instance v1, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    const/4 v3, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;[Ljavax/microedition/lcdui/Image;IJ)V

    .line 415
    return-void
.end method

.method public setCurrentFrameIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->setCurrentFrameIndex(I)V

    .line 337
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .param p1, "filterType"    # I

    .prologue
    .line 645
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->filterType:I

    .line 646
    return-void
.end method

.method public setPolygonInterval(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 496
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 497
    .local v0, "si":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setMakePolygonInterval(I)V

    goto :goto_0
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "runing"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->setRunning(Z)V

    .line 310
    return-void
.end method

.method public setSpriteName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spriteName"    # Ljava/lang/String;

    .prologue
    .line 637
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->spriteName:Ljava/lang/String;

    .line 638
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 677
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->tag:Ljava/lang/Object;

    .line 678
    return-void
.end method

.method public setTransform(I)V
    .locals 0
    .param p1, "transform"    # I

    .prologue
    .line 661
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->transform:I

    .line 662
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    .line 630
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "timer"    # J

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->visible:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprite;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Animation;->update(J)V

    .line 437
    :cond_0
    return-void
.end method

.method public updateLocation(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 2
    .param p1, "vector"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 445
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setX(D)V

    .line 446
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprite;->setY(D)V

    .line 447
    return-void
.end method
