.class public final Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;
.super Ljava/lang/Object;
.source "LGraphicsAndroid2D.java"

# interfaces
.implements Ljavax/microedition/lcdui/Graphics;


# static fields
.field private static final RAD_360:D = 6.283185307179586

.field private static final dashPathEffect:Landroid/graphics/DashPathEffect;

.field private static final drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private static final tmp_matrix:Landroid/graphics/Matrix;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private clip:Landroid/graphics/Rect;

.field private font:Ljavax/microedition/lcdui/Font;

.field private grapBitmap:Landroid/graphics/Bitmap;

.field private height:I

.field private isClose:Z

.field private mirror:[F

.field private mirrorImage:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private strokeStyle:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 61
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 60
    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->dashPathEffect:Landroid/graphics/DashPathEffect;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 87
    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 58
    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirror:[F

    .line 91
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->initGraphics()V

    .line 93
    return-void

    .line 69
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createAWTMatrix([F)[F
    .locals 7
    .param p1, "matrix"    # [F

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 508
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 509
    .local v0, "at":[F
    aget v1, p1, v2

    aput v1, v0, v2

    .line 510
    aget v1, p1, v6

    aput v1, v0, v4

    .line 511
    aget v1, p1, v4

    aput v1, v0, v5

    .line 512
    const/4 v1, 0x4

    aget v1, p1, v1

    aput v1, v0, v6

    .line 513
    const/4 v1, 0x4

    aget v2, p1, v5

    aput v2, v0, v1

    .line 514
    const/4 v1, 0x5

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    .line 515
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 516
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 517
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 518
    return-object v0
.end method

.method private static createMatrix(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)[F
    .locals 9
    .param p0, "aff"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 488
    const/16 v2, 0x9

    new-array v0, v2, [D

    .line 489
    .local v0, "at":[D
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->getMatrix([D)V

    .line 490
    array-length v2, v0

    new-array v1, v2, [F

    .line 491
    .local v1, "f":[F
    aget-wide v2, v0, v4

    double-to-float v2, v2

    aput v2, v1, v4

    .line 492
    aget-wide v2, v0, v7

    double-to-float v2, v2

    aput v2, v1, v6

    .line 493
    const/4 v2, 0x4

    aget-wide v2, v0, v2

    double-to-float v2, v2

    aput v2, v1, v7

    .line 494
    aget-wide v2, v0, v6

    double-to-float v2, v2

    aput v2, v1, v8

    .line 495
    const/4 v2, 0x4

    aget-wide v3, v0, v8

    double-to-float v3, v3

    aput v3, v1, v2

    .line 496
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 497
    const/4 v2, 0x6

    aput v5, v1, v2

    .line 498
    const/4 v2, 0x7

    aput v5, v1, v2

    .line 499
    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 500
    return-object v1
.end method

.method private static getDegree(F)F
    .locals 4
    .param p0, "radian"    # F

    .prologue
    .line 670
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPath(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Landroid/graphics/Path;
    .locals 4
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 576
    :cond_0
    return-object v0

    .line 570
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 571
    .local v0, "path":Landroid/graphics/Path;
    invoke-interface {p1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Shape;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v1

    .line 572
    .local v1, "pi":Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    :goto_0
    invoke-interface {v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    invoke-direct {p0, v1, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getSegment(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;Landroid/graphics/Path;)V

    .line 574
    invoke-interface {v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_0
.end method

.method public static getRadian(F)F
    .locals 4
    .param p0, "degree"    # F

    .prologue
    .line 666
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getSegment(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;Landroid/graphics/Path;)V
    .locals 9
    .param p1, "pi"    # Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x6

    new-array v7, v0, [F

    .line 584
    .local v7, "coordinates":[F
    invoke-interface {p1, v7}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([F)I

    move-result v8

    .line 585
    .local v8, "type":I
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 587
    :pswitch_0
    aget v0, v7, v1

    aget v1, v7, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 590
    :pswitch_1
    aget v0, v7, v1

    aget v1, v7, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 593
    :pswitch_2
    aget v0, v7, v1

    aget v1, v7, v2

    aget v2, v7, v3

    .line 594
    aget v3, v7, v4

    .line 593
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 597
    :pswitch_3
    aget v1, v7, v1

    aget v2, v7, v2

    aget v3, v7, v3

    .line 598
    aget v4, v7, v4

    const/4 v0, 0x4

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p2

    .line 597
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 601
    :pswitch_4
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 1997
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2004
    :goto_0
    return-void

    .line 2000
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 2001
    .local v6, "oldColor":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2002
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2003
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public clearScreen(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 2007
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clearRect(IIII)V

    .line 2008
    return-void
.end method

.method public clip(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
    .locals 2
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 1960
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1964
    :goto_0
    return-void

    .line 1963
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getPath(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0
.end method

.method public clipPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 3
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 1877
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clipPolygon([I[II)V

    .line 1878
    return-void
.end method

.method public clipPolygon([I[II)V
    .locals 5
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 1858
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1862
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 1863
    .local v2, "tmp":Landroid/graphics/Paint$Style;
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1864
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1865
    .local v1, "p":Landroid/graphics/Path;
    const/4 v3, 0x0

    aget v3, p1, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1866
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    mul-int/lit8 v3, p3, 0x2

    if-lt v0, v3, :cond_1

    .line 1869
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1870
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1871
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 1872
    .end local v0    # "i":I
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v2    # "tmp":Landroid/graphics/Paint$Style;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1867
    .restart local v0    # "i":I
    .restart local v1    # "p":Landroid/graphics/Path;
    .restart local v2    # "tmp":Landroid/graphics/Paint$Style;
    :cond_1
    aget v3, p1, v0

    int-to-float v3, v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public clipRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2078
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2083
    :goto_0
    return-void

    .line 2081
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2082
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public copyArea(IIIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 2054
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 2075
    :goto_0
    return-void

    .line 2057
    :cond_0
    if-gez p1, :cond_1

    .line 2058
    add-int/2addr p3, p1

    .line 2059
    const/4 p1, 0x0

    .line 2061
    :cond_1
    if-gez p2, :cond_2

    .line 2062
    add-int/2addr p4, p2

    .line 2063
    const/4 p2, 0x0

    .line 2065
    :cond_2
    add-int v1, p1, p3

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 2066
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int p3, v1, p1

    .line 2068
    :cond_3
    add-int v1, p2, p4

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 2069
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int p4, v1, p2

    .line 2071
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2072
    .local v0, "copy":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v2, p1, p5

    int-to-float v2, v2

    add-int v3, p2, p6

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2073
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2074
    const/4 v0, 0x0

    .line 2075
    goto :goto_0
.end method

.method public copyArea(IIIIIII)V
    .locals 8
    .param p1, "x_src"    # I
    .param p2, "y_src"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "x_dest"    # I
    .param p6, "y_dest"    # I
    .param p7, "anchor"    # I

    .prologue
    .line 2012
    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return-void

    .line 2015
    :cond_1
    const/4 v7, 0x0

    .line 2016
    .local v7, "badAnchor":Z
    and-int/lit8 v0, p7, 0x7f

    if-ne v0, p7, :cond_2

    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_3

    .line 2017
    :cond_2
    const/4 v7, 0x1

    .line 2019
    :cond_3
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_6

    .line 2020
    and-int/lit8 v0, p7, 0x22

    if-eqz v0, :cond_4

    .line 2021
    const/4 v7, 0x1

    .line 2033
    :cond_4
    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_a

    .line 2034
    and-int/lit8 v0, p7, 0x9

    if-eqz v0, :cond_5

    .line 2035
    const/4 v7, 0x1

    .line 2047
    :cond_5
    :goto_2
    if-eqz v7, :cond_e

    .line 2048
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad Anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2022
    :cond_6
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_8

    .line 2023
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_7

    .line 2024
    const/4 v7, 0x1

    goto :goto_1

    .line 2026
    :cond_7
    add-int/lit8 v0, p4, -0x1

    sub-int/2addr p6, v0

    goto :goto_1

    .line 2028
    :cond_8
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_9

    .line 2029
    add-int/lit8 v0, p4, -0x1

    ushr-int/lit8 v0, v0, 0x1

    sub-int/2addr p6, v0

    goto :goto_1

    .line 2031
    :cond_9
    const/4 v7, 0x1

    goto :goto_1

    .line 2036
    :cond_a
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_c

    .line 2037
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_b

    .line 2038
    const/4 v7, 0x1

    goto :goto_2

    .line 2040
    :cond_b
    sub-int/2addr p5, p3

    goto :goto_2

    .line 2042
    :cond_c
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_d

    .line 2043
    add-int/lit8 v0, p3, -0x1

    ushr-int/lit8 v0, v0, 0x1

    sub-int/2addr p5, v0

    goto :goto_2

    .line 2045
    :cond_d
    const/4 v7, 0x1

    goto :goto_2

    .line 2050
    :cond_e
    sub-int v5, p5, p1

    sub-int v6, p6, p2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->copyArea(IIIIII)V

    goto :goto_0
.end method

.method public create()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public create(IIII)Ljavax/microedition/lcdui/Graphics;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    .line 2252
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    .line 2253
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 2254
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    .line 2255
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 2257
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    .line 2259
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Path;)V
    .locals 3
    .param p1, "s"    # Landroid/graphics/Path;

    .prologue
    .line 1967
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1975
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 1971
    .local v0, "tmp":Landroid/graphics/Paint$Style;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1972
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1973
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1974
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public draw(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
    .locals 4
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 538
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 542
    .local v0, "tmp":Landroid/graphics/Paint$Style;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 543
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getPath(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 544
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public draw3DRect(IIIIZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "raised"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1921
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_0

    .line 1941
    :goto_0
    return-void

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    .line 1926
    .local v0, "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    if-eqz p5, :cond_1

    .line 1927
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v2

    .line 1928
    .local v2, "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 1934
    .local v1, "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    :goto_1
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1935
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1936
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p1, v3, v5, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1938
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1939
    add-int v3, p1, p3

    invoke-virtual {p0, v3, p2, v5, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1940
    add-int/lit8 v3, p1, 0x1

    add-int v4, p2, p4

    invoke-virtual {p0, v3, v4, p3, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    goto :goto_0

    .line 1930
    .end local v1    # "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    .end local v2    # "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    :cond_1
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v2

    .line 1931
    .restart local v2    # "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .restart local v1    # "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    goto :goto_1
.end method

.method public draw3DRect(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;Lorg/loon/framework/android/game/core/graphics/LColor;Z)V
    .locals 8
    .param p1, "rect"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .param p2, "back"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p3, "down"    # Z

    .prologue
    .line 1881
    iget-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v4, :cond_0

    .line 1915
    :goto_0
    return-void

    .line 1884
    :cond_0
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 1885
    .local v0, "x1":I
    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 1886
    .local v2, "y1":I
    iget v4, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v5, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x1

    .line 1887
    .local v1, "x2":I
    iget v4, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v5, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x1

    .line 1888
    .local v3, "y2":I
    if-nez p3, :cond_1

    .line 1889
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1890
    invoke-virtual {p0, v0, v2, v0, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1891
    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1892
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1893
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1894
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1895
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1896
    invoke-virtual {p0, v0, v3, v1, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1897
    invoke-virtual {p0, v1, v2, v1, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1898
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1899
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1900
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    goto :goto_0

    .line 1902
    :cond_1
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1903
    invoke-virtual {p0, v0, v2, v0, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1904
    invoke-virtual {p0, v0, v2, v1, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1905
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1906
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1907
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1908
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1909
    invoke-virtual {p0, v0, v3, v1, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1910
    invoke-virtual {p0, v1, v2, v1, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1911
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1912
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 1913
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    goto/16 :goto_0
.end method

.method public draw3DString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    const/4 v7, 0x4

    .line 1594
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1597
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1598
    .local v0, "flag":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1599
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1600
    const/4 v1, -0x2

    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 1605
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1606
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v4, p2

    int-to-float v5, p3

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1607
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0

    .line 1601
    :cond_1
    const/4 v2, -0x2

    .local v2, "j":I
    :goto_2
    if-lt v2, v7, :cond_2

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1602
    :cond_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int v5, p3, v2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1601
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public drawArc(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "sa"    # I
    .param p6, "ea"    # I

    .prologue
    .line 1443
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1446
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1447
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-int v2, p6, p5

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    .line 1448
    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 1447
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 814
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    if-eqz p1, :cond_0

    .line 820
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;III)V
    .locals 6
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 838
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    if-eqz p1, :cond_0

    .line 844
    move v0, p2

    .line 845
    .local v0, "newx":I
    move v1, p3

    .line 846
    .local v1, "newy":I
    if-nez p4, :cond_2

    .line 847
    const/16 p4, 0x14

    .line 849
    :cond_2
    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_5

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 854
    :cond_3
    :goto_1
    and-int/lit8 v2, p4, 0x20

    if-eqz v2, :cond_6

    .line 855
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 859
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 851
    :cond_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 856
    :cond_6
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_4

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_2
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 10
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v9, 0x0

    .line 1087
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v6, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    if-eqz p1, :cond_0

    .line 1093
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1094
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1095
    .local v1, "height":I
    if-ne v5, p4, :cond_2

    if-ne v1, p5, :cond_2

    .line 1096
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 1099
    :cond_2
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isOverrunOS21()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1100
    int-to-float v6, p4

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 1101
    .local v3, "scaleWidth":F
    int-to-float v6, p5

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 1102
    .local v2, "scaleHeight":F
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1103
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1104
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1105
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v6, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    .line 1107
    .end local v2    # "scaleHeight":F
    .end local v3    # "scaleWidth":F
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1108
    .local v4, "srcR":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    add-int v6, p2, p4

    add-int v7, p3, p5

    invoke-direct {v0, p2, p3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1109
    .local v0, "dstR":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v4, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;IIIIIIII)V
    .locals 4
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "x1"    # I
    .param p7, "y1"    # I
    .param p8, "w1"    # I
    .param p9, "h1"    # I

    .prologue
    .line 1332
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    if-eqz p1, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1339
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 1338
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "marMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1151
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    if-eqz p1, :cond_0

    .line 1157
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V
    .locals 2
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "marMatrix"    # Landroid/graphics/Matrix;
    .param p3, "filter"    # Z

    .prologue
    .line 1139
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    if-eqz p1, :cond_0

    .line 1145
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1146
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1147
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "r1"    # Landroid/graphics/Rect;
    .param p3, "r2"    # Landroid/graphics/Rect;

    .prologue
    .line 1343
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    if-eqz p1, :cond_0

    .line 1349
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBytes([BIIII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1485
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1488
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v0, p4, p5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawString(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public drawCenterRoundedString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p5, "color1"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 1654
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1657
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1658
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1659
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1660
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr p2, v1

    .line 1661
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr p3, v1

    .line 1662
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1663
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, p3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1664
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1665
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, p3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1666
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1667
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1668
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawCenterShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p5, "color1"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 1648
    .line 1649
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v0

    div-int/lit8 v0, v0, 0xe

    add-int/lit8 v6, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1648
    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawCenterShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V

    .line 1650
    return-void
.end method

.method public drawCenterShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p5, "color1"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p6, "k"    # I

    .prologue
    .line 1638
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1641
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 1642
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p3, v0

    .line 1643
    invoke-virtual/range {p0 .. p6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V

    goto :goto_0
.end method

.method public drawCenterString(Ljava/lang/String;II)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1611
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1620
    :goto_0
    return-void

    .line 1614
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr p2, v1

    .line 1615
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr p3, v1

    .line 1616
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1617
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1618
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1619
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawChar(CII)V
    .locals 6
    .param p1, "message"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1574
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1581
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1578
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1579
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p3

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1580
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawChars([CIIII)V
    .locals 8
    .param p1, "message"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1492
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1499
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v7

    .line 1496
    .local v7, "flag":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1497
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v4, p4

    int-to-float v5, p5

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1498
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawClear()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1715
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 1719
    .local v6, "oldColor":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1720
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    int-to-float v3, v2

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    int-to-float v4, v2

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1721
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public drawFlipBitmap(Landroid/graphics/Bitmap;IIZ)V
    .locals 8
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1222
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    if-eqz p1, :cond_0

    .line 1228
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1229
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    move-object v0, p1

    move v2, v1

    move v6, p4

    .line 1230
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1232
    .local v7, "dst":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1233
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1234
    const/4 v7, 0x0

    .line 1236
    goto :goto_0
.end method

.method public drawFlipImage(Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    .line 1239
    if-nez p1, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1242
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawFlipImage(Ljavax/microedition/lcdui/Image;IIZ)V

    goto :goto_0
.end method

.method public drawImage(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 828
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 829
    return-void
.end method

.method public drawImage(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 824
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    .line 825
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 833
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 835
    :cond_0
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 863
    if-eqz p1, :cond_0

    .line 864
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;III)V

    .line 866
    :cond_0
    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 10
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    const/4 v9, 0x0

    .line 1303
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v6, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    if-eqz p1, :cond_0

    .line 1309
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    .line 1310
    .local v5, "width":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    .line 1311
    .local v1, "height":I
    if-ne v5, p4, :cond_2

    if-ne v1, p5, :cond_2

    .line 1312
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0

    .line 1315
    :cond_2
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isOverrunOS21()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1316
    int-to-float v6, p4

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 1317
    .local v3, "scaleWidth":F
    int-to-float v6, p5

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 1318
    .local v2, "scaleHeight":F
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1319
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1320
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1321
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v6, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawImage(Ljavax/microedition/lcdui/Image;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    .line 1323
    .end local v2    # "scaleHeight":F
    .end local v3    # "scaleWidth":F
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1324
    .local v4, "srcR":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    add-int v6, p2, p4

    add-int v7, p3, p5

    invoke-direct {v0, p2, p3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1325
    .local v0, "dstR":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v4, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 5
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "x1"    # I
    .param p7, "y1"    # I
    .param p8, "w1"    # I
    .param p9, "h1"    # I

    .prologue
    .line 1354
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    if-eqz p1, :cond_0

    .line 1359
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1360
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 1359
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "marMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1128
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    if-eqz p1, :cond_0

    .line 1134
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "marMatrix"    # Landroid/graphics/Matrix;
    .param p3, "filter"    # Z

    .prologue
    .line 1115
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    if-eqz p1, :cond_0

    .line 1121
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1122
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1123
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 1452
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isOverrunOS11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1459
    :cond_1
    if-le p1, p3, :cond_2

    .line 1460
    add-int/lit8 p1, p1, 0x1

    .line 1464
    :goto_1
    if-le p2, p4, :cond_3

    .line 1465
    add-int/lit8 p2, p2, 0x1

    .line 1469
    :goto_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1462
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1467
    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2
.end method

.method public drawMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V
    .locals 9
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1187
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    if-eqz p1, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    if-nez v0, :cond_2

    .line 1194
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    .line 1196
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_3

    .line 1197
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1199
    :cond_3
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->hashBitmap(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 1200
    .local v8, "hash":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1201
    .local v7, "dst":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    .line 1202
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1203
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirror:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1205
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1206
    .local v4, "height":I
    sget-object v5, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    move-object v0, p1

    move v2, v1

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1208
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirrorImage:Ljava/util/TreeMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawMirrorImage(Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    .line 1214
    if-nez p1, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_0
.end method

.method public drawNotCacheMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V
    .locals 8
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1162
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    if-eqz p1, :cond_0

    .line 1168
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1169
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->mirror:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1171
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1172
    .local v4, "height":I
    sget-object v5, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    move-object v0, p1

    move v2, v1

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1174
    .local v7, "dst":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1175
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    const/4 v7, 0x0

    .line 1177
    goto :goto_0
.end method

.method public drawNotCacheMirrorImage(Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    .line 1180
    if-nez p1, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1183
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawNotCacheMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_0
.end method

.method public drawOval(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2172
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 2179
    :goto_0
    return-void

    .line 2175
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 2176
    .local v0, "tmp":Landroid/graphics/Paint$Style;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2177
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    add-int v5, p1, p3

    int-to-float v5, v5

    add-int v6, p2, p4

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2178
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public drawPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 3
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 2194
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawPolygon([I[II)V

    .line 2195
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 7
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    const/4 v4, 0x0

    .line 2182
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 2191
    :cond_0
    return-void

    .line 2185
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v1, p3, -0x1

    aget v1, p1, v1

    int-to-float v1, v1

    add-int/lit8 v2, p3, -0x1

    aget v2, p2, v2

    int-to-float v2, v2

    aget v3, p1, v4

    int-to-float v3, v3

    .line 2186
    aget v4, p2, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 2185
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2187
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-ge v6, v0, :cond_0

    .line 2188
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    aget v1, p1, v6

    int-to-float v1, v1

    aget v2, p2, v6

    int-to-float v2, v2

    add-int/lit8 v3, v6, 0x1

    aget v3, p1, v3

    int-to-float v3, v3

    .line 2189
    add-int/lit8 v4, v6, 0x1

    aget v4, p2, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 2188
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2187
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public drawPolyline([I[II)V
    .locals 5
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 2198
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_1

    .line 2204
    :cond_0
    return-void

    .line 2201
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    .line 2202
    aget v1, p1, v0

    aget v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawLine(IIII)V

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z

    .prologue
    .line 1707
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1710
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    .line 1711
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1710
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
    .locals 13
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "r"    # I

    .prologue
    .line 785
    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v9, :cond_0

    .line 804
    :goto_0
    return-void

    .line 788
    :cond_0
    move v1, p2

    .line 789
    .local v1, "x1":I
    add-int v5, p3, p4

    .line 790
    .local v5, "y1":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v2, p2, v9

    .line 791
    .local v2, "x2":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v6, p3, v9

    .line 792
    .local v6, "y2":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int v3, p2, v9

    .line 793
    .local v3, "x3":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v7, p3, v9

    .line 794
    .local v7, "y3":I
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 795
    .local v4, "xpos":[I
    const/4 v9, 0x0

    aput v1, v4, v9

    .line 796
    const/4 v9, 0x1

    aput v2, v4, v9

    .line 797
    const/4 v9, 0x2

    aput v3, v4, v9

    .line 798
    const/4 v9, 0x3

    new-array v8, v9, [I

    .line 799
    .local v8, "ypos":[I
    const/4 v9, 0x0

    aput v5, v8, v9

    .line 800
    const/4 v9, 0x1

    aput v6, v8, v9

    .line 801
    const/4 v9, 0x2

    aput v7, v8, v9

    .line 802
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 803
    const/4 v9, 0x3

    invoke-virtual {p0, v4, v8, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public drawRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1475
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 1479
    .local v6, "tmp":Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1480
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1481
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public drawRegion(Landroid/graphics/Bitmap;IIIIIIII)V
    .locals 15
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x_src"    # I
    .param p3, "y_src"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "transform"    # I
    .param p7, "x_dst"    # I
    .param p8, "y_dst"    # I
    .param p9, "anchor"    # I

    .prologue
    .line 870
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    if-eqz p1, :cond_0

    .line 876
    add-int v2, p2, p4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_2

    add-int v2, p3, p5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 877
    if-ltz p4, :cond_2

    if-ltz p5, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 878
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Area out of Image"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    :cond_3
    move/from16 v11, p4

    .local v11, "dW":I
    move/from16 v10, p5

    .line 882
    .local v10, "dH":I
    const/4 v13, 0x0

    .line 884
    .local v13, "newBitmap":Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 950
    const/4 v13, 0x0

    .line 951
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad transform"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    :pswitch_0
    move-object/from16 v13, p1

    .line 954
    :goto_1
    const/4 v9, 0x0

    .line 956
    .local v9, "badAnchor":Z
    if-nez p9, :cond_4

    .line 957
    const/16 p9, 0x14

    .line 960
    :cond_4
    and-int/lit8 v2, p9, 0x7f

    move/from16 v0, p9

    if-ne v2, v0, :cond_5

    and-int/lit8 v2, p9, 0x40

    if-eqz v2, :cond_6

    .line 961
    :cond_5
    const/4 v9, 0x1

    .line 964
    :cond_6
    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_9

    .line 965
    and-int/lit8 v2, p9, 0x22

    if-eqz v2, :cond_7

    .line 966
    const/4 v9, 0x1

    .line 980
    :cond_7
    :goto_2
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_d

    .line 981
    and-int/lit8 v2, p9, 0x9

    if-eqz v2, :cond_8

    .line 982
    const/4 v9, 0x1

    .line 996
    :cond_8
    :goto_3
    if-eqz v9, :cond_11

    .line 997
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad Anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    .end local v9    # "badAnchor":Z
    :pswitch_1
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 891
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 893
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 892
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 894
    move/from16 v11, p5

    .line 895
    move/from16 v10, p4

    .line 896
    goto :goto_1

    .line 899
    :pswitch_2
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 900
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 902
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 901
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 903
    goto :goto_1

    .line 906
    :pswitch_3
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 907
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 909
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 908
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 910
    move/from16 v11, p5

    .line 911
    move/from16 v10, p4

    .line 912
    goto/16 :goto_1

    .line 915
    :pswitch_4
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 916
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 918
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 917
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 919
    goto/16 :goto_1

    .line 922
    :pswitch_5
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 923
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 924
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 926
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 925
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 927
    move/from16 v11, p5

    .line 928
    move/from16 v10, p4

    .line 929
    goto/16 :goto_1

    .line 932
    :pswitch_6
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 933
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 934
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 936
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 935
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 937
    goto/16 :goto_1

    .line 940
    :pswitch_7
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 941
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 942
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3c790000    # -270.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 944
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 943
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 945
    move/from16 v11, p5

    .line 946
    move/from16 v10, p4

    .line 947
    goto/16 :goto_1

    .line 968
    .restart local v9    # "badAnchor":Z
    :cond_9
    and-int/lit8 v2, p9, 0x20

    if-eqz v2, :cond_b

    .line 969
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_a

    .line 970
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 972
    :cond_a
    add-int/lit8 v2, v10, -0x1

    sub-int p8, p8, v2

    goto/16 :goto_2

    .line 974
    :cond_b
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_c

    .line 975
    add-int/lit8 v2, v10, -0x1

    ushr-int/lit8 v2, v2, 0x1

    sub-int p8, p8, v2

    goto/16 :goto_2

    .line 977
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 984
    :cond_d
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_f

    .line 985
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_e

    .line 986
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 988
    :cond_e
    add-int/lit8 v2, v11, -0x1

    sub-int p7, p7, v2

    goto/16 :goto_3

    .line 990
    :cond_f
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_10

    .line 991
    add-int/lit8 v2, v11, -0x1

    ushr-int/lit8 v2, v2, 0x1

    sub-int p7, p7, v2

    goto/16 :goto_3

    .line 993
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 999
    :cond_11
    new-instance v14, Landroid/graphics/Rect;

    add-int v2, p2, v11

    add-int v3, p3, v10

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1000
    .local v14, "srcRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    add-int v2, p7, v11

    add-int v3, p8, v10

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1002
    .local v12, "dstRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13, v14, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1004
    if-eqz p6, :cond_0

    .line 1005
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 7
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x_src"    # I
    .param p3, "y_src"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "transform"    # I
    .param p7, "x_dest"    # I
    .param p8, "y_dest"    # I
    .param p9, "anchor"    # I

    .prologue
    .line 1013
    if-nez p1, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1017
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    .line 1018
    div-int/lit8 v2, p5, 0x2

    sub-int/2addr p8, v2

    .line 1022
    :cond_1
    :goto_1
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_4

    .line 1023
    sub-int/2addr p7, p4

    .line 1027
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .local v0, "ix":I
    const/4 v1, 0x0

    .line 1028
    .local v1, "iy":I
    packed-switch p6, :pswitch_data_0

    .line 1072
    :goto_3
    :pswitch_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    sub-int v3, p7, v0

    sub-int v4, p8, v1

    sub-int v5, p7, v0

    add-int/2addr v5, p4

    sub-int v6, p8, v1

    add-int/2addr v6, p5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1073
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int v4, p7, v0

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, p8, v1

    sub-int/2addr v5, p3

    int-to-float v5, v5

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1074
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1019
    .end local v0    # "ix":I
    .end local v1    # "iy":I
    :cond_3
    and-int/lit8 v2, p9, 0x20

    if-eqz v2, :cond_1

    .line 1020
    sub-int/2addr p8, p5

    goto :goto_1

    .line 1024
    :cond_4
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_2

    .line 1025
    div-int/lit8 v2, p4, 0x2

    sub-int/2addr p7, v2

    goto :goto_2

    .line 1034
    .restart local v0    # "ix":I
    .restart local v1    # "iy":I
    :pswitch_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1035
    move v1, p5

    .line 1036
    goto :goto_3

    .line 1039
    :pswitch_2
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1040
    move v1, p5

    .line 1041
    move v0, p4

    .line 1042
    goto :goto_3

    .line 1045
    :pswitch_3
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43870000    # 270.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1046
    move v0, p4

    .line 1047
    goto :goto_3

    .line 1050
    :pswitch_4
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p7

    int-to-float v6, p8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1051
    move v0, p4

    .line 1052
    goto :goto_3

    .line 1055
    :pswitch_5
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p7

    int-to-float v6, p8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1056
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43870000    # 270.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1057
    move v0, p4

    .line 1058
    move v1, p5

    .line 1059
    goto :goto_3

    .line 1062
    :pswitch_6
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p7

    int-to-float v6, p8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1063
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1064
    move v1, p5

    .line 1065
    goto/16 :goto_3

    .line 1068
    :pswitch_7
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p7

    int-to-float v6, p8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1069
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x42b40000    # 90.0f

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_3

    .line 1028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public drawReverseBitmap(Landroid/graphics/Bitmap;IIZ)V
    .locals 8
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    if-eqz p1, :cond_0

    .line 1252
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1253
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1254
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    move-object v0, p1

    move v2, v1

    move v6, p4

    .line 1254
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1256
    .local v7, "dst":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1257
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1258
    const/4 v7, 0x0

    .line 1260
    goto :goto_0
.end method

.method public drawReverseImage(Ljavax/microedition/lcdui/Image;IIZ)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "filter"    # Z

    .prologue
    .line 1263
    if-nez p1, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1266
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawReverseBitmap(Landroid/graphics/Bitmap;IIZ)V

    goto :goto_0
.end method

.method public drawRoundRect(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 2208
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2213
    :goto_0
    return-void

    .line 2211
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    .line 2212
    int-to-float v3, p6

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 2211
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p5, "color1"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p6, "k"    # I

    .prologue
    .line 1624
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1628
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1629
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1630
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v2, p2, p6

    int-to-float v2, v2

    add-int v3, p3, p6

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1631
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1632
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1633
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawSixStart(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
    .locals 1
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "r"    # I

    .prologue
    .line 748
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 752
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V

    .line 753
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawRTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V

    goto :goto_0
.end method

.method public drawSize(Landroid/graphics/Bitmap;IIII)V
    .locals 7
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 1270
    iget-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v4, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    if-eqz p1, :cond_0

    .line 1276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1277
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1278
    .local v0, "height":I
    if-ne v3, p4, :cond_2

    if-ne v0, p5, :cond_2

    .line 1279
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 1283
    :cond_2
    int-to-float v4, p4

    int-to-float v5, v3

    div-float v2, v4, v5

    .line 1284
    .local v2, "scaleWidth":F
    int-to-float v4, p5

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 1285
    .local v1, "scaleHeight":F
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 1286
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1287
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1288
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V

    goto :goto_0
.end method

.method public drawSize(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 6
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 1293
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    if-eqz p1, :cond_0

    .line 1299
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawSize(Landroid/graphics/Bitmap;IIII)V

    goto :goto_0
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1564
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1567
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1568
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1569
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1570
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1584
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1587
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1588
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1589
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1590
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 1502
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_0

    .line 1524
    :goto_0
    return-void

    .line 1505
    :cond_0
    move v1, p2

    .line 1506
    .local v1, "newx":I
    move v2, p3

    .line 1507
    .local v2, "newy":I
    if-nez p4, :cond_1

    .line 1508
    const/16 p4, 0x14

    .line 1510
    :cond_1
    and-int/lit8 v3, p4, 0x10

    if-eqz v3, :cond_4

    .line 1511
    int-to-float v3, v2

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 1515
    :cond_2
    :goto_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    .line 1516
    int-to-float v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 1520
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1521
    .local v0, "flag":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1522
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1523
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0

    .line 1512
    .end local v0    # "flag":I
    :cond_4
    and-int/lit8 v3, p4, 0x20

    if-eqz v3, :cond_2

    .line 1513
    int-to-float v3, v2

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_1

    .line 1517
    :cond_5
    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_3

    .line 1518
    int-to-float v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_2
.end method

.method public drawStyleString(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # I
    .param p5, "color1"    # I

    .prologue
    .line 1673
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1686
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1677
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1678
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1679
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1680
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1681
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1682
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    add-int/lit8 v3, p3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1683
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1684
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1685
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawStyleString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "c1"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p5, "c2"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 1690
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1703
    :goto_0
    return-void

    .line 1693
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    .line 1694
    .local v0, "flag":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1695
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1696
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1697
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1698
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1699
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    add-int/lit8 v3, p3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1700
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1701
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1702
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawSubString(Ljava/lang/String;IIIII)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 1554
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1561
    :goto_0
    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v7

    .line 1558
    .local v7, "flag":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1559
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v3, p2, p3

    int-to-float v4, p4

    int-to-float v5, p5

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1560
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0
.end method

.method public drawSubstring(Ljava/lang/String;IIIII)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 1528
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1531
    :cond_0
    move v8, p4

    .line 1532
    .local v8, "newx":I
    move v9, p5

    .line 1533
    .local v9, "newy":I
    if-nez p6, :cond_1

    .line 1534
    const/16 p6, 0x14

    .line 1536
    :cond_1
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_4

    .line 1537
    int-to-float v0, v9

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-int v9, v0

    .line 1541
    :cond_2
    :goto_1
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_5

    .line 1542
    int-to-float v0, v8

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 1546
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v7

    .line 1547
    .local v7, "flag":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1548
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    add-int v3, p3, p2

    int-to-float v4, v8

    int-to-float v5, v9

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1549
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFlags(I)V

    goto :goto_0

    .line 1538
    .end local v7    # "flag":I
    :cond_4
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_2

    .line 1539
    int-to-float v0, v9

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    float-to-int v9, v0

    goto :goto_1

    .line 1543
    :cond_5
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_3

    .line 1544
    int-to-float v0, v8

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v8, v0

    goto :goto_2
.end method

.method public drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
    .locals 1
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .prologue
    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1422
    return-void
.end method

.method public drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
    .locals 7
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1425
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    if-eqz p1, :cond_0

    .line 1431
    new-array v0, v6, [I

    .line 1432
    .local v0, "xpos":[I
    new-array v1, v6, [I

    .line 1433
    .local v1, "ypos":[I
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v3

    .line 1434
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v4

    .line 1435
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v5

    .line 1436
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v3

    .line 1437
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v4

    .line 1438
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v5

    .line 1439
    invoke-virtual {p0, v0, v1, v6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawPolygon([I[II)V

    goto :goto_0
.end method

.method public drawTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
    .locals 13
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "r"    # I

    .prologue
    .line 760
    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v9, :cond_0

    .line 779
    :goto_0
    return-void

    .line 763
    :cond_0
    move v1, p2

    .line 764
    .local v1, "x1":I
    sub-int v5, p3, p4

    .line 765
    .local v5, "y1":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v2, p2, v9

    .line 766
    .local v2, "x2":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int v6, p3, v9

    .line 767
    .local v6, "y2":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int v3, p2, v9

    .line 768
    .local v3, "x3":I
    move/from16 v0, p4

    int-to-double v9, v0

    const-wide v11, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int v7, p3, v9

    .line 769
    .local v7, "y3":I
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 770
    .local v4, "xpos":[I
    const/4 v9, 0x0

    aput v1, v4, v9

    .line 771
    const/4 v9, 0x1

    aput v2, v4, v9

    .line 772
    const/4 v9, 0x2

    aput v3, v4, v9

    .line 773
    const/4 v9, 0x3

    new-array v8, v9, [I

    .line 774
    .local v8, "ypos":[I
    const/4 v9, 0x0

    aput v5, v8, v9

    .line 775
    const/4 v9, 0x1

    aput v6, v8, v9

    .line 776
    const/4 v9, 0x2

    aput v7, v8, v9

    .line 777
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 778
    const/4 v9, 0x3

    invoke-virtual {p0, v4, v8, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public drawTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
    .locals 1
    .param p1, "ts"    # [Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .prologue
    const/4 v0, 0x0

    .line 1404
    invoke-virtual {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1405
    return-void
.end method

.method public drawTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
    .locals 3
    .param p1, "ts"    # [Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1408
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 1418
    :cond_0
    return-void

    .line 1411
    :cond_1
    if-eqz p1, :cond_0

    .line 1414
    array-length v1, p1

    .line 1415
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1416
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fill(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
    .locals 3
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 551
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getPath(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fill3DRect(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "raised"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1829
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_0

    .line 1855
    :goto_0
    return-void

    .line 1832
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    .line 1834
    .local v0, "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    if-eqz p5, :cond_1

    .line 1835
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v2

    .line 1836
    .local v2, "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 1837
    .local v1, "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1844
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 1845
    add-int/lit8 p4, p4, -0x1

    .line 1846
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x1

    add-int/lit8 v6, p4, -0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1848
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1849
    invoke-virtual {p0, p1, p2, p3, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1850
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p1, v3, v7, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1852
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 1853
    add-int v3, p1, p3

    invoke-virtual {p0, v3, p2, v7, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    .line 1854
    add-int/lit8 v3, p1, 0x1

    add-int v4, p2, p4

    invoke-virtual {p0, v3, v4, p3, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    goto :goto_0

    .line 1839
    .end local v1    # "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    .end local v2    # "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    :cond_1
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->darker()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v2

    .line 1840
    .restart local v2    # "colorUp":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->brighter()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 1841
    .restart local v1    # "colorDown":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto :goto_1
.end method

.method public fillAlphaRect(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "pixel"    # I

    .prologue
    .line 1802
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1813
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 1806
    .local v6, "color":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1807
    int-to-float v1, p1

    .line 1808
    .local v1, "f":F
    int-to-float v2, p2

    .line 1809
    .local v2, "f1":F
    add-int v0, p1, p3

    int-to-float v3, v0

    .line 1810
    .local v3, "f2":F
    add-int v0, p2, p4

    int-to-float v4, v0

    .line 1811
    .local v4, "f3":F
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1812
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public fillAlphaRect(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 1798
    invoke-virtual {p5}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillAlphaRect(IIIII)V

    .line 1799
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "sa"    # I
    .param p6, "ea"    # I

    .prologue
    .line 1743
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 1747
    .local v6, "tmp":Landroid/graphics/Paint$Style;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1748
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-int v2, p5, p6

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    .line 1749
    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 1748
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1750
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public fillOval(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1754
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1758
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fillPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 3
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 1787
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillPolygon([I[II)V

    .line 1788
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 6
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 1761
    iget-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v4, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1765
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 1766
    .local v3, "tmp":Landroid/graphics/Paint$Style;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 1767
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1768
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;

    .line 1769
    const/4 v4, 0x0

    .line 1768
    invoke-direct {v0, v4, p3}, Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;-><init>(II)V

    .line 1770
    .local v0, "filledPolygon":Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;
    const/4 v4, 0x0

    aget v4, p1, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;->moveTo(FF)V

    .line 1771
    const/4 v1, 0x1

    .local v1, "index":I
    :goto_1
    array-length v4, p1

    if-lt v1, v4, :cond_1

    .line 1774
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;->closePath()V

    .line 1775
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getPath(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Landroid/graphics/Path;

    move-result-object v2

    .line 1776
    .local v2, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1777
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1779
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1780
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1782
    .end local v0    # "filledPolygon":Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;
    .end local v1    # "index":I
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "tmp":Landroid/graphics/Paint$Style;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1772
    .restart local v0    # "filledPolygon":Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;
    .restart local v1    # "index":I
    .restart local v3    # "tmp":Landroid/graphics/Paint$Style;
    :cond_1
    aget v4, p1, v1

    int-to-float v4, v4

    aget v5, p2, v1

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/GeneralPath;->lineTo(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public fillRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1791
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1795
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fillRoundRect(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 559
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    .line 563
    int-to-float v3, p6

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 562
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fillTriangle(IIIIII)V
    .locals 3
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 1816
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1819
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1820
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1821
    .local v0, "path":Landroid/graphics/Path;
    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1822
    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1823
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1824
    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1825
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
    .locals 1
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .prologue
    const/4 v0, 0x0

    .line 1382
    invoke-virtual {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1383
    return-void
.end method

.method public fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
    .locals 7
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1386
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    if-eqz p1, :cond_0

    .line 1392
    new-array v0, v6, [I

    .line 1393
    .local v0, "xpos":[I
    new-array v1, v6, [I

    .line 1394
    .local v1, "ypos":[I
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v3

    .line 1395
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v4

    .line 1396
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v2, p2

    aput v2, v0, v5

    .line 1397
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v3

    .line 1398
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v4

    .line 1399
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v2, p3

    aput v2, v1, v5

    .line 1400
    invoke-virtual {p0, v0, v1, v6}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public fillTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
    .locals 1
    .param p1, "ts"    # [Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .prologue
    const/4 v0, 0x0

    .line 1365
    invoke-virtual {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1366
    return-void
.end method

.method public fillTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
    .locals 3
    .param p1, "ts"    # [Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1369
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v2, :cond_1

    .line 1379
    :cond_0
    return-void

    .line 1372
    :cond_1
    if-eqz p1, :cond_0

    .line 1375
    array-length v1, p1

    .line 1376
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1377
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    div-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getAlphaValue()F
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getBackground()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 1739
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBlueComponent()I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClip()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-direct {v1, v2, v2, v3, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 530
    :goto_0
    return-object v1

    .line 529
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 530
    .local v0, "r":Landroid/graphics/Rect;
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method public getClipHeight()I
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClipWidth()I
    .locals 2

    .prologue
    .line 1948
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClipX()I
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getClipY()I
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 341
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(I)V

    goto :goto_0
.end method

.method public final getColorARGB()I
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public final getColorRGB()I
    .locals 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    goto :goto_0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGrayScale()I
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getRedComponent()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getGreenComponent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getBlueComponent()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getGreenComponent()I
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getInverseMatrix()[F
    .locals 2

    .prologue
    .line 203
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    .line 206
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getMatrix()[F

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->createAWTMatrix([F)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>([F)V

    .line 208
    .local v0, "af":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    :try_start_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->createInverse()Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_1
    invoke-static {v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->createMatrix(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)[F

    move-result-object v1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getLFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public getMatrix()[F
    .locals 2

    .prologue
    .line 218
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 222
    .local v0, "f":[F
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRedComponent()I
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getStroke()Lorg/loon/framework/android/game/core/graphics/geom/Stroke;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-object v0

    .line 633
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 634
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v3

    .line 634
    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;-><init>(FII)V

    goto :goto_0
.end method

.method public getStrokeStyle()I
    .locals 1

    .prologue
    .line 2111
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->strokeStyle:I

    return v0
.end method

.method public getTransform()Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 2

    .prologue
    .line 1990
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1991
    const/4 v0, 0x0

    .line 1993
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getMatrix()[F

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->createAWTMatrix([F)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>([F)V

    goto :goto_0
.end method

.method public hitClip(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getClipBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public initGraphics()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    .line 107
    :goto_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isLowerVer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    .line 111
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    .line 112
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    .line 114
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 115
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 116
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    .line 117
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public isAntiAlias()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    goto :goto_0
.end method

.method public isClose()Z
    .locals 1

    .prologue
    .line 2243
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    return v0
.end method

.method public rectDraw(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 728
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-virtual {p0, p5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 732
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawRect(IIII)V

    goto :goto_0
.end method

.method public rectFill(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 720
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-virtual {p0, p5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 724
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillRect(IIII)V

    goto :goto_0
.end method

.method public rectOval(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 736
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0, p5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 740
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawOval(IIII)V

    .line 741
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->fillOval(IIII)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 156
    :cond_1
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isLowerVer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    .line 160
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 161
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 163
    :cond_3
    return-void
.end method

.method public resetFont()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 140
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 141
    return-void
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public rotate(D)V
    .locals 3
    .param p1, "theta"    # D

    .prologue
    .line 674
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 678
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 679
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getDegree(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 680
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public rotate(DDD)V
    .locals 4
    .param p1, "theta"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 684
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 693
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 688
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 690
    double-to-float v1, p1

    invoke-static {v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getDegree(F)F

    move-result v1

    double-to-float v2, p3

    .line 691
    double-to-float v3, p5

    .line 690
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 692
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public rotateCanvas(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 696
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0
.end method

.method public rotateCanvas(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 703
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    goto :goto_0
.end method

.method public save(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->save(I)I

    goto :goto_0
.end method

.method public scale(DD)V
    .locals 3
    .param p1, "sx"    # D
    .param p3, "sy"    # D

    .prologue
    .line 710
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 714
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 715
    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 716
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 270
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setAlphaValue(I)V

    .line 271
    return-void
.end method

.method public setAlphaValue(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method

.method public setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 2
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 1728
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1731
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1732
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 2232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    .line 2233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    .line 2234
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2235
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2236
    return-void
.end method

.method public setClip(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2152
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_2

    add-int v0, p1, p3

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_2

    .line 2156
    add-int v0, p2, p4

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    .line 2159
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_3

    add-int v0, p1, p3

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_3

    .line 2160
    add-int v0, p2, p4

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_4

    .line 2161
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2162
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 2164
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2165
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 2166
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    add-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2167
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    add-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2168
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public setClip(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2143
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setClip(IIII)V

    .line 2144
    return-void
.end method

.method public setClip(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
    .locals 5
    .param p1, "shape"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 2147
    invoke-interface {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Shape;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    .line 2148
    .local v0, "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    iget v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setClip(IIII)V

    .line 2149
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColor(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 288
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColor(IIII)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getARGB(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 2
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColorARGB(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 2
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getARGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public final setColorARGB32(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 366
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColorAll(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 2
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public final setColorRGB24(I)V
    .locals 3
    .param p1, "rgb"    # I

    .prologue
    .line 359
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const v2, 0xffffff

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setColorValue(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 295
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setFill()V
    .locals 2

    .prologue
    .line 623
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 807
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method public setFont(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 414
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 415
    return-void
.end method

.method public setFont(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    .line 418
    invoke-static {p1, p2, p3}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 419
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 3
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 422
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 426
    .local v0, "typefacePaint":Landroid/graphics/Paint;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 428
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 429
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 433
    :goto_1
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->font:Ljavax/microedition/lcdui/Font;

    goto :goto_0

    .line 431
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method public setGrayScale(I)V
    .locals 1
    .param p1, "grey"    # I

    .prologue
    .line 373
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 376
    :cond_1
    invoke-virtual {p0, p1, p1, p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setColor(III)V

    .line 377
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2228
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    .line 2229
    return-void
.end method

.method public setPaintMode()V
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method public setStroke(Lorg/loon/framework/android/game/core/graphics/geom/Stroke;)V
    .locals 7
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Stroke;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 641
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v3, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 644
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;

    .line 645
    .local v0, "bs":Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 646
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;->getLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 647
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;->getEndCap()I

    move-result v1

    .line 648
    .local v1, "cap":I
    if-nez v1, :cond_3

    .line 649
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 655
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/BasicStroke;->getLineJoin()I

    move-result v2

    .line 656
    .local v2, "join":I
    if-nez v2, :cond_5

    .line 657
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 650
    .end local v2    # "join":I
    :cond_3
    if-ne v1, v5, :cond_4

    .line 651
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 652
    :cond_4
    if-ne v1, v6, :cond_2

    .line 653
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 658
    .restart local v2    # "join":I
    :cond_5
    if-ne v2, v5, :cond_6

    .line 659
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 660
    :cond_6
    if-ne v2, v6, :cond_0

    .line 661
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0
.end method

.method public setStrokeStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 2096
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2108
    :goto_0
    return-void

    .line 2099
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2102
    :cond_1
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->strokeStyle:I

    .line 2103
    if-nez p1, :cond_2

    .line 2104
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 2106
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->dashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0
.end method

.method public setTransform(III)V
    .locals 10
    .param p1, "transform"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v0, 0x0

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 442
    :pswitch_0
    invoke-virtual {p0, p3, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 443
    invoke-virtual {p0, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    goto :goto_0

    .line 447
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 448
    invoke-virtual {p0, v8, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-virtual {p0, v0, p2}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 453
    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    goto :goto_0

    .line 457
    :pswitch_3
    invoke-virtual {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 458
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->scale(DD)V

    goto :goto_0

    .line 462
    :pswitch_4
    invoke-virtual {p0, p3, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 463
    invoke-virtual {p0, v6, v7}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    .line 464
    invoke-virtual {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 465
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->scale(DD)V

    goto :goto_0

    .line 469
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 470
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->scale(DD)V

    .line 471
    invoke-virtual {p0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->translate(II)V

    .line 472
    invoke-virtual {p0, v8, v9}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    goto :goto_0

    .line 476
    :pswitch_6
    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->rotate(D)V

    .line 477
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->scale(DD)V

    goto :goto_0

    .line 440
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

.method public setTransform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 3
    .param p1, "aff"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 1978
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1981
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1982
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->createMatrix(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1983
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1984
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->getInverseMatrix()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1985
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1986
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    sget-object v2, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public setXORMode(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 3
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 609
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PixelXorXfermode;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRGB()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method public shear(DD)V
    .locals 3
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .prologue
    .line 2086
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v1, :cond_0

    .line 2093
    :goto_0
    return-void

    .line 2089
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2090
    .local v0, "martix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2091
    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setSkew(FF)V

    .line 2092
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 2
    .param p1, "aff"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 2115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2116
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->createMatrix(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2117
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2118
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2121
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2129
    :goto_0
    return-void

    .line 2124
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2125
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2126
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2127
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2128
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public translate(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2132
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 2140
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2136
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2137
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2138
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2139
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public update(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->isClose:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isLowerVer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 129
    :cond_1
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->canvas:Landroid/graphics/Canvas;

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->clip:Landroid/graphics/Rect;

    .line 131
    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/device/LGraphicsAndroid2D;->setFont(Ljavax/microedition/lcdui/Font;)V

    goto :goto_0
.end method
