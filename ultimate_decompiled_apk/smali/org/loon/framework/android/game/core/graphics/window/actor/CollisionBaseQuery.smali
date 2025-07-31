.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;
.super Ljava/lang/Object;
.source "CollisionBaseQuery.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->cls:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->intersects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkOnlyCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->intersects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 0
    .param p2, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->cls:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->compareObject:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 32
    return-void
.end method
