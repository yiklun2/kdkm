.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;
.super Ljava/lang/Object;
.source "CollisionPointQuery.java"

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

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->cls:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 40
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->y:I

    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->containsPoint(II)Z

    move-result v0

    goto :goto_0
.end method

.method public init(IILjava/lang/Class;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->x:I

    .line 34
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->y:I

    .line 35
    iput-object p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->cls:Ljava/lang/Class;

    .line 36
    return-void
.end method
