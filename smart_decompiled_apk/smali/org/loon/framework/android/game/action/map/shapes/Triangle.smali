.class public Lorg/loon/framework/android/game/action/map/shapes/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# instance fields
.field public xpoints:[F

.field public ypoints:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    .line 57
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 31
    sub-float v2, p3, p1

    .line 32
    .local v2, "dx1":F
    sub-float v3, p5, p1

    .line 33
    .local v3, "dx2":F
    sub-float v4, p4, p2

    .line 34
    .local v4, "dy1":F
    sub-float v5, p6, p2

    .line 35
    .local v5, "dy2":F
    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float v1, v6, v7

    .line 36
    .local v1, "cross":F
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    const/4 v0, 0x1

    .line 37
    .local v0, "ccw":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 39
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 40
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x2

    aput p5, v6, v7

    .line 41
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 42
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x1

    aput p4, v6, v7

    .line 43
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x2

    aput p6, v6, v7

    .line 52
    :goto_1
    return-void

    .line 36
    .end local v0    # "ccw":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    .restart local v0    # "ccw":Z
    :cond_1
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x0

    aput p1, v6, v7

    .line 46
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x1

    aput p5, v6, v7

    .line 47
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 48
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    .line 49
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x1

    aput p6, v6, v7

    .line 50
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v7, 0x2

    aput p4, v6, v7

    goto :goto_1
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 18
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float v11, p1, v15

    .line 121
    .local v11, "vx2":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float v14, p2, v15

    .line 122
    .local v14, "vy2":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v10, v15, v16

    .line 123
    .local v10, "vx1":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v13, v15, v16

    .line 124
    .local v13, "vy1":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v9, v15, v16

    .line 125
    .local v9, "vx0":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v12, v15, v16

    .line 127
    .local v12, "vy0":F
    mul-float v15, v9, v9

    mul-float v16, v12, v12

    add-float v1, v15, v16

    .line 128
    .local v1, "dot00":F
    mul-float v15, v9, v10

    mul-float v16, v12, v13

    add-float v2, v15, v16

    .line 129
    .local v2, "dot01":F
    mul-float v15, v9, v11

    mul-float v16, v12, v14

    add-float v3, v15, v16

    .line 130
    .local v3, "dot02":F
    mul-float v15, v10, v10

    mul-float v16, v13, v13

    add-float v4, v15, v16

    .line 131
    .local v4, "dot11":F
    mul-float v15, v10, v11

    mul-float v16, v13, v14

    add-float v5, v15, v16

    .line 132
    .local v5, "dot12":F
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v1, v4

    mul-float v17, v2, v2

    sub-float v16, v16, v17

    div-float v6, v15, v16

    .line 133
    .local v6, "invDenom":F
    mul-float v15, v4, v3

    mul-float v16, v2, v5

    sub-float v15, v15, v16

    mul-float v7, v15, v6

    .line 134
    .local v7, "u":F
    mul-float v15, v1, v5

    mul-float v16, v2, v3

    sub-float v15, v15, v16

    mul-float v8, v15, v6

    .line 136
    .local v8, "v":F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-ltz v15, :cond_0

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-ltz v15, :cond_0

    add-float v15, v7, v8

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public getVertexs()[F
    .locals 6

    .prologue
    .line 60
    iget-object v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    array-length v4, v4

    mul-int/lit8 v2, v4, 0x2

    .line 61
    .local v2, "vertice_size":I
    new-array v3, v2, [F

    .line 62
    .local v3, "verts":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 66
    return-object v3

    .line 63
    :cond_0
    iget-object v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v4, v4, v1

    aput v4, v3, v0

    .line 64
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v5, v5, v1

    aput v5, v3, v4

    .line 62
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isInside(FF)Z
    .locals 18
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float v11, p1, v15

    .line 101
    .local v11, "vx2":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float v14, p2, v15

    .line 102
    .local v14, "vy2":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v10, v15, v16

    .line 103
    .local v10, "vx1":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v13, v15, v16

    .line 104
    .local v13, "vy1":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v9, v15, v16

    .line 105
    .local v9, "vx0":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v12, v15, v16

    .line 107
    .local v12, "vy0":F
    mul-float v15, v9, v9

    mul-float v16, v12, v12

    add-float v1, v15, v16

    .line 108
    .local v1, "dot00":F
    mul-float v15, v9, v10

    mul-float v16, v12, v13

    add-float v2, v15, v16

    .line 109
    .local v2, "dot01":F
    mul-float v15, v9, v11

    mul-float v16, v12, v14

    add-float v3, v15, v16

    .line 110
    .local v3, "dot02":F
    mul-float v15, v10, v10

    mul-float v16, v13, v13

    add-float v4, v15, v16

    .line 111
    .local v4, "dot11":F
    mul-float v15, v10, v11

    mul-float v16, v13, v14

    add-float v5, v15, v16

    .line 112
    .local v5, "dot12":F
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v1, v4

    mul-float v17, v2, v2

    sub-float v16, v16, v17

    div-float v6, v15, v16

    .line 113
    .local v6, "invDenom":F
    mul-float v15, v4, v3

    mul-float v16, v2, v5

    sub-float v15, v15, v16

    mul-float v7, v15, v6

    .line 114
    .local v7, "u":F
    mul-float v15, v1, v5

    mul-float v16, v2, v3

    sub-float v15, v15, v16

    mul-float v8, v15, v6

    .line 116
    .local v8, "v":F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-lez v15, :cond_0

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_0

    add-float v15, v7, v8

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 70
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(IIII)V

    .line 71
    return-void
.end method

.method public set(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 74
    div-int/lit8 v3, p3, 0x2

    .line 75
    .local v3, "halfWidth":I
    div-int/lit8 v2, p4, 0x2

    .line 76
    .local v2, "halfHeight":I
    neg-int v7, v3

    int-to-float v6, v7

    .line 77
    .local v6, "top":F
    int-to-float v0, v2

    .line 78
    .local v0, "bottom":F
    neg-int v7, v2

    int-to-float v4, v7

    .line 79
    .local v4, "left":F
    const/4 v1, 0x0

    .line 80
    .local v1, "center":F
    int-to-float v5, v3

    .line 82
    .local v5, "right":F
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v8, 0x0

    int-to-float v9, p1

    add-float/2addr v9, v1

    aput v9, v7, v8

    .line 83
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v8, 0x1

    int-to-float v9, p1

    add-float/2addr v9, v5

    aput v9, v7, v8

    .line 84
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v8, 0x2

    int-to-float v9, p1

    add-float/2addr v9, v4

    aput v9, v7, v8

    .line 85
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v8, 0x0

    int-to-float v9, p2

    add-float/2addr v9, v6

    aput v9, v7, v8

    .line 86
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v8, 0x1

    int-to-float v9, p2

    add-float/2addr v9, v0

    aput v9, v7, v8

    .line 87
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v8, 0x2

    int-to-float v9, p2

    add-float/2addr v9, v0

    aput v9, v7, v8

    .line 88
    return-void
.end method

.method public set(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
    .locals 5
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 93
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 94
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 95
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 96
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    iget-object v1, p1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 97
    return-void
.end method
