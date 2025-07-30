.class public Lorg/loon/framework/android/game/action/sprite/SpriteImage;
.super Lorg/loon/framework/android/game/core/LObject;
.source "SpriteImage.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = -0x1b84ad74e1b39442L


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private collisionMask:Lorg/loon/framework/android/game/action/sprite/CollisionMask;

.field protected height:I

.field private img:Ljavax/microedition/lcdui/Image;

.field private isOpaque:Z

.field private makePolygonInterval:I

.field private mask:Lorg/loon/framework/android/game/action/sprite/Mask;

.field private newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field protected pixels:[I

.field private polygons:[Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

.field protected transform:I

.field public visible:Z

.field protected width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    .line 53
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setLocation(II)V

    .line 129
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    .line 130
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    .line 131
    const/4 v0, 0x0

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bind(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 6
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    .line 53
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    .line 106
    invoke-virtual {p0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setLocation(II)V

    .line 107
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    .line 108
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    .line 109
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bind(Landroid/graphics/Bitmap;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;II)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 98
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 102
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;IIII)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;)V
    .locals 1
    .param p1, "image"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;II)V
    .locals 1
    .param p1, "image"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 51
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    .line 53
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    .line 121
    invoke-virtual {p0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setLocation(II)V

    .line 122
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    .line 123
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    .line 124
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bind(Landroid/graphics/Bitmap;)V

    .line 125
    return-void
.end method

.method private bind(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bind(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 136
    return-void
.end method

.method private bind(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 11
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    mul-int v10, v0, v1

    .line 140
    .local v10, "size":I
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    .line 141
    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    .line 142
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 144
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v10, :cond_0

    .line 150
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bitmap:Landroid/graphics/Bitmap;

    .line 151
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    aget v9, v1, v8

    .local v9, "pixel":I
    invoke-static {v9}, Lorg/loon/framework/android/game/core/graphics/LColor;->premultiply(I)I

    move-result v1

    aput v1, v0, v8

    .line 146
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    if-eqz v0, :cond_1

    ushr-int/lit8 v0, v9, 0x18

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 147
    iput-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    .line 144
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private createMask([III)Lorg/loon/framework/android/game/action/sprite/Mask;
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/high16 v8, -0x1000000

    .line 210
    move v3, p2

    .line 211
    .local v3, "width":I
    move v1, p3

    .line 212
    .local v1, "height":I
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Mask;

    invoke-direct {v0, v3, v1}, Lorg/loon/framework/android/game/action/sprite/Mask;-><init>(II)V

    .line 213
    .local v0, "data":Lorg/loon/framework/android/game/action/sprite/Mask;
    filled-new-array {v1, v3}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 214
    .local v2, "mask":[[Z
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 219
    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/action/sprite/Mask;->setData([[Z)V

    .line 220
    return-object v0

    .line 215
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_1
    aget-object v7, v2, v5

    mul-int v6, p2, v5

    add-int/2addr v6, v4

    aget v6, p1, v6

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    :goto_2
    aput-boolean v6, v7, v4

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static filterPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 9
    .param p0, "polygon"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    const-wide/16 v7, 0x0

    .line 426
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Area;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    .line 427
    .local v0, "area":Lorg/loon/framework/android/game/core/graphics/geom/Area;
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-direct {v3}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>()V

    .line 429
    .local v3, "newPoly":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    invoke-static {v7, v8, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->getTranslateInstance(DD)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-result-object v6

    .line 428
    invoke-virtual {v0, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v2

    .line 430
    .local v2, "it":Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    const/4 v6, 0x6

    new-array v1, v6, [F

    .line 431
    .local v1, "coords":[F
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 432
    .local v4, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    return-object v3

    .line 433
    :cond_0
    invoke-interface {v2, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([F)I

    .line 434
    new-instance v5, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    const/4 v6, 0x0

    aget v6, v1, v6

    float-to-int v6, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    .line 435
    .local v5, "v":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/geom/Point;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 436
    iget v6, v5, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v7, v5, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {v3, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->addPoint(II)V

    .line 437
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/geom/Point;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_1
    invoke-interface {v2}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_0
.end method

.method private static makePolygon(Ljava/util/ArrayList;)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Lorg/loon/framework/android/game/core/graphics/geom/Point;",
            ">;)",
            "Lorg/loon/framework/android/game/core/graphics/geom/Polygon;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lorg/loon/framework/android/game/core/graphics/geom/Point;>;"
    const/4 v2, 0x0

    .line 404
    .local v2, "polygon":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 406
    .local v3, "size":I
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .end local v2    # "polygon":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    invoke-direct {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>()V

    .line 407
    .restart local v2    # "polygon":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 411
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_2

    .line 416
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_0
    return-object v2

    .line 408
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/loon/framework/android/game/core/graphics/geom/Point;

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 409
    .local v1, "p":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    iget v4, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v5, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {v2, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->addPoint(II)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "p":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/loon/framework/android/game/core/graphics/geom/Point;

    const/4 v5, 0x1

    aget-object v1, v4, v5

    .line 413
    .restart local v1    # "p":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    iget v4, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v5, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {v2, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->addPoint(II)V

    .line 411
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private makeRotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    .locals 4
    .param p1, "t"    # I

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 196
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal transformation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_0
    const/16 v0, 0x5a

    .line 198
    .local v0, "angle":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v1

    return-object v1

    .line 178
    .end local v0    # "angle":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 179
    .restart local v0    # "angle":I
    goto :goto_0

    .line 181
    .end local v0    # "angle":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 182
    .restart local v0    # "angle":I
    goto :goto_0

    .line 184
    .end local v0    # "angle":I
    :pswitch_3
    const/16 v0, -0x168

    .line 185
    .restart local v0    # "angle":I
    goto :goto_0

    .line 187
    .end local v0    # "angle":I
    :pswitch_4
    const/16 v0, -0x5a

    .line 188
    .restart local v0    # "angle":I
    goto :goto_0

    .line 190
    .end local v0    # "angle":I
    :pswitch_5
    const/16 v0, -0xb4

    .line 191
    .restart local v0    # "angle":I
    goto :goto_0

    .line 193
    .end local v0    # "angle":I
    :pswitch_6
    const/16 v0, -0x10e

    .line 194
    .restart local v0    # "angle":I
    goto :goto_0

    .line 173
    nop

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


# virtual methods
.method public copy()Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;)V

    return-object v0
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->y()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 247
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 505
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 510
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getData()[I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    return v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->img:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->img:Ljavax/microedition/lcdui/Image;

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->img:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getMakePolygonInterval()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    return v0
.end method

.method public getMask(III)Lorg/loon/framework/android/game/action/sprite/CollisionMask;
    .locals 6
    .param p1, "trans"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    if-eq v0, p1, :cond_1

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->updateMask(I)Lorg/loon/framework/android/game/action/sprite/Mask;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    .line 496
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->collisionMask:Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    if-nez v0, :cond_2

    .line 497
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;-><init>(Lorg/loon/framework/android/game/action/sprite/Mask;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->collisionMask:Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    .line 501
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->collisionMask:Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    return-object v0

    .line 499
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->collisionMask:Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/Mask;->getWidth()I

    move-result v4

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->mask:Lorg/loon/framework/android/game/action/sprite/Mask;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/Mask;->getHeight()I

    move-result v5

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->set(Lorg/loon/framework/android/game/action/sprite/Mask;IIII)V

    goto :goto_0
.end method

.method protected getPolygon(III)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "t"    # I

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->polygons:[Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    if-nez v0, :cond_0

    .line 296
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->polygons:[Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->polygons:[Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    aget-object v9, v0, p3

    .line 299
    .local v9, "py":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    if-nez v9, :cond_1

    .line 300
    if-eqz p3, :cond_2

    .line 301
    invoke-direct {p0, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makeRotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 302
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->makeSpritePixels()[I

    move-result-object v1

    .line 303
    .local v1, "trans":[I
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getHeight()I

    move-result v7

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v9

    .line 307
    .end local v1    # "trans":[I
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->polygons:[Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    aput-object v9, v0, p3

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    if-nez v0, :cond_3

    .line 310
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v2, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v3, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v4, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-direct {v0, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>([I[II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 317
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->translate(II)V

    .line 318
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    return-object v0

    .line 305
    :cond_2
    invoke-virtual {p0, v2, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon(II)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v9

    goto :goto_0

    .line 312
    :cond_3
    iget v8, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 313
    .local v8, "npoints":I
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iput v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 314
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v2, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    invoke-static {v2, v8}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 315
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->newPy:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v2, v9, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    invoke-static {v2, v8}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    return v0
.end method

.method public isTransparent(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, -0x1000000

    .line 231
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    if-ge p1, v2, :cond_0

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    if-lt p2, v2, :cond_2

    :cond_0
    move v0, v1

    .line 236
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->isOpaque:Z

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    mul-int/2addr v3, p2

    add-int/2addr v3, p1

    aget v2, v2, v3

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    return v0
.end method

.method public makePolygon(II)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public makePolygon(IIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "limitX"    # I
    .param p4, "limitY"    # I

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "limitX"    # I
    .param p7, "limitY"    # I

    .prologue
    .line 331
    const/4 v4, 0x0

    .line 332
    .local v4, "split":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    const/4 v2, 0x0

    .line 333
    .local v2, "result":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lorg/loon/framework/android/game/core/graphics/geom/Point;>;"
    move/from16 v9, p5

    .local v9, "y":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    sub-int v12, p7, v12

    if-lt v9, v12, :cond_1

    .line 362
    invoke-static {v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon(Ljava/util/ArrayList;)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v4

    .line 363
    if-eqz v4, :cond_0

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lorg/loon/framework/android/game/core/graphics/geom/Point;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .restart local v1    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lorg/loon/framework/android/game/core/graphics/geom/Point;>;"
    move/from16 v6, p4

    .local v6, "x":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    sub-int v12, p6, v12

    if-lt v6, v12, :cond_6

    .line 390
    invoke-static {v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon(Ljava/util/ArrayList;)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v2

    .line 393
    .end local v6    # "x":I
    :cond_0
    invoke-static {v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->filterPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v12

    return-object v12

    .line 338
    :cond_1
    const/4 v3, 0x0

    .line 339
    .local v3, "secondPoint":Z
    const/4 v10, -0x1

    .local v10, "y1":I
    move v7, v10

    .line 340
    .local v7, "x1":I
    const/4 v11, -0x1

    .local v11, "y2":I
    move v8, v11

    .line 341
    .local v8, "x2":I
    move/from16 v6, p4

    .restart local v6    # "x":I
    :goto_2
    move/from16 v0, p6

    if-lt v6, v0, :cond_3

    .line 355
    if-eqz v3, :cond_2

    const/4 v12, -0x1

    if-le v8, v12, :cond_2

    const/4 v12, -0x1

    if-le v11, v12, :cond_2

    .line 356
    const/4 v12, 0x2

    new-array v5, v12, [Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 357
    .local v5, "tmpPoint":[Lorg/loon/framework/android/game/core/graphics/geom/Point;
    const/4 v12, 0x0

    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    add-int v14, p2, v7

    add-int v15, p3, v10

    invoke-direct {v13, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    aput-object v13, v5, v12

    .line 358
    const/4 v12, 0x1

    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    add-int v14, p2, v8

    add-int v15, p3, v11

    invoke-direct {v13, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    aput-object v13, v5, v12

    .line 359
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v5    # "tmpPoint":[Lorg/loon/framework/android/game/core/graphics/geom/Point;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    add-int/2addr v9, v12

    goto :goto_0

    .line 342
    :cond_3
    if-nez v3, :cond_5

    .line 343
    mul-int v12, p6, v9

    add-int/2addr v12, v6

    aget v12, p1, v12

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    const/high16 v13, -0x1000000

    if-ne v12, v13, :cond_4

    .line 344
    move v7, v6

    .line 345
    move v10, v9

    .line 346
    const/4 v3, 0x1

    .line 341
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 349
    :cond_5
    mul-int v12, p6, v9

    add-int/2addr v12, v6

    aget v12, p1, v12

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    const/high16 v13, -0x1000000

    if-ne v12, v13, :cond_4

    .line 350
    move v8, v6

    .line 351
    move v11, v9

    goto :goto_3

    .line 366
    .end local v3    # "secondPoint":Z
    .end local v7    # "x1":I
    .end local v8    # "x2":I
    .end local v10    # "y1":I
    .end local v11    # "y2":I
    :cond_6
    const/4 v3, 0x0

    .line 367
    .restart local v3    # "secondPoint":Z
    const/4 v10, -0x1

    .restart local v10    # "y1":I
    move v7, v10

    .line 368
    .restart local v7    # "x1":I
    const/4 v11, -0x1

    .restart local v11    # "y2":I
    move v8, v11

    .line 369
    .restart local v8    # "x2":I
    move/from16 v9, p5

    :goto_4
    move/from16 v0, p7

    if-lt v9, v0, :cond_8

    .line 383
    if-eqz v3, :cond_7

    const/4 v12, -0x1

    if-le v8, v12, :cond_7

    const/4 v12, -0x1

    if-le v11, v12, :cond_7

    .line 384
    const/4 v12, 0x2

    new-array v5, v12, [Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 385
    .restart local v5    # "tmpPoint":[Lorg/loon/framework/android/game/core/graphics/geom/Point;
    const/4 v12, 0x0

    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    add-int v14, p2, v7

    add-int v15, p3, v10

    invoke-direct {v13, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    aput-object v13, v5, v12

    .line 386
    const/4 v12, 0x1

    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    add-int v14, p2, v8

    add-int v15, p3, v11

    invoke-direct {v13, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    aput-object v13, v5, v12

    .line 387
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v5    # "tmpPoint":[Lorg/loon/framework/android/game/core/graphics/geom/Point;
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    add-int/2addr v6, v12

    goto/16 :goto_1

    .line 370
    :cond_8
    if-nez v3, :cond_a

    .line 371
    mul-int v12, p6, v9

    add-int/2addr v12, v6

    aget v12, p1, v12

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    const/high16 v13, -0x1000000

    if-ne v12, v13, :cond_9

    .line 372
    move v7, v6

    .line 373
    move v10, v9

    .line 374
    const/4 v3, 0x1

    .line 369
    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 377
    :cond_a
    mul-int v12, p6, v9

    add-int/2addr v12, v6

    aget v12, p1, v12

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    const/high16 v13, -0x1000000

    if-ne v12, v13, :cond_9

    .line 378
    move v8, v6

    .line 379
    move v11, v9

    goto :goto_5
.end method

.method public move(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 468
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->move(II)V

    .line 469
    return-void
.end method

.method public rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    .locals 4
    .param p1, "angle"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    int-to-float v3, p1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;-><init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;IIF)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 271
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->setAngle(F)V

    goto :goto_0
.end method

.method public rotatePixels(I)[I
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->makePixels()[I

    move-result-object v0

    return-object v0
.end method

.method public rotatePolygon(III)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "angle"    # I

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-virtual {p0, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v8

    .line 282
    .local v8, "sr":Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->makePixels()[I

    move-result-object v1

    .line 283
    .local v1, "pixels":[I
    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getHeight()I

    move-result v7

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 472
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setX(D)V

    .line 473
    int-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setY(D)V

    .line 474
    return-void
.end method

.method public setMakePolygonInterval(I)V
    .locals 0
    .param p1, "makePolygonInterval"    # I

    .prologue
    .line 526
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygonInterval:I

    .line 527
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->visible:Z

    .line 465
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "timer"    # J

    .prologue
    .line 457
    return-void
.end method

.method public updateMask(I)Lorg/loon/framework/android/game/action/sprite/Mask;
    .locals 4
    .param p1, "t"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    .line 160
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->height:I

    invoke-direct {p0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->createMask([III)Lorg/loon/framework/android/game/action/sprite/Mask;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->pixels:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 164
    .local v0, "trans":[I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    if-eqz v1, :cond_1

    .line 165
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->transform:I

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makeRotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 166
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->makeSpritePixels()[I

    move-result-object v0

    .line 168
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->sRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->createMask([III)Lorg/loon/framework/android/game/action/sprite/Mask;

    move-result-object v1

    goto :goto_0
.end method
