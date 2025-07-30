.class final Lorg/loon/framework/android/game/core/graphics/geom/Order2;
.super Lorg/loon/framework/android/game/core/graphics/geom/Curve;
.source "Order2.java"


# instance fields
.field private cx0:D

.field private cy0:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D


# direct methods
.method public constructor <init>(DDDDDDI)V
    .locals 2
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "cx0"    # D
    .param p7, "cy0"    # D
    .param p9, "x1"    # D
    .param p11, "y1"    # D
    .param p13, "direction"    # I

    .prologue
    .line 149
    invoke-direct {p0, p13}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;-><init>(I)V

    .line 153
    cmpg-double v0, p7, p3

    if-gez v0, :cond_1

    .line 154
    move-wide p7, p3

    .line 158
    :cond_0
    :goto_0
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    .line 159
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    .line 160
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    .line 161
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    .line 162
    iput-wide p9, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    .line 163
    iput-wide p11, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    .line 164
    invoke-static {p1, p2, p9, p10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xmin:D

    .line 165
    invoke-static {p1, p2, p9, p10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xmax:D

    .line 166
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff0:D

    .line 167
    add-double v0, p5, p5

    sub-double/2addr v0, p1

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    .line 168
    sub-double v0, p1, p5

    sub-double/2addr v0, p5

    add-double/2addr v0, p9

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    .line 169
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    .line 170
    add-double v0, p7, p7

    sub-double/2addr v0, p3

    sub-double/2addr v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    .line 171
    sub-double v0, p3, p7

    sub-double/2addr v0, p7

    add-double/2addr v0, p11

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    .line 172
    return-void

    .line 155
    :cond_1
    cmpl-double v0, p7, p11

    if-lez v0, :cond_0

    .line 156
    move-wide p7, p11

    goto :goto_0
.end method

.method public static TforY(DDDD)D
    .locals 18
    .param p0, "y"    # D
    .param p2, "ycoeff0"    # D
    .param p4, "ycoeff1"    # D
    .param p6, "ycoeff2"    # D

    .prologue
    .line 250
    sub-double p2, p2, p0

    .line 251
    const-wide/16 v12, 0x0

    cmpl-double v12, p6, v12

    if-nez v12, :cond_1

    .line 257
    move-wide/from16 v0, p2

    neg-double v12, v0

    div-double v6, v12, p4

    .line 258
    .local v6, "root":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-ltz v12, :cond_4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v6, v12

    if-gtz v12, :cond_4

    .line 323
    .end local v6    # "root":D
    :cond_0
    :goto_0
    return-wide v6

    .line 263
    :cond_1
    mul-double v12, p4, p4

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double v14, v14, p6

    mul-double v14, v14, p2

    sub-double v2, v12, v14

    .line 265
    .local v2, "d":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_4

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 273
    const-wide/16 v12, 0x0

    cmpg-double v12, p4, v12

    if-gez v12, :cond_2

    .line 274
    neg-double v2, v2

    .line 276
    :cond_2
    add-double v12, p4, v2

    const-wide/high16 v14, -0x4000000000000000L    # -2.0

    div-double v4, v12, v14

    .line 278
    .local v4, "q":D
    div-double v6, v4, p6

    .line 279
    .restart local v6    # "root":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-ltz v12, :cond_3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v6, v12

    if-lez v12, :cond_0

    .line 282
    :cond_3
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-eqz v12, :cond_4

    .line 283
    div-double v6, p2, v4

    .line 284
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-ltz v12, :cond_4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v6, v12

    if-lez v12, :cond_0

    .line 321
    .end local v2    # "d":D
    .end local v4    # "q":D
    .end local v6    # "root":D
    :cond_4
    move-wide/from16 v8, p2

    .line 322
    .local v8, "y0":D
    add-double v12, p2, p4

    add-double v10, v12, p6

    .line 323
    .local v10, "y1":D
    const-wide/16 v12, 0x0

    add-double v14, v8, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    const-wide/16 v12, 0x0

    :goto_1
    move-wide v6, v12

    goto :goto_0

    :cond_5
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDI)V
    .locals 15
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "cx0"    # D
    .param p7, "cy0"    # D
    .param p9, "x1"    # D
    .param p11, "y1"    # D
    .param p13, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;DDDDDDI)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    cmpl-double v1, p3, p11

    if-lez v1, :cond_1

    .line 77
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Order2;

    move/from16 v0, p13

    neg-int v14, v0

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v1 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    cmpl-double v1, p11, p3

    if-lez v1, :cond_0

    .line 79
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Order2;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;-><init>(DDDDDDI)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getHorizontalParams(DDD[D)I
    .locals 8
    .param p0, "c0"    # D
    .param p2, "cp"    # D
    .param p4, "c1"    # D
    .param p6, "ret"    # [D

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 100
    cmpg-double v5, p0, p2

    if-gtz v5, :cond_1

    cmpg-double v5, p2, p4

    if-gtz v5, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 103
    :cond_1
    sub-double/2addr p0, p2

    .line 104
    sub-double/2addr p4, p2

    .line 105
    add-double v0, p0, p4

    .line 107
    .local v0, "denom":D
    cmpl-double v5, v0, v6

    if-eqz v5, :cond_0

    .line 110
    div-double v2, p0, v0

    .line 112
    .local v2, "t":D
    cmpg-double v5, v2, v6

    if-lez v5, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v2, v5

    if-gez v5, :cond_0

    .line 115
    aput-wide v2, p6, v4

    .line 116
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDI)V
    .locals 22
    .param p1, "tmp"    # [D
    .param p2, "x0"    # D
    .param p4, "y0"    # D
    .param p6, "cx0"    # D
    .param p8, "cy0"    # D
    .param p10, "x1"    # D
    .param p12, "y1"    # D
    .param p14, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;[DDDDDDDI)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    move-wide/from16 v3, p4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->getHorizontalParams(DDD[D)I

    move-result v19

    .line 51
    .local v19, "numparams":I
    if-nez v19, :cond_0

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move/from16 v16, p14

    .line 54
    invoke-static/range {v3 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    .line 72
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v3, 0x0

    aget-wide v20, p1, v3

    .line 59
    .local v20, "t":D
    const/4 v3, 0x0

    aput-wide p2, p1, v3

    .line 60
    const/4 v3, 0x1

    aput-wide p4, p1, v3

    .line 61
    const/4 v3, 0x2

    aput-wide p6, p1, v3

    .line 62
    const/4 v3, 0x3

    aput-wide p8, p1, v3

    .line 63
    const/4 v3, 0x4

    aput-wide p10, p1, v3

    .line 64
    const/4 v3, 0x5

    aput-wide p12, p1, v3

    .line 65
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->split([DID)V

    .line 66
    const/4 v3, 0x1

    move/from16 v0, p14

    if-ne v0, v3, :cond_1

    const/16 v17, 0x0

    .line 67
    .local v17, "i0":I
    :goto_1
    rsub-int/lit8 v18, v17, 0x4

    .line 68
    .local v18, "i1":I
    aget-wide v4, p1, v17

    add-int/lit8 v3, v17, 0x1

    aget-wide v6, p1, v3

    add-int/lit8 v3, v17, 0x2

    aget-wide v8, p1, v3

    add-int/lit8 v3, v17, 0x3

    aget-wide v10, p1, v3

    .line 69
    add-int/lit8 v3, v17, 0x4

    aget-wide v12, p1, v3

    add-int/lit8 v3, v17, 0x5

    aget-wide v14, p1, v3

    move-object/from16 v3, p0

    move/from16 v16, p14

    .line 68
    invoke-static/range {v3 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    .line 70
    aget-wide v4, p1, v18

    add-int/lit8 v3, v18, 0x1

    aget-wide v6, p1, v3

    add-int/lit8 v3, v18, 0x2

    aget-wide v8, p1, v3

    add-int/lit8 v3, v18, 0x3

    aget-wide v10, p1, v3

    .line 71
    add-int/lit8 v3, v18, 0x4

    aget-wide v12, p1, v3

    add-int/lit8 v3, v18, 0x5

    aget-wide v14, p1, v3

    move-object/from16 v3, p0

    move/from16 v16, p14

    .line 70
    invoke-static/range {v3 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->addInstance(Ljava/util/Vector;DDDDDDI)V

    goto :goto_0

    .line 66
    .end local v17    # "i0":I
    .end local v18    # "i1":I
    :cond_1
    const/16 v17, 0x4

    goto :goto_1
.end method

.method public static split([DID)V
    .locals 14
    .param p0, "coords"    # [D
    .param p1, "pos"    # I
    .param p2, "t"    # D

    .prologue
    .line 127
    add-int/lit8 v12, p1, 0x8

    add-int/lit8 v13, p1, 0x4

    aget-wide v6, p0, v13

    .local v6, "x1":D
    aput-wide v6, p0, v12

    .line 128
    add-int/lit8 v12, p1, 0x9

    add-int/lit8 v13, p1, 0x5

    aget-wide v10, p0, v13

    .local v10, "y1":D
    aput-wide v10, p0, v12

    .line 129
    add-int/lit8 v12, p1, 0x2

    aget-wide v0, p0, v12

    .line 130
    .local v0, "cx":D
    add-int/lit8 v12, p1, 0x3

    aget-wide v2, p0, v12

    .line 131
    .local v2, "cy":D
    sub-double v12, v6, v0

    mul-double v12, v12, p2

    add-double v6, v0, v12

    .line 132
    sub-double v12, v10, v2

    mul-double v12, v12, p2

    add-double v10, v2, v12

    .line 133
    add-int/lit8 v12, p1, 0x0

    aget-wide v4, p0, v12

    .line 134
    .local v4, "x0":D
    add-int/lit8 v12, p1, 0x1

    aget-wide v8, p0, v12

    .line 135
    .local v8, "y0":D
    sub-double v12, v0, v4

    mul-double v12, v12, p2

    add-double/2addr v4, v12

    .line 136
    sub-double v12, v2, v8

    mul-double v12, v12, p2

    add-double/2addr v8, v12

    .line 137
    sub-double v12, v6, v4

    mul-double v12, v12, p2

    add-double v0, v4, v12

    .line 138
    sub-double v12, v10, v8

    mul-double v12, v12, p2

    add-double v2, v8, v12

    .line 139
    add-int/lit8 v12, p1, 0x2

    aput-wide v4, p0, v12

    .line 140
    add-int/lit8 v12, p1, 0x3

    aput-wide v8, p0, v12

    .line 141
    add-int/lit8 v12, p1, 0x4

    aput-wide v0, p0, v12

    .line 142
    add-int/lit8 v12, p1, 0x5

    aput-wide v2, p0, v12

    .line 143
    add-int/lit8 v12, p1, 0x6

    aput-wide v6, p0, v12

    .line 144
    add-int/lit8 v12, p1, 0x7

    aput-wide v10, p0, v12

    .line 145
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 8
    .param p1, "y"    # D

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 238
    const-wide/16 v0, 0x0

    .line 243
    :goto_0
    return-wide v0

    .line 240
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 241
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 243
    :cond_1
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->TforY(DDDD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public XforT(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff0:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public XforY(D)D
    .locals 2
    .param p1, "y"    # D

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 228
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    .line 233
    :goto_0
    return-wide v0

    .line 230
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 231
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->TforY(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->XforT(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public YforT(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dXforT(DI)D
    .locals 4
    .param p1, "t"    # D
    .param p3, "deriv"    # I

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 335
    packed-switch p3, :pswitch_data_0

    .line 343
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 337
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff0:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 339
    :pswitch_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 341
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v0, v2

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dYforT(DI)D
    .locals 4
    .param p1, "t"    # D
    .param p3, "deriv"    # I

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 348
    packed-switch p3, :pswitch_data_0

    .line 356
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 350
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 352
    :pswitch_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 354
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    mul-double/2addr v0, v2

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enlarge(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V
    .locals 8
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 369
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 370
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v6

    div-double v0, v2, v4

    .line 371
    .local v0, "t":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 372
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->XforT(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->YforT(D)D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 374
    :cond_0
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 375
    return-void
.end method

.method public getCX0()D
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    return-wide v0
.end method

.method public getCY0()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    return-wide v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x2

    return v0
.end method

.method public getReversedCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 14

    .prologue
    .line 414
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    iget v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    neg-int v13, v13

    invoke-direct/range {v0 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;-><init>(DDDDDDI)V

    return-object v0
.end method

.method public getSegment([D)I
    .locals 6
    .param p1, "coords"    # [D

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 418
    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    aput-wide v1, p1, v0

    .line 419
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    aput-wide v0, p1, v4

    .line 420
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    if-ne v0, v4, :cond_0

    .line 421
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    aput-wide v0, p1, v3

    .line 422
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    aput-wide v0, p1, v5

    .line 427
    :goto_0
    return v3

    .line 424
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    aput-wide v0, p1, v3

    .line 425
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    aput-wide v0, p1, v5

    goto :goto_0
.end method

.method public getSubCurve(DDI)Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 23
    .param p1, "ystart"    # D
    .param p3, "yend"    # D
    .param p5, "dir"    # I

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_2

    .line 380
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    cmpl-double v3, p3, v3

    if-ltz v3, :cond_0

    .line 381
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->getWithDirection(I)Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v3

    .line 409
    :goto_0
    return-object v3

    .line 383
    :cond_0
    const-wide/16 v19, 0x0

    .line 387
    .local v19, "t0":D
    :goto_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    cmpl-double v3, p3, v3

    if-ltz v3, :cond_3

    .line 388
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 392
    .local v21, "t1":D
    :goto_2
    const/16 v3, 0xa

    new-array v0, v3, [D

    move-object/from16 v17, v0

    .line 393
    .local v17, "eqn":[D
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    aput-wide v4, v17, v3

    .line 394
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    aput-wide v4, v17, v3

    .line 395
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cx0:D

    aput-wide v4, v17, v3

    .line 396
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->cy0:D

    aput-wide v4, v17, v3

    .line 397
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    aput-wide v4, v17, v3

    .line 398
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    aput-wide v4, v17, v3

    .line 399
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v21, v3

    if-gez v3, :cond_1

    .line 400
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->split([DID)V

    .line 403
    :cond_1
    const-wide/16 v3, 0x0

    cmpg-double v3, v19, v3

    if-gtz v3, :cond_4

    .line 404
    const/16 v18, 0x0

    .line 409
    .local v18, "i":I
    :goto_3
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/geom/Order2;

    add-int/lit8 v4, v18, 0x0

    aget-wide v4, v17, v4

    add-int/lit8 v6, v18, 0x2

    aget-wide v8, v17, v6

    add-int/lit8 v6, v18, 0x3

    aget-wide v10, v17, v6

    .line 410
    add-int/lit8 v6, v18, 0x4

    aget-wide v12, v17, v6

    move-wide/from16 v6, p1

    move-wide/from16 v14, p3

    move/from16 v16, p5

    .line 409
    invoke-direct/range {v3 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;-><init>(DDDDDDI)V

    goto :goto_0

    .line 385
    .end local v17    # "eqn":[D
    .end local v18    # "i":I
    .end local v19    # "t0":D
    .end local v21    # "t1":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    move-wide/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->TforY(DDDD)D

    move-result-wide v19

    .restart local v19    # "t0":D
    goto :goto_1

    .line 390
    :cond_3
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff0:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff1:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->ycoeff2:D

    move-wide/from16 v3, p3

    invoke-static/range {v3 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->TforY(DDDD)D

    move-result-wide v21

    .restart local v21    # "t1":D
    goto/16 :goto_2

    .line 406
    .restart local v17    # "eqn":[D
    :cond_4
    const/4 v3, 0x0

    div-double v4, v19, v21

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->split([DID)V

    .line 407
    const/16 v18, 0x4

    .restart local v18    # "i":I
    goto :goto_3
.end method

.method public getX0()D
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    goto :goto_0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    goto :goto_0
.end method

.method public getXBot()D
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x1:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xmax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xmin:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->x0:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    goto :goto_0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    goto :goto_0
.end method

.method public getYBot()D
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y1:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->y0:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 8
    .param p1, "t0"    # D
    .param p3, "t1"    # D

    .prologue
    .line 361
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff1:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->xcoeff2:D

    mul-double/2addr v4, v6

    div-double v0, v2, v4

    .line 362
    .local v0, "t":D
    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    cmpg-double v2, v0, p3

    if-gez v2, :cond_0

    .line 365
    .end local v0    # "t":D
    :goto_0
    return-wide v0

    .restart local v0    # "t":D
    :cond_0
    move-wide v0, p3

    goto :goto_0
.end method
