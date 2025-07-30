.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;
.super Ljava/lang/Object;
.source "CubicCurve2D.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D$Double;,
        Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D$Float;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x2

.field private static final BELOW:I = -0x2

.field private static final HIGHEDGE:I = 0x1

.field private static final INSIDE:I = 0x0

.field private static final LOWEDGE:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method private static evalCubic([DIZZ[DDDDD)I
    .locals 16
    .param p0, "vals"    # [D
    .param p1, "num"    # I
    .param p2, "include0"    # Z
    .param p3, "include1"    # Z
    .param p4, "inflect"    # [D
    .param p5, "c1"    # D
    .param p7, "cp1"    # D
    .param p9, "cp2"    # D
    .param p11, "c2"    # D

    .prologue
    .line 1385
    const/4 v2, 0x0

    .line 1386
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    move/from16 v0, p1

    if-lt v1, v0, :cond_0

    .line 1397
    return v3

    .line 1387
    :cond_0
    aget-wide v4, p0, v1

    .line 1388
    .local v4, "t":D
    if-eqz p2, :cond_3

    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_4

    .line 1389
    :cond_1
    if-eqz p3, :cond_5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_4

    .line 1390
    :goto_1
    if-eqz p4, :cond_2

    const/4 v8, 0x1

    aget-wide v8, p4, v8

    .line 1391
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v12, 0x2

    aget-wide v12, p4, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v14, 0x3

    aget-wide v14, p4, v14

    mul-double/2addr v12, v14

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_4

    .line 1392
    :cond_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v4

    .line 1393
    .local v6, "u":D
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    mul-double v8, p5, v6

    mul-double/2addr v8, v6

    mul-double/2addr v8, v6

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v10, v10, p7

    mul-double/2addr v10, v4

    mul-double/2addr v10, v6

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v10, v10, p9

    mul-double/2addr v10, v4

    .line 1394
    mul-double/2addr v10, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    mul-double v10, p11, v4

    mul-double/2addr v10, v4

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    .line 1393
    aput-wide v8, p0, v3

    .line 1386
    .end local v6    # "u":D
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 1388
    :cond_3
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-gtz v8, :cond_1

    :cond_4
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_2

    .line 1389
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v8

    if-gez v8, :cond_4

    goto :goto_1
.end method

.method private static fillEqn([DDDDDD)V
    .locals 5
    .param p0, "eqn"    # [D
    .param p1, "val"    # D
    .param p3, "c1"    # D
    .param p5, "cp1"    # D
    .param p7, "cp2"    # D
    .param p9, "c2"    # D

    .prologue
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 1367
    const/4 v0, 0x0

    sub-double v1, p3, p1

    aput-wide v1, p0, v0

    .line 1368
    const/4 v0, 0x1

    sub-double v1, p5, p3

    mul-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1369
    const/4 v0, 0x2

    sub-double v1, p7, p5

    sub-double/2addr v1, p5

    add-double/2addr v1, p3

    mul-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1370
    const/4 v0, 0x3

    sub-double v1, p5, p7

    mul-double/2addr v1, v3

    add-double/2addr v1, p9

    sub-double/2addr v1, p3

    aput-wide v1, p0, v0

    .line 1371
    return-void
.end method

.method private static findZero(DD[D)D
    .locals 25
    .param p0, "t"    # D
    .param p2, "target"    # D
    .param p4, "eqn"    # [D

    .prologue
    .line 1268
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v21, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-wide v7, p4, v4

    aput-wide v7, v21, v3

    const/4 v3, 0x1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v4, 0x2

    aget-wide v9, p4, v4

    mul-double/2addr v7, v9

    aput-wide v7, v21, v3

    const/4 v3, 0x2

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/4 v4, 0x3

    aget-wide v9, p4, v4

    mul-double/2addr v7, v9

    aput-wide v7, v21, v3

    .line 1270
    .local v21, "slopeqn":[D
    const-wide/16 v17, 0x0

    .line 1271
    .local v17, "origdelta":D
    move-wide/from16 v5, p0

    .line 1273
    .local v5, "origt":D
    :goto_0
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move-wide/from16 v1, p0

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v19

    .line 1274
    .local v19, "slope":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v19, v3

    if-nez v3, :cond_1

    .line 1310
    .end local p0    # "t":D
    :cond_0
    :goto_1
    return-wide p0

    .line 1278
    .restart local p0    # "t":D
    :cond_1
    const/4 v3, 0x3

    move-object/from16 v0, p4

    move-wide/from16 v1, p0

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveEqn([DID)D

    move-result-wide v23

    .line 1279
    .local v23, "y":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v23, v3

    if-eqz v3, :cond_0

    .line 1284
    div-double v3, v23, v19

    neg-double v13, v3

    .line 1286
    .local v13, "delta":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v17, v3

    if-nez v3, :cond_2

    .line 1287
    move-wide/from16 v17, v13

    .line 1289
    :cond_2
    cmpg-double v3, p0, p2

    if-gez v3, :cond_4

    .line 1290
    const-wide/16 v3, 0x0

    cmpg-double v3, v13, v3

    if-ltz v3, :cond_0

    .line 1299
    :cond_3
    add-double v15, p0, v13

    .line 1300
    .local v15, "newt":D
    cmpl-double v3, p0, v15

    if-eqz v3, :cond_0

    .line 1304
    mul-double v3, v13, v17

    const-wide/16 v7, 0x0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_9

    .line 1306
    cmpg-double v3, v5, p0

    if-gez v3, :cond_7

    move-wide/from16 v3, p2

    move-wide/from16 v7, p0

    invoke-static/range {v3 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v22

    .line 1308
    .local v22, "tag":I
    :goto_2
    if-eqz v22, :cond_8

    .line 1310
    add-double v3, v5, p0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double p0, v3, v7

    goto :goto_1

    .line 1292
    .end local v15    # "newt":D
    .end local v22    # "tag":I
    :cond_4
    cmpl-double v3, p0, p2

    if-lez v3, :cond_5

    .line 1293
    const-wide/16 v3, 0x0

    cmpl-double v3, v13, v3

    if-lez v3, :cond_3

    goto :goto_1

    .line 1296
    :cond_5
    const-wide/16 v3, 0x0

    cmpl-double v3, v13, v3

    if-lez v3, :cond_6

    const-wide/16 v3, 0x1

    add-double v3, v3, p2

    :goto_3
    move-wide/from16 p0, v3

    goto :goto_1

    .line 1297
    :cond_6
    const-wide/16 v3, 0x1

    sub-double v3, p2, v3

    goto :goto_3

    .restart local v15    # "newt":D
    :cond_7
    move-wide/from16 v7, p2

    move-wide/from16 v9, p0

    move-wide v11, v5

    .line 1306
    invoke-static/range {v7 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v22

    goto :goto_2

    .line 1314
    .restart local v22    # "tag":I
    :cond_8
    move-wide/from16 p0, p2

    goto :goto_0

    .line 1316
    .end local v22    # "tag":I
    :cond_9
    move-wide/from16 p0, v15

    .line 1272
    goto/16 :goto_0
.end method

.method private static fixRoots([D[D)V
    .locals 11
    .param p0, "res"    # [D
    .param p1, "eqn"    # [D

    .prologue
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 1248
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 1249
    .local v0, "EPSILON":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v2, v5, :cond_0

    .line 1257
    return-void

    .line 1250
    :cond_0
    aget-wide v3, p0, v2

    .line 1251
    .local v3, "t":D
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 1252
    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6, p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->findZero(DD[D)D

    move-result-wide v5

    aput-wide v5, p0, v2

    .line 1249
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1253
    :cond_2
    sub-double v5, v3, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 1254
    invoke-static {v3, v4, v9, v10, p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->findZero(DD[D)D

    move-result-wide v5

    aput-wide v5, p0, v2

    goto :goto_1
.end method

.method public static getFlatness(DDDDDDDD)D
    .locals 2
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "ctrlx1"    # D
    .param p6, "ctrly1"    # D
    .param p8, "ctrlx2"    # D
    .param p10, "ctrly2"    # D
    .param p12, "x2"    # D
    .param p14, "y2"    # D

    .prologue
    .line 914
    invoke-static/range {p0 .. p15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatness([DI)D
    .locals 16
    .param p0, "coords"    # [D
    .param p1, "offset"    # I

    .prologue
    .line 956
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    .line 957
    add-int/lit8 v4, p1, 0x2

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    aget-wide v8, p0, v8

    .line 958
    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    add-int/lit8 v12, p1, 0x6

    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x7

    aget-wide v14, p0, v14

    .line 956
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq(DDDDDDDD)D
    .locals 14
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "ctrlx1"    # D
    .param p6, "ctrly1"    # D
    .param p8, "ctrlx2"    # D
    .param p10, "ctrly2"    # D
    .param p12, "x2"    # D
    .param p14, "y2"    # D

    .prologue
    .line 874
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 875
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    .line 874
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 16
    .param p0, "coords"    # [D
    .param p1, "offset"    # I

    .prologue
    .line 935
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    .line 936
    add-int/lit8 v4, p1, 0x2

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    aget-wide v8, p0, v8

    .line 937
    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    add-int/lit8 v12, p1, 0x6

    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x7

    aget-wide v14, p0, v14

    .line 935
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getTag(DDD)I
    .locals 1
    .param p0, "coord"    # D
    .param p2, "low"    # D
    .param p4, "high"    # D

    .prologue
    .line 1412
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_1

    .line 1413
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x2

    .line 1418
    :goto_0
    return v0

    .line 1413
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1415
    :cond_1
    cmpl-double v0, p0, p4

    if-ltz v0, :cond_3

    .line 1416
    cmpl-double v0, p0, p4

    if-lez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1418
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inwards(III)Z
    .locals 2
    .param p0, "pttag"    # I
    .param p1, "opt1tag"    # I
    .param p2, "opt2tag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1429
    packed-switch p0, :pswitch_data_0

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1435
    :pswitch_0
    if-gez p1, :cond_1

    if-ltz p2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1437
    goto :goto_0

    .line 1439
    :pswitch_2
    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1429
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static solveCubic([D)I
    .locals 1
    .param p0, "eqn"    # [D

    .prologue
    .line 1152
    invoke-static {p0, p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result v0

    return v0
.end method

.method public static solveCubic([D[D)I
    .locals 36
    .param p0, "eqn"    # [D
    .param p1, "res"    # [D

    .prologue
    .line 1174
    const/16 v32, 0x3

    aget-wide v25, p0, v32

    .line 1175
    .local v25, "d":D
    const-wide/16 v32, 0x0

    cmpl-double v32, v25, v32

    if-nez v32, :cond_0

    .line 1177
    invoke-static/range {p0 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v28

    .line 1215
    :goto_0
    return v28

    .line 1179
    :cond_0
    const/16 v32, 0x2

    aget-wide v32, p0, v32

    div-double v19, v32, v25

    .line 1180
    .local v19, "a":D
    const/16 v32, 0x1

    aget-wide v32, p0, v32

    div-double v21, v32, v25

    .line 1181
    .local v21, "b":D
    const/16 v32, 0x0

    aget-wide v32, p0, v32

    div-double v23, v32, v25

    .line 1182
    .local v23, "c":D
    const/16 v28, 0x0

    .line 1183
    .local v28, "roots":I
    mul-double v32, v19, v19

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v21

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    div-double v9, v32, v34

    .line 1184
    .local v9, "Q":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v19

    mul-double v32, v32, v19

    mul-double v32, v32, v19

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    mul-double v34, v34, v19

    mul-double v34, v34, v21

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x403b000000000000L    # 27.0

    mul-double v34, v34, v23

    add-double v32, v32, v34

    const-wide/high16 v34, 0x404b000000000000L    # 54.0

    div-double v13, v32, v34

    .line 1185
    .local v13, "R":D
    mul-double v15, v13, v13

    .line 1186
    .local v15, "R2":D
    mul-double v32, v9, v9

    mul-double v11, v32, v9

    .line 1187
    .local v11, "Q3":D
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    div-double v19, v19, v32

    .line 1188
    cmpg-double v32, v15, v11

    if-gez v32, :cond_2

    .line 1189
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    div-double v32, v13, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->acos(D)D

    move-result-wide v30

    .line 1190
    .local v30, "theta":D
    const-wide/high16 v32, -0x4000000000000000L    # -2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    mul-double v9, v32, v34

    .line 1191
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    .line 1195
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 p0, v0

    .line 1196
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p0

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1198
    :cond_1
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "roots":I
    .local v29, "roots":I
    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    div-double v32, v30, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v32, v32, v9

    sub-double v32, v32, v19

    aput-wide v32, p1, v28

    .line 1199
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "roots":I
    .restart local v28    # "roots":I
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    add-double v32, v32, v30

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v32, v32, v9

    sub-double v32, v32, v19

    aput-wide v32, p1, v29

    .line 1200
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "roots":I
    .restart local v29    # "roots":I
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v32, v30, v32

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    mul-double v32, v32, v9

    sub-double v32, v32, v19

    aput-wide v32, p1, v28

    .line 1201
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->fixRoots([D[D)V

    move/from16 v28, v29

    .end local v29    # "roots":I
    .restart local v28    # "roots":I
    goto/16 :goto_0

    .line 1203
    .end local v30    # "theta":D
    :cond_2
    const-wide/16 v32, 0x0

    cmpg-double v32, v13, v32

    if-gez v32, :cond_5

    const/16 v27, 0x1

    .line 1204
    .local v27, "neg":Z
    :goto_1
    sub-double v32, v15, v11

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    .line 1205
    .local v17, "S":D
    if-eqz v27, :cond_3

    .line 1206
    neg-double v13, v13

    .line 1208
    :cond_3
    add-double v32, v13, v17

    const-wide v34, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 1209
    .local v5, "A":D
    if-nez v27, :cond_4

    .line 1210
    neg-double v5, v5

    .line 1212
    :cond_4
    const-wide/16 v32, 0x0

    cmpl-double v32, v5, v32

    if-nez v32, :cond_6

    const-wide/16 v7, 0x0

    .line 1213
    .local v7, "B":D
    :goto_2
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "roots":I
    .restart local v29    # "roots":I
    add-double v32, v5, v7

    sub-double v32, v32, v19

    aput-wide v32, p1, v28

    move/from16 v28, v29

    .end local v29    # "roots":I
    .restart local v28    # "roots":I
    goto/16 :goto_0

    .line 1203
    .end local v5    # "A":D
    .end local v7    # "B":D
    .end local v17    # "S":D
    .end local v27    # "neg":Z
    :cond_5
    const/16 v27, 0x0

    goto :goto_1

    .line 1212
    .restart local v5    # "A":D
    .restart local v17    # "S":D
    .restart local v27    # "neg":Z
    :cond_6
    div-double v7, v9, v5

    goto :goto_2
.end method

.method private static solveEqn([DID)D
    .locals 6
    .param p0, "eqn"    # [D
    .param p1, "order"    # I
    .param p2, "t"    # D

    .prologue
    .line 1260
    aget-wide v0, p0, p1

    .line 1261
    .local v0, "v":D
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 1264
    return-wide v0

    .line 1262
    :cond_0
    mul-double v2, v0, p2

    aget-wide v4, p0, p1

    add-double v0, v2, v4

    goto :goto_0
.end method

.method public static subdivide(Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;)V
    .locals 34
    .param p0, "src"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;
    .param p1, "left"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;
    .param p2, "right"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;

    .prologue
    .line 1022
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    .line 1023
    .local v1, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    .line 1024
    .local v3, "y1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    .line 1025
    .local v5, "ctrlx1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    .line 1026
    .local v7, "ctrly1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v26

    .line 1027
    .local v26, "ctrlx2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v28

    .line 1028
    .local v28, "ctrly2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v30

    .line 1029
    .local v30, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v32

    .line 1030
    .local v32, "y2":D
    add-double v17, v5, v26

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v17, v19

    .line 1031
    .local v13, "centerx":D
    add-double v17, v7, v28

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v15, v17, v19

    .line 1032
    .local v15, "centery":D
    add-double v17, v1, v5

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v5, v17, v19

    .line 1033
    add-double v17, v3, v7

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v7, v17, v19

    .line 1034
    add-double v17, v30, v26

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v26, v17, v19

    .line 1035
    add-double v17, v32, v28

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v28, v17, v19

    .line 1036
    add-double v17, v5, v13

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v9, v17, v19

    .line 1037
    .local v9, "ctrlx12":D
    add-double v17, v7, v15

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v11, v17, v19

    .line 1038
    .local v11, "ctrly12":D
    add-double v17, v26, v13

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v22, v17, v19

    .line 1039
    .local v22, "ctrlx21":D
    add-double v17, v28, v15

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v24, v17, v19

    .line 1040
    .local v24, "ctrly21":D
    add-double v17, v9, v22

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v17, v19

    .line 1041
    add-double v17, v11, v24

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v15, v17, v19

    .line 1042
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    .line 1043
    invoke-virtual/range {v0 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 1046
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v17, p2

    move-wide/from16 v18, v13

    move-wide/from16 v20, v15

    .line 1047
    invoke-virtual/range {v17 .. v33}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 1050
    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 24
    .param p0, "src"    # [D
    .param p1, "srcoff"    # I
    .param p2, "left"    # [D
    .param p3, "leftoff"    # I
    .param p4, "right"    # [D
    .param p5, "rightoff"    # I

    .prologue
    .line 1087
    add-int/lit8 v20, p1, 0x0

    aget-wide v12, p0, v20

    .line 1088
    .local v12, "x1":D
    add-int/lit8 v20, p1, 0x1

    aget-wide v16, p0, v20

    .line 1089
    .local v16, "y1":D
    add-int/lit8 v20, p1, 0x2

    aget-wide v4, p0, v20

    .line 1090
    .local v4, "ctrlx1":D
    add-int/lit8 v20, p1, 0x3

    aget-wide v8, p0, v20

    .line 1091
    .local v8, "ctrly1":D
    add-int/lit8 v20, p1, 0x4

    aget-wide v6, p0, v20

    .line 1092
    .local v6, "ctrlx2":D
    add-int/lit8 v20, p1, 0x5

    aget-wide v10, p0, v20

    .line 1093
    .local v10, "ctrly2":D
    add-int/lit8 v20, p1, 0x6

    aget-wide v14, p0, v20

    .line 1094
    .local v14, "x2":D
    add-int/lit8 v20, p1, 0x7

    aget-wide v18, p0, v20

    .line 1095
    .local v18, "y2":D
    if-eqz p2, :cond_0

    .line 1096
    add-int/lit8 v20, p3, 0x0

    aput-wide v12, p2, v20

    .line 1097
    add-int/lit8 v20, p3, 0x1

    aput-wide v16, p2, v20

    .line 1099
    :cond_0
    if-eqz p4, :cond_1

    .line 1100
    add-int/lit8 v20, p5, 0x6

    aput-wide v14, p4, v20

    .line 1101
    add-int/lit8 v20, p5, 0x7

    aput-wide v18, p4, v20

    .line 1103
    :cond_1
    add-double v20, v12, v4

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v12, v20, v22

    .line 1104
    add-double v20, v16, v8

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v16, v20, v22

    .line 1105
    add-double v20, v14, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v14, v20, v22

    .line 1106
    add-double v20, v18, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v20, v22

    .line 1107
    add-double v20, v4, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v0, v20, v22

    .line 1108
    .local v0, "centerx":D
    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v2, v20, v22

    .line 1109
    .local v2, "centery":D
    add-double v20, v12, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v4, v20, v22

    .line 1110
    add-double v20, v16, v2

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v8, v20, v22

    .line 1111
    add-double v20, v14, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v6, v20, v22

    .line 1112
    add-double v20, v18, v2

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v10, v20, v22

    .line 1113
    add-double v20, v4, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v0, v20, v22

    .line 1114
    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v2, v20, v22

    .line 1115
    if-eqz p2, :cond_2

    .line 1116
    add-int/lit8 v20, p3, 0x2

    aput-wide v12, p2, v20

    .line 1117
    add-int/lit8 v20, p3, 0x3

    aput-wide v16, p2, v20

    .line 1118
    add-int/lit8 v20, p3, 0x4

    aput-wide v4, p2, v20

    .line 1119
    add-int/lit8 v20, p3, 0x5

    aput-wide v8, p2, v20

    .line 1120
    add-int/lit8 v20, p3, 0x6

    aput-wide v0, p2, v20

    .line 1121
    add-int/lit8 v20, p3, 0x7

    aput-wide v2, p2, v20

    .line 1123
    :cond_2
    if-eqz p4, :cond_3

    .line 1124
    add-int/lit8 v20, p5, 0x0

    aput-wide v0, p4, v20

    .line 1125
    add-int/lit8 v20, p5, 0x1

    aput-wide v2, p4, v20

    .line 1126
    add-int/lit8 v20, p5, 0x2

    aput-wide v6, p4, v20

    .line 1127
    add-int/lit8 v20, p5, 0x3

    aput-wide v10, p4, v20

    .line 1128
    add-int/lit8 v20, p5, 0x4

    aput-wide v14, p4, v20

    .line 1129
    add-int/lit8 v20, p5, 0x5

    aput-wide v18, p4, v20

    .line 1131
    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1752
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1753
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(DD)Z
    .locals 34
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 1327
    const-wide/16 v0, 0x0

    mul-double v0, v0, p1

    const-wide/16 v2, 0x0

    mul-double v2, v2, p3

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 1333
    const/4 v0, 0x0

    .line 1344
    :goto_0
    return v0

    .line 1337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v4

    .line 1338
    .local v4, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v6

    .line 1339
    .local v6, "y1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v8

    .line 1340
    .local v8, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v10

    .local v10, "y2":D
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    .line 1341
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForLine(DDDDDD)I

    move-result v0

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v22

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v24

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v26

    const/16 v32, 0x0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 1342
    invoke-static/range {v12 .. v32}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->pointCrossingsForCubic(DDDDDDDDDDI)I

    move-result v1

    .line 1341
    add-int v33, v0, v1

    .line 1344
    .local v33, "crossings":I
    and-int/lit8 v0, v33, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(DDDD)Z
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 1662
    const-wide/16 v1, 0x0

    cmpg-double v1, p5, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    cmpg-double v1, p7, v1

    if-gtz v1, :cond_1

    .line 1663
    :cond_0
    const/4 v1, 0x0

    .line 1676
    :goto_0
    return v1

    .line 1668
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    add-double v1, p1, p5

    invoke-virtual {p0, v1, v2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    add-double v1, p1, p5

    add-double v3, p3, p7

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1669
    add-double v1, p3, p7

    .line 1668
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DD)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1670
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1675
    :cond_3
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>(DDDD)V

    .line 1676
    .local v0, "rect":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 1353
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1685
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 1

    .prologue
    .line 1694
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCtrlP1()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public abstract getCtrlP2()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public abstract getCtrlX1()D
.end method

.method public abstract getCtrlX2()D
.end method

.method public abstract getCtrlY1()D
.end method

.method public abstract getCtrlY2()D
.end method

.method public getFlatness()D
    .locals 16

    .prologue
    .line 982
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    .line 983
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    .line 982
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 16

    .prologue
    .line 970
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    .line 971
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    .line 970
    invoke-static/range {v0 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getP1()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public abstract getP2()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 1714
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/CubicIterator;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 1738
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;D)V

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
    .locals 64
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 1450
    const-wide/16 v10, 0x0

    cmpg-double v10, p5, v10

    if-lez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpg-double v10, p7, v10

    if-gtz v10, :cond_1

    .line 1451
    :cond_0
    const/4 v10, 0x0

    .line 1644
    :goto_0
    return v10

    .line 1458
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v3

    .line 1459
    .local v3, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v36

    .line 1460
    .local v36, "y1":D
    add-double v7, p1, p5

    move-wide/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v58

    .line 1461
    .local v58, "x1tag":I
    add-double v9, p3, p7

    move-wide/from16 v5, v36

    move-wide/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v61

    .line 1462
    .local v61, "y1tag":I
    if-nez v58, :cond_2

    if-nez v61, :cond_2

    .line 1463
    const/4 v10, 0x1

    goto :goto_0

    .line 1465
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v5

    .line 1466
    .local v5, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v18

    .line 1467
    .local v18, "y2":D
    add-double v9, p1, p5

    move-wide/from16 v7, p1

    invoke-static/range {v5 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v59

    .line 1468
    .local v59, "x2tag":I
    add-double v11, p3, p7

    move-wide/from16 v7, v18

    move-wide/from16 v9, p3

    invoke-static/range {v7 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v62

    .line 1469
    .local v62, "y2tag":I
    if-nez v59, :cond_3

    if-nez v62, :cond_3

    .line 1470
    const/4 v10, 0x1

    goto :goto_0

    .line 1473
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v7

    .line 1474
    .local v7, "ctrlx1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v38

    .line 1475
    .local v38, "ctrly1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v29

    .line 1476
    .local v29, "ctrlx2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v16

    .line 1477
    .local v16, "ctrly2":D
    add-double v11, p1, p5

    move-wide/from16 v9, p1

    invoke-static/range {v7 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v46

    .line 1478
    .local v46, "ctrlx1tag":I
    add-double v13, p3, p7

    move-wide/from16 v9, v38

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v48

    .line 1479
    .local v48, "ctrly1tag":I
    add-double v13, p1, p5

    move-wide/from16 v9, v29

    move-wide/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v47

    .line 1480
    .local v47, "ctrlx2tag":I
    add-double v13, p3, p7

    move-wide/from16 v9, v16

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v49

    .line 1484
    .local v49, "ctrly2tag":I
    if-gez v58, :cond_4

    if-gez v59, :cond_4

    if-gez v46, :cond_4

    .line 1485
    if-gez v47, :cond_4

    .line 1486
    const/4 v10, 0x0

    goto :goto_0

    .line 1488
    :cond_4
    if-gez v61, :cond_5

    if-gez v62, :cond_5

    if-gez v48, :cond_5

    .line 1489
    if-gez v49, :cond_5

    .line 1490
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1492
    :cond_5
    if-lez v58, :cond_6

    if-lez v59, :cond_6

    if-lez v46, :cond_6

    .line 1493
    if-lez v47, :cond_6

    .line 1494
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1496
    :cond_6
    if-lez v61, :cond_7

    if-lez v62, :cond_7

    if-lez v48, :cond_7

    .line 1497
    if-lez v49, :cond_7

    .line 1498
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1506
    :cond_7
    move/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1507
    move/from16 v0, v61

    move/from16 v1, v62

    move/from16 v2, v48

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1509
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1511
    :cond_8
    move/from16 v0, v59

    move/from16 v1, v58

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1512
    move/from16 v0, v62

    move/from16 v1, v61

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1514
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1518
    :cond_9
    mul-int v10, v58, v59

    if-gtz v10, :cond_a

    const/16 v60, 0x1

    .line 1519
    .local v60, "xoverlap":Z
    :goto_1
    mul-int v10, v61, v62

    if-gtz v10, :cond_b

    const/16 v63, 0x1

    .line 1520
    .local v63, "yoverlap":Z
    :goto_2
    if-nez v58, :cond_c

    if-nez v59, :cond_c

    if-eqz v63, :cond_c

    .line 1521
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1518
    .end local v60    # "xoverlap":Z
    .end local v63    # "yoverlap":Z
    :cond_a
    const/16 v60, 0x0

    goto :goto_1

    .line 1519
    .restart local v60    # "xoverlap":Z
    :cond_b
    const/16 v63, 0x0

    goto :goto_2

    .line 1523
    .restart local v63    # "yoverlap":Z
    :cond_c
    if-nez v61, :cond_d

    if-nez v62, :cond_d

    if-eqz v60, :cond_d

    .line 1524
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1533
    :cond_d
    const/4 v10, 0x4

    new-array v9, v10, [D

    .line 1534
    .local v9, "eqn":[D
    const/4 v10, 0x4

    new-array v0, v10, [D

    move-object/from16 v20, v0

    .line 1535
    .local v20, "res":[D
    if-nez v63, :cond_10

    .line 1541
    if-gez v61, :cond_e

    move-wide/from16 v10, p3

    :goto_3
    move-wide/from16 v12, v36

    move-wide/from16 v14, v38

    invoke-static/range {v9 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->fillEqn([DDDDDD)V

    .line 1542
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result v21

    .line 1543
    .local v21, "num":I
    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-wide/from16 v25, v3

    move-wide/from16 v27, v7

    move-wide/from16 v31, v5

    invoke-static/range {v20 .. v32}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->evalCubic([DIZZ[DDDDD)I

    move-result v21

    .line 1547
    const/4 v10, 0x2

    move/from16 v0, v21

    if-ne v0, v10, :cond_f

    const/4 v10, 0x0

    aget-wide v10, v20, v10

    add-double v14, p1, p5

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v22

    .line 1548
    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double v14, p1, p5

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v10

    mul-int v10, v10, v22

    if-gtz v10, :cond_f

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1541
    .end local v21    # "num":I
    :cond_e
    add-double v10, p3, p7

    goto :goto_3

    .line 1548
    .restart local v21    # "num":I
    :cond_f
    const/4 v10, 0x0

    .line 1547
    goto/16 :goto_0

    .line 1552
    .end local v21    # "num":I
    :cond_10
    if-nez v60, :cond_13

    .line 1558
    if-gez v58, :cond_11

    move-wide/from16 v23, p1

    :goto_4
    move-object/from16 v22, v9

    move-wide/from16 v25, v3

    move-wide/from16 v27, v7

    move-wide/from16 v31, v5

    invoke-static/range {v22 .. v32}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->fillEqn([DDDDDD)V

    .line 1559
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result v21

    .line 1560
    .restart local v21    # "num":I
    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v31, v20

    move/from16 v32, v21

    move-wide/from16 v40, v16

    move-wide/from16 v42, v18

    invoke-static/range {v31 .. v43}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->evalCubic([DIZZ[DDDDD)I

    move-result v21

    .line 1564
    const/4 v10, 0x2

    move/from16 v0, v21

    if-ne v0, v10, :cond_12

    const/4 v10, 0x0

    aget-wide v10, v20, v10

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v22

    .line 1565
    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v10

    mul-int v10, v10, v22

    if-gtz v10, :cond_12

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1558
    .end local v21    # "num":I
    :cond_11
    add-double v23, p1, p5

    goto :goto_4

    .line 1565
    .restart local v21    # "num":I
    :cond_12
    const/4 v10, 0x0

    .line 1564
    goto/16 :goto_0

    .line 1571
    .end local v21    # "num":I
    :cond_13
    sub-double v50, v5, v3

    .line 1572
    .local v50, "dx":D
    sub-double v52, v18, v36

    .line 1573
    .local v52, "dy":D
    mul-double v10, v18, v3

    mul-double v12, v5, v36

    sub-double v55, v10, v12

    .line 1575
    .local v55, "k":D
    if-nez v61, :cond_14

    .line 1576
    move/from16 v44, v58

    .line 1581
    .local v44, "c1tag":I
    :goto_5
    if-nez v62, :cond_16

    .line 1582
    move/from16 v45, v59

    .line 1589
    .local v45, "c2tag":I
    :goto_6
    mul-int v10, v44, v45

    if-gtz v10, :cond_18

    .line 1590
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1578
    .end local v44    # "c1tag":I
    .end local v45    # "c2tag":I
    :cond_14
    if-gez v61, :cond_15

    move-wide/from16 v10, p3

    :goto_7
    mul-double v10, v10, v50

    add-double v10, v10, v55

    div-double v10, v10, v52

    .line 1579
    add-double v14, p1, p5

    move-wide/from16 v12, p1

    .line 1578
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v44

    .restart local v44    # "c1tag":I
    goto :goto_5

    .end local v44    # "c1tag":I
    :cond_15
    add-double v10, p3, p7

    goto :goto_7

    .line 1584
    .restart local v44    # "c1tag":I
    :cond_16
    if-gez v62, :cond_17

    move-wide/from16 v10, p3

    :goto_8
    mul-double v10, v10, v50

    add-double v10, v10, v55

    div-double v10, v10, v52

    .line 1585
    add-double v14, p1, p5

    move-wide/from16 v12, p1

    .line 1584
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v45

    .restart local v45    # "c2tag":I
    goto :goto_6

    .end local v45    # "c2tag":I
    :cond_17
    add-double v10, p3, p7

    goto :goto_8

    .line 1620
    .restart local v45    # "c2tag":I
    :cond_18
    mul-int v10, v44, v58

    if-gtz v10, :cond_1b

    move/from16 v44, v61

    .line 1630
    :goto_9
    if-gez v45, :cond_1c

    move-wide/from16 v23, p1

    :goto_a
    move-object/from16 v22, v9

    move-wide/from16 v25, v3

    move-wide/from16 v27, v7

    move-wide/from16 v31, v5

    invoke-static/range {v22 .. v32}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->fillEqn([DDDDDD)V

    .line 1631
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result v21

    .line 1632
    .restart local v21    # "num":I
    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v31, v20

    move/from16 v32, v21

    move-wide/from16 v40, v16

    move-wide/from16 v42, v18

    invoke-static/range {v31 .. v43}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->evalCubic([DIZZ[DDDDD)I

    move-result v21

    .line 1637
    add-int/lit8 v10, v21, 0x1

    new-array v0, v10, [I

    move-object/from16 v57, v0

    .line 1638
    .local v57, "tags":[I
    const/16 v54, 0x0

    .local v54, "i":I
    :goto_b
    move/from16 v0, v54

    move/from16 v1, v21

    if-lt v0, v1, :cond_1d

    .line 1641
    aput v44, v57, v21

    .line 1642
    invoke-static/range {v57 .. v57}, Ljava/util/Arrays;->sort([I)V

    .line 1643
    const/4 v10, 0x1

    move/from16 v0, v21

    if-lt v0, v10, :cond_19

    const/4 v10, 0x0

    aget v10, v57, v10

    const/4 v11, 0x1

    aget v11, v57, v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_1e

    :cond_19
    const/4 v10, 0x3

    move/from16 v0, v21

    if-lt v0, v10, :cond_1a

    const/4 v10, 0x2

    aget v10, v57, v10

    .line 1644
    const/4 v11, 0x3

    aget v11, v57, v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_1e

    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v21    # "num":I
    .end local v54    # "i":I
    .end local v57    # "tags":[I
    :cond_1b
    move/from16 v44, v62

    .line 1620
    goto :goto_9

    .line 1630
    :cond_1c
    add-double v23, p1, p5

    goto :goto_a

    .line 1639
    .restart local v21    # "num":I
    .restart local v54    # "i":I
    .restart local v57    # "tags":[I
    :cond_1d
    aget-wide v10, v20, v54

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getTag(DDD)I

    move-result v10

    aput v10, v57, v54

    .line 1638
    add-int/lit8 v54, v54, 0x1

    goto :goto_b

    .line 1644
    :cond_1e
    const/4 v10, 0x1

    .line 1643
    goto/16 :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1653
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract setCurve(DDDDDDDD)V
.end method

.method public setCurve(Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;)V
    .locals 17
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;

    .prologue
    .line 835
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    .line 836
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getX2()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->getY2()D

    move-result-wide v15

    move-object/from16 v0, p0

    .line 835
    invoke-virtual/range {v0 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 837
    return-void
.end method

.method public setCurve(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V
    .locals 17
    .param p1, "p1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "cp1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p3, "cp2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p4, "p2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 802
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v9

    .line 803
    invoke-virtual/range {p3 .. p3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v13

    invoke-virtual/range {p4 .. p4}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v15

    move-object/from16 v0, p0

    .line 802
    invoke-virtual/range {v0 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 804
    return-void
.end method

.method public setCurve([DI)V
    .locals 17
    .param p1, "coords"    # [D
    .param p2, "offset"    # I

    .prologue
    .line 778
    add-int/lit8 v0, p2, 0x0

    aget-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v5, p1, v0

    .line 779
    add-int/lit8 v0, p2, 0x3

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v11, p1, v0

    .line 780
    add-int/lit8 v0, p2, 0x6

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-wide v15, p1, v0

    move-object/from16 v0, p0

    .line 778
    invoke-virtual/range {v0 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 781
    return-void
.end method

.method public setCurve([Lorg/loon/framework/android/game/core/graphics/geom/Point2D;I)V
    .locals 17
    .param p1, "pts"    # [Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "offset"    # I

    .prologue
    .line 820
    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    .line 821
    add-int/lit8 v0, p2, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    add-int/lit8 v0, p2, 0x2

    aget-object v0, p1, v0

    .line 822
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v9

    add-int/lit8 v0, p2, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v11

    .line 823
    add-int/lit8 v0, p2, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v13

    add-int/lit8 v0, p2, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v15

    move-object/from16 v0, p0

    .line 820
    invoke-virtual/range {v0 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 824
    return-void
.end method

.method public subdivide(Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;)V
    .locals 0
    .param p1, "left"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;
    .param p2, "right"    # Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;

    .prologue
    .line 1000
    invoke-static {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;->subdivide(Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/CubicCurve2D;)V

    .line 1001
    return-void
.end method
