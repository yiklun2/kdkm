.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/Line2D;
.super Ljava/lang/Object;
.source "Line2D.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Double;,
        Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Float;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    return-void
.end method

.method public static linesIntersect(DDDDDDDD)Z
    .locals 13
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "x3"    # D
    .param p10, "y3"    # D
    .param p12, "x4"    # D
    .param p14, "y4"    # D

    .prologue
    .line 678
    invoke-static/range {p0 .. p11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v12

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    .line 679
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    .line 678
    mul-int/2addr v0, v12

    if-gtz v0, :cond_0

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide v8, p0

    move-wide v10, p2

    .line 679
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v12

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 681
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    .line 679
    mul-int/2addr v0, v12

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 678
    goto :goto_0
.end method

.method public static ptLineDist(DDDDDD)D
    .locals 2
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "px"    # D
    .param p10, "py"    # D

    .prologue
    .line 996
    invoke-static/range {p0 .. p11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ptLineDistSq(DDDDDD)D
    .locals 12
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "px"    # D
    .param p10, "py"    # D

    .prologue
    .line 950
    sub-double p4, p4, p0

    .line 951
    sub-double p6, p6, p2

    .line 953
    sub-double p8, p8, p0

    .line 954
    sub-double p10, p10, p2

    .line 955
    mul-double v6, p8, p4

    mul-double v8, p10, p6

    add-double v0, v6, v8

    .line 959
    .local v0, "dotprod":D
    mul-double v6, v0, v0

    mul-double v8, p4, p4

    mul-double v10, p6, p6

    add-double/2addr v8, v10

    div-double v4, v6, v8

    .line 962
    .local v4, "projlenSq":D
    mul-double v6, p8, p8

    mul-double v8, p10, p10

    add-double/2addr v6, v8

    sub-double v2, v6, v4

    .line 963
    .local v2, "lenSq":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    .line 964
    const-wide/16 v2, 0x0

    .line 966
    :cond_0
    return-wide v2
.end method

.method public static ptSegDist(DDDDDD)D
    .locals 2
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "px"    # D
    .param p10, "py"    # D

    .prologue
    .line 833
    invoke-static/range {p0 .. p11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ptSegDistSq(DDDDDD)D
    .locals 12
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "px"    # D
    .param p10, "py"    # D

    .prologue
    .line 757
    sub-double p4, p4, p0

    .line 758
    sub-double p6, p6, p2

    .line 760
    sub-double p8, p8, p0

    .line 761
    sub-double p10, p10, p2

    .line 762
    mul-double v6, p8, p4

    mul-double v8, p10, p6

    add-double v0, v6, v8

    .line 764
    .local v0, "dotprod":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_1

    .line 768
    const-wide/16 v4, 0x0

    .line 795
    .local v4, "projlenSq":D
    :goto_0
    mul-double v6, p8, p8

    mul-double v8, p10, p10

    add-double/2addr v6, v8

    sub-double v2, v6, v4

    .line 796
    .local v2, "lenSq":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_0

    .line 797
    const-wide/16 v2, 0x0

    .line 799
    :cond_0
    return-wide v2

    .line 775
    .end local v2    # "lenSq":D
    .end local v4    # "projlenSq":D
    :cond_1
    sub-double p8, p4, p8

    .line 776
    sub-double p10, p6, p10

    .line 777
    mul-double v6, p8, p4

    mul-double v8, p10, p6

    add-double v0, v6, v8

    .line 778
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_2

    .line 782
    const-wide/16 v4, 0x0

    .restart local v4    # "projlenSq":D
    goto :goto_0

    .line 788
    .end local v4    # "projlenSq":D
    :cond_2
    mul-double v6, v0, v0

    mul-double v8, p4, p4

    mul-double v10, p6, p6

    add-double/2addr v8, v10

    div-double v4, v6, v8

    .restart local v4    # "projlenSq":D
    goto :goto_0
.end method

.method public static relativeCCW(DDDDDD)I
    .locals 6
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "px"    # D
    .param p10, "py"    # D

    .prologue
    .line 571
    sub-double/2addr p4, p0

    .line 572
    sub-double/2addr p6, p2

    .line 573
    sub-double/2addr p8, p0

    .line 574
    sub-double p10, p10, p2

    .line 575
    mul-double v2, p8, p6

    mul-double v4, p10, p4

    sub-double v0, v2, v4

    .line 576
    .local v0, "ccw":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 583
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double v0, v2, v4

    .line 584
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 592
    sub-double/2addr p8, p4

    .line 593
    sub-double p10, p10, p6

    .line 594
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double v0, v2, v4

    .line 595
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 596
    const-wide/16 v0, 0x0

    .line 600
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1235
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1236
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(DD)Z
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 1
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 1
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getP1()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public abstract getP2()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 1198
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/LineIterator;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/LineIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Line2D;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 1221
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/LineIterator;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/LineIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Line2D;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public abstract getX1()D
.end method

.method public abstract getX2()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getY2()D
.end method

.method public intersects(DDDD)Z
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 1121
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1130
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v0

    return v0
.end method

.method public intersectsLine(DDDD)Z
    .locals 16
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .prologue
    .line 705
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v12

    .line 706
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v14

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 705
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v0

    return v0
.end method

.method public intersectsLine(Lorg/loon/framework/android/game/core/graphics/geom/Line2D;)Z
    .locals 16
    .param p1, "l"    # Lorg/loon/framework/android/game/core/graphics/geom/Line2D;

    .prologue
    .line 719
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    .line 720
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v14

    .line 719
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v0

    return v0
.end method

.method public ptLineDist(DD)D
    .locals 12
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 1059
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDist(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D
    .locals 12
    .param p1, "pt"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 1077
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v8

    .line 1078
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v10

    .line 1077
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDistSq(DD)D
    .locals 12
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 1018
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDistSq(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D
    .locals 12
    .param p1, "pt"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 1037
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v8

    .line 1038
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v10

    .line 1037
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDist(DD)D
    .locals 12
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 897
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDist(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D
    .locals 12
    .param p1, "pt"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 916
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v8

    .line 917
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v10

    .line 916
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDistSq(DD)D
    .locals 12
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDistSq(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D
    .locals 12
    .param p1, "pt"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v8

    .line 875
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v10

    .line 874
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public relativeCCW(DD)I
    .locals 12
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 621
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    return v0
.end method

.method public relativeCCW(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)I
    .locals 12
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v8

    .line 640
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v10

    .line 639
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    return v0
.end method

.method public abstract setLine(DDDD)V
.end method

.method public setLine(Lorg/loon/framework/android/game/core/graphics/geom/Line2D;)V
    .locals 9
    .param p1, "l"    # Lorg/loon/framework/android/game/core/graphics/geom/Line2D;

    .prologue
    .line 518
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->getY2()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->setLine(DDDD)V

    .line 519
    return-void
.end method

.method public setLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V
    .locals 9
    .param p1, "p1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "p2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 506
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->setLine(DDDD)V

    .line 507
    return-void
.end method
