.class Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;
.super Ljava/lang/Object;
.source "Area.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;


# instance fields
.field private curves:Ljava/util/Vector;

.field private index:I

.field private prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

.field private thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

.field private transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 2
    .param p1, "curves"    # Ljava/util/Vector;
    .param p2, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->curves:Ljava/util/Vector;

    .line 648
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .line 649
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 652
    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .param p1, "coords"    # [D

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-eqz v0, :cond_4

    .line 703
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v0

    if-nez v0, :cond_2

    .line 704
    :cond_0
    const/4 v6, 0x4

    .line 722
    :cond_1
    :goto_0
    return v6

    .line 706
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX0()D

    move-result-wide v0

    aput-wide v0, p1, v2

    .line 707
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY0()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 708
    const/4 v6, 0x1

    .line 709
    .local v6, "segtype":I
    const/4 v5, 0x1

    .line 719
    .local v5, "numpoints":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->transform:Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->transform([DI[DII)V

    goto :goto_0

    .line 710
    .end local v5    # "numpoints":I
    .end local v6    # "segtype":I
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-nez v0, :cond_5

    .line 711
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "area iterator out of bounds"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_5
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getSegment([D)I

    move-result v6

    .line 714
    .restart local v6    # "segtype":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v5

    .line 715
    .restart local v5    # "numpoints":I
    if-nez v5, :cond_3

    .line 716
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public currentSegment([F)I
    .locals 6
    .param p1, "coords"    # [F

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    .line 686
    const/4 v5, 0x6

    new-array v0, v5, [D

    .line 687
    .local v0, "dcoords":[D
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->currentSegment([D)I

    move-result v3

    .line 688
    .local v3, "segtype":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    const/4 v2, 0x0

    .line 692
    .local v2, "numpoints":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    mul-int/lit8 v4, v2, 0x2

    if-lt v1, v4, :cond_3

    .line 695
    return v3

    .line 689
    .end local v1    # "i":I
    .end local v2    # "numpoints":I
    :cond_1
    if-eq v3, v2, :cond_0

    .line 690
    if-ne v3, v4, :cond_2

    move v2, v4

    goto :goto_0

    .line 691
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 693
    .restart local v1    # "i":I
    .restart local v2    # "numpoints":I
    :cond_3
    aget-wide v4, v0, v1

    double-to-float v4, v4

    aput v4, p1, v1

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 666
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    if-eqz v0, :cond_1

    .line 667
    iput-object v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 670
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->index:I

    .line 671
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->index:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 672
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->curves:Ljava/util/Vector;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 673
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX1()D

    move-result-wide v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX0()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY1()D

    move-result-wide v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY0()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 677
    iput-object v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->prevcurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    goto :goto_0

    .line 680
    :cond_2
    iput-object v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;->thiscurve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    goto :goto_0
.end method
