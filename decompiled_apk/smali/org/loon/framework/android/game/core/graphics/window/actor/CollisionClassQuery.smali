.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;
.super Ljava/lang/Object;
.source "CollisionClassQuery.java"

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

.field private subQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)V
    .locals 0
    .param p2, "subQuery"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;->cls:Ljava/lang/Class;

    .line 32
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;->subQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;

    .line 33
    return-void
.end method


# virtual methods
.method public checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;->subQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;->checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
