.class final Lorg/loon/framework/android/game/core/graphics/geom/Order3;
.super Lorg/loon/framework/android/game/core/graphics/geom/Curve;
.source "Order3.java"


# instance fields
.field private TforY1:D

.field private TforY2:D

.field private TforY3:D

.field private YforT1:D

.field private YforT2:D

.field private YforT3:D

.field private cx0:D

.field private cx1:D

.field private cy0:D

.field private cy1:D

.field private x0:D

.field private x1:D

.field private xcoeff0:D

.field private xcoeff1:D

.field private xcoeff2:D

.field private xcoeff3:D

.field private xmax:D

.field private xmin:D

.field private y0:D

.field private y1:D

.field private ycoeff0:D

.field private ycoeff1:D

.field private ycoeff2:D

.field private ycoeff3:D


# direct methods
.method public constructor <init>(DDDDDDDDI)V
    .locals 6
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "cx0"    # D
    .param p7, "cy0"    # D
    .param p9, "cx1"    # D
    .param p11, "cy1"    # D
    .param p13, "x1"    # D
    .param p15, "y1"    # D
    .param p17, "direction"    # I

    .prologue
    .line 200
    move/from16 v0, p17

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;-><init>(I)V

    .line 204
    cmpg-double v2, p7, p3

    if-gez v2, :cond_0

    .line 205
    move-wide p7, p3

    .line 206
    :cond_0
    cmpl-double v2, p11, p15

    if-lez v2, :cond_1

    .line 207
    move-wide/from16 p11, p15

    .line 208
    :cond_1
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    .line 209
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    .line 210
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    .line 211
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    .line 212
    iput-wide p9, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    .line 213
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    .line 214
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    .line 215
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    .line 216
    move-wide/from16 v0, p13

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-wide v0, p9

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xmin:D

    .line 217
    move-wide/from16 v0, p13

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v0, p9

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xmax:D

    .line 218
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff0:D

    .line 219
    sub-double v2, p5, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    .line 220
    sub-double v2, p9, p5

    sub-double/2addr v2, p5

    add-double/2addr v2, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    .line 221
    sub-double v2, p9, p5

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    sub-double v2, p13, v2

    sub-double/2addr v2, p1

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    .line 222
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff0:D

    .line 223
    sub-double v2, p7, p3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    .line 224
    sub-double v2, p11, p7

    sub-double/2addr v2, p7

    add-double/2addr v2, p3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    .line 225
    sub-double v2, p11, p7

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    sub-double v2, p15, v2

    sub-double/2addr v2, p3

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    .line 226
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT3:D

    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT2:D

    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT1:D

    .line 227
    return-void
.end method

.method public static addInstance(Ljava/util/Vector;DDDDDDDDI)V
    .locals 19
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "cx0"    # D
    .param p7, "cy0"    # D
    .param p9, "cx1"    # D
    .param p11, "cy1"    # D
    .param p13, "x1"    # D
    .param p15, "y1"    # D
    .param p17, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;DDDDDDDDI)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    cmpl-double v1, p3, p15

    if-lez v1, :cond_1

    .line 106
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Order3;

    .line 107
    move/from16 v0, p17

    neg-int v0, v0

    move/from16 v18, v0

    move-wide/from16 v2, p13

    move-wide/from16 v4, p15

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-direct/range {v1 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;-><init>(DDDDDDDDI)V

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    cmpl-double v1, p15, p3

    if-lez v1, :cond_0

    .line 110
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Order3;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;-><init>(DDDDDDDDI)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getHorizontalParams(DDDD[D)I
    .locals 12
    .param p0, "c0"    # D
    .param p2, "cp0"    # D
    .param p4, "cp1"    # D
    .param p6, "c1"    # D
    .param p8, "ret"    # [D

    .prologue
    .line 136
    cmpg-double v7, p0, p2

    if-gtz v7, :cond_1

    cmpg-double v7, p2, p4

    if-gtz v7, :cond_1

    cmpg-double v7, p4, p6

    if-gtz v7, :cond_1

    .line 137
    const/4 v3, 0x0

    .line 157
    :cond_0
    return v3

    .line 139
    :cond_1
    sub-double p6, p6, p4

    .line 140
    sub-double p4, p4, p2

    .line 141
    sub-double/2addr p2, p0

    .line 142
    const/4 v7, 0x0

    aput-wide p2, p8, v7

    .line 143
    const/4 v7, 0x1

    sub-double v8, p4, p2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    aput-wide v8, p8, v7

    .line 144
    const/4 v7, 0x2

    sub-double v8, p6, p4

    sub-double v8, v8, p4

    add-double/2addr v8, p2

    aput-wide v8, p8, v7

    .line 145
    move-object/from16 v0, p8

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v4

    .line 146
    .local v4, "numroots":I
    const/4 v3, 0x0

    .line 147
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 148
    aget-wide v5, p8, v2

    .line 150
    .local v5, "t":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_3

    .line 151
    if-ge v3, v2, :cond_2

    .line 152
    aput-wide v5, p8, v3

    .line 154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 147
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static insert(Ljava/util/Vector;[DDDDDDDDDI)V
    .locals 25
    .param p1, "tmp"    # [D
    .param p2, "x0"    # D
    .param p4, "y0"    # D
    .param p6, "cx0"    # D
    .param p8, "cy0"    # D
    .param p10, "cx1"    # D
    .param p12, "cy1"    # D
    .param p14, "x1"    # D
    .param p16, "y1"    # D
    .param p18, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;[DDDDDDDDDI)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    move-wide/from16 v3, p4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    move-wide/from16 v9, p16

    move-object/from16 v11, p1

    invoke-static/range {v3 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getHorizontalParams(DDDD[D)I

    move-result v22

    .line 57
    .local v22, "numparams":I
    if-nez v22, :cond_1

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move/from16 v20, p18

    .line 60
    invoke-static/range {v3 .. v20}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    .line 100
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v3, 0x3

    aput-wide p2, p1, v3

    .line 65
    const/4 v3, 0x4

    aput-wide p4, p1, v3

    .line 66
    const/4 v3, 0x5

    aput-wide p6, p1, v3

    .line 67
    const/4 v3, 0x6

    aput-wide p8, p1, v3

    .line 68
    const/4 v3, 0x7

    aput-wide p10, p1, v3

    .line 69
    const/16 v3, 0x8

    aput-wide p12, p1, v3

    .line 70
    const/16 v3, 0x9

    aput-wide p14, p1, v3

    .line 71
    const/16 v3, 0xa

    aput-wide p16, p1, v3

    .line 72
    const/4 v3, 0x0

    aget-wide v23, p1, v3

    .line 73
    .local v23, "t":D
    const/4 v3, 0x1

    move/from16 v0, v22

    if-le v0, v3, :cond_2

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    cmpl-double v3, v23, v3

    if-lez v3, :cond_2

    .line 75
    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v3

    .line 76
    const/4 v3, 0x1

    aput-wide v23, p1, v3

    .line 77
    const/4 v3, 0x0

    aget-wide v23, p1, v3

    .line 79
    :cond_2
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move-wide/from16 v1, v23

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->split([DID)V

    .line 80
    const/4 v3, 0x1

    move/from16 v0, v22

    if-le v0, v3, :cond_3

    .line 82
    const/4 v3, 0x1

    aget-wide v3, p1, v3

    sub-double v3, v3, v23

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, v5, v23

    div-double v23, v3, v5

    .line 83
    const/16 v3, 0x9

    move-object/from16 v0, p1

    move-wide/from16 v1, v23

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->split([DID)V

    .line 85
    :cond_3
    const/16 v21, 0x3

    .line 86
    .local v21, "index":I
    const/4 v3, -0x1

    move/from16 v0, p18

    if-ne v0, v3, :cond_4

    .line 87
    mul-int/lit8 v3, v22, 0x6

    add-int v21, v21, v3

    .line 89
    :cond_4
    :goto_0
    if-ltz v22, :cond_0

    .line 90
    add-int/lit8 v3, v21, 0x0

    aget-wide v4, p1, v3

    add-int/lit8 v3, v21, 0x1

    aget-wide v6, p1, v3

    add-int/lit8 v3, v21, 0x2

    aget-wide v8, p1, v3

    .line 91
    add-int/lit8 v3, v21, 0x3

    aget-wide v10, p1, v3

    add-int/lit8 v3, v21, 0x4

    aget-wide v12, p1, v3

    add-int/lit8 v3, v21, 0x5

    aget-wide v14, p1, v3

    .line 92
    add-int/lit8 v3, v21, 0x6

    aget-wide v16, p1, v3

    add-int/lit8 v3, v21, 0x7

    aget-wide v18, p1, v3

    move-object/from16 v3, p0

    move/from16 v20, p18

    .line 90
    invoke-static/range {v3 .. v20}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->addInstance(Ljava/util/Vector;DDDDDDDDI)V

    .line 93
    add-int/lit8 v22, v22, -0x1

    .line 94
    const/4 v3, 0x1

    move/from16 v0, p18

    if-ne v0, v3, :cond_5

    .line 95
    add-int/lit8 v21, v21, 0x6

    goto :goto_0

    .line 97
    :cond_5
    add-int/lit8 v21, v21, -0x6

    goto :goto_0
.end method

.method public static split([DID)V
    .locals 19
    .param p0, "coords"    # [D
    .param p1, "pos"    # I
    .param p2, "t"    # D

    .prologue
    .line 168
    add-int/lit8 v16, p1, 0xc

    add-int/lit8 v17, p1, 0x6

    aget-wide v10, p0, v17

    .local v10, "x1":D
    aput-wide v10, p0, v16

    .line 169
    add-int/lit8 v16, p1, 0xd

    add-int/lit8 v17, p1, 0x7

    aget-wide v14, p0, v17

    .local v14, "y1":D
    aput-wide v14, p0, v16

    .line 170
    add-int/lit8 v16, p1, 0x4

    aget-wide v2, p0, v16

    .line 171
    .local v2, "cx1":D
    add-int/lit8 v16, p1, 0x5

    aget-wide v6, p0, v16

    .line 172
    .local v6, "cy1":D
    sub-double v16, v10, v2

    mul-double v16, v16, p2

    add-double v10, v2, v16

    .line 173
    sub-double v16, v14, v6

    mul-double v16, v16, p2

    add-double v14, v6, v16

    .line 174
    add-int/lit8 v16, p1, 0x0

    aget-wide v8, p0, v16

    .line 175
    .local v8, "x0":D
    add-int/lit8 v16, p1, 0x1

    aget-wide v12, p0, v16

    .line 176
    .local v12, "y0":D
    add-int/lit8 v16, p1, 0x2

    aget-wide v0, p0, v16

    .line 177
    .local v0, "cx0":D
    add-int/lit8 v16, p1, 0x3

    aget-wide v4, p0, v16

    .line 178
    .local v4, "cy0":D
    sub-double v16, v0, v8

    mul-double v16, v16, p2

    add-double v8, v8, v16

    .line 179
    sub-double v16, v4, v12

    mul-double v16, v16, p2

    add-double v12, v12, v16

    .line 180
    sub-double v16, v2, v0

    mul-double v16, v16, p2

    add-double v0, v0, v16

    .line 181
    sub-double v16, v6, v4

    mul-double v16, v16, p2

    add-double v4, v4, v16

    .line 182
    sub-double v16, v10, v0

    mul-double v16, v16, p2

    add-double v2, v0, v16

    .line 183
    sub-double v16, v14, v4

    mul-double v16, v16, p2

    add-double v6, v4, v16

    .line 184
    sub-double v16, v0, v8

    mul-double v16, v16, p2

    add-double v0, v8, v16

    .line 185
    sub-double v16, v4, v12

    mul-double v16, v16, p2

    add-double v4, v12, v16

    .line 186
    add-int/lit8 v16, p1, 0x2

    aput-wide v8, p0, v16

    .line 187
    add-int/lit8 v16, p1, 0x3

    aput-wide v12, p0, v16

    .line 188
    add-int/lit8 v16, p1, 0x4

    aput-wide v0, p0, v16

    .line 189
    add-int/lit8 v16, p1, 0x5

    aput-wide v4, p0, v16

    .line 190
    add-int/lit8 v16, p1, 0x6

    sub-double v17, v2, v0

    mul-double v17, v17, p2

    add-double v17, v17, v0

    aput-wide v17, p0, v16

    .line 191
    add-int/lit8 v16, p1, 0x7

    sub-double v17, v6, v4

    mul-double v17, v17, p2

    add-double v17, v17, v4

    aput-wide v17, p0, v16

    .line 192
    add-int/lit8 v16, p1, 0x8

    aput-wide v2, p0, v16

    .line 193
    add-int/lit8 v16, p1, 0x9

    aput-wide v6, p0, v16

    .line 194
    add-int/lit8 v16, p1, 0xa

    aput-wide v10, p0, v16

    .line 195
    add-int/lit8 v16, p1, 0xb

    aput-wide v14, p0, v16

    .line 196
    return-void
.end method


# virtual methods
.method public TforY(D)D
    .locals 41
    .param p1, "y"    # D

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    cmpg-double v3, p1, v10

    if-gtz v3, :cond_1

    .line 305
    const-wide/16 v31, 0x0

    .line 381
    :cond_0
    :goto_0
    return-wide v31

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    cmpl-double v3, p1, v10

    if-ltz v3, :cond_2

    .line 307
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 308
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT1:D

    cmpl-double v3, p1, v10

    if-nez v3, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY1:D

    move-wide/from16 v31, v0

    goto :goto_0

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT2:D

    cmpl-double v3, p1, v10

    if-nez v3, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY2:D

    move-wide/from16 v31, v0

    goto :goto_0

    .line 312
    :cond_4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT3:D

    cmpl-double v3, p1, v10

    if-nez v3, :cond_5

    .line 313
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY3:D

    move-wide/from16 v31, v0

    goto :goto_0

    .line 315
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-nez v3, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff0:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    move-wide/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Order2;->TforY(DDDD)D

    move-result-wide v31

    goto :goto_0

    .line 319
    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    div-double v4, v10, v12

    .line 320
    .local v4, "a":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    div-double v6, v10, v12

    .line 321
    .local v6, "b":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff0:D

    sub-double v10, v10, p1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    div-double v8, v10, v12

    .line 323
    .local v8, "c":D
    mul-double v10, v4, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    div-double v18, v10, v12

    .line 324
    .local v18, "Q":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v4

    mul-double/2addr v10, v4

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    mul-double/2addr v12, v4

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x403b000000000000L    # 27.0

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x404b000000000000L    # 54.0

    div-double v22, v10, v12

    .line 325
    .local v22, "R":D
    mul-double v24, v22, v22

    .line 326
    .local v24, "R2":D
    mul-double v10, v18, v18

    mul-double v20, v10, v18

    .line 327
    .local v20, "Q3":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double v28, v4, v10

    .line 329
    .local v28, "a_3":D
    cmpg-double v3, v24, v20

    if-gez v3, :cond_a

    .line 330
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v10, v22, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v37

    .line 331
    .local v37, "theta":D
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v18, v10, v12

    .line 332
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double v10, v37, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    sub-double v12, v10, v28

    move-object/from16 v3, p0

    move-wide/from16 v10, p1

    invoke-virtual/range {v3 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->refine(DDDDD)D

    move-result-wide v31

    .line 333
    .local v31, "t":D
    const-wide/16 v10, 0x0

    cmpg-double v3, v31, v10

    if-gez v3, :cond_7

    .line 335
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    add-double v10, v10, v37

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    sub-double v12, v10, v28

    move-object/from16 v3, p0

    move-wide/from16 v10, p1

    .line 334
    invoke-virtual/range {v3 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->refine(DDDDD)D

    move-result-wide v31

    .line 337
    :cond_7
    const-wide/16 v10, 0x0

    cmpg-double v3, v31, v10

    if-gez v3, :cond_8

    .line 339
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v10, v37, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v18

    sub-double v12, v10, v28

    move-object/from16 v3, p0

    move-wide/from16 v10, p1

    .line 338
    invoke-virtual/range {v3 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->refine(DDDDD)D

    move-result-wide v31

    .line 354
    .end local v37    # "theta":D
    :cond_8
    :goto_1
    const-wide/16 v10, 0x0

    cmpg-double v3, v31, v10

    if-gez v3, :cond_9

    .line 356
    const-wide/16 v33, 0x0

    .line 357
    .local v33, "t0":D
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    .line 359
    .local v35, "t1":D
    :goto_2
    add-double v10, v33, v35

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v31, v10, v12

    .line 360
    cmpl-double v3, v31, v33

    if-eqz v3, :cond_9

    cmpl-double v3, v31, v35

    if-nez v3, :cond_f

    .line 373
    .end local v33    # "t0":D
    .end local v35    # "t1":D
    :cond_9
    const-wide/16 v10, 0x0

    cmpl-double v3, v31, v10

    if-ltz v3, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY2:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY3:D

    .line 375
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT2:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT3:D

    .line 376
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY1:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY2:D

    .line 377
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT1:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT2:D

    .line 378
    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY1:D

    .line 379
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT1:D

    goto/16 :goto_0

    .line 342
    .end local v31    # "t":D
    :cond_a
    const-wide/16 v10, 0x0

    cmpg-double v3, v22, v10

    if-gez v3, :cond_d

    const/16 v30, 0x1

    .line 343
    .local v30, "neg":Z
    :goto_3
    sub-double v10, v24, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 344
    .local v26, "S":D
    if-eqz v30, :cond_b

    .line 345
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 347
    :cond_b
    add-double v10, v22, v26

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 348
    .local v14, "A":D
    if-nez v30, :cond_c

    .line 349
    neg-double v14, v14

    .line 351
    :cond_c
    const-wide/16 v10, 0x0

    cmpl-double v3, v14, v10

    if-nez v3, :cond_e

    const-wide/16 v16, 0x0

    .line 352
    .local v16, "B":D
    :goto_4
    add-double v10, v14, v16

    sub-double v12, v10, v28

    move-object/from16 v3, p0

    move-wide/from16 v10, p1

    invoke-virtual/range {v3 .. v13}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->refine(DDDDD)D

    move-result-wide v31

    .restart local v31    # "t":D
    goto/16 :goto_1

    .line 342
    .end local v14    # "A":D
    .end local v16    # "B":D
    .end local v26    # "S":D
    .end local v30    # "neg":Z
    .end local v31    # "t":D
    :cond_d
    const/16 v30, 0x0

    goto :goto_3

    .line 351
    .restart local v14    # "A":D
    .restart local v26    # "S":D
    .restart local v30    # "neg":Z
    :cond_e
    div-double v16, v18, v14

    goto :goto_4

    .line 363
    .end local v14    # "A":D
    .end local v26    # "S":D
    .end local v30    # "neg":Z
    .restart local v31    # "t":D
    .restart local v33    # "t0":D
    .restart local v35    # "t1":D
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT(D)D

    move-result-wide v39

    .line 364
    .local v39, "yt":D
    cmpg-double v3, v39, p1

    if-gez v3, :cond_10

    .line 365
    move-wide/from16 v33, v31

    goto/16 :goto_2

    .line 366
    :cond_10
    cmpl-double v3, v39, p1

    if-lez v3, :cond_9

    .line 367
    move-wide/from16 v35, v31

    .line 358
    goto/16 :goto_2
.end method

.method public XforT(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 443
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff0:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public XforY(D)D
    .locals 2
    .param p1, "y"    # D

    .prologue
    .line 433
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 434
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    .line 439
    :goto_0
    return-wide v0

    .line 436
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 437
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->XforT(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public YforT(D)D
    .locals 4
    .param p1, "t"    # D

    .prologue
    .line 447
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff0:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public controlPointString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getCX0()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getCY0()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getCX1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getCY1()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->round(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dXforT(DI)D
    .locals 6
    .param p1, "t"    # D
    .param p3, "deriv"    # I

    .prologue
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 451
    packed-switch p3, :pswitch_data_0

    .line 461
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 453
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff0:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 455
    :pswitch_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 457
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    .line 459
    :pswitch_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v0, v2

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dYforT(DI)D
    .locals 6
    .param p1, "t"    # D
    .param p3, "deriv"    # I

    .prologue
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 466
    packed-switch p3, :pswitch_data_0

    .line 476
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 468
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff0:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 470
    :pswitch_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff1:D

    add-double/2addr v0, v2

    goto :goto_0

    .line 472
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    .line 474
    :pswitch_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->ycoeff3:D

    mul-double/2addr v0, v2

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public enlarge(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V
    .locals 10
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 492
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 493
    const/4 v5, 0x3

    new-array v0, v5, [D

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    .line 494
    .local v0, "eqn":[D
    invoke-static {v0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v2

    .line 495
    .local v2, "numroots":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 501
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 502
    return-void

    .line 496
    :cond_0
    aget-wide v3, v0, v1

    .line 497
    .local v3, "t":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_1

    .line 498
    invoke-virtual {p0, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->XforT(D)D

    move-result-wide v5

    invoke-virtual {p0, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT(D)D

    move-result-wide v7

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->add(DD)V

    .line 495
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCX0()D
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    goto :goto_0
.end method

.method public getCX1()D
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    goto :goto_0
.end method

.method public getCY0()D
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    goto :goto_0
.end method

.method public getCY1()D
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    goto :goto_0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x3

    return v0
.end method

.method public getReversedCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 20

    .prologue
    .line 552
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Order3;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;-><init>(DDDDDDDDI)V

    return-object v2
.end method

.method public getSegment([D)I
    .locals 7
    .param p1, "coords"    # [D

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 556
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    if-ne v0, v2, :cond_0

    .line 557
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    aput-wide v0, p1, v4

    .line 558
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    aput-wide v0, p1, v2

    .line 559
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    aput-wide v0, p1, v5

    .line 560
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    aput-wide v0, p1, v3

    .line 561
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    aput-wide v0, p1, v6

    .line 562
    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    aput-wide v1, p1, v0

    .line 571
    :goto_0
    return v3

    .line 564
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    aput-wide v0, p1, v4

    .line 565
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    aput-wide v0, p1, v2

    .line 566
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    aput-wide v0, p1, v5

    .line 567
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    aput-wide v0, p1, v3

    .line 568
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    aput-wide v0, p1, v6

    .line 569
    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    aput-wide v1, p1, v0

    goto :goto_0
.end method

.method public getSubCurve(DDI)Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 29
    .param p1, "ystart"    # D
    .param p3, "yend"    # D
    .param p5, "dir"    # I

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    cmpl-double v3, p3, v3

    if-ltz v3, :cond_0

    .line 506
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->getWithDirection(I)Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v3

    .line 547
    :goto_0
    return-object v3

    .line 508
    :cond_0
    const/16 v3, 0xe

    new-array v0, v3, [D

    move-object/from16 v21, v0

    .line 510
    .local v21, "eqn":[D
    invoke-virtual/range {p0 .. p2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY(D)D

    move-result-wide v25

    .line 511
    .local v25, "t0":D
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->TforY(D)D

    move-result-wide v27

    .line 512
    .local v27, "t1":D
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    aput-wide v4, v21, v3

    .line 513
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    aput-wide v4, v21, v3

    .line 514
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx0:D

    aput-wide v4, v21, v3

    .line 515
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy0:D

    aput-wide v4, v21, v3

    .line 516
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cx1:D

    aput-wide v4, v21, v3

    .line 517
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->cy1:D

    aput-wide v4, v21, v3

    .line 518
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    aput-wide v4, v21, v3

    .line 519
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    aput-wide v4, v21, v3

    .line 520
    cmpl-double v3, v25, v27

    if-lez v3, :cond_1

    .line 533
    move-wide/from16 v23, v25

    .line 534
    .local v23, "t":D
    move-wide/from16 v25, v27

    .line 535
    move-wide/from16 v27, v23

    .line 537
    .end local v23    # "t":D
    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v27, v3

    if-gez v3, :cond_2

    .line 538
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v27

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->split([DID)V

    .line 541
    :cond_2
    const-wide/16 v3, 0x0

    cmpg-double v3, v25, v3

    if-gtz v3, :cond_3

    .line 542
    const/16 v22, 0x0

    .line 547
    .local v22, "i":I
    :goto_1
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/geom/Order3;

    add-int/lit8 v4, v22, 0x0

    aget-wide v4, v21, v4

    add-int/lit8 v6, v22, 0x2

    aget-wide v8, v21, v6

    add-int/lit8 v6, v22, 0x3

    aget-wide v10, v21, v6

    .line 548
    add-int/lit8 v6, v22, 0x4

    aget-wide v12, v21, v6

    add-int/lit8 v6, v22, 0x5

    aget-wide v14, v21, v6

    add-int/lit8 v6, v22, 0x6

    aget-wide v16, v21, v6

    move-wide/from16 v6, p1

    move-wide/from16 v18, p3

    move/from16 v20, p5

    .line 547
    invoke-direct/range {v3 .. v20}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;-><init>(DDDDDDDDI)V

    goto/16 :goto_0

    .line 544
    .end local v22    # "i":I
    :cond_3
    const/4 v3, 0x0

    div-double v4, v25, v27

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->split([DID)V

    .line 545
    const/16 v22, 0x6

    .restart local v22    # "i":I
    goto :goto_1
.end method

.method public getX0()D
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    goto :goto_0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    goto :goto_0
.end method

.method public getXBot()D
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x1:D

    return-wide v0
.end method

.method public getXMax()D
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xmax:D

    return-wide v0
.end method

.method public getXMin()D
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xmin:D

    return-wide v0
.end method

.method public getXTop()D
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->x0:D

    return-wide v0
.end method

.method public getY0()D
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    goto :goto_0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->direction:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    goto :goto_0
.end method

.method public getYBot()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y1:D

    return-wide v0
.end method

.method public getYTop()D
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->y0:D

    return-wide v0
.end method

.method public nextVertical(DD)D
    .locals 8
    .param p1, "t0"    # D
    .param p3, "t1"    # D

    .prologue
    .line 481
    const/4 v3, 0x3

    new-array v0, v3, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff1:D

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff2:D

    mul-double/2addr v4, v6

    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->xcoeff3:D

    mul-double/2addr v4, v6

    aput-wide v4, v0, v3

    .line 482
    .local v0, "eqn":[D
    invoke-static {v0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v2

    .line 483
    .local v2, "numroots":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 488
    return-wide p3

    .line 484
    :cond_0
    aget-wide v3, v0, v1

    cmpl-double v3, v3, p1

    if-lez v3, :cond_1

    aget-wide v3, v0, v1

    cmpg-double v3, v3, p3

    if-gez v3, :cond_1

    .line 485
    aget-wide p3, v0, v1

    .line 483
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refine(DDDDD)D
    .locals 18
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "target"    # D
    .param p9, "t"    # D

    .prologue
    .line 385
    const-wide v14, -0x4046666666666666L    # -0.1

    cmpg-double v14, p9, v14

    if-ltz v14, :cond_0

    const-wide v14, 0x3ff199999999999aL    # 1.1

    cmpl-double v14, p9, v14

    if-lez v14, :cond_1

    .line 386
    :cond_0
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 429
    :goto_0
    return-wide v14

    .line 388
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT(D)D

    move-result-wide v12

    .line 390
    .local v12, "y":D
    cmpg-double v14, v12, p7

    if-gez v14, :cond_3

    .line 391
    move-wide/from16 v5, p9

    .line 392
    .local v5, "t0":D
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 398
    .local v7, "t1":D
    :goto_1
    const/4 v11, 0x1

    .line 399
    .local v11, "useslope":Z
    :goto_2
    cmpl-double v14, v12, p7

    if-nez v14, :cond_4

    .line 429
    :cond_2
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v14, p9, v14

    if-lez v14, :cond_a

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 394
    .end local v5    # "t0":D
    .end local v7    # "t1":D
    .end local v11    # "useslope":Z
    :cond_3
    const-wide/16 v5, 0x0

    .line 395
    .restart local v5    # "t0":D
    move-wide/from16 v7, p9

    .restart local v7    # "t1":D
    goto :goto_1

    .line 400
    .restart local v11    # "useslope":Z
    :cond_4
    if-nez v11, :cond_5

    .line 401
    add-double v14, v5, v7

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v9, v14, v16

    .line 402
    .local v9, "t2":D
    cmpl-double v14, v9, v5

    if-eqz v14, :cond_2

    cmpl-double v14, v9, v7

    if-eqz v14, :cond_2

    .line 405
    move-wide/from16 p9, v9

    .line 419
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->YforT(D)D

    move-result-wide v12

    .line 420
    cmpg-double v14, v12, p7

    if-gez v14, :cond_9

    .line 421
    move-wide/from16 v5, p9

    goto :goto_2

    .line 407
    .end local v9    # "t2":D
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2, v14}, Lorg/loon/framework/android/game/core/graphics/geom/Order3;->dYforT(DI)D

    move-result-wide v3

    .line 408
    .local v3, "slope":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v3, v14

    if-nez v14, :cond_6

    .line 409
    const/4 v11, 0x0

    .line 410
    goto :goto_2

    .line 412
    :cond_6
    sub-double v14, p7, v12

    div-double/2addr v14, v3

    add-double v9, p9, v14

    .line 413
    .restart local v9    # "t2":D
    cmpl-double v14, v9, p9

    if-eqz v14, :cond_7

    cmpg-double v14, v9, v5

    if-lez v14, :cond_7

    cmpl-double v14, v9, v7

    if-ltz v14, :cond_8

    .line 414
    :cond_7
    const/4 v11, 0x0

    .line 415
    goto :goto_2

    .line 417
    :cond_8
    move-wide/from16 p9, v9

    goto :goto_3

    .line 422
    .end local v3    # "slope":D
    :cond_9
    cmpl-double v14, v12, p7

    if-lez v14, :cond_2

    .line 423
    move-wide/from16 v7, p9

    goto :goto_2

    .end local v9    # "t2":D
    :cond_a
    move-wide/from16 v14, p9

    .line 429
    goto :goto_0
.end method
