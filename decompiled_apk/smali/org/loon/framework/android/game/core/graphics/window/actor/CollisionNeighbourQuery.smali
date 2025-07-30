.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;
.super Ljava/lang/Object;
.source "CollisionNeighbourQuery.java"

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

.field private diag:Z

.field private distance:I

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
    .locals 12
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    iget-object v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->cls:Ljava/lang/Class;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->cls:Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v8

    .line 48
    :cond_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v0

    .line 49
    .local v0, "actorX":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v1

    .line 50
    .local v1, "actorY":I
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->x:I

    if-ne v0, v10, :cond_2

    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->y:I

    if-eq v1, v10, :cond_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v2

    .line 54
    .local v2, "ax":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v3

    .line 57
    .local v3, "ay":I
    iget-boolean v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->diag:Z

    if-nez v10, :cond_3

    .line 58
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->x:I

    sub-int v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 59
    .local v4, "dx":I
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->y:I

    sub-int v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 60
    .local v5, "dy":I
    add-int v10, v4, v5

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    if-gt v10, v11, :cond_0

    move v8, v9

    goto :goto_0

    .line 62
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_3
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->x:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    sub-int v4, v10, v11

    .line 63
    .restart local v4    # "dx":I
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->y:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    sub-int v5, v10, v11

    .line 64
    .restart local v5    # "dy":I
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->x:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    add-int v6, v10, v11

    .line 65
    .local v6, "x2":I
    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->y:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    add-int v7, v10, v11

    .line 66
    .local v7, "y2":I
    if-lt v2, v4, :cond_0

    if-lt v3, v5, :cond_0

    if-gt v2, v6, :cond_0

    if-gt v3, v7, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public init(IIIZLjava/lang/Class;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "distance"    # I
    .param p4, "diag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->x:I

    .line 38
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->y:I

    .line 39
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->distance:I

    .line 40
    iput-boolean p4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->diag:Z

    .line 41
    iput-object p5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->cls:Ljava/lang/Class;

    .line 42
    return-void
.end method
