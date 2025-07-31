.class public Lorg/loon/framework/android/game/physics/WorldBox;
.super Ljava/lang/Object;
.source "WorldBox.java"


# instance fields
.field public density:F

.field private eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field public friction:F

.field private init:Z

.field private northBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field public restitution:F

.field private southBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private westBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private world:Lcom/badlogic/gdx/physics/box2d/World;

.field private worldBox:Lorg/loon/framework/android/game/action/map/shapes/RectBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "box"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 52
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/physics/WorldBox;->setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->init:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    .line 55
    return-void
.end method


# virtual methods
.method public getBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->worldBox:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    return v0
.end method

.method public getEastBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getFriction()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    return v0
.end method

.method public getNorthBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->northBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getRestitution()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    return v0
.end method

.method public getSouthBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->southBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getWestBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->westBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public declared-synchronized remove()V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->init:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->northBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 60
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->southBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 61
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 62
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->westBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 14
    .param p1, "box"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    const/4 v13, 0x0

    .line 67
    iget-boolean v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->init:Z

    if-eqz v10, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/WorldBox;->remove()V

    .line 70
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 71
    .local v2, "eastWestShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 73
    new-instance v5, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 74
    .local v5, "northSouthShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v10, v13}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 76
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v3}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 77
    .local v3, "northDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v10, v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 78
    iget-object v10, v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v13, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 79
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v10

    iput-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->northBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 80
    new-instance v4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v4}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 81
    .local v4, "northFixture":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput-object v5, v4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 82
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    iput v10, v4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 83
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    iput v10, v4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 84
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    iput v10, v4, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 85
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->northBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 87
    new-instance v6, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v6}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 88
    .local v6, "southDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v10, v6, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 89
    iget-object v10, v6, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v11, v13, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 90
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v10

    iput-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->southBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 91
    new-instance v7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v7}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 92
    .local v7, "southFixture":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput-object v5, v7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 93
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    iput v10, v7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 94
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    iput v10, v7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 95
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    iput v10, v7, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 96
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->southBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 99
    .local v0, "eastDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v10, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 100
    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 101
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v10

    iput-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 102
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 103
    .local v1, "eastFixture":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iput-object v2, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 104
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    iput v10, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 105
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    iput v10, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 106
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    iput v10, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 107
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 109
    new-instance v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v8}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 110
    .local v8, "westDef":Lcom/badlogic/gdx/physics/box2d/BodyDef;
    sget-object v10, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v10, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 111
    iget-object v10, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v13, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 112
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v10

    iput-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->westBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 113
    new-instance v9, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v9}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 114
    .local v9, "westFixture":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    iput v10, v9, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 115
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    iput v10, v9, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 116
    iget v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    iput v10, v9, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 117
    iput-object v2, v9, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 118
    iget-object v10, p0, Lorg/loon/framework/android/game/physics/WorldBox;->westBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 120
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 121
    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 123
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->worldBox:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 124
    return-void
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->density:F

    .line 136
    return-void
.end method

.method public setEastBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 0
    .param p1, "eastBody"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->eastBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 144
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 151
    iput p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->friction:F

    .line 152
    return-void
.end method

.method public setNorthBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 0
    .param p1, "northBody"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 159
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->northBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 160
    return-void
.end method

.method public setRestitution(F)V
    .locals 0
    .param p1, "restitution"    # F

    .prologue
    .line 167
    iput p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->restitution:F

    .line 168
    return-void
.end method

.method public setSouthBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 0
    .param p1, "southBody"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->southBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 176
    return-void
.end method

.method public setWestBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 0
    .param p1, "westBody"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/WorldBox;->westBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 184
    return-void
.end method
