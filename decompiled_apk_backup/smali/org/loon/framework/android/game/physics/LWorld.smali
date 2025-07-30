.class public Lorg/loon/framework/android/game/physics/LWorld;
.super Ljava/lang/Object;
.source "LWorld.java"


# instance fields
.field private bodies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/physics/LBody;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:Lcom/badlogic/gdx/math/Vector2;

.field private iterations:I

.field private jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/physics/LWorldListener;",
            ">;"
        }
    .end annotation
.end field

.field private shapeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            "Lorg/loon/framework/android/game/physics/LBody;",
            ">;"
        }
    .end annotation
.end field

.field private worldBox:Lorg/loon/framework/android/game/physics/WorldBox;


# direct methods
.method public constructor <init>(FFIIZF)V
    .locals 4
    .param p1, "gx"    # F
    .param p2, "gy"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "doSleep"    # Z
    .param p6, "iterations"    # F

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->bodies:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->shapeMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->listeners:Ljava/util/ArrayList;

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->iterations:I

    .line 51
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/LWorld;->gravity:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    .line 52
    new-instance v0, Lorg/loon/framework/android/game/physics/WorldBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    .line 53
    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v2, v3, v3, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/physics/WorldBox;-><init>(Lcom/badlogic/gdx/physics/box2d/World;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 52
    iput-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/physics/LBody;)V
    .locals 4
    .param p1, "body"    # Lorg/loon/framework/android/game/physics/LBody;

    .prologue
    .line 57
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/physics/LBody;->addToWorld(Lorg/loon/framework/android/game/physics/LWorld;)V

    .line 58
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/LBody;->getLShape()Lorg/loon/framework/android/game/physics/LShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/loon/framework/android/game/physics/LShape;->getBox2DFixtures()Ljava/util/ArrayList;

    move-result-object v1

    .line 59
    .local v1, "shapes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/physics/box2d/FixtureDef;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LWorld;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/LWorld;->shapeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addListener(Lorg/loon/framework/android/game/physics/LWorldListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/physics/LWorldListener;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public getBodyCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getBox2DWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getLBody(I)Lorg/loon/framework/android/game/physics/LBody;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/physics/LBody;

    return-object v0
.end method

.method public getWorldBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/WorldBox;->getBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/loon/framework/android/game/physics/LBody;)V
    .locals 4
    .param p1, "body"    # Lorg/loon/framework/android/game/physics/LBody;

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/LBody;->getLShape()Lorg/loon/framework/android/game/physics/LShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/loon/framework/android/game/physics/LShape;->getBox2DFixtures()Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    .local v1, "shapes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/physics/box2d/FixtureDef;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/physics/LBody;->removeFromWorld(Lorg/loon/framework/android/game/physics/LWorld;)V

    .line 71
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LWorld;->bodies:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/LWorld;->shapeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeListener(Lorg/loon/framework/android/game/physics/LWorldListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/physics/LWorldListener;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/LWorld;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 118
    return-void
.end method

.method public setWorldBox(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v1, v2, v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/physics/WorldBox;->setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 110
    return-void
.end method

.method public setWorldBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "box"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/physics/WorldBox;->setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 106
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "timeStep"    # F

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setContinuousPhysics(Z)V

    .line 84
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setWarmStarting(Z)V

    .line 85
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/LWorld;->jboxWorld:Lcom/badlogic/gdx/physics/box2d/World;

    iget v1, p0, Lorg/loon/framework/android/game/physics/LWorld;->iterations:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/LWorld;->iterations:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    .line 86
    return-void
.end method
