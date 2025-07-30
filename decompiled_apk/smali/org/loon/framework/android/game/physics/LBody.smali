.class public Lorg/loon/framework/android/game/physics/LBody;
.super Ljava/lang/Object;
.source "LBody.java"


# instance fields
.field private jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field private jboxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

.field private shape:Lorg/loon/framework/android/game/physics/LShape;

.field private staticBody:Z

.field private touching:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/physics/LShape;FF)V
    .locals 1
    .param p1, "shape"    # Lorg/loon/framework/android/game/physics/LShape;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/loon/framework/android/game/physics/LBody;-><init>(Lorg/loon/framework/android/game/physics/LShape;FFZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/physics/LShape;FFZ)V
    .locals 2
    .param p1, "shape"    # Lorg/loon/framework/android/game/physics/LShape;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "staticBody"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 51
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 52
    iput-boolean p4, p0, Lorg/loon/framework/android/game/physics/LBody;->staticBody:Z

    .line 53
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    .line 54
    return-void
.end method

.method private checkBody()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Box2D-Body is NULL !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method addToWorld(Lorg/loon/framework/android/game/physics/LWorld;)V
    .locals 3
    .param p1, "world"    # Lorg/loon/framework/android/game/physics/LWorld;

    .prologue
    .line 138
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/LWorld;->getBox2DWorld()Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    .line 139
    .local v0, "jboxWorld":Lcom/badlogic/gdx/physics/box2d/World;
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 140
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    invoke-interface {v1, p0}, Lorg/loon/framework/android/game/physics/LShape;->createInBody(Lorg/loon/framework/android/game/physics/LBody;)V

    .line 141
    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/LBody;->staticBody:Z

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    goto :goto_0
.end method

.method public applyForce(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v3, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->applyForce(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 93
    return-void
.end method

.method public getAngularVelocity()F
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngularVelocity()F

    move-result v0

    return v0
.end method

.method public getBox2DBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getLShape()Lorg/loon/framework/android/game/physics/LShape;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 107
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 97
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 112
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 102
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 117
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public isSleeping()Z
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 178
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isSleepingAllowed()Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/LBody;->staticBody:Z

    return v0
.end method

.method public isTouching(Lcom/badlogic/gdx/physics/box2d/Body;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFromWorld(Lorg/loon/framework/android/game/physics/LWorld;)V
    .locals 2
    .param p1, "world"    # Lorg/loon/framework/android/game/physics/LWorld;

    .prologue
    .line 149
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/LWorld;->getBox2DWorld()Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    .line 150
    .local v0, "jboxWorld":Lcom/badlogic/gdx/physics/box2d/World;
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 151
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 1
    .param p1, "vel"    # F

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 200
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setAngularVelocity(F)V

    .line 201
    return-void
.end method

.method public setDamping(F)V
    .locals 1
    .param p1, "damping"    # F

    .prologue
    .line 186
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 188
    :cond_0
    return-void
.end method

.method public setDensity(F)V
    .locals 1
    .param p1, "den"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/physics/LShape;->setDensity(F)V

    .line 135
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 130
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/physics/LShape;->setFriction(F)V

    .line 131
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 163
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 164
    return-void
.end method

.method public setRestitution(F)V
    .locals 1
    .param p1, "rest"    # F

    .prologue
    .line 126
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->shape:Lorg/loon/framework/android/game/physics/LShape;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/physics/LShape;->setRestitution(F)V

    .line 127
    return-void
.end method

.method public setRotation(F)V
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 168
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 169
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/LBody;->userData:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setVelocity(FF)V
    .locals 2
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/LBody;->checkBody()V

    .line 192
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 193
    .local v0, "vel":Lcom/badlogic/gdx/math/Vector2;
    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 194
    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 195
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LBody;->jboxBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 196
    return-void
.end method

.method touch(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public touchCount(Lcom/badlogic/gdx/physics/box2d/Body;)I
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 79
    return v0

    .line 75
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/LBody;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/LBody;->getY()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/physics/LBody;->setPosition(FF)V

    .line 183
    return-void
.end method

.method untouch(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LBody;->touching:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
