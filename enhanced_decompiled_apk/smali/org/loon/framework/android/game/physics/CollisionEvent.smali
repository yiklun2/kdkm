.class public Lorg/loon/framework/android/game/physics/CollisionEvent;
.super Ljava/lang/Object;
.source "CollisionEvent.java"


# instance fields
.field private bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

.field private bodyB:Lcom/badlogic/gdx/physics/box2d/Body;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 0
    .param p1, "bodyA"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "bodyB"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 33
    iput-object p2, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 34
    return-void
.end method


# virtual methods
.method public contains(Lcom/badlogic/gdx/physics/box2d/Body;)Z
    .locals 1
    .param p1, "current"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBodyA()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getBodyB()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/CollisionEvent;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method
