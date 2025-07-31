.class Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolygonPathIterator"
.end annotation


# instance fields
.field index:I

.field poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;Lorg/loon/framework/android/game/core/graphics/geom/Polygon;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 1
    .param p2, "pg"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .param p3, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->this$0:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 554
    iput-object p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .line 555
    iget v0, p2, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 6
    .param p1, "coords"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 639
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lt v0, v1, :cond_1

    .line 640
    const/4 v2, 0x4

    .line 647
    :cond_0
    :goto_0
    return v2

    .line 642
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    aget v0, v0, v1

    int-to-double v0, v0

    aput-wide v0, p1, v2

    .line 643
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    aget v0, v0, v1

    int-to-double v0, v0

    aput-wide v0, p1, v5

    .line 644
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->transform([DI[DII)V

    .line 647
    :cond_2
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    if-eqz v0, :cond_0

    move v2, v5

    goto :goto_0
.end method

.method public currentSegment([F)I
    .locals 6
    .param p1, "coords"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 608
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lt v0, v1, :cond_1

    .line 609
    const/4 v2, 0x4

    .line 616
    :cond_0
    :goto_0
    return v2

    .line 611
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    aget v0, v0, v1

    int-to-float v0, v0

    aput v0, p1, v2

    .line 612
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    aget v0, v0, v1

    int-to-float v0, v0

    aput v0, p1, v5

    .line 613
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->transform([FI[FII)V

    .line 616
    :cond_2
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    if-eqz v0, :cond_0

    move v2, v5

    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->poly:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;->index:I

    .line 587
    return-void
.end method
