.class public Lorg/loon/framework/android/game/utils/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field public static final ARGB4444options:Landroid/graphics/BitmapFactory$Options;

.field public static final ARGB8888options:Landroid/graphics/BitmapFactory$Options;

.field public static final RGB565options:Landroid/graphics/BitmapFactory$Options;

.field private static final canvas:Landroid/graphics/Canvas;

.field private static final lazyImages:Ljava/util/Map;
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

.field private static final lazySplitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final matrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 66
    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 70
    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 76
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    .line 81
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 82
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 85
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 87
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 88
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    :try_start_0
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inPurgeable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 92
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inPurgeable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 94
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inPurgeable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inInputShareable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 99
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inInputShareable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 101
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string v1, "inInputShareable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 103
    sget-object v1, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calculateFitBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .param p0, "baseImage"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "receiver"    # Landroid/graphics/Point;

    .prologue
    .line 1040
    if-nez p0, :cond_0

    .line 1041
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Image is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1043
    :cond_0
    if-nez p3, :cond_1

    .line 1044
    new-instance p3, Landroid/graphics/Point;

    .end local p3    # "receiver":Landroid/graphics/Point;
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 1046
    .restart local p3    # "receiver":Landroid/graphics/Point;
    :cond_1
    move v1, p1

    .line 1047
    .local v1, "dw":I
    move v0, p2

    .line 1048
    .local v0, "dh":I
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1049
    int-to-double v6, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v4, v6, v8

    .line 1050
    .local v4, "waspect":D
    int-to-double v6, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 1051
    .local v2, "haspect":D
    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    .line 1052
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    double-to-int v1, v6

    .line 1057
    .end local v2    # "haspect":D
    .end local v4    # "waspect":D
    :cond_2
    :goto_0
    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 1058
    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 1059
    return-object p3

    .line 1054
    .restart local v2    # "haspect":D
    .restart local v4    # "waspect":D
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v0, v6

    goto :goto_0
.end method

.method public static copy(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "target"    # Ljavax/microedition/lcdui/Image;
    .param p1, "source"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v1, 0x0

    .line 949
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 950
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-interface {v0, p1, v1, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 951
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 952
    return-object p0
.end method

.method public static createShapeImage(Lorg/loon/framework/android/game/core/graphics/geom/Shape;Lorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p0, "shape"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;
    .param p1, "c1"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "c2"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 576
    invoke-interface {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Shape;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v2

    .line 577
    .local v2, "rect":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    iget v3, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v4, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 578
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 579
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 580
    invoke-interface {v0, p0}, Ljavax/microedition/lcdui/Graphics;->fill(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    .line 581
    invoke-interface {v0, p2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 582
    invoke-interface {v0, p0}, Ljavax/microedition/lcdui/Graphics;->draw(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    .line 583
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 584
    return-object v1
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 1231
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1232
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1233
    return-void
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 740
    .line 741
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 740
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I

    .prologue
    .line 642
    .line 643
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 642
    invoke-static/range {v0 .. v7}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x30

    const/4 v6, 0x0

    .line 601
    if-nez p0, :cond_0

    .line 625
    :goto_0
    return-object v1

    .line 604
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 605
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p1

    .line 607
    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    if-le p2, v2, :cond_2

    .line 608
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result p2

    .line 611
    :cond_2
    invoke-static {p1, p2, p7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 612
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 614
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 613
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 616
    if-ne p1, p2, :cond_3

    if-gt p1, v7, :cond_3

    .line 617
    if-gt p2, v7, :cond_3

    .line 618
    invoke-static {v0, p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->filterBitmapTo565(Landroid/graphics/Bitmap;II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 619
    .local v1, "img":Ljavax/microedition/lcdui/Image;
    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    const/4 v0, 0x0

    .line 622
    goto :goto_0

    .line 625
    .end local v1    # "img":Ljavax/microedition/lcdui/Image;
    :cond_3
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIIZ)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I
    .param p7, "flag"    # Z

    .prologue
    .line 661
    .line 662
    if-eqz p7, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 661
    invoke-static/range {v0 .. v7}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0

    .line 662
    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;
    .locals 9
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x0

    .line 695
    invoke-static {p1, p2, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 696
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 697
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, p3, p1

    .line 698
    add-int v6, p2, p4

    invoke-direct {v4, p3, p4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 699
    const/4 v6, 0x0

    .line 697
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 700
    if-ne p1, p2, :cond_0

    if-gt p1, v8, :cond_0

    .line 701
    if-gt p2, v8, :cond_0

    .line 702
    invoke-static {v0, p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->filterBitmapTo565(Landroid/graphics/Bitmap;II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 703
    .local v1, "img":Ljavax/microedition/lcdui/Image;
    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 705
    const/4 v0, 0x0

    .line 709
    .end local v1    # "img":Ljavax/microedition/lcdui/Image;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static drawClipImage(Ljavax/microedition/lcdui/Image;IIIIZ)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "objectWidth"    # I
    .param p2, "objectHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "flag"    # Z

    .prologue
    .line 678
    .line 679
    if-eqz p5, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 678
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0

    .line 679
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static drawCropImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "objectWidth"    # I
    .param p4, "objectHeight"    # I

    .prologue
    .line 724
    .line 725
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    .line 724
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final filterBitmapTo565(Landroid/graphics/Bitmap;II)Ljavax/microedition/lcdui/Image;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 232
    .local v8, "config":Landroid/graphics/Bitmap$Config;
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v8, v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq v8, v0, :cond_2

    .line 233
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v8, v0, :cond_2

    .line 234
    const/4 v10, 0x1

    .line 236
    .local v10, "isOpaque":Z
    mul-int v13, p1, p2

    .line 237
    .local v13, "size":I
    new-array v1, v13, [I

    .line 238
    .local v1, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 239
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v13, :cond_0

    .line 246
    :goto_1
    const/4 v1, 0x0

    check-cast v1, [I

    .line 247
    if-eqz v10, :cond_2

    .line 248
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 249
    .local v11, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    const/4 p0, 0x0

    .line 251
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, v11}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    .end local v1    # "pixels":[I
    .end local v9    # "i":I
    .end local v10    # "isOpaque":Z
    .end local v11    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "size":I
    :goto_2
    return-object v0

    .line 240
    .restart local v1    # "pixels":[I
    .restart local v9    # "i":I
    .restart local v10    # "isOpaque":Z
    .restart local v13    # "size":I
    :cond_0
    aget v0, v1, v9

    invoke-static {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->premultiply(I)I

    move-result v12

    .line 241
    .local v12, "pixel":I
    if-eqz v10, :cond_1

    ushr-int/lit8 v0, v12, 0x18

    const/16 v2, 0xff

    if-ge v0, v2, :cond_1

    .line 242
    const/4 v10, 0x0

    .line 243
    goto :goto_1

    .line 239
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "pixels":[I
    .end local v9    # "i":I
    .end local v10    # "isOpaque":Z
    .end local v12    # "pixel":I
    .end local v13    # "size":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static fitBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "baseImage"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1006
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->calculateFitBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 1007
    .local v0, "pt":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 1008
    const/4 v4, 0x1

    .line 1007
    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1009
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static fitImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 6
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1021
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1022
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-static {v0, p1, p2, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->calculateFitBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 1023
    .local v1, "pt":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 1024
    const/4 v5, 0x1

    .line 1023
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1025
    .local v2, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljavax/microedition/lcdui/Image;

    invoke-direct {v3, v2}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static getFlipHorizintalImage2D([[Ljavax/microedition/lcdui/Image;)[[Ljavax/microedition/lcdui/Image;
    .locals 7
    .param p0, "pixels"    # [[Ljavax/microedition/lcdui/Image;

    .prologue
    .line 526
    array-length v4, p0

    .line 527
    .local v4, "w":I
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v0, v5

    .line 528
    .local v0, "h":I
    filled-new-array {v0, v4}, [I

    move-result-object v5

    const-class v6, Ljavax/microedition/lcdui/Image;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljavax/microedition/lcdui/Image;

    .line 529
    .local v3, "pixel":[[Ljavax/microedition/lcdui/Image;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 534
    return-object v3

    .line 530
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_1
    aget-object v5, v3, v1

    aget-object v6, p0, v2

    aget-object v6, v6, v1

    aput-object v6, v5, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 897
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static getPixels(Landroid/graphics/Bitmap;)[I
    .locals 8
    .param p0, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 1221
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1222
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 1223
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1224
    return-object v1
.end method

.method public static getResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 870
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 845
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 846
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 847
    .local v4, "height":I
    if-ne v3, p1, :cond_0

    if-ne v4, p2, :cond_0

    .line 858
    .end local p0    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 850
    .restart local p0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    move v8, p1

    .line 851
    .local v8, "newWidth":I
    move v7, p2

    .line 852
    .local v7, "newHeight":I
    int-to-float v0, v8

    int-to-float v2, v3

    div-float v11, v0, v2

    .line 853
    .local v11, "scaleWidth":F
    int-to-float v0, v7

    int-to-float v2, v4

    div-float v10, v0, v2

    .line 854
    .local v10, "scaleHeight":F
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 855
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 857
    sget-object v5, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 856
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object p0, v9

    .line 858
    goto :goto_0
.end method

.method public static getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 833
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getSplit2Images(Ljava/lang/String;IIZ)[[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplit2Images(Ljava/lang/String;IIZZ)[[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getSplit2Images(Ljava/lang/String;IIZZ)[[Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "isFiltrate"    # Z
    .param p4, "transparency"    # Z

    .prologue
    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "keyName":Ljava/lang/String;
    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 757
    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 758
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 760
    :cond_0
    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 761
    .local v2, "objs":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 762
    invoke-static {p0, p4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 763
    .local v0, "image":Ljavax/microedition/lcdui/Image;
    invoke-static {v0, p1, p2, p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplit2Images(Ljavax/microedition/lcdui/Image;IIZ)[[Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 764
    .local v2, "objs":[[Ljavax/microedition/lcdui/Image;
    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazySplitMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .end local v0    # "image":Ljavax/microedition/lcdui/Image;
    .end local v2    # "objs":[[Ljavax/microedition/lcdui/Image;
    :cond_1
    check-cast v2, [[Ljavax/microedition/lcdui/Image;

    return-object v2
.end method

.method public static getSplit2Images(Ljavax/microedition/lcdui/Image;IIZ)[[Ljavax/microedition/lcdui/Image;
    .locals 20
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "isFiltrate"    # Z

    .prologue
    .line 793
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    div-int v17, v3, p1

    .line 794
    .local v17, "wlength":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    div-int v14, v3, p2

    .line 795
    .local v14, "hlength":I
    move/from16 v0, v17

    filled-new-array {v0, v14}, [I

    move-result-object v3

    const-class v4, Ljavax/microedition/lcdui/Image;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljavax/microedition/lcdui/Image;

    .line 796
    .local v12, "abufferedimage":[[Ljavax/microedition/lcdui/Image;
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_0
    move/from16 v0, v19

    if-lt v0, v14, :cond_0

    .line 821
    return-object v12

    .line 797
    :cond_0
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 796
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 798
    :cond_1
    aget-object v3, v12, v18

    .line 799
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 798
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    aput-object v4, v3, v19

    .line 800
    aget-object v3, v12, v18

    aget-object v3, v3, v19

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 801
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-int v8, v18, p1

    mul-int v9, v19, p2

    .line 802
    mul-int v3, v18, p1

    add-int v10, p1, v3

    mul-int v3, v19, p2

    add-int v11, p2, v3

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 801
    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 803
    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 804
    if-eqz p3, :cond_2

    .line 805
    aget-object v3, v12, v18

    aget-object v3, v3, v19

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v16

    .line 806
    .local v16, "pixels":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v3, v0

    if-lt v15, v3, :cond_3

    .line 817
    aget-object v3, v12, v18

    aget-object v3, v3, v19

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1, v14}, Ljavax/microedition/lcdui/Image;->setPixels([III)V

    .line 797
    .end local v15    # "i":I
    .end local v16    # "pixels":[I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 807
    .restart local v15    # "i":I
    .restart local v16    # "pixels":[I
    :cond_3
    new-instance v13, Lorg/loon/framework/android/game/core/graphics/LColor;

    aget v3, v16, v15

    invoke-direct {v13, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(I)V

    .line 808
    .local v13, "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    const/16 v4, 0xf7

    if-ne v3, v4, :cond_4

    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v3

    if-nez v3, :cond_4

    .line 809
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_6

    .line 810
    :cond_4
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_5

    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v3

    if-nez v3, :cond_5

    .line 811
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_6

    .line 812
    :cond_5
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v3

    if-nez v3, :cond_7

    .line 813
    invoke-virtual {v13}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v3

    if-nez v3, :cond_7

    .line 814
    :cond_6
    const/4 v3, 0x0

    aput v3, v16, v15

    .line 806
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2
.end method

.method public static getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 910
    invoke-static {p0, p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;
    .locals 19
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 923
    const/4 v12, 0x0

    .line 924
    .local v12, "frame":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    div-int v16, v3, p1

    .line 925
    .local v16, "wlength":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    div-int v13, v3, p2

    .line 926
    .local v13, "hlength":I
    mul-int v15, v16, v13

    .line 927
    .local v15, "total":I
    new-array v14, v15, [Ljavax/microedition/lcdui/Image;

    .line 928
    .local v14, "images":[Ljavax/microedition/lcdui/Image;
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    if-lt v0, v13, :cond_0

    .line 938
    return-object v14

    .line 929
    :cond_0
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 928
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 930
    :cond_1
    new-instance v3, Ljavax/microedition/lcdui/Image;

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1, v4}, Ljavax/microedition/lcdui/Image;-><init>(IILandroid/graphics/Bitmap$Config;)V

    aput-object v3, v14, v12

    .line 931
    aget-object v3, v14, v12

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 932
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-int v8, v17, p1

    mul-int v9, v18, p2

    .line 933
    mul-int v3, v17, p1

    add-int v10, p1, v3

    mul-int v3, v18, p2

    add-int v11, p2, v3

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    .line 932
    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 934
    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 935
    add-int/lit8 v12, v12, 0x1

    .line 929
    add-int/lit8 v17, v17, 0x1

    goto :goto_1
.end method

.method public static hashBitmap(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1201
    const/4 v1, 0x0

    .line 1202
    .local v1, "hash_result":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1203
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1204
    .local v0, "h":I
    xor-int/lit8 v1, v0, 0x0

    .line 1205
    shl-int/lit8 v6, v1, 0x7

    xor-int v1, v6, v3

    .line 1206
    const/4 v2, 0x0

    .local v2, "pixel":I
    :goto_0
    const/16 v6, 0x14

    if-lt v2, v6, :cond_0

    .line 1211
    return v1

    .line 1207
    :cond_0
    mul-int/lit8 v6, v2, 0x32

    rem-int v4, v6, v3

    .line 1208
    .local v4, "x":I
    mul-int/lit8 v6, v2, 0x64

    rem-int v5, v6, v0

    .line 1209
    .local v5, "y":I
    shl-int/lit8 v6, v1, 0x7

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    xor-int v1, v6, v7

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final load8888Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 321
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    .line 320
    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_0

    .line 323
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    const/4 v0, 0x0

    .line 328
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 329
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File not found. ( "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final load8888Bitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 308
    const/4 v0, 0x0

    array-length v1, p0

    .line 309
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    .line 308
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final load8888Image(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 265
    const/4 v2, 0x0

    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    .line 267
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    const/4 v0, 0x0

    .line 270
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .line 272
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static final load8888Image(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 283
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File not found. ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final load8888Image([B)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 342
    new-instance v0, Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    .line 343
    array-length v2, p0

    sget-object v3, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB8888options:Landroid/graphics/BitmapFactory$Options;

    .line 342
    invoke-static {p0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static loadAsPNG(Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 20
    .param p0, "recordStore"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 1070
    const/4 v7, 0x0

    .line 1071
    .local v7, "imagesRS":Ljavax/microedition/rms/RecordStore;
    const/4 v8, 0x0

    .line 1073
    .local v8, "img":Ljavax/microedition/lcdui/Image;
    const/16 v17, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v7

    .line 1074
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Ljavax/microedition/rms/RecordStore;->enumerateRecords(Lorg/loon/framework/android/game/core/store/RecordFilter;Lorg/loon/framework/android/game/core/store/RecordComparator;Z)Lorg/loon/framework/android/game/core/store/RecordEnumeration;

    move-result-object v13

    .line 1075
    .local v13, "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    invoke-interface {v13}, Lorg/loon/framework/android/game/core/store/RecordEnumeration;->numRecords()I
    :try_end_0
    .catch Lorg/loon/framework/android/game/core/store/InvalidRecordIDException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 1077
    .local v11, "numRecs":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-lt v6, v11, :cond_1

    .line 1108
    if-eqz v7, :cond_0

    .line 1109
    :try_start_1
    invoke-virtual {v7}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1114
    .end local v6    # "i":I
    .end local v11    # "numRecs":I
    .end local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    :cond_0
    :goto_1
    return-object v8

    .line 1078
    .restart local v6    # "i":I
    .restart local v11    # "numRecs":I
    .restart local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    :cond_1
    :try_start_2
    invoke-interface {v13}, Lorg/loon/framework/android/game/core/store/RecordEnumeration;->nextRecordId()I

    move-result v15

    .line 1079
    .local v15, "recId":I
    invoke-virtual {v7, v15}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v14

    .line 1080
    .local v14, "rec":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1081
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1082
    .local v4, "din":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 1084
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1077
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1087
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1088
    .local v16, "width":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1089
    .local v5, "height":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    .line 1090
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1092
    .local v9, "length":I
    mul-int v17, v16, v5

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 1094
    .local v12, "rawImg":[I
    const/4 v6, 0x0

    :goto_3
    if-lt v6, v9, :cond_3

    .line 1097
    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v0, v5, v1}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 1098
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 1099
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Lorg/loon/framework/android/game/core/store/InvalidRecordIDException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1101
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "din":Ljava/io/DataInputStream;
    .end local v5    # "height":I
    .end local v6    # "i":I
    .end local v9    # "length":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "numRecs":I
    .end local v12    # "rawImg":[I
    .end local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    .end local v14    # "rec":[B
    .end local v15    # "recId":I
    .end local v16    # "width":I
    :catch_0
    move-exception v17

    .line 1108
    if-eqz v7, :cond_0

    .line 1109
    :try_start_3
    invoke-virtual {v7}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1110
    :catch_1
    move-exception v17

    goto :goto_1

    .line 1095
    .restart local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "din":Ljava/io/DataInputStream;
    .restart local v5    # "height":I
    .restart local v6    # "i":I
    .restart local v9    # "length":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "numRecs":I
    .restart local v12    # "rawImg":[I
    .restart local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    .restart local v14    # "rec":[B
    .restart local v15    # "recId":I
    .restart local v16    # "width":I
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    aput v17, v12, v6
    :try_end_4
    .catch Lorg/loon/framework/android/game/core/store/InvalidRecordIDException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1094
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1103
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "din":Ljava/io/DataInputStream;
    .end local v5    # "height":I
    .end local v6    # "i":I
    .end local v9    # "length":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "numRecs":I
    .end local v12    # "rawImg":[I
    .end local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    .end local v14    # "rec":[B
    .end local v15    # "recId":I
    .end local v16    # "width":I
    :catch_2
    move-exception v17

    .line 1108
    if-eqz v7, :cond_0

    .line 1109
    :try_start_5
    invoke-virtual {v7}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1110
    :catch_3
    move-exception v17

    goto :goto_1

    .line 1105
    :catchall_0
    move-exception v17

    .line 1108
    if-eqz v7, :cond_4

    .line 1109
    :try_start_6
    invoke-virtual {v7}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1113
    :cond_4
    :goto_4
    throw v17

    .line 1110
    :catch_4
    move-exception v18

    goto :goto_4

    .restart local v6    # "i":I
    .restart local v11    # "numRecs":I
    .restart local v13    # "re":Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    :catch_5
    move-exception v17

    goto :goto_1
.end method

.method public static final loadBitmap(Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "transparency"    # Z

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz p1, :cond_0

    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 117
    :goto_0
    invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    .line 120
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    const/4 v0, 0x0

    .line 125
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 118
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v0

    .line 125
    goto :goto_1
.end method

.method public static final loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 182
    const/4 v3, 0x0

    .line 181
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 183
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "transparency"    # Z

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final loadBitmap([BZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "transparency"    # Z

    .prologue
    .line 353
    const/4 v1, 0x0

    array-length v2, p0

    .line 354
    if-eqz p1, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 353
    :goto_0
    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0
.end method

.method public static final loadImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "transparency"    # Z

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x10

    .line 208
    const/4 v5, 0x0

    .line 209
    if-eqz p1, :cond_3

    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 208
    :goto_0
    invoke-static {p0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 211
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 212
    .local v1, "h":I
    if-lt v3, v6, :cond_0

    if-le v3, v7, :cond_4

    :cond_0
    if-lt v1, v6, :cond_1

    if-le v1, v7, :cond_4

    .line 213
    :cond_1
    new-instance v2, Ljavax/microedition/lcdui/Image;

    invoke-direct {v2, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    :cond_2
    :goto_1
    return-object v2

    .line 209
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "h":I
    .end local v3    # "w":I
    :cond_3
    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0

    .line 215
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "h":I
    .restart local v3    # "w":I
    :cond_4
    invoke-static {v0, v3, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->filterBitmapTo565(Landroid/graphics/Bitmap;II)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 216
    .local v2, "img":Ljavax/microedition/lcdui/Image;
    if-nez v2, :cond_2

    .line 219
    new-instance v2, Ljavax/microedition/lcdui/Image;

    .end local v2    # "img":Ljavax/microedition/lcdui/Image;
    invoke-direct {v2, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static final loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;
    .locals 7
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "transparency"    # Z

    .prologue
    .line 379
    if-nez p0, :cond_1

    .line 380
    const/4 v1, 0x0

    .line 413
    :cond_0
    return-object v1

    .line 382
    :cond_1
    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    .line 383
    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 384
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 386
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "keyName":Ljava/lang/String;
    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/lcdui/Image;

    .line 388
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->isClose()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :cond_3
    const/4 v2, 0x0

    .line 393
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 394
    invoke-static {v2, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 395
    sget-object v4, Lorg/loon/framework/android/game/utils/GraphicsUtils;->lazyImages:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    if-eqz v2, :cond_4

    .line 401
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 402
    const/4 v2, 0x0

    .line 409
    :cond_4
    :goto_0
    if-nez v1, :cond_0

    .line 410
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File not found. ( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 400
    if-eqz v2, :cond_5

    .line 401
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 402
    const/4 v2, 0x0

    .line 407
    :cond_5
    :goto_1
    throw v4

    .line 404
    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    goto :goto_1

    .line 404
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    goto :goto_0
.end method

.method public static final loadImage([BIIZ)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "imageData"    # [B
    .param p1, "imageOffset"    # I
    .param p2, "imageLength"    # I
    .param p3, "transparency"    # Z

    .prologue
    .line 367
    new-instance v1, Ljavax/microedition/lcdui/Image;

    .line 368
    if-eqz p3, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 367
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 368
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0
.end method

.method public static final loadImage([BZ)Ljavax/microedition/lcdui/Image;
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "transparency"    # Z

    .prologue
    .line 297
    new-instance v1, Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    .line 298
    array-length v3, p0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->ARGB4444options:Landroid/graphics/BitmapFactory$Options;

    .line 297
    :goto_0
    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 298
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->RGB565options:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0
.end method

.method public static final loadNotCacheImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadNotCacheImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final loadNotCacheImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "transparency"    # Z

    .prologue
    .line 422
    if-nez p0, :cond_1

    .line 423
    const/4 v2, 0x0

    .line 428
    :cond_0
    :goto_0
    return-object v2

    .line 425
    :cond_1
    const/4 v1, 0x0

    .line 427
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 428
    invoke-static {v1, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 433
    if-eqz v1, :cond_0

    .line 434
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    const/4 v1, 0x0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 433
    if-eqz v1, :cond_2

    .line 434
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 435
    const/4 v1, 0x0

    .line 439
    :cond_2
    :goto_1
    throw v2

    .line 437
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static final loadScaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 155
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v4

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 160
    .local v3, "scaleWidth":I
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v4

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 162
    .local v2, "scaleHeight":I
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 165
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 166
    const/4 v5, 0x0

    .line 165
    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 167
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "scaleHeight":I
    .end local v3    # "scaleWidth":I
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final loadScaleImage(Ljava/lang/String;II)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 198
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-static {p0, p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadScaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static loadSequenceImages(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/microedition/lcdui/Image;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "range"    # Ljava/lang/String;
    .param p2, "transparency"    # Z

    .prologue
    .line 484
    const/4 v7, -0x1

    .line 485
    .local v7, "start_range":I
    const/4 v1, -0x1

    .line 486
    .local v1, "end_range":I
    const/4 v5, 0x1

    .line 487
    .local v5, "images_count":I
    const/16 v8, 0x2d

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 488
    .local v6, "minusIndex":I
    if-lez v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_0

    .line 490
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 493
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 492
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 494
    if-ge v7, v1, :cond_0

    .line 495
    sub-int v8, v1, v7

    add-int/lit8 v5, v8, 0x1

    .line 500
    :cond_0
    :goto_0
    :try_start_2
    new-array v4, v5, [Ljavax/microedition/lcdui/Image;

    .line 501
    .local v4, "images":[Ljavax/microedition/lcdui/Image;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_1

    .line 516
    .end local v2    # "i":I
    .end local v4    # "images":[Ljavax/microedition/lcdui/Image;
    .end local v6    # "minusIndex":I
    :goto_2
    return-object v4

    .line 502
    .restart local v2    # "i":I
    .restart local v4    # "images":[Ljavax/microedition/lcdui/Image;
    .restart local v6    # "minusIndex":I
    :cond_1
    move-object v3, p0

    .line 503
    .local v3, "imageName":Ljava/lang/String;
    const/4 v8, 0x1

    if-le v5, v8, :cond_2

    .line 504
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 505
    .local v0, "dotIndex":I
    if-ltz v0, :cond_2

    .line 506
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    add-int v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 506
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .end local v0    # "dotIndex":I
    :cond_2
    invoke-static {v3, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    aput-object v8, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 514
    .end local v2    # "i":I
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "images":[Ljavax/microedition/lcdui/Image;
    .end local v6    # "minusIndex":I
    :catch_0
    move-exception v8

    .line 516
    const/4 v4, 0x0

    goto :goto_2

    .line 497
    .restart local v6    # "minusIndex":I
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static loadWebImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "transparency"    # Z

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 456
    .local v2, "img":Ljavax/microedition/lcdui/Image;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 458
    .local v1, "http":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 460
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 461
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/io/InputStream;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    if-nez v5, :cond_1

    .line 463
    :cond_0
    const/4 v2, 0x0

    .line 465
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-object v2

    .line 466
    .end local v1    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "File not found. ( "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 882
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 883
    .local v1, "result":Landroid/graphics/Bitmap;
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 884
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 885
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 886
    sget-object v2, Lorg/loon/framework/android/game/utils/GraphicsUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    return-object v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bit"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 963
    if-nez p0, :cond_1

    .line 982
    .end local p0    # "bit":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 966
    .restart local p0    # "bit":Landroid/graphics/Bitmap;
    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 968
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 969
    .local v4, "height":I
    div-int/lit8 v8, v3, 0x2

    .line 970
    .local v8, "nx":I
    div-int/lit8 v9, v4, 0x2

    .line 972
    .local v9, "ny":I
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 973
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    neg-int v2, v8

    int-to-float v2, v2

    neg-int v5, v9

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 974
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 975
    sget-object v0, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    int-to-float v2, v8

    int-to-float v5, v9

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 977
    sget-object v5, Lorg/loon/framework/android/game/utils/GraphicsUtils;->matrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "dst":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 979
    goto :goto_0
.end method

.method public static rotate(Ljavax/microedition/lcdui/Image;F)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "degrees"    # F

    .prologue
    .line 994
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static rotateImage(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 543
    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->rotate(Ljavax/microedition/lcdui/Image;F)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static rotateImage(Ljavax/microedition/lcdui/Image;IZ)Ljavax/microedition/lcdui/Image;
    .locals 11
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "angdeg"    # I
    .param p2, "d"    # Z

    .prologue
    const/4 v10, 0x0

    .line 554
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v9

    .line 555
    .local v9, "w":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    .line 556
    .local v7, "h":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v9, v7, v1}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v8

    .line 557
    .local v8, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 558
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V

    .line 559
    if-eqz p2, :cond_0

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    neg-double v1, v1

    :goto_0
    div-int/lit8 v3, v9, 0x2

    int-to-double v3, v3

    .line 560
    div-int/lit8 v5, v7, 0x2

    int-to-double v5, v5

    .line 559
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->rotate(DDD)V

    .line 561
    invoke-interface {v0, p0, v10, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 562
    invoke-interface {v0, v10}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V

    .line 563
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 564
    return-object v8

    .line 559
    :cond_0
    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    goto :goto_0
.end method

.method public static saveAsPNG(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 10
    .param p0, "recordStore"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 1127
    const/4 v6, 0x0

    .line 1129
    .local v6, "imagesRS":Ljavax/microedition/rms/RecordStore;
    if-nez p1, :cond_1

    .line 1130
    const/4 v7, -0x1

    .line 1152
    :cond_0
    :goto_0
    return v7

    .line 1134
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v1

    .line 1135
    .local v1, "buffer":[I
    const/4 v7, 0x1

    invoke-static {p0, v7}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v6

    .line 1137
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1138
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1140
    .local v3, "dout":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1142
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1144
    array-length v7, v1

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1146
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v7, v1

    if-lt v5, v7, :cond_2

    .line 1149
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1150
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1152
    .local v2, "data":[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v6, v2, v7, v8}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1158
    if-eqz v6, :cond_0

    .line 1159
    :try_start_1
    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v8

    goto :goto_0

    .line 1147
    .end local v2    # "data":[B
    :cond_2
    :try_start_2
    aget v7, v1, v5

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1153
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[I
    .end local v3    # "dout":Ljava/io/DataOutputStream;
    .end local v5    # "i":I
    :catch_1
    move-exception v4

    .line 1154
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Save the image ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1155
    const-string v9, "] to RecordStore ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1154
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1156
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1158
    if-eqz v6, :cond_3

    .line 1159
    :try_start_4
    invoke-virtual {v6}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1162
    :cond_3
    :goto_2
    throw v7

    .line 1160
    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method public static saveAsPNG(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1176
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v1, 0x1

    .line 1177
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public static saveAsPNG(Ljavax/microedition/lcdui/Image;Ljava/lang/String;)Z
    .locals 4
    .param p0, "image"    # Ljavax/microedition/lcdui/Image;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x1

    .line 1191
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
