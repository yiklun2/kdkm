.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/Curve;
.super Ljava/lang/Object;
.source "Curve.java"


# static fields
.field public static final DECREASING:I = -0x1

.field public static final INCREASING:I = 0x1

.field public static final RECT_INTERSECTS:I = -0x80000000

.field public static final TMIN:D = 0.001


# instance fields
.field protected direction:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    .line 647
    return-void
.end method

.method public static diffbits(DD)J
    .locals 4
    .param p0, "y1"    # D
    .param p2, "y2"    # D

    .prologue
    .line 677
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 678
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 677
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static insertCubic(Ljava/util/Vector;DD[D)V
    .locals 25
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "coords"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;DD[D)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    const/4 v0, 0x5

    aget-wide v4, p5, v0

    .line 69
    .local v4, "y1":D
    cmpl-double v0, p3, v4

    if-lez v0, :cond_1

    .line 70
    const/4 v0, 0x4

    aget-wide v2, p5, v0

    const/4 v0, 0x2

    aget-wide v6, p5, v0

    const/4 v0, 0x3

    aget-wide v8, p5, v0

    .line 71
    const/4 v0, 0x0

    aget-wide v10, p5, v0

    const/4 v0, 0x1

    aget-wide v12, p5, v0

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    .line 70
    invoke-static/range {v0 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    cmpl-double v0, p3, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    aget-wide v0, p5, v0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    aget-wide v12, p5, v0

    const/4 v0, 0x1

    aget-wide v14, p5, v0

    .line 77
    const/4 v0, 0x2

    aget-wide v16, p5, v0

    const/4 v0, 0x3

    aget-wide v18, p5, v0

    const/4 v0, 0x4

    aget-wide v20, p5, v0

    const/16 v24, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v22, v4

    .line 76
    invoke-static/range {v6 .. v24}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->insert(Ljava/util/Vector;[DDDDDDDDDI)V

    goto :goto_0
.end method

.method public static insertLine(Ljava/util/Vector;DDDD)V
    .locals 10
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Order1;",
            ">;DDDD)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Order1;>;"
    cmpg-double v0, p3, p7

    if-gez v0, :cond_1

    .line 43
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Order1;

    const/4 v9, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    cmpl-double v0, p3, p7

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Order1;

    const/4 v9, -0x1

    move-wide v1, p5

    move-wide/from16 v3, p7

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Order1;-><init>(DDDDI)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static insertMove(Ljava/util/Vector;DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Order0;",
            ">;DD)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Order0;>;"
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Order0;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Order0;-><init>(DD)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static insertQuad(Ljava/util/Vector;DD[D)V
    .locals 21
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "coords"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;DD[D)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    const/4 v0, 0x3

    aget-wide v4, p5, v0

    .line 54
    .local v4, "y1":D
    cmpl-double v0, p3, v4

    if-lez v0, :cond_1

    .line 55
    const/4 v0, 0x2

    aget-wide v2, p5, v0

    const/4 v0, 0x0

    aget-wide v6, p5, v0

    const/4 v0, 0x1

    aget-wide v8, p5, v0

    .line 56
    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    .line 55
    invoke-static/range {v0 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    cmpl-double v0, p3, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    aget-wide v12, p5, v0

    const/4 v0, 0x1

    aget-wide v14, p5, v0

    .line 62
    const/4 v0, 0x2

    aget-wide v16, p5, v0

    const/16 v20, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v18, v4

    .line 61
    invoke-static/range {v6 .. v20}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->insert(Ljava/util/Vector;[DDDDDDDI)V

    goto :goto_0
.end method

.method public static next(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    .line 686
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static orderof(DD)I
    .locals 1
    .param p0, "x1"    # D
    .param p2, "x2"    # D

    .prologue
    .line 663
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 664
    const/4 v0, -0x1

    .line 669
    :goto_0
    return v0

    .line 666
    :cond_0
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    .line 667
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointCrossingsForCubic(DDDDDDDDDDI)I
    .locals 42
    .param p0, "px"    # D
    .param p2, "py"    # D
    .param p4, "x0"    # D
    .param p6, "y0"    # D
    .param p8, "xc0"    # D
    .param p10, "yc0"    # D
    .param p12, "xc1"    # D
    .param p14, "yc1"    # D
    .param p16, "x1"    # D
    .param p18, "y1"    # D
    .param p20, "level"    # I

    .prologue
    .line 247
    cmpg-double v1, p2, p6

    if-gez v1, :cond_0

    cmpg-double v1, p2, p10

    if-gez v1, :cond_0

    cmpg-double v1, p2, p14

    if-gez v1, :cond_0

    cmpg-double v1, p2, p18

    if-gez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 249
    :cond_0
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_1

    cmpl-double v1, p2, p10

    if-ltz v1, :cond_1

    cmpl-double v1, p2, p14

    if-ltz v1, :cond_1

    cmpl-double v1, p2, p18

    if-ltz v1, :cond_1

    .line 250
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    :cond_1
    cmpl-double v1, p0, p4

    if-ltz v1, :cond_2

    cmpl-double v1, p0, p8

    if-ltz v1, :cond_2

    cmpl-double v1, p0, p12

    if-ltz v1, :cond_2

    cmpl-double v1, p0, p16

    if-ltz v1, :cond_2

    .line 253
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :cond_2
    cmpg-double v1, p0, p4

    if-gez v1, :cond_5

    cmpg-double v1, p0, p8

    if-gez v1, :cond_5

    cmpg-double v1, p0, p12

    if-gez v1, :cond_5

    cmpg-double v1, p0, p16

    if-gez v1, :cond_5

    .line 255
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_3

    .line 256
    cmpg-double v1, p2, p18

    if-gez v1, :cond_4

    .line 257
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_3
    cmpl-double v1, p2, p18

    if-ltz v1, :cond_4

    .line 261
    const/4 v1, -0x1

    goto :goto_0

    .line 264
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_5
    const/16 v1, 0x34

    move/from16 v0, p20

    if-le v0, v1, :cond_6

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p16

    move-wide/from16 v11, p18

    .line 268
    invoke-static/range {v1 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v1

    goto :goto_0

    .line 269
    :cond_6
    add-double v1, p8, p12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v17, v1, v3

    .line 270
    .local v17, "xmid":D
    add-double v1, p10, p14

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v19, v1, v3

    .line 271
    .local v19, "ymid":D
    add-double v1, p4, p8

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p8, v1, v3

    .line 272
    add-double v1, p6, p10

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p10, v1, v3

    .line 273
    add-double v1, p12, p16

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p12, v1, v3

    .line 274
    add-double v1, p14, p18

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p14, v1, v3

    .line 275
    add-double v1, p8, v17

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v13, v1, v3

    .line 276
    .local v13, "xc0m":D
    add-double v1, p10, v19

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v15, v1, v3

    .line 277
    .local v15, "yc0m":D
    add-double v1, v17, p12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v29, v1, v3

    .line 278
    .local v29, "xmc1":D
    add-double v1, v19, p14

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v31, v1, v3

    .line 279
    .local v31, "ymc1":D
    add-double v1, v13, v29

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v17, v1, v3

    .line 280
    add-double v1, v15, v31

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v19, v1, v3

    .line 281
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 285
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 288
    :cond_8
    add-int/lit8 v21, p20, 0x1

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    .line 287
    invoke-static/range {v1 .. v21}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v1

    .line 289
    add-int/lit8 v41, p20, 0x1

    move-wide/from16 v21, p0

    move-wide/from16 v23, p2

    move-wide/from16 v25, v17

    move-wide/from16 v27, v19

    move-wide/from16 v33, p12

    move-wide/from16 v35, p14

    move-wide/from16 v37, p16

    move-wide/from16 v39, p18

    .line 288
    invoke-static/range {v21 .. v41}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v2

    .line 287
    add-int/2addr v1, v2

    goto/16 :goto_0
.end method

.method public static pointCrossingsForLine(DDDDDD)I
    .locals 6
    .param p0, "px"    # D
    .param p2, "py"    # D
    .param p4, "x0"    # D
    .param p6, "y0"    # D
    .param p8, "x1"    # D
    .param p10, "y1"    # D

    .prologue
    .line 170
    cmpg-double v2, p2, p6

    if-gez v2, :cond_0

    cmpg-double v2, p2, p10

    if-gez v2, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 182
    :goto_0
    return v2

    .line 172
    :cond_0
    cmpl-double v2, p2, p6

    if-ltz v2, :cond_1

    cmpl-double v2, p2, p10

    if-ltz v2, :cond_1

    .line 173
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    :cond_1
    cmpl-double v2, p0, p4

    if-ltz v2, :cond_2

    cmpl-double v2, p0, p8

    if-ltz v2, :cond_2

    .line 176
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    :cond_2
    cmpg-double v2, p0, p4

    if-gez v2, :cond_4

    cmpg-double v2, p0, p8

    if-gez v2, :cond_4

    .line 178
    cmpg-double v2, p6, p10

    if-gez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 179
    :cond_4
    sub-double v2, p2, p6

    sub-double v4, p8, p4

    mul-double/2addr v2, v4

    sub-double v4, p10, p6

    div-double/2addr v2, v4

    add-double v0, p4, v2

    .line 180
    .local v0, "xintercept":D
    cmpl-double v2, p0, v0

    if-ltz v2, :cond_5

    .line 181
    const/4 v2, 0x0

    goto :goto_0

    .line 182
    :cond_5
    cmpg-double v2, p6, p10

    if-gez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static pointCrossingsForPath(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;DD)I
    .locals 49
    .param p0, "pi"    # Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .param p1, "px"    # D
    .param p3, "py"    # D

    .prologue
    .line 94
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const/16 v48, 0x0

    .line 158
    :cond_0
    :goto_0
    return v48

    .line 97
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v47, v0

    .line 98
    .local v47, "coords":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "missing initial moveto in path definition"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    .line 103
    const/4 v2, 0x0

    aget-wide v10, v47, v2

    .line 104
    .local v10, "movx":D
    const/4 v2, 0x1

    aget-wide v12, v47, v2

    .line 105
    .local v12, "movy":D
    move-wide v6, v10

    .line 106
    .local v6, "curx":D
    move-wide v8, v12

    .line 108
    .local v8, "cury":D
    const/16 v48, 0x0

    .line 109
    .local v48, "crossings":I
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    cmpl-double v2, v8, v12

    if-eqz v2, :cond_0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 156
    invoke-static/range {v2 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v2

    add-int v48, v48, v2

    goto :goto_0

    .line 110
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 153
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_1

    .line 112
    :pswitch_0
    cmpl-double v2, v8, v12

    if-eqz v2, :cond_4

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 114
    invoke-static/range {v2 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v2

    add-int v48, v48, v2

    .line 116
    :cond_4
    const/4 v2, 0x0

    aget-wide v6, v47, v2

    move-wide v10, v6

    .line 117
    const/4 v2, 0x1

    aget-wide v8, v47, v2

    move-wide v12, v8

    .line 118
    goto :goto_2

    .line 120
    :pswitch_1
    const/4 v2, 0x0

    aget-wide v22, v47, v2

    .line 121
    .local v22, "endx":D
    const/4 v2, 0x1

    aget-wide v24, v47, v2

    .local v24, "endy":D
    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    .line 123
    invoke-static/range {v14 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v2

    add-int v48, v48, v2

    .line 124
    move-wide/from16 v6, v22

    .line 125
    move-wide/from16 v8, v24

    .line 126
    goto :goto_2

    .line 128
    .end local v22    # "endx":D
    .end local v24    # "endy":D
    :pswitch_2
    const/4 v2, 0x2

    aget-wide v22, v47, v2

    .line 129
    .restart local v22    # "endx":D
    const/4 v2, 0x3

    aget-wide v24, v47, v2

    .line 131
    .restart local v24    # "endy":D
    const/4 v2, 0x0

    aget-wide v34, v47, v2

    const/4 v2, 0x1

    aget-wide v36, v47, v2

    const/16 v42, 0x0

    move-wide/from16 v26, p1

    move-wide/from16 v28, p3

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    move-wide/from16 v38, v22

    move-wide/from16 v40, v24

    invoke-static/range {v26 .. v42}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v2

    add-int v48, v48, v2

    .line 132
    move-wide/from16 v6, v22

    .line 133
    move-wide/from16 v8, v24

    .line 134
    goto :goto_2

    .line 136
    .end local v22    # "endx":D
    .end local v24    # "endy":D
    :pswitch_3
    const/4 v2, 0x4

    aget-wide v22, v47, v2

    .line 137
    .restart local v22    # "endx":D
    const/4 v2, 0x5

    aget-wide v24, v47, v2

    .line 139
    .restart local v24    # "endy":D
    const/4 v2, 0x0

    aget-wide v34, v47, v2

    const/4 v2, 0x1

    aget-wide v36, v47, v2

    const/4 v2, 0x2

    aget-wide v38, v47, v2

    const/4 v2, 0x3

    aget-wide v40, v47, v2

    .line 140
    const/16 v46, 0x0

    move-wide/from16 v26, p1

    move-wide/from16 v28, p3

    move-wide/from16 v30, v6

    move-wide/from16 v32, v8

    move-wide/from16 v42, v22

    move-wide/from16 v44, v24

    invoke-static/range {v26 .. v46}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v2

    add-int v48, v48, v2

    .line 141
    move-wide/from16 v6, v22

    .line 142
    move-wide/from16 v8, v24

    .line 143
    goto/16 :goto_2

    .line 145
    .end local v22    # "endx":D
    .end local v24    # "endy":D
    :pswitch_4
    cmpl-double v2, v8, v12

    if-eqz v2, :cond_5

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 147
    invoke-static/range {v2 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v2

    add-int v48, v48, v2

    .line 149
    :cond_5
    move-wide v6, v10

    .line 150
    move-wide v8, v12

    goto/16 :goto_2

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static pointCrossingsForQuad(DDDDDDDDI)I
    .locals 30
    .param p0, "px"    # D
    .param p2, "py"    # D
    .param p4, "x0"    # D
    .param p6, "y0"    # D
    .param p8, "xc"    # D
    .param p10, "yc"    # D
    .param p12, "x1"    # D
    .param p14, "y1"    # D
    .param p16, "level"    # I

    .prologue
    .line 196
    cmpg-double v1, p2, p6

    if-gez v1, :cond_0

    cmpg-double v1, p2, p10

    if-gez v1, :cond_0

    cmpg-double v1, p2, p14

    if-gez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    .line 198
    :cond_0
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_1

    cmpl-double v1, p2, p10

    if-ltz v1, :cond_1

    cmpl-double v1, p2, p14

    if-ltz v1, :cond_1

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :cond_1
    cmpl-double v1, p0, p4

    if-ltz v1, :cond_2

    cmpl-double v1, p0, p8

    if-ltz v1, :cond_2

    cmpl-double v1, p0, p12

    if-ltz v1, :cond_2

    .line 202
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_2
    cmpg-double v1, p0, p4

    if-gez v1, :cond_5

    cmpg-double v1, p0, p8

    if-gez v1, :cond_5

    cmpg-double v1, p0, p12

    if-gez v1, :cond_5

    .line 204
    cmpl-double v1, p2, p6

    if-ltz v1, :cond_3

    .line 205
    cmpg-double v1, p2, p14

    if-gez v1, :cond_4

    .line 206
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :cond_3
    cmpl-double v1, p2, p14

    if-ltz v1, :cond_4

    .line 210
    const/4 v1, -0x1

    goto :goto_0

    .line 213
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 216
    :cond_5
    const/16 v1, 0x34

    move/from16 v0, p16

    if-le v0, v1, :cond_6

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p12

    move-wide/from16 v11, p14

    .line 217
    invoke-static/range {v1 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v1

    goto :goto_0

    .line 218
    :cond_6
    add-double v1, p4, p8

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v9, v1, v3

    .line 219
    .local v9, "x0c":D
    add-double v1, p6, p10

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v11, v1, v3

    .line 220
    .local v11, "y0c":D
    add-double v1, p8, p12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v21, v1, v3

    .line 221
    .local v21, "xc1":D
    add-double v1, p10, p14

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v23, v1, v3

    .line 222
    .local v23, "yc1":D
    add-double v1, v9, v21

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p8, v1, v3

    .line 223
    add-double v1, v11, v23

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p10, v1, v3

    .line 224
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 228
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 231
    :cond_8
    add-int/lit8 v17, p16, 0x1

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    .line 230
    invoke-static/range {v1 .. v17}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v1

    .line 232
    add-int/lit8 v29, p16, 0x1

    move-wide/from16 v13, p0

    move-wide/from16 v15, p2

    move-wide/from16 v17, p8

    move-wide/from16 v19, p10

    move-wide/from16 v25, p12

    move-wide/from16 v27, p14

    .line 231
    invoke-static/range {v13 .. v29}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForQuad(DDDDDDDDI)I

    move-result v2

    .line 230
    add-int/2addr v1, v2

    goto/16 :goto_0
.end method

.method public static prev(D)D
    .locals 4
    .param p0, "v"    # D

    .prologue
    .line 682
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rectCrossingsForCubic(IDDDDDDDDDDDDI)I
    .locals 52
    .param p0, "crossings"    # I
    .param p1, "rxmin"    # D
    .param p3, "rymin"    # D
    .param p5, "rxmax"    # D
    .param p7, "rymax"    # D
    .param p9, "x0"    # D
    .param p11, "y0"    # D
    .param p13, "xc0"    # D
    .param p15, "yc0"    # D
    .param p17, "xc1"    # D
    .param p19, "yc1"    # D
    .param p21, "x1"    # D
    .param p23, "y1"    # D
    .param p25, "level"    # I

    .prologue
    .line 572
    cmpl-double v1, p11, p7

    if-ltz v1, :cond_1

    cmpl-double v1, p15, p7

    if-ltz v1, :cond_1

    cmpl-double v1, p19, p7

    if-ltz v1, :cond_1

    cmpl-double v1, p23, p7

    if-ltz v1, :cond_1

    .line 642
    .end local p0    # "crossings":I
    :cond_0
    :goto_0
    return p0

    .line 575
    .restart local p0    # "crossings":I
    :cond_1
    cmpg-double v1, p11, p3

    if-gtz v1, :cond_2

    cmpg-double v1, p15, p3

    if-gtz v1, :cond_2

    cmpg-double v1, p19, p3

    if-gtz v1, :cond_2

    cmpg-double v1, p23, p3

    if-lez v1, :cond_0

    .line 578
    :cond_2
    cmpg-double v1, p9, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p13, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p17, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p21, p1

    if-lez v1, :cond_0

    .line 581
    :cond_3
    cmpl-double v1, p9, p5

    if-ltz v1, :cond_7

    cmpl-double v1, p13, p5

    if-ltz v1, :cond_7

    cmpl-double v1, p17, p5

    if-ltz v1, :cond_7

    cmpl-double v1, p21, p5

    if-ltz v1, :cond_7

    .line 590
    cmpg-double v1, p11, p23

    if-gez v1, :cond_5

    .line 592
    cmpg-double v1, p11, p3

    if-gtz v1, :cond_4

    cmpl-double v1, p23, p3

    if-lez v1, :cond_4

    .line 593
    add-int/lit8 p0, p0, 0x1

    .line 594
    :cond_4
    cmpg-double v1, p11, p7

    if-gez v1, :cond_0

    cmpl-double v1, p23, p7

    if-ltz v1, :cond_0

    .line 595
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 596
    :cond_5
    cmpg-double v1, p23, p11

    if-gez v1, :cond_0

    .line 598
    cmpg-double v1, p23, p3

    if-gtz v1, :cond_6

    cmpl-double v1, p11, p3

    if-lez v1, :cond_6

    .line 599
    add-int/lit8 p0, p0, -0x1

    .line 600
    :cond_6
    cmpg-double v1, p23, p7

    if-gez v1, :cond_0

    cmpl-double v1, p11, p7

    if-ltz v1, :cond_0

    .line 601
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 608
    :cond_7
    cmpl-double v1, p9, p1

    if-lez v1, :cond_8

    cmpg-double v1, p9, p5

    if-gez v1, :cond_8

    cmpl-double v1, p11, p3

    if-lez v1, :cond_8

    cmpg-double v1, p11, p7

    if-ltz v1, :cond_9

    .line 609
    :cond_8
    cmpl-double v1, p21, p1

    if-lez v1, :cond_a

    cmpg-double v1, p21, p5

    if-gez v1, :cond_a

    cmpl-double v1, p23, p3

    if-lez v1, :cond_a

    cmpg-double v1, p23, p7

    if-gez v1, :cond_a

    .line 610
    :cond_9
    const/high16 p0, -0x80000000

    goto/16 :goto_0

    .line 614
    :cond_a
    const/16 v1, 0x34

    move/from16 v0, p25

    if-le v0, v1, :cond_b

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p21

    move-wide/from16 v16, p23

    .line 615
    invoke-static/range {v1 .. v17}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result p0

    goto/16 :goto_0

    .line 618
    :cond_b
    add-double v1, p13, p17

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v22, v1, v3

    .line 619
    .local v22, "xmid":D
    add-double v1, p15, p19

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v24, v1, v3

    .line 620
    .local v24, "ymid":D
    add-double v1, p9, p13

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p13, v1, v3

    .line 621
    add-double v1, p11, p15

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p15, v1, v3

    .line 622
    add-double v1, p17, p21

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p17, v1, v3

    .line 623
    add-double v1, p19, p23

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p19, v1, v3

    .line 624
    add-double v1, p13, v22

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v18, v1, v3

    .line 625
    .local v18, "xc0m":D
    add-double v1, p15, v24

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v20, v1, v3

    .line 626
    .local v20, "yc0m":D
    add-double v1, v22, p17

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v39, v1, v3

    .line 627
    .local v39, "xmc1":D
    add-double v1, v24, p19

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v41, v1, v3

    .line 628
    .local v41, "ymc1":D
    add-double v1, v18, v39

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v22, v1, v3

    .line 629
    add-double v1, v20, v41

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v24, v1, v3

    .line 630
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 634
    :cond_c
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 637
    :cond_d
    add-int/lit8 v26, p25, 0x1

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    .line 636
    invoke-static/range {v1 .. v26}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result p0

    .line 638
    const/high16 v1, -0x80000000

    move/from16 v0, p0

    if-eq v0, v1, :cond_0

    .line 640
    add-int/lit8 v51, p25, 0x1

    move/from16 v26, p0

    move-wide/from16 v27, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, p5

    move-wide/from16 v33, p7

    move-wide/from16 v35, v22

    move-wide/from16 v37, v24

    move-wide/from16 v43, p17

    move-wide/from16 v45, p19

    move-wide/from16 v47, p21

    move-wide/from16 v49, p23

    .line 639
    invoke-static/range {v26 .. v51}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result p0

    goto/16 :goto_0
.end method

.method public static rectCrossingsForLine(IDDDDDDDD)I
    .locals 8
    .param p0, "crossings"    # I
    .param p1, "rxmin"    # D
    .param p3, "rymin"    # D
    .param p5, "rxmax"    # D
    .param p7, "rymax"    # D
    .param p9, "x0"    # D
    .param p11, "y0"    # D
    .param p13, "x1"    # D
    .param p15, "y1"    # D

    .prologue
    .line 417
    cmpl-double v4, p11, p7

    if-ltz v4, :cond_1

    cmpl-double v4, p15, p7

    if-ltz v4, :cond_1

    .line 488
    .end local p0    # "crossings":I
    :cond_0
    :goto_0
    return p0

    .line 419
    .restart local p0    # "crossings":I
    :cond_1
    cmpg-double v4, p11, p3

    if-gtz v4, :cond_2

    cmpg-double v4, p15, p3

    if-lez v4, :cond_0

    .line 421
    :cond_2
    cmpg-double v4, p9, p1

    if-gtz v4, :cond_3

    cmpg-double v4, p13, p1

    if-lez v4, :cond_0

    .line 423
    :cond_3
    cmpl-double v4, p9, p5

    if-ltz v4, :cond_7

    cmpl-double v4, p13, p5

    if-ltz v4, :cond_7

    .line 429
    cmpg-double v4, p11, p15

    if-gez v4, :cond_5

    .line 432
    cmpg-double v4, p11, p3

    if-gtz v4, :cond_4

    .line 433
    add-int/lit8 p0, p0, 0x1

    .line 434
    :cond_4
    cmpl-double v4, p15, p7

    if-ltz v4, :cond_0

    .line 435
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 436
    :cond_5
    cmpg-double v4, p15, p11

    if-gez v4, :cond_0

    .line 439
    cmpg-double v4, p15, p3

    if-gtz v4, :cond_6

    .line 440
    add-int/lit8 p0, p0, -0x1

    .line 441
    :cond_6
    cmpl-double v4, p11, p7

    if-ltz v4, :cond_0

    .line 442
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 450
    :cond_7
    cmpl-double v4, p9, p1

    if-lez v4, :cond_8

    cmpg-double v4, p9, p5

    if-gez v4, :cond_8

    cmpl-double v4, p11, p3

    if-lez v4, :cond_8

    cmpg-double v4, p11, p7

    if-ltz v4, :cond_9

    .line 451
    :cond_8
    cmpl-double v4, p13, p1

    if-lez v4, :cond_a

    cmpg-double v4, p13, p5

    if-gez v4, :cond_a

    cmpl-double v4, p15, p3

    if-lez v4, :cond_a

    cmpg-double v4, p15, p7

    if-gez v4, :cond_a

    .line 452
    :cond_9
    const/high16 p0, -0x80000000

    goto :goto_0

    .line 456
    :cond_a
    move-wide/from16 v0, p9

    .line 457
    .local v0, "xi0":D
    cmpg-double v4, p11, p3

    if-gez v4, :cond_f

    .line 458
    sub-double v4, p3, p11

    sub-double v6, p13, p9

    mul-double/2addr v4, v6

    sub-double v6, p15, p11

    div-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 462
    :cond_b
    :goto_1
    move-wide/from16 v2, p13

    .line 463
    .local v2, "xi1":D
    cmpg-double v4, p15, p3

    if-gez v4, :cond_10

    .line 464
    sub-double v4, p3, p15

    sub-double v6, p9, p13

    mul-double/2addr v4, v6

    sub-double v6, p11, p15

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 468
    :cond_c
    :goto_2
    cmpg-double v4, v0, p1

    if-gtz v4, :cond_d

    cmpg-double v4, v2, p1

    if-lez v4, :cond_0

    .line 470
    :cond_d
    cmpl-double v4, v0, p5

    if-ltz v4, :cond_13

    cmpl-double v4, v2, p5

    if-ltz v4, :cond_13

    .line 471
    cmpg-double v4, p11, p15

    if-gez v4, :cond_11

    .line 474
    cmpg-double v4, p11, p3

    if-gtz v4, :cond_e

    .line 475
    add-int/lit8 p0, p0, 0x1

    .line 476
    :cond_e
    cmpl-double v4, p15, p7

    if-ltz v4, :cond_0

    .line 477
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    .line 459
    .end local v2    # "xi1":D
    :cond_f
    cmpl-double v4, p11, p7

    if-lez v4, :cond_b

    .line 460
    sub-double v4, p7, p11

    sub-double v6, p13, p9

    mul-double/2addr v4, v6

    sub-double v6, p15, p11

    div-double/2addr v4, v6

    add-double/2addr v0, v4

    goto :goto_1

    .line 465
    .restart local v2    # "xi1":D
    :cond_10
    cmpl-double v4, p15, p7

    if-lez v4, :cond_c

    .line 466
    sub-double v4, p7, p15

    sub-double v6, p9, p13

    mul-double/2addr v4, v6

    sub-double v6, p11, p15

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    goto :goto_2

    .line 478
    :cond_11
    cmpg-double v4, p15, p11

    if-gez v4, :cond_0

    .line 481
    cmpg-double v4, p15, p3

    if-gtz v4, :cond_12

    .line 482
    add-int/lit8 p0, p0, -0x1

    .line 483
    :cond_12
    cmpl-double v4, p11, p7

    if-ltz v4, :cond_0

    .line 484
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_0

    .line 488
    :cond_13
    const/high16 p0, -0x80000000

    goto/16 :goto_0
.end method

.method public static rectCrossingsForPath(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;DDDD)I
    .locals 63
    .param p0, "pi"    # Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .param p1, "rxmin"    # D
    .param p3, "rymin"    # D
    .param p5, "rxmax"    # D
    .param p7, "rymax"    # D

    .prologue
    .line 333
    cmpg-double v3, p5, p1

    if-lez v3, :cond_0

    cmpg-double v3, p7, p3

    if-gtz v3, :cond_2

    .line 334
    :cond_0
    const/4 v2, 0x0

    .line 406
    :cond_1
    :goto_0
    return v2

    .line 336
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    const/4 v2, 0x0

    goto :goto_0

    .line 339
    :cond_3
    const/4 v3, 0x6

    new-array v0, v3, [D

    move-object/from16 v62, v0

    .line 340
    .local v62, "coords":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "missing initial moveto in path definition"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    .line 346
    const/4 v3, 0x0

    aget-wide v15, v62, v3

    .local v15, "movx":D
    move-wide v11, v15

    .line 347
    .local v11, "curx":D
    const/4 v3, 0x1

    aget-wide v17, v62, v3

    .local v17, "movy":D
    move-wide/from16 v13, v17

    .line 348
    .local v13, "cury":D
    const/4 v2, 0x0

    .line 349
    .local v2, "crossings":I
    :goto_1
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_5

    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 400
    :cond_5
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    cmpl-double v3, v11, v15

    if-nez v3, :cond_6

    cmpl-double v3, v13, v17

    if-eqz v3, :cond_1

    :cond_6
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 401
    invoke-static/range {v2 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v2

    goto :goto_0

    .line 350
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 398
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_1

    .line 352
    :pswitch_0
    cmpl-double v3, v11, v15

    if-nez v3, :cond_8

    cmpl-double v3, v13, v17

    if-eqz v3, :cond_9

    :cond_8
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 353
    invoke-static/range {v2 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v2

    .line 358
    :cond_9
    const/4 v3, 0x0

    aget-wide v11, v62, v3

    move-wide v15, v11

    .line 359
    const/4 v3, 0x1

    aget-wide v13, v62, v3

    move-wide/from16 v17, v13

    .line 360
    goto :goto_2

    .line 362
    :pswitch_1
    const/4 v3, 0x0

    aget-wide v32, v62, v3

    .line 363
    .local v32, "endx":D
    const/4 v3, 0x1

    aget-wide v34, v62, v3

    .local v34, "endy":D
    move/from16 v19, v2

    move-wide/from16 v20, p1

    move-wide/from16 v22, p3

    move-wide/from16 v24, p5

    move-wide/from16 v26, p7

    move-wide/from16 v28, v11

    move-wide/from16 v30, v13

    .line 364
    invoke-static/range {v19 .. v35}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v2

    .line 366
    move-wide/from16 v11, v32

    .line 367
    move-wide/from16 v13, v34

    .line 368
    goto :goto_2

    .line 370
    .end local v32    # "endx":D
    .end local v34    # "endy":D
    :pswitch_2
    const/4 v3, 0x2

    aget-wide v32, v62, v3

    .line 371
    .restart local v32    # "endx":D
    const/4 v3, 0x3

    aget-wide v34, v62, v3

    .line 373
    .restart local v34    # "endy":D
    const/4 v3, 0x0

    aget-wide v49, v62, v3

    const/4 v3, 0x1

    aget-wide v51, v62, v3

    .line 374
    const/16 v57, 0x0

    move/from16 v36, v2

    move-wide/from16 v37, p1

    move-wide/from16 v39, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p7

    move-wide/from16 v45, v11

    move-wide/from16 v47, v13

    move-wide/from16 v53, v32

    move-wide/from16 v55, v34

    .line 372
    invoke-static/range {v36 .. v57}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result v2

    .line 375
    move-wide/from16 v11, v32

    .line 376
    move-wide/from16 v13, v34

    .line 377
    goto :goto_2

    .line 379
    .end local v32    # "endx":D
    .end local v34    # "endy":D
    :pswitch_3
    const/4 v3, 0x4

    aget-wide v32, v62, v3

    .line 380
    .restart local v32    # "endx":D
    const/4 v3, 0x5

    aget-wide v34, v62, v3

    .line 382
    .restart local v34    # "endy":D
    const/4 v3, 0x0

    aget-wide v49, v62, v3

    const/4 v3, 0x1

    aget-wide v51, v62, v3

    .line 383
    const/4 v3, 0x2

    aget-wide v53, v62, v3

    const/4 v3, 0x3

    aget-wide v55, v62, v3

    const/16 v61, 0x0

    move/from16 v36, v2

    move-wide/from16 v37, p1

    move-wide/from16 v39, p3

    move-wide/from16 v41, p5

    move-wide/from16 v43, p7

    move-wide/from16 v45, v11

    move-wide/from16 v47, v13

    move-wide/from16 v57, v32

    move-wide/from16 v59, v34

    .line 381
    invoke-static/range {v36 .. v61}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForCubic(IDDDDDDDDDDDDI)I

    move-result v2

    .line 384
    move-wide/from16 v11, v32

    .line 385
    move-wide/from16 v13, v34

    .line 386
    goto/16 :goto_2

    .line 388
    .end local v32    # "endx":D
    .end local v34    # "endy":D
    :pswitch_4
    cmpl-double v3, v11, v15

    if-nez v3, :cond_a

    cmpl-double v3, v13, v17

    if-eqz v3, :cond_b

    :cond_a
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 389
    invoke-static/range {v2 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result v2

    .line 392
    :cond_b
    move-wide v11, v15

    .line 393
    move-wide/from16 v13, v17

    goto/16 :goto_2

    .line 350
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

.method public static rectCrossingsForQuad(IDDDDDDDDDDI)I
    .locals 40
    .param p0, "crossings"    # I
    .param p1, "rxmin"    # D
    .param p3, "rymin"    # D
    .param p5, "rxmax"    # D
    .param p7, "rymax"    # D
    .param p9, "x0"    # D
    .param p11, "y0"    # D
    .param p13, "xc"    # D
    .param p15, "yc"    # D
    .param p17, "x1"    # D
    .param p19, "y1"    # D
    .param p21, "level"    # I

    .prologue
    .line 499
    cmpl-double v1, p11, p7

    if-ltz v1, :cond_1

    cmpl-double v1, p15, p7

    if-ltz v1, :cond_1

    cmpl-double v1, p19, p7

    if-ltz v1, :cond_1

    .line 560
    .end local p0    # "crossings":I
    :cond_0
    :goto_0
    return p0

    .line 501
    .restart local p0    # "crossings":I
    :cond_1
    cmpg-double v1, p11, p3

    if-gtz v1, :cond_2

    cmpg-double v1, p15, p3

    if-gtz v1, :cond_2

    cmpg-double v1, p19, p3

    if-lez v1, :cond_0

    .line 503
    :cond_2
    cmpg-double v1, p9, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p13, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p17, p1

    if-lez v1, :cond_0

    .line 505
    :cond_3
    cmpl-double v1, p9, p5

    if-ltz v1, :cond_7

    cmpl-double v1, p13, p5

    if-ltz v1, :cond_7

    cmpl-double v1, p17, p5

    if-ltz v1, :cond_7

    .line 514
    cmpg-double v1, p11, p19

    if-gez v1, :cond_5

    .line 516
    cmpg-double v1, p11, p3

    if-gtz v1, :cond_4

    cmpl-double v1, p19, p3

    if-lez v1, :cond_4

    .line 517
    add-int/lit8 p0, p0, 0x1

    .line 518
    :cond_4
    cmpg-double v1, p11, p7

    if-gez v1, :cond_0

    cmpl-double v1, p19, p7

    if-ltz v1, :cond_0

    .line 519
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 520
    :cond_5
    cmpg-double v1, p19, p11

    if-gez v1, :cond_0

    .line 522
    cmpg-double v1, p19, p3

    if-gtz v1, :cond_6

    cmpl-double v1, p11, p3

    if-lez v1, :cond_6

    .line 523
    add-int/lit8 p0, p0, -0x1

    .line 524
    :cond_6
    cmpg-double v1, p19, p7

    if-gez v1, :cond_0

    cmpl-double v1, p11, p7

    if-ltz v1, :cond_0

    .line 525
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 532
    :cond_7
    cmpg-double v1, p9, p5

    if-gez v1, :cond_8

    cmpl-double v1, p9, p1

    if-lez v1, :cond_8

    cmpg-double v1, p11, p7

    if-gez v1, :cond_8

    cmpl-double v1, p11, p3

    if-gtz v1, :cond_9

    .line 533
    :cond_8
    cmpg-double v1, p17, p5

    if-gez v1, :cond_a

    cmpl-double v1, p17, p1

    if-lez v1, :cond_a

    cmpg-double v1, p19, p7

    if-gez v1, :cond_a

    cmpl-double v1, p19, p3

    if-lez v1, :cond_a

    .line 534
    :cond_9
    const/high16 p0, -0x80000000

    goto :goto_0

    .line 538
    :cond_a
    const/16 v1, 0x34

    move/from16 v0, p21

    if-le v0, v1, :cond_b

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p17

    move-wide/from16 v16, p19

    .line 539
    invoke-static/range {v1 .. v17}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForLine(IDDDDDDDD)I

    move-result p0

    goto/16 :goto_0

    .line 542
    :cond_b
    add-double v1, p9, p13

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v14, v1, v3

    .line 543
    .local v14, "x0c":D
    add-double v1, p11, p15

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v16, v1, v3

    .line 544
    .local v16, "y0c":D
    add-double v1, p13, p17

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v31, v1, v3

    .line 545
    .local v31, "xc1":D
    add-double v1, p15, p19

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v33, v1, v3

    .line 546
    .local v33, "yc1":D
    add-double v1, v14, v31

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p13, v1, v3

    .line 547
    add-double v1, v16, v33

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double p15, v1, v3

    .line 548
    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static/range {p15 .. p16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 552
    :cond_c
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 555
    :cond_d
    add-int/lit8 v22, p21, 0x1

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    .line 554
    invoke-static/range {v1 .. v22}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result p0

    .line 556
    const/high16 v1, -0x80000000

    move/from16 v0, p0

    if-eq v0, v1, :cond_0

    .line 558
    add-int/lit8 v39, p21, 0x1

    move/from16 v18, p0

    move-wide/from16 v19, p1

    move-wide/from16 v21, p3

    move-wide/from16 v23, p5

    move-wide/from16 v25, p7

    move-wide/from16 v27, p13

    move-wide/from16 v29, p15

    move-wide/from16 v35, p17

    move-wide/from16 v37, p19

    .line 557
    invoke-static/range {v18 .. v39}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->rectCrossingsForQuad(IDDDDDDDDDDI)I

    move-result p0

    goto/16 :goto_0
.end method

.method public static round(D)D
    .locals 0
    .param p0, "v"    # D

    .prologue
    .line 659
    return-wide p0
.end method

.method public static signeddiffbits(DD)J
    .locals 4
    .param p0, "y1"    # D
    .param p2, "y2"    # D

    .prologue
    .line 673
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract TforY(D)D
.end method

.method public abstract XforT(D)D
.end method

.method public abstract XforY(D)D
.end method

.method public abstract YforT(D)D
.end method

.method public accumulateCrossings(Lorg/loon/framework/android/game/core/graphics/geom/Crossings;)Z
    .locals 31
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/geom/Crossings;

    .prologue
    .line 747
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->getXHi()D

    move-result-wide v17

    .line 748
    .local v17, "xhi":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMin()D

    move-result-wide v29

    cmpl-double v3, v29, v17

    if-ltz v3, :cond_0

    .line 749
    const/4 v3, 0x0

    .line 800
    :goto_0
    return v3

    .line 751
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->getXLo()D

    move-result-wide v19

    .line 752
    .local v19, "xlo":D
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->getYLo()D

    move-result-wide v27

    .line 753
    .local v27, "ylo":D
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->getYHi()D

    move-result-wide v25

    .line 754
    .local v25, "yhi":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v21

    .line 755
    .local v21, "y0":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v23

    .line 757
    .local v23, "y1":D
    cmpg-double v3, v21, v27

    if-gez v3, :cond_3

    .line 758
    cmpg-double v3, v23, v27

    if-gtz v3, :cond_1

    .line 759
    const/4 v3, 0x0

    goto :goto_0

    .line 761
    :cond_1
    move-wide/from16 v4, v27

    .line 762
    .local v4, "ystart":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v13

    .line 770
    .local v13, "tstart":D
    :goto_1
    cmpl-double v3, v23, v25

    if-lez v3, :cond_5

    .line 771
    move-wide/from16 v6, v25

    .line 772
    .local v6, "yend":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v11

    .line 777
    .local v11, "tend":D
    :goto_2
    const/4 v10, 0x0

    .line 778
    .local v10, "hitLo":Z
    const/4 v9, 0x0

    .line 780
    .local v9, "hitHi":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v15

    .line 781
    .local v15, "x":D
    cmpg-double v3, v15, v17

    if-gez v3, :cond_8

    .line 782
    if-nez v9, :cond_2

    cmpl-double v3, v15, v19

    if-lez v3, :cond_6

    .line 783
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 764
    .end local v4    # "ystart":D
    .end local v6    # "yend":D
    .end local v9    # "hitHi":Z
    .end local v10    # "hitLo":Z
    .end local v11    # "tend":D
    .end local v13    # "tstart":D
    .end local v15    # "x":D
    :cond_3
    cmpl-double v3, v21, v25

    if-ltz v3, :cond_4

    .line 765
    const/4 v3, 0x0

    goto :goto_0

    .line 767
    :cond_4
    move-wide/from16 v4, v21

    .line 768
    .restart local v4    # "ystart":D
    const-wide/16 v13, 0x0

    .restart local v13    # "tstart":D
    goto :goto_1

    .line 774
    :cond_5
    move-wide/from16 v6, v23

    .line 775
    .restart local v6    # "yend":D
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .restart local v11    # "tend":D
    goto :goto_2

    .line 785
    .restart local v9    # "hitHi":Z
    .restart local v10    # "hitLo":Z
    .restart local v15    # "x":D
    :cond_6
    const/4 v10, 0x1

    .line 792
    :goto_4
    cmpl-double v3, v13, v11

    if-ltz v3, :cond_a

    .line 797
    if-eqz v10, :cond_7

    .line 798
    move-object/from16 v0, p0

    iget v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    .line 800
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 787
    :cond_8
    if-eqz v10, :cond_9

    .line 788
    const/4 v3, 0x1

    goto :goto_0

    .line 790
    :cond_9
    const/4 v9, 0x1

    goto :goto_4

    .line 795
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->nextVertical(DD)D

    move-result-wide v13

    .line 779
    goto :goto_3
.end method

.method public compareTo(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[D)I
    .locals 69
    .param p1, "that"    # Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .param p2, "yrange"    # [D

    .prologue
    .line 818
    const/4 v5, 0x0

    aget-wide v10, p2, v5

    .line 819
    .local v10, "y0":D
    const/4 v5, 0x1

    aget-wide v65, p2, v5

    .line 820
    .local v65, "y1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v23

    move-wide/from16 v0, v65

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v28

    move-wide/from16 v0, v23

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v65

    .line 821
    const/4 v5, 0x0

    aget-wide v23, p2, v5

    cmpg-double v5, v65, v23

    if-gtz v5, :cond_0

    .line 822
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "this == "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 823
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "that == "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 824
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 825
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "target range = "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aget-wide v23, p2, v15

    move-wide/from16 v0, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "=>"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v15, 0x1

    aget-wide v23, p2, v15

    move-wide/from16 v0, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 826
    new-instance v5, Ljava/lang/InternalError;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "backstepping from "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aget-wide v23, p2, v15

    move-wide/from16 v0, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " to "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 827
    move-wide/from16 v0, v65

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 826
    invoke-direct {v5, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 829
    :cond_0
    const/4 v5, 0x1

    aput-wide v65, p2, v5

    .line 830
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMax()D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMin()D

    move-result-wide v28

    cmpg-double v5, v23, v28

    if-gtz v5, :cond_2

    .line 831
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMin()D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMax()D

    move-result-wide v28

    cmpl-double v5, v23, v28

    if-nez v5, :cond_1

    .line 832
    const/4 v5, 0x0

    .line 973
    :goto_0
    return v5

    .line 834
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 836
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMin()D

    move-result-wide v23

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMax()D

    move-result-wide v28

    cmpl-double v5, v23, v28

    if-ltz v5, :cond_3

    .line 837
    const/4 v5, 0x1

    goto :goto_0

    .line 845
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v6

    .line 846
    .local v6, "s0":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v8

    .line 847
    .local v8, "ys0":D
    cmpg-double v5, v8, v10

    if-gez v5, :cond_4

    move-object/from16 v5, p0

    .line 848
    invoke-virtual/range {v5 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->refineTforY(DDD)D

    move-result-wide v6

    .line 849
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v8

    .line 851
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v65

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v13

    .line 852
    .local v13, "s1":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v23

    cmpg-double v5, v23, v10

    if-gez v5, :cond_5

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v15

    move-object/from16 v12, p0

    move-wide/from16 v17, v10

    invoke-virtual/range {v12 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->refineTforY(DDD)D

    move-result-wide v13

    .line 856
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v16

    .line 857
    .local v16, "t0":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v18

    .line 858
    .local v18, "yt0":D
    cmpg-double v5, v18, v10

    if-gez v5, :cond_6

    move-object/from16 v15, p1

    move-wide/from16 v20, v10

    .line 859
    invoke-virtual/range {v15 .. v21}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->refineTforY(DDD)D

    move-result-wide v16

    .line 860
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v18

    .line 862
    :cond_6
    move-object/from16 v0, p1

    move-wide/from16 v1, v65

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->TforY(D)D

    move-result-wide v21

    .line 863
    .local v21, "t1":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v23

    cmpg-double v5, v23, v10

    if-gez v5, :cond_7

    .line 864
    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v23

    move-object/from16 v20, p1

    move-wide/from16 v25, v10

    invoke-virtual/range {v20 .. v26}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->refineTforY(DDD)D

    move-result-wide v21

    .line 867
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v32

    .line 868
    .local v32, "xs0":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v44

    .line 869
    .local v44, "xt0":D
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    move-wide/from16 v0, v23

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    .line 870
    .local v60, "scale":D
    const-wide v23, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double v23, v23, v60

    const-wide v28, 0x1a56e1fc2f8f359L    # 1.0E-300

    move-wide/from16 v0, v23

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    .line 871
    .local v26, "ymin":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->fairlyClose(DD)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 872
    move-wide/from16 v54, v26

    .line 873
    .local v54, "bump":D
    const-wide v23, 0x42a2309ce5400000L    # 1.0E13

    mul-double v23, v23, v26

    sub-double v28, v65, v10

    const-wide v30, 0x3fb999999999999aL    # 0.1

    mul-double v28, v28, v30

    move-wide/from16 v0, v23

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v56

    .line 874
    .local v56, "maxbump":D
    add-double v63, v10, v54

    .line 875
    .local v63, "y":D
    :goto_1
    cmpg-double v5, v63, v65

    if-lez v5, :cond_a

    .line 896
    :cond_8
    cmpl-double v5, v63, v10

    if-lez v5, :cond_e

    .line 897
    cmpg-double v5, v63, v65

    if-gez v5, :cond_9

    .line 898
    const/4 v5, 0x1

    aput-wide v63, p2, v5

    .line 900
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 876
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v63

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v23

    move-object/from16 v0, p1

    move-wide/from16 v1, v63

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->fairlyClose(DD)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 877
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v54, v54, v23

    cmpl-double v5, v54, v56

    if-lez v5, :cond_b

    .line 878
    move-wide/from16 v54, v56

    .line 894
    :cond_b
    add-double v63, v63, v54

    goto :goto_1

    .line 881
    :cond_c
    sub-double v63, v63, v54

    .line 883
    :cond_d
    :goto_2
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v54, v54, v23

    .line 884
    add-double v58, v63, v54

    .line 885
    .local v58, "newy":D
    cmpg-double v5, v58, v63

    if-lez v5, :cond_8

    .line 888
    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v23

    move-object/from16 v0, p1

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->fairlyClose(DD)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 889
    move-wide/from16 v63, v58

    .line 882
    goto :goto_2

    .line 904
    .end local v54    # "bump":D
    .end local v56    # "maxbump":D
    .end local v58    # "newy":D
    .end local v63    # "y":D
    :cond_e
    const-wide/16 v23, 0x0

    cmpg-double v5, v26, v23

    if-gtz v5, :cond_f

    .line 905
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "ymin = "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 911
    :cond_f
    :goto_3
    cmpg-double v5, v6, v13

    if-gez v5, :cond_10

    cmpg-double v5, v16, v21

    if-ltz v5, :cond_11

    .line 957
    :cond_10
    :goto_4
    const/4 v5, 0x0

    aget-wide v23, p2, v5

    const/4 v5, 0x1

    aget-wide v28, p2, v5

    add-double v23, v23, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v67, v23, v28

    .line 973
    .local v67, "ymid":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v23

    move-object/from16 v0, p1

    move-wide/from16 v1, v67

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v28

    move-wide/from16 v0, v23

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->orderof(DD)I

    move-result v5

    goto/16 :goto_0

    .line 912
    .end local v67    # "ymid":D
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v13, v14}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->nextVertical(DD)D

    move-result-wide v36

    .line 913
    .local v36, "sh":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v38

    .line 914
    .local v38, "xsh":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v40

    .line 915
    .local v40, "ysh":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->nextVertical(DD)D

    move-result-wide v48

    .line 916
    .local v48, "th":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v50

    .line 917
    .local v50, "xth":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v52

    .line 922
    .local v52, "yth":D
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move-wide/from16 v30, v6

    move-wide/from16 v34, v8

    move-wide/from16 v42, v16

    move-wide/from16 v46, v18

    :try_start_0
    invoke-virtual/range {v23 .. v53}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_10

    .line 935
    cmpg-double v5, v40, v52

    if-gez v5, :cond_13

    .line 936
    const/4 v5, 0x0

    aget-wide v23, p2, v5

    cmpl-double v5, v40, v23

    if-lez v5, :cond_12

    .line 937
    const/4 v5, 0x1

    aget-wide v23, p2, v5

    cmpg-double v5, v40, v23

    if-gez v5, :cond_10

    .line 938
    const/4 v5, 0x1

    aput-wide v40, p2, v5

    goto/16 :goto_4

    .line 926
    :catch_0
    move-exception v62

    .line 927
    .local v62, "t":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Error: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v62

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 928
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "y range was "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aget-wide v23, p2, v15

    move-wide/from16 v0, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "=>"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 929
    const/4 v15, 0x1

    aget-wide v23, p2, v15

    move-wide/from16 v0, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 928
    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "s y range is "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "=>"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v40

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 931
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "t y range is "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "=>"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v52

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "ymin is "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 942
    .end local v62    # "t":Ljava/lang/Throwable;
    :cond_12
    move-wide/from16 v6, v36

    .line 943
    move-wide/from16 v32, v38

    .line 944
    move-wide/from16 v8, v40

    goto/16 :goto_3

    .line 946
    :cond_13
    const/4 v5, 0x0

    aget-wide v23, p2, v5

    cmpl-double v5, v52, v23

    if-lez v5, :cond_14

    .line 947
    const/4 v5, 0x1

    aget-wide v23, p2, v5

    cmpg-double v5, v52, v23

    if-gez v5, :cond_10

    .line 948
    const/4 v5, 0x1

    aput-wide v52, p2, v5

    goto/16 :goto_4

    .line 952
    :cond_14
    move-wide/from16 v16, v48

    .line 953
    move-wide/from16 v44, v50

    .line 954
    move-wide/from16 v18, v52

    goto/16 :goto_3
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    const-string v0, ""

    return-object v0
.end method

.method public crossingsFor(DD)I
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 738
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_1

    .line 739
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMax()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXMin()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforY(D)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 740
    :cond_0
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract dXforT(DI)D
.end method

.method public abstract dYforT(DI)D
.end method

.method public abstract enlarge(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V
.end method

.method public fairlyClose(DD)Z
    .locals 6
    .param p1, "v1"    # D
    .param p3, "v2"    # D

    .prologue
    .line 1135
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z
    .locals 84
    .param p1, "that"    # Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .param p2, "yrange"    # [D
    .param p3, "ymin"    # D
    .param p5, "slevel"    # I
    .param p6, "tlevel"    # I
    .param p7, "s0"    # D
    .param p9, "xs0"    # D
    .param p11, "ys0"    # D
    .param p13, "s1"    # D
    .param p15, "xs1"    # D
    .param p17, "ys1"    # D
    .param p19, "t0"    # D
    .param p21, "xt0"    # D
    .param p23, "yt0"    # D
    .param p25, "t1"    # D
    .param p27, "xt1"    # D
    .param p29, "yt1"    # D

    .prologue
    .line 992
    cmpl-double v4, p11, p29

    if-gtz v4, :cond_0

    cmpl-double v4, p23, p17

    if-lez v4, :cond_1

    .line 993
    :cond_0
    const/4 v4, 0x0

    .line 1112
    :goto_0
    return v4

    .line 995
    :cond_1
    move-wide/from16 v0, p9

    move-wide/from16 v2, p15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v0, p21

    move-wide/from16 v2, p27

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2

    .line 996
    move-wide/from16 v0, p9

    move-wide/from16 v2, p15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide/from16 v0, p21

    move-wide/from16 v2, p27

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 997
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1003
    :cond_3
    sub-double v4, p13, p7

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_d

    .line 1004
    add-double v4, p7, p13

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v17, v4, v6

    .line 1005
    .local v17, "s":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v19

    .line 1006
    .local v19, "xs":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v21

    .line 1007
    .local v21, "ys":D
    cmpl-double v4, v17, p7

    if-eqz v4, :cond_4

    cmpl-double v4, v17, p13

    if-nez v4, :cond_5

    .line 1008
    :cond_4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "s0 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "s1 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p13

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "no s progress!"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1012
    :cond_5
    sub-double v4, p25, p19

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b

    .line 1013
    add-double v4, p19, p25

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v29, v4, v6

    .line 1014
    .local v29, "t":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v31

    .line 1015
    .local v31, "xt":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v33

    .line 1016
    .local v33, "yt":D
    cmpl-double v4, v29, p19

    if-eqz v4, :cond_6

    cmpl-double v4, v29, p25

    if-nez v4, :cond_7

    .line 1017
    :cond_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t0 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t1 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "no t progress!"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1021
    :cond_7
    cmpl-double v4, v21, p23

    if-ltz v4, :cond_8

    cmpl-double v4, v33, p11

    if-ltz v4, :cond_8

    .line 1022
    add-int/lit8 v9, p5, 0x1

    .line 1023
    add-int/lit8 v10, p6, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move-wide/from16 v23, p19

    move-wide/from16 v25, p21

    move-wide/from16 v27, p23

    .line 1022
    invoke-virtual/range {v4 .. v34}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1025
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1028
    :cond_8
    cmpl-double v4, v21, v33

    if-ltz v4, :cond_9

    .line 1029
    add-int/lit8 v40, p5, 0x1

    .line 1030
    add-int/lit8 v41, p6, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move-wide/from16 v42, p7

    move-wide/from16 v44, p9

    move-wide/from16 v46, p11

    move-wide/from16 v48, v17

    move-wide/from16 v50, v19

    move-wide/from16 v52, v21

    move-wide/from16 v54, v29

    move-wide/from16 v56, v31

    move-wide/from16 v58, v33

    move-wide/from16 v60, p25

    move-wide/from16 v62, p27

    move-wide/from16 v64, p29

    .line 1029
    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1032
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1035
    :cond_9
    cmpl-double v4, v33, v21

    if-ltz v4, :cond_a

    .line 1036
    add-int/lit8 v40, p5, 0x1

    .line 1037
    add-int/lit8 v41, p6, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move-wide/from16 v42, v17

    move-wide/from16 v44, v19

    move-wide/from16 v46, v21

    move-wide/from16 v48, p13

    move-wide/from16 v50, p15

    move-wide/from16 v52, p17

    move-wide/from16 v54, p19

    move-wide/from16 v56, p21

    move-wide/from16 v58, p23

    move-wide/from16 v60, v29

    move-wide/from16 v62, v31

    move-wide/from16 v64, v33

    .line 1036
    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1039
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1042
    :cond_a
    cmpl-double v4, p17, v33

    if-ltz v4, :cond_14

    cmpl-double v4, p29, v21

    if-ltz v4, :cond_14

    .line 1043
    add-int/lit8 v15, p5, 0x1

    .line 1044
    add-int/lit8 v16, p6, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p3

    move-wide/from16 v23, p13

    move-wide/from16 v25, p15

    move-wide/from16 v27, p17

    move-wide/from16 v35, p25

    move-wide/from16 v37, p27

    move-wide/from16 v39, p29

    .line 1043
    invoke-virtual/range {v10 .. v40}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1046
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1050
    .end local v29    # "t":D
    .end local v31    # "xt":D
    .end local v33    # "yt":D
    :cond_b
    cmpl-double v4, v21, p23

    if-ltz v4, :cond_c

    .line 1051
    add-int/lit8 v40, p5, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move/from16 v41, p6

    move-wide/from16 v42, p7

    move-wide/from16 v44, p9

    move-wide/from16 v46, p11

    move-wide/from16 v48, v17

    move-wide/from16 v50, v19

    move-wide/from16 v52, v21

    move-wide/from16 v54, p19

    move-wide/from16 v56, p21

    move-wide/from16 v58, p23

    move-wide/from16 v60, p25

    move-wide/from16 v62, p27

    move-wide/from16 v64, p29

    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1053
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1056
    :cond_c
    cmpl-double v4, p29, v21

    if-ltz v4, :cond_14

    .line 1057
    add-int/lit8 v40, p5, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move/from16 v41, p6

    move-wide/from16 v42, v17

    move-wide/from16 v44, v19

    move-wide/from16 v46, v21

    move-wide/from16 v48, p13

    move-wide/from16 v50, p15

    move-wide/from16 v52, p17

    move-wide/from16 v54, p19

    move-wide/from16 v56, p21

    move-wide/from16 v58, p23

    move-wide/from16 v60, p25

    move-wide/from16 v62, p27

    move-wide/from16 v64, p29

    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1059
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1063
    .end local v17    # "s":D
    .end local v19    # "xs":D
    .end local v21    # "ys":D
    :cond_d
    sub-double v4, p25, p19

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_11

    .line 1064
    add-double v4, p19, p25

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v29, v4, v6

    .line 1065
    .restart local v29    # "t":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->XforT(D)D

    move-result-wide v31

    .line 1066
    .restart local v31    # "xt":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v33

    .line 1067
    .restart local v33    # "yt":D
    cmpl-double v4, v29, p19

    if-eqz v4, :cond_e

    cmpl-double v4, v29, p25

    if-nez v4, :cond_f

    .line 1068
    :cond_e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t0 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1069
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "t1 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "no t progress!"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1072
    :cond_f
    cmpl-double v4, v33, p11

    if-ltz v4, :cond_10

    .line 1073
    add-int/lit8 v41, p6, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move/from16 v40, p5

    move-wide/from16 v42, p7

    move-wide/from16 v44, p9

    move-wide/from16 v46, p11

    move-wide/from16 v48, p13

    move-wide/from16 v50, p15

    move-wide/from16 v52, p17

    move-wide/from16 v54, p19

    move-wide/from16 v56, p21

    move-wide/from16 v58, p23

    move-wide/from16 v60, v29

    move-wide/from16 v62, v31

    move-wide/from16 v64, v33

    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1075
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1078
    :cond_10
    cmpl-double v4, p17, v33

    if-ltz v4, :cond_14

    .line 1079
    add-int/lit8 v41, p6, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, p2

    move-wide/from16 v38, p3

    move/from16 v40, p5

    move-wide/from16 v42, p7

    move-wide/from16 v44, p9

    move-wide/from16 v46, p11

    move-wide/from16 v48, p13

    move-wide/from16 v50, p15

    move-wide/from16 v52, p17

    move-wide/from16 v54, v29

    move-wide/from16 v56, v31

    move-wide/from16 v58, v33

    move-wide/from16 v60, p25

    move-wide/from16 v62, p27

    move-wide/from16 v64, p29

    invoke-virtual/range {v35 .. v65}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->findIntersect(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[DDIIDDDDDDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1081
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1086
    .end local v29    # "t":D
    .end local v31    # "xt":D
    .end local v33    # "yt":D
    :cond_11
    sub-double v70, p15, p9

    .line 1087
    .local v70, "xlk":D
    sub-double v78, p17, p11

    .line 1088
    .local v78, "ylk":D
    sub-double v74, p27, p21

    .line 1089
    .local v74, "xnm":D
    sub-double v82, p29, p23

    .line 1090
    .local v82, "ynm":D
    sub-double v72, p21, p9

    .line 1091
    .local v72, "xmk":D
    sub-double v80, p23, p11

    .line 1092
    .local v80, "ymk":D
    mul-double v4, v74, v78

    mul-double v6, v82, v70

    sub-double v66, v4, v6

    .line 1093
    .local v66, "det":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v66, v4

    if-eqz v4, :cond_14

    .line 1094
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v68, v4, v66

    .line 1095
    .local v68, "detinv":D
    mul-double v4, v74, v80

    mul-double v6, v82, v72

    sub-double/2addr v4, v6

    mul-double v17, v4, v68

    .line 1096
    .restart local v17    # "s":D
    mul-double v4, v70, v80

    mul-double v6, v78, v72

    sub-double/2addr v4, v6

    mul-double v29, v4, v68

    .line 1097
    .restart local v29    # "t":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v17, v4

    if-ltz v4, :cond_14

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v17, v4

    if-gtz v4, :cond_14

    const-wide/16 v4, 0x0

    cmpl-double v4, v29, v4

    if-ltz v4, :cond_14

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v29, v4

    if-gtz v4, :cond_14

    .line 1098
    sub-double v4, p13, p7

    mul-double v4, v4, v17

    add-double v17, p7, v4

    .line 1099
    sub-double v4, p25, p19

    mul-double v4, v4, v29

    add-double v29, p19, v4

    .line 1100
    const-wide/16 v4, 0x0

    cmpg-double v4, v17, v4

    if-ltz v4, :cond_12

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v17, v4

    if-gtz v4, :cond_12

    const-wide/16 v4, 0x0

    cmpg-double v4, v29, v4

    if-ltz v4, :cond_12

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v29, v4

    if-lez v4, :cond_13

    .line 1101
    :cond_12
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Uh oh!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    :cond_13
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v4

    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v76, v4, v6

    .line 1104
    .local v76, "y":D
    const/4 v4, 0x1

    aget-wide v4, p2, v4

    cmpg-double v4, v76, v4

    if-gtz v4, :cond_14

    const/4 v4, 0x0

    aget-wide v4, p2, v4

    cmpl-double v4, v76, v4

    if-lez v4, :cond_14

    .line 1105
    const/4 v4, 0x1

    aput-wide v76, p2, v4

    .line 1106
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v17    # "s":D
    .end local v29    # "t":D
    .end local v66    # "det":D
    .end local v68    # "detinv":D
    .end local v70    # "xlk":D
    .end local v72    # "xmk":D
    .end local v74    # "xnm":D
    .end local v76    # "y":D
    .end local v78    # "ylk":D
    .end local v80    # "ymk":D
    .end local v82    # "ynm":D
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public final getDirection()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    return v0
.end method

.method public abstract getOrder()I
.end method

.method public abstract getReversedCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;
.end method

.method public abstract getSegment([D)I
.end method

.method public getSubCurve(DD)Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 6
    .param p1, "ystart"    # D
    .param p3, "yend"    # D

    .prologue
    .line 806
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getSubCurve(DDI)Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSubCurve(DDI)Lorg/loon/framework/android/game/core/graphics/geom/Curve;
.end method

.method public final getWithDirection(I)Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 654
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getReversedCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract getX0()D
.end method

.method public abstract getX1()D
.end method

.method public abstract getXBot()D
.end method

.method public abstract getXMax()D
.end method

.method public abstract getXMin()D
.end method

.method public abstract getXTop()D
.end method

.method public abstract getY0()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getYBot()D
.end method

.method public abstract getYTop()D
.end method

.method public abstract nextVertical(DD)D
.end method

.method public refineTforY(DDD)D
    .locals 10
    .param p1, "t0"    # D
    .param p3, "yt0"    # D
    .param p5, "y0"    # D

    .prologue
    .line 1116
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1118
    .local v0, "t1":D
    :goto_0
    add-double v6, p1, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v2, v6, v8

    .line 1119
    .local v2, "th":D
    cmpl-double v6, v2, p1

    if-eqz v6, :cond_0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_1

    .line 1129
    :cond_0
    return-wide v0

    .line 1122
    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->YforT(D)D

    move-result-wide v4

    .line 1123
    .local v4, "y":D
    cmpg-double v6, v4, p5

    if-gez v6, :cond_2

    .line 1124
    move-wide p1, v2

    .line 1125
    move-wide p3, v4

    goto :goto_0

    .line 1126
    :cond_2
    cmpl-double v6, v4, p5

    if-lez v6, :cond_0

    .line 1127
    move-wide v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Curve["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 691
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX0()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY0()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 692
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->controlPointString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 693
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 694
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->direction:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "D"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 694
    :cond_0
    const-string v0, "U"

    goto :goto_0
.end method
