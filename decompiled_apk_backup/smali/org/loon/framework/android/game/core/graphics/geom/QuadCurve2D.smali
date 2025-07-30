.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;
.super Ljava/lang/Object;
.source "QuadCurve2D.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D$Double;,
        Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D$Float;
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
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    return-void
.end method

.method private static evalQuadratic([DIZZ[DDDD)I
    .locals 13
    .param p0, "vals"    # [D
    .param p1, "num"    # I
    .param p2, "include0"    # Z
    .param p3, "include1"    # Z
    .param p4, "inflect"    # [D
    .param p5, "c1"    # D
    .param p7, "ctrl"    # D
    .param p9, "c2"    # D

    .prologue
    .line 1118
    const/4 v1, 0x0

    .line 1119
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1128
    return v2

    .line 1120
    :cond_0
    aget-wide v3, p0, v0

    .line 1121
    .local v3, "t":D
    if-eqz p2, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_4

    .line 1122
    :cond_1
    if-eqz p3, :cond_5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v3, v7

    if-gtz v7, :cond_4

    .line 1123
    :goto_1
    if-eqz p4, :cond_2

    const/4 v7, 0x1

    aget-wide v7, p4, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    aget-wide v11, p4, v11

    mul-double/2addr v9, v11

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_4

    .line 1124
    :cond_2
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v5, v7, v3

    .line 1125
    .local v5, "u":D
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    mul-double v7, p5, v5

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v9, v9, p7

    mul-double/2addr v9, v3

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    mul-double v9, p9, v3

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    aput-wide v7, p0, v2

    .line 1119
    .end local v5    # "u":D
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 1121
    :cond_3
    const-wide/16 v7, 0x0

    cmpl-double v7, v3, v7

    if-gtz v7, :cond_1

    :cond_4
    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    .line 1122
    .end local v1    # "j":I
    .restart local v2    # "j":I
    :cond_5
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v3, v7

    if-gez v7, :cond_4

    goto :goto_1
.end method

.method private static fillEqn([DDDDD)V
    .locals 3
    .param p0, "eqn"    # [D
    .param p1, "val"    # D
    .param p3, "c1"    # D
    .param p5, "cp"    # D
    .param p7, "c2"    # D

    .prologue
    .line 1101
    const/4 v0, 0x0

    sub-double v1, p3, p1

    aput-wide v1, p0, v0

    .line 1102
    const/4 v0, 0x1

    add-double v1, p5, p5

    sub-double/2addr v1, p3

    sub-double/2addr v1, p3

    aput-wide v1, p0, v0

    .line 1103
    const/4 v0, 0x2

    sub-double v1, p3, p5

    sub-double/2addr v1, p5

    add-double/2addr v1, p7

    aput-wide v1, p0, v0

    .line 1104
    return-void
.end method

.method public static getFlatness(DDDDDD)D
    .locals 12
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "ctrlx"    # D
    .param p6, "ctrly"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D

    .prologue
    .line 709
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatness([DI)D
    .locals 12
    .param p0, "coords"    # [D
    .param p1, "offset"    # I

    .prologue
    .line 748
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    .line 749
    add-int/lit8 v4, p1, 0x4

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x5

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x2

    aget-wide v8, p0, v8

    .line 750
    add-int/lit8 v10, p1, 0x3

    aget-wide v10, p0, v10

    .line 748
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq(DDDDDD)D
    .locals 12
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "ctrlx"    # D
    .param p6, "ctrly"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D

    .prologue
    .line 683
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 12
    .param p0, "coords"    # [D
    .param p1, "offset"    # I

    .prologue
    .line 728
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    .line 729
    add-int/lit8 v4, p1, 0x4

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x5

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x2

    aget-wide v8, p0, v8

    .line 730
    add-int/lit8 v10, p1, 0x3

    aget-wide v10, p0, v10

    .line 728
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getTag(DDD)I
    .locals 1
    .param p0, "coord"    # D
    .param p2, "low"    # D
    .param p4, "high"    # D

    .prologue
    .line 1143
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_1

    .line 1144
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x2

    .line 1149
    :goto_0
    return v0

    .line 1144
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1146
    :cond_1
    cmpl-double v0, p0, p4

    if-ltz v0, :cond_3

    .line 1147
    cmpl-double v0, p0, p4

    if-lez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1149
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

    .line 1160
    packed-switch p0, :pswitch_data_0

    .line 1170
    :cond_0
    :goto_0
    return v0

    .line 1166
    :pswitch_0
    if-gez p1, :cond_1

    if-ltz p2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_2
    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static solveQuadratic([D)I
    .locals 1
    .param p0, "eqn"    # [D

    .prologue
    .line 926
    invoke-static {p0, p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v0

    return v0
.end method

.method public static solveQuadratic([D[D)I
    .locals 16
    .param p0, "eqn"    # [D
    .param p1, "res"    # [D

    .prologue
    .line 955
    const/4 v12, 0x2

    aget-wide v0, p0, v12

    .line 956
    .local v0, "a":D
    const/4 v12, 0x1

    aget-wide v2, p0, v12

    .line 957
    .local v2, "b":D
    const/4 v12, 0x0

    aget-wide v4, p0, v12

    .line 958
    .local v4, "c":D
    const/4 v10, 0x0

    .line 959
    .local v10, "roots":I
    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_1

    .line 961
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_0

    .line 963
    const/4 v12, -0x1

    .line 989
    :goto_0
    return v12

    .line 965
    :cond_0
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "roots":I
    .local v11, "roots":I
    neg-double v12, v4

    div-double/2addr v12, v2

    aput-wide v12, p1, v10

    move v10, v11

    .end local v11    # "roots":I
    .restart local v10    # "roots":I
    :goto_1
    move v12, v10

    .line 989
    goto :goto_0

    .line 968
    :cond_1
    mul-double v12, v2, v2

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v14, v0

    mul-double/2addr v14, v4

    sub-double v6, v12, v14

    .line 969
    .local v6, "d":D
    const-wide/16 v12, 0x0

    cmpg-double v12, v6, v12

    if-gez v12, :cond_2

    .line 971
    const/4 v12, 0x0

    goto :goto_0

    .line 973
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 979
    const-wide/16 v12, 0x0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_3

    .line 980
    neg-double v6, v6

    .line 982
    :cond_3
    add-double v12, v2, v6

    const-wide/high16 v14, -0x4000000000000000L    # -2.0

    div-double v8, v12, v14

    .line 984
    .local v8, "q":D
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "roots":I
    .restart local v11    # "roots":I
    div-double v12, v8, v0

    aput-wide v12, p1, v10

    .line 985
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-eqz v12, :cond_4

    .line 986
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "roots":I
    .restart local v10    # "roots":I
    div-double v12, v4, v8

    aput-wide v12, p1, v11

    goto :goto_1

    .end local v10    # "roots":I
    .restart local v11    # "roots":I
    :cond_4
    move v10, v11

    .end local v11    # "roots":I
    .restart local v10    # "roots":I
    goto :goto_1
.end method

.method public static subdivide(Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;)V
    .locals 26
    .param p0, "src"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;
    .param p1, "left"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;
    .param p2, "right"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;

    .prologue
    .line 816
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    .line 817
    .local v1, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    .line 818
    .local v3, "y1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v9

    .line 819
    .local v9, "ctrlx":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v11

    .line 820
    .local v11, "ctrly":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v22

    .line 821
    .local v22, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v24

    .line 822
    .local v24, "y2":D
    add-double v13, v1, v9

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v5, v13, v15

    .line 823
    .local v5, "ctrlx1":D
    add-double v13, v3, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v7, v13, v15

    .line 824
    .local v7, "ctrly1":D
    add-double v13, v22, v9

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v18, v13, v15

    .line 825
    .local v18, "ctrlx2":D
    add-double v13, v24, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v20, v13, v15

    .line 826
    .local v20, "ctrly2":D
    add-double v13, v5, v18

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v9, v13, v15

    .line 827
    add-double v13, v7, v20

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v11, v13, v15

    .line 828
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    .line 829
    invoke-virtual/range {v0 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 831
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v13, p2

    move-wide v14, v9

    move-wide/from16 v16, v11

    .line 832
    invoke-virtual/range {v13 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 834
    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 16
    .param p0, "src"    # [D
    .param p1, "srcoff"    # I
    .param p2, "left"    # [D
    .param p3, "leftoff"    # I
    .param p4, "right"    # [D
    .param p5, "rightoff"    # I

    .prologue
    .line 871
    add-int/lit8 v12, p1, 0x0

    aget-wide v4, p0, v12

    .line 872
    .local v4, "x1":D
    add-int/lit8 v12, p1, 0x1

    aget-wide v8, p0, v12

    .line 873
    .local v8, "y1":D
    add-int/lit8 v12, p1, 0x2

    aget-wide v0, p0, v12

    .line 874
    .local v0, "ctrlx":D
    add-int/lit8 v12, p1, 0x3

    aget-wide v2, p0, v12

    .line 875
    .local v2, "ctrly":D
    add-int/lit8 v12, p1, 0x4

    aget-wide v6, p0, v12

    .line 876
    .local v6, "x2":D
    add-int/lit8 v12, p1, 0x5

    aget-wide v10, p0, v12

    .line 877
    .local v10, "y2":D
    if-eqz p2, :cond_0

    .line 878
    add-int/lit8 v12, p3, 0x0

    aput-wide v4, p2, v12

    .line 879
    add-int/lit8 v12, p3, 0x1

    aput-wide v8, p2, v12

    .line 881
    :cond_0
    if-eqz p4, :cond_1

    .line 882
    add-int/lit8 v12, p5, 0x4

    aput-wide v6, p4, v12

    .line 883
    add-int/lit8 v12, p5, 0x5

    aput-wide v10, p4, v12

    .line 885
    :cond_1
    add-double v12, v4, v0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v4, v12, v14

    .line 886
    add-double v12, v8, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v8, v12, v14

    .line 887
    add-double v12, v6, v0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v6, v12, v14

    .line 888
    add-double v12, v10, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v10, v12, v14

    .line 889
    add-double v12, v4, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v0, v12, v14

    .line 890
    add-double v12, v8, v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v2, v12, v14

    .line 891
    if-eqz p2, :cond_2

    .line 892
    add-int/lit8 v12, p3, 0x2

    aput-wide v4, p2, v12

    .line 893
    add-int/lit8 v12, p3, 0x3

    aput-wide v8, p2, v12

    .line 894
    add-int/lit8 v12, p3, 0x4

    aput-wide v0, p2, v12

    .line 895
    add-int/lit8 v12, p3, 0x5

    aput-wide v2, p2, v12

    .line 897
    :cond_2
    if-eqz p4, :cond_3

    .line 898
    add-int/lit8 v12, p5, 0x0

    aput-wide v0, p4, v12

    .line 899
    add-int/lit8 v12, p5, 0x1

    aput-wide v2, p4, v12

    .line 900
    add-int/lit8 v12, p5, 0x2

    aput-wide v6, p4, v12

    .line 901
    add-int/lit8 v12, p5, 0x3

    aput-wide v10, p4, v12

    .line 903
    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1454
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1455
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(DD)Z
    .locals 40
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 999
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v14

    .line 1000
    .local v14, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v24

    .line 1001
    .local v24, "y1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v20

    .line 1002
    .local v20, "xc":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v30

    .line 1003
    .local v30, "yc":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v16

    .line 1004
    .local v16, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v26

    .line 1061
    .local v26, "y2":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v20

    sub-double v34, v14, v34

    add-double v8, v34, v16

    .line 1062
    .local v8, "kx":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v30

    sub-double v34, v24, v34

    add-double v10, v34, v26

    .line 1063
    .local v10, "ky":D
    sub-double v0, p1, v14

    .line 1064
    .local v0, "dx":D
    sub-double v4, p3, v24

    .line 1065
    .local v4, "dy":D
    sub-double v2, v16, v14

    .line 1066
    .local v2, "dxl":D
    sub-double v6, v26, v24

    .line 1068
    .local v6, "dyl":D
    mul-double v34, v0, v10

    mul-double v36, v4, v8

    sub-double v34, v34, v36

    mul-double v36, v2, v10

    mul-double v38, v6, v8

    sub-double v36, v36, v38

    div-double v12, v34, v36

    .line 1069
    .local v12, "t0":D
    const-wide/16 v34, 0x0

    cmpg-double v34, v12, v34

    if-ltz v34, :cond_0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpl-double v34, v12, v34

    if-lez v34, :cond_1

    .line 1070
    :cond_0
    const/16 v34, 0x0

    .line 1079
    :goto_0
    return v34

    .line 1073
    :cond_1
    mul-double v34, v8, v12

    mul-double v34, v34, v12

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    sub-double v38, v20, v14

    mul-double v36, v36, v38

    mul-double v36, v36, v12

    add-double v34, v34, v36

    add-double v18, v34, v14

    .line 1074
    .local v18, "xb":D
    mul-double v34, v10, v12

    mul-double v34, v34, v12

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    sub-double v38, v30, v24

    mul-double v36, v36, v38

    mul-double v36, v36, v12

    add-double v34, v34, v36

    add-double v28, v34, v24

    .line 1075
    .local v28, "yb":D
    mul-double v34, v2, v12

    add-double v22, v34, v14

    .line 1076
    .local v22, "xl":D
    mul-double v34, v6, v12

    add-double v32, v34, v24

    .line 1078
    .local v32, "yl":D
    cmpl-double v34, p1, v18

    if-ltz v34, :cond_2

    cmpg-double v34, p1, v22

    if-ltz v34, :cond_6

    :cond_2
    cmpl-double v34, p1, v22

    if-ltz v34, :cond_3

    cmpg-double v34, p1, v18

    if-ltz v34, :cond_6

    .line 1079
    :cond_3
    cmpl-double v34, p3, v28

    if-ltz v34, :cond_4

    cmpg-double v34, p3, v32

    if-ltz v34, :cond_6

    :cond_4
    cmpl-double v34, p3, v32

    if-ltz v34, :cond_5

    cmpg-double v34, p3, v28

    if-ltz v34, :cond_6

    :cond_5
    const/16 v34, 0x0

    goto :goto_0

    :cond_6
    const/16 v34, 0x1

    .line 1078
    goto :goto_0
.end method

.method public contains(DDDD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1372
    cmpg-double v1, p5, v2

    if-lez v1, :cond_0

    cmpg-double v1, p7, v2

    if-gtz v1, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    add-double v1, p1, p5

    invoke-virtual {p0, v1, v2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    add-double v1, p1, p5

    add-double v3, p3, p7

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1378
    add-double v1, p3, p7

    .line 1377
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 1088
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1387
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 1

    .prologue
    .line 1396
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCtrlPt()Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
.end method

.method public abstract getCtrlX()D
.end method

.method public abstract getCtrlY()D
.end method

.method public getFlatness()D
    .locals 12

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    .line 775
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    .line 774
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 12

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    .line 763
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    .line 762
    invoke-static/range {v0 .. v11}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptSegDistSq(DDDDDD)D

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
    .line 1415
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/QuadIterator;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 1439
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

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
    .locals 49
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 1181
    const-wide/16 v10, 0x0

    cmpg-double v10, p5, v10

    if-lez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpg-double v10, p7, v10

    if-gtz v10, :cond_1

    .line 1182
    :cond_0
    const/4 v10, 0x0

    .line 1354
    :goto_0
    return v10

    .line 1189
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v3

    .line 1190
    .local v3, "x1":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v44

    .line 1191
    .local v44, "y1":D
    add-double v7, p1, p5

    move-wide/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v41

    .line 1192
    .local v41, "x1tag":I
    add-double v9, p3, p7

    move-wide/from16 v5, v44

    move-wide/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v46

    .line 1193
    .local v46, "y1tag":I
    if-nez v41, :cond_2

    if-nez v46, :cond_2

    .line 1194
    const/4 v10, 0x1

    goto :goto_0

    .line 1196
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v5

    .line 1197
    .local v5, "x2":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v16

    .line 1198
    .local v16, "y2":D
    add-double v9, p1, p5

    move-wide/from16 v7, p1

    invoke-static/range {v5 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v42

    .line 1199
    .local v42, "x2tag":I
    add-double v11, p3, p7

    move-wide/from16 v7, v16

    move-wide/from16 v9, p3

    invoke-static/range {v7 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v47

    .line 1200
    .local v47, "y2tag":I
    if-nez v42, :cond_3

    if-nez v47, :cond_3

    .line 1201
    const/4 v10, 0x1

    goto :goto_0

    .line 1203
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v7

    .line 1204
    .local v7, "ctrlx":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v32

    .line 1205
    .local v32, "ctrly":D
    add-double v11, p1, p5

    move-wide/from16 v9, p1

    invoke-static/range {v7 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v31

    .line 1206
    .local v31, "ctrlxtag":I
    add-double v13, p3, p7

    move-wide/from16 v9, v32

    move-wide/from16 v11, p3

    invoke-static/range {v9 .. v14}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v34

    .line 1210
    .local v34, "ctrlytag":I
    if-gez v41, :cond_4

    if-gez v42, :cond_4

    if-gez v31, :cond_4

    .line 1211
    const/4 v10, 0x0

    goto :goto_0

    .line 1213
    :cond_4
    if-gez v46, :cond_5

    if-gez v47, :cond_5

    if-gez v34, :cond_5

    .line 1214
    const/4 v10, 0x0

    goto :goto_0

    .line 1216
    :cond_5
    if-lez v41, :cond_6

    if-lez v42, :cond_6

    if-lez v31, :cond_6

    .line 1217
    const/4 v10, 0x0

    goto :goto_0

    .line 1219
    :cond_6
    if-lez v46, :cond_7

    if-lez v47, :cond_7

    if-lez v34, :cond_7

    .line 1220
    const/4 v10, 0x0

    goto :goto_0

    .line 1228
    :cond_7
    move/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_8

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1230
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1232
    :cond_8
    move/from16 v0, v42

    move/from16 v1, v41

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_9

    move/from16 v0, v47

    move/from16 v1, v46

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->inwards(III)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1234
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1238
    :cond_9
    mul-int v10, v41, v42

    if-gtz v10, :cond_a

    const/16 v43, 0x1

    .line 1239
    .local v43, "xoverlap":Z
    :goto_1
    mul-int v10, v46, v47

    if-gtz v10, :cond_b

    const/16 v48, 0x1

    .line 1240
    .local v48, "yoverlap":Z
    :goto_2
    if-nez v41, :cond_c

    if-nez v42, :cond_c

    if-eqz v48, :cond_c

    .line 1241
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1238
    .end local v43    # "xoverlap":Z
    .end local v48    # "yoverlap":Z
    :cond_a
    const/16 v43, 0x0

    goto :goto_1

    .line 1239
    .restart local v43    # "xoverlap":Z
    :cond_b
    const/16 v48, 0x0

    goto :goto_2

    .line 1243
    .restart local v48    # "yoverlap":Z
    :cond_c
    if-nez v46, :cond_d

    if-nez v47, :cond_d

    if-eqz v43, :cond_d

    .line 1244
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1253
    :cond_d
    const/4 v10, 0x3

    new-array v9, v10, [D

    .line 1254
    .local v9, "eqn":[D
    const/4 v10, 0x3

    new-array v0, v10, [D

    move-object/from16 v18, v0

    .line 1255
    .local v18, "res":[D
    if-nez v48, :cond_10

    .line 1261
    if-gez v46, :cond_e

    move-wide/from16 v10, p3

    :goto_3
    move-wide/from16 v12, v44

    move-wide/from16 v14, v32

    invoke-static/range {v9 .. v17}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->fillEqn([DDDDD)V

    .line 1262
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 1263
    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-wide/from16 v23, v3

    move-wide/from16 v25, v7

    move-wide/from16 v27, v5

    invoke-static/range {v18 .. v28}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 1264
    const/4 v10, 0x0

    aget-wide v10, v18, v10

    add-double v14, p1, p5

    move-wide/from16 v12, p1

    .line 1263
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v20

    .line 1265
    const/4 v10, 0x1

    aget-wide v10, v18, v10

    add-double v14, p1, p5

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v10

    .line 1263
    mul-int v10, v10, v20

    if-gtz v10, :cond_f

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1261
    :cond_e
    add-double v10, p3, p7

    goto :goto_3

    .line 1263
    :cond_f
    const/4 v10, 0x0

    .line 1262
    goto/16 :goto_0

    .line 1269
    :cond_10
    if-nez v43, :cond_13

    .line 1275
    if-gez v41, :cond_11

    move-wide/from16 v20, p1

    :goto_4
    move-object/from16 v19, v9

    move-wide/from16 v22, v3

    move-wide/from16 v24, v7

    move-wide/from16 v26, v5

    invoke-static/range {v19 .. v27}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->fillEqn([DDDDD)V

    .line 1276
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 1277
    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-wide/from16 v23, v44

    move-wide/from16 v25, v32

    move-wide/from16 v27, v16

    invoke-static/range {v18 .. v28}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 1278
    const/4 v10, 0x0

    aget-wide v10, v18, v10

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    .line 1277
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v20

    .line 1279
    const/4 v10, 0x1

    aget-wide v10, v18, v10

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v10

    .line 1277
    mul-int v10, v10, v20

    if-gtz v10, :cond_12

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1275
    :cond_11
    add-double v20, p1, p5

    goto :goto_4

    .line 1277
    :cond_12
    const/4 v10, 0x0

    .line 1276
    goto/16 :goto_0

    .line 1285
    :cond_13
    sub-double v35, v5, v3

    .line 1286
    .local v35, "dx":D
    sub-double v37, v16, v44

    .line 1287
    .local v37, "dy":D
    mul-double v10, v16, v3

    mul-double v12, v5, v44

    sub-double v39, v10, v12

    .line 1289
    .local v39, "k":D
    if-nez v46, :cond_14

    .line 1290
    move/from16 v29, v41

    .line 1295
    .local v29, "c1tag":I
    :goto_5
    if-nez v47, :cond_16

    .line 1296
    move/from16 v30, v42

    .line 1303
    .local v30, "c2tag":I
    :goto_6
    mul-int v10, v29, v30

    if-gtz v10, :cond_18

    .line 1304
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1292
    .end local v29    # "c1tag":I
    .end local v30    # "c2tag":I
    :cond_14
    if-gez v46, :cond_15

    move-wide/from16 v10, p3

    :goto_7
    mul-double v10, v10, v35

    add-double v10, v10, v39

    div-double v10, v10, v37

    .line 1293
    add-double v14, p1, p5

    move-wide/from16 v12, p1

    .line 1292
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v29

    .restart local v29    # "c1tag":I
    goto :goto_5

    .end local v29    # "c1tag":I
    :cond_15
    add-double v10, p3, p7

    goto :goto_7

    .line 1298
    .restart local v29    # "c1tag":I
    :cond_16
    if-gez v47, :cond_17

    move-wide/from16 v10, p3

    :goto_8
    mul-double v10, v10, v35

    add-double v10, v10, v39

    div-double v10, v10, v37

    .line 1299
    add-double v14, p1, p5

    move-wide/from16 v12, p1

    .line 1298
    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v30

    .restart local v30    # "c2tag":I
    goto :goto_6

    .end local v30    # "c2tag":I
    :cond_17
    add-double v10, p3, p7

    goto :goto_8

    .line 1333
    .restart local v30    # "c2tag":I
    :cond_18
    mul-int v10, v29, v41

    if-gtz v10, :cond_19

    move/from16 v29, v46

    .line 1340
    :goto_9
    if-gez v30, :cond_1a

    move-wide/from16 v20, p1

    :goto_a
    move-object/from16 v19, v9

    move-wide/from16 v22, v3

    move-wide/from16 v24, v7

    move-wide/from16 v26, v5

    invoke-static/range {v19 .. v27}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->fillEqn([DDDDD)V

    .line 1341
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v19

    .line 1346
    .local v19, "num":I
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-wide/from16 v23, v44

    move-wide/from16 v25, v32

    move-wide/from16 v27, v16

    invoke-static/range {v18 .. v28}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->evalQuadratic([DIZZ[DDDD)I

    .line 1350
    const/4 v10, 0x0

    aget-wide v10, v18, v10

    add-double v14, p3, p7

    move-wide/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getTag(DDD)I

    move-result v30

    .line 1354
    mul-int v10, v29, v30

    if-gtz v10, :cond_1b

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v19    # "num":I
    :cond_19
    move/from16 v29, v47

    .line 1333
    goto :goto_9

    .line 1340
    :cond_1a
    add-double v20, p1, p5

    goto :goto_a

    .line 1354
    .restart local v19    # "num":I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1363
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract setCurve(DDDDDD)V
.end method

.method public setCurve(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V
    .locals 13
    .param p1, "p1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "cp"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p3, "p2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 622
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v9

    .line 623
    invoke-virtual/range {p3 .. p3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v11

    move-object v0, p0

    .line 622
    invoke-virtual/range {v0 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 624
    return-void
.end method

.method public setCurve(Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;)V
    .locals 13
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;

    .prologue
    .line 656
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getX2()D

    move-result-wide v9

    .line 657
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->getY2()D

    move-result-wide v11

    move-object v0, p0

    .line 656
    invoke-virtual/range {v0 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 658
    return-void
.end method

.method public setCurve([DI)V
    .locals 13
    .param p1, "coords"    # [D
    .param p2, "offset"    # I

    .prologue
    .line 604
    add-int/lit8 v0, p2, 0x0

    aget-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v5, p1, v0

    .line 605
    add-int/lit8 v0, p2, 0x3

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v11, p1, v0

    move-object v0, p0

    .line 604
    invoke-virtual/range {v0 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 606
    return-void
.end method

.method public setCurve([Lorg/loon/framework/android/game/core/graphics/geom/Point2D;I)V
    .locals 13
    .param p1, "pts"    # [Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "offset"    # I

    .prologue
    .line 641
    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    .line 642
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

    .line 643
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v9

    add-int/lit8 v0, p2, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v11

    move-object v0, p0

    .line 641
    invoke-virtual/range {v0 .. v12}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 644
    return-void
.end method

.method public subdivide(Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;)V
    .locals 0
    .param p1, "left"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;
    .param p2, "right"    # Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;

    .prologue
    .line 794
    invoke-static {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;->subdivide(Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;Lorg/loon/framework/android/game/core/graphics/geom/QuadCurve2D;)V

    .line 795
    return-void
.end method
