.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;
.super Ljava/lang/Object;
.source "CollisionInRangeQuery.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;


# instance fields
.field private r:I

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
    .locals 7
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 39
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->toPixel(I)I

    move-result v0

    .line 40
    .local v0, "actorX":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->toPixel(I)I

    move-result v1

    .line 41
    .local v1, "actorY":I
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->x:I

    sub-int v3, v0, v5

    .line 42
    .local v3, "dx":I
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->y:I

    sub-int v4, v1, v5

    .line 43
    .local v4, "dy":I
    mul-int v5, v3, v3

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 44
    .local v2, "dist":I
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->r:I

    if-gt v2, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public init(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->x:I

    .line 34
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->y:I

    .line 35
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->r:I

    .line 36
    return-void
.end method
