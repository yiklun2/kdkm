.class public Lorg/loon/framework/android/game/physics/PhysicsUtils;
.super Ljava/lang/Object;
.source "PhysicsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBoxBody(Lcom/badlogic/gdx/physics/box2d/World;IIIILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 8
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p6, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 122
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lorg/loon/framework/android/game/physics/PhysicsUtils;->createBoxBody(Lcom/badlogic/gdx/physics/box2d/World;IIIILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createBoxBody(Lcom/badlogic/gdx/physics/box2d/World;IIIILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 5
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p6, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .param p7, "offset"    # F

    .prologue
    .line 140
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 141
    .local v1, "boxBodyDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p5, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 143
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p1

    div-float/2addr v4, p7

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 144
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p2

    div-float/2addr v4, p7

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 146
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 147
    .local v0, "boxBody":Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 149
    .local v2, "boxPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 150
    iput-object v2, p6, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 151
    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 152
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 154
    return-object v0
.end method

.method public static createBoxShape(II)Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 56
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 57
    .local v0, "poly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    int-to-float v1, p0

    div-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 58
    return-object v0
.end method

.method public static createCircleShape(I)Lcom/badlogic/gdx/physics/box2d/CircleShape;
    .locals 3
    .param p0, "width"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 44
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    int-to-float v1, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 45
    return-object v0
.end method

.method public static createFixtureDef(FFF)Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .locals 1
    .param p0, "density"    # F
    .param p1, "restitution"    # F
    .param p2, "friction"    # F

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/loon/framework/android/game/physics/PhysicsUtils;->createFixtureDef(FFFZ)Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    move-result-object v0

    return-object v0
.end method

.method public static createFixtureDef(FFFZ)Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .locals 1
    .param p0, "density"    # F
    .param p1, "restitution"    # F
    .param p2, "friction"    # F
    .param p3, "isSensor"    # Z

    .prologue
    .line 100
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 101
    .local v0, "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput p0, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 102
    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 103
    iput p2, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 104
    iput-boolean p3, v0, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 105
    return-object v0
.end method

.method public static createHexagonBody(Lcom/badlogic/gdx/physics/box2d/World;IIIILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 20
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p6, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 254
    div-int/lit8 v2, p3, 0x2

    int-to-float v14, v2

    .line 255
    .local v14, "halfWidth":F
    div-int/lit8 v2, p4, 0x2

    int-to-float v13, v2

    .line 257
    .local v13, "halfHeight":F
    neg-float v0, v13

    move/from16 v19, v0

    .line 258
    .local v19, "top":F
    move v11, v13

    .line 259
    .local v11, "bottom":F
    const/4 v12, 0x0

    .line 261
    .local v12, "centerX":F
    neg-float v2, v14

    const/high16 v3, 0x40200000    # 2.5f

    add-float v16, v2, v3

    .line 262
    .local v16, "left":F
    const/high16 v2, 0x40200000    # 2.5f

    sub-float v18, v14, v2

    .line 263
    .local v18, "right":F
    const/high16 v2, 0x41040000    # 8.25f

    add-float v15, v19, v2

    .line 264
    .local v15, "higher":F
    const/high16 v2, 0x41040000    # 8.25f

    sub-float v17, v11, v2

    .line 266
    .local v17, "lower":F
    const/4 v2, 0x6

    new-array v7, v2, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v19

    invoke-direct {v3, v12, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    const/4 v2, 0x1

    .line 267
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v18

    invoke-direct {v3, v0, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    const/4 v2, 0x3

    .line 268
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v12, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    const/4 v2, 0x5

    .line 269
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v16

    invoke-direct {v3, v0, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v7, v2

    .line 272
    .local v7, "vertices":[Lcom/badlogic/gdx/math/Vector2;
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 271
    invoke-static/range {v2 .. v10}, Lorg/loon/framework/android/game/physics/PhysicsUtils;->createPolygonBody(Lcom/badlogic/gdx/physics/box2d/World;IIII[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    return-object v2
.end method

.method public static createPolygonBody(Lcom/badlogic/gdx/physics/box2d/World;IIII[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 9
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;
    .param p6, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p7, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 171
    .line 172
    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 171
    invoke-static/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsUtils;->createPolygonBody(Lcom/badlogic/gdx/physics/box2d/World;IIII[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createPolygonBody(Lcom/badlogic/gdx/physics/box2d/World;IIII[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 5
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "vertices"    # [Lcom/badlogic/gdx/math/Vector2;
    .param p6, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p7, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .param p8, "offset"    # F

    .prologue
    .line 191
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 192
    .local v1, "boxBodyDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    iput-object p6, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 194
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p1

    div-float/2addr v4, p8

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 195
    iget-object v3, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p2

    div-float/2addr v4, p8

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 197
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 198
    .local v0, "boxBody":Lcom/badlogic/gdx/physics/box2d/Body;
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 200
    .local v2, "boxPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v2, p5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 202
    iput-object v2, p7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 203
    invoke-virtual {v0, p7}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 204
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 206
    return-object v0
.end method

.method public static createTriangleBody(Lcom/badlogic/gdx/physics/box2d/World;IIIILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 16
    .param p0, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bodyType"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p6, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 224
    div-int/lit8 v0, p3, 0x2

    int-to-float v12, v0

    .line 225
    .local v12, "halfWidth":F
    div-int/lit8 v0, p4, 0x2

    int-to-float v11, v0

    .line 227
    .local v11, "halfHeight":F
    neg-float v15, v11

    .line 228
    .local v15, "top":F
    move v9, v11

    .line 229
    .local v9, "bottom":F
    neg-float v13, v11

    .line 230
    .local v13, "left":F
    const/4 v10, 0x0

    .line 231
    .local v10, "center":F
    move v14, v12

    .line 233
    .local v14, "right":F
    const/4 v0, 0x3

    new-array v5, v0, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v10, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v5, v0

    const/4 v0, 0x1

    .line 234
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v14, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v5, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, v13, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v5, v0

    .line 237
    .local v5, "vertices":[Lcom/badlogic/gdx/math/Vector2;
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 236
    invoke-static/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsUtils;->createPolygonBody(Lcom/badlogic/gdx/physics/box2d/World;IIII[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;Lcom/badlogic/gdx/physics/box2d/FixtureDef;F)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createTriangleShape(II)Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 70
    .local v0, "poly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct {v1}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 71
    .local v1, "triangle":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    invoke-virtual {v1, v2, v2, p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(IIII)V

    .line 72
    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->getVertexs()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 73
    return-object v0
.end method
