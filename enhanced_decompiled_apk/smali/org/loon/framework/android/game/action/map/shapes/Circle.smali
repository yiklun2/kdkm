.class public Lorg/loon/framework/android/game/action/map/shapes/Circle;
.super Ljava/lang/Object;
.source "Circle.java"


# instance fields
.field private radius:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->x:F

    .line 33
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->y:F

    .line 34
    iput p3, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 42
    instance-of v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Circle;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 43
    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Circle;

    .line 44
    .local v0, "oCircle":Lorg/loon/framework/android/game/action/map/shapes/Circle;
    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->x:F

    iget v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->y:F

    iget v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    iget v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 46
    .end local v0    # "oCircle":Lorg/loon/framework/android/game/action/map/shapes/Circle;
    :cond_0
    return v1
.end method

.method public getCubage()D
    .locals 4

    .prologue
    .line 50
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    return v0
.end method

.method public getShape()Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Float;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    mul-float v0, v1, v2

    .line 129
    .local v0, "diameter":F
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Float;

    invoke-direct {v1, v3, v3, v0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Float;-><init>(FFFF)V

    return-object v1
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->y:F

    return v0
.end method

.method public intersects(Lorg/loon/framework/android/game/action/map/shapes/Circle;)Z
    .locals 9
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Circle;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v5

    .line 79
    .local v5, "r1":F
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v6

    .line 81
    .local v6, "r2":F
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v7

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v8

    sub-float v1, v7, v8

    .line 82
    .local v1, "dx":F
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v7

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v8

    sub-float v3, v7, v8

    .line 83
    .local v3, "dy":F
    mul-float v2, v1, v1

    .line 84
    .local v2, "dxSq":F
    mul-float v4, v3, v3

    .line 86
    .local v4, "dySq":F
    add-float v0, v2, v4

    .line 88
    .local v0, "circleDistSq":F
    add-float v7, v5, v6

    add-float v8, v5, v6

    mul-float/2addr v7, v8

    cmpl-float v7, v7, v0

    if-ltz v7, :cond_0

    .line 89
    const/4 v7, 0x1

    .line 91
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public merge(Lorg/loon/framework/android/game/action/map/shapes/Circle;Lorg/loon/framework/android/game/action/map/shapes/Circle;)V
    .locals 17
    .param p1, "one"    # Lorg/loon/framework/android/game/action/map/shapes/Circle;
    .param p2, "two"    # Lorg/loon/framework/android/game/action/map/shapes/Circle;

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v14

    sub-float v4, v13, v14

    .line 97
    .local v4, "dx":F
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v14

    sub-float v6, v13, v14

    .line 98
    .local v6, "dy":F
    mul-float v5, v4, v4

    .line 99
    .local v5, "dxSq":F
    mul-float v7, v6, v6

    .line 100
    .local v7, "dySq":F
    add-float v3, v5, v7

    .line 101
    .local v3, "circleDistSq":F
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v14

    sub-float v12, v13, v14

    .line 102
    .local v12, "r2":F
    mul-float v13, v12, v12

    cmpl-float v13, v13, v3

    if-ltz v13, :cond_1

    .line 103
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 104
    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setRadius(F)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setX(F)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setY(F)V

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setRadius(F)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setX(F)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setY(F)V

    goto :goto_0

    .line 113
    :cond_1
    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 114
    .local v1, "circleDist":D
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    float-to-double v13, v13

    add-double/2addr v13, v1

    invoke-virtual/range {p2 .. p2}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v15

    float-to-double v15, v15

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v10, v13, v15

    .line 115
    .local v10, "r":D
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v13, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setRadius(F)V

    .line 116
    const-wide/16 v13, 0x0

    cmpl-double v13, v1, v13

    if-lez v13, :cond_2

    .line 117
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getRadius()F

    move-result v13

    float-to-double v13, v13

    sub-double v13, v10, v13

    div-double v8, v13, v1

    .line 118
    .local v8, "f":D
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v13

    float-to-double v14, v4

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setX(F)V

    .line 119
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v13

    float-to-double v14, v6

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setY(F)V

    goto :goto_0

    .line 121
    .end local v8    # "f":D
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getX()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setX(F)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/loon/framework/android/game/action/map/shapes/Circle;->setY(F)V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 70
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->radius:F

    .line 71
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 54
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->x:F

    .line 55
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 62
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Circle;->y:F

    .line 63
    return-void
.end method
