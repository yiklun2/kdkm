.class public Lorg/loon/framework/android/game/action/FireTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "FireTo.java"


# instance fields
.field private direction:D

.field private endX:I

.field private endY:I

.field private speed:D

.field private vx:I

.field private vy:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IID)V
    .locals 0
    .param p1, "endX"    # I
    .param p2, "endY"    # I
    .param p3, "speed"    # D

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 38
    iput p1, p0, Lorg/loon/framework/android/game/action/FireTo;->endX:I

    .line 39
    iput p2, p0, Lorg/loon/framework/android/game/action/FireTo;->endY:I

    .line 40
    iput-wide p3, p0, Lorg/loon/framework/android/game/action/FireTo;->speed:D

    .line 41
    return-void
.end method


# virtual methods
.method public getDirection()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/FireTo;->direction:D

    return-wide v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    return v0
.end method

.method public onLoad()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    .line 49
    iget-object v0, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    .line 50
    iget v0, p0, Lorg/loon/framework/android/game/action/FireTo;->endY:I

    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->endX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/FireTo;->direction:D

    .line 51
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/FireTo;->direction:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/FireTo;->speed:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/FireTo;->vx:I

    .line 52
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/FireTo;->direction:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/FireTo;->speed:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/FireTo;->vy:I

    .line 53
    return-void
.end method

.method public update(J)V
    .locals 6
    .param p1, "elapsedTime"    # J

    .prologue
    const/4 v5, 0x1

    .line 56
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->vx:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    .line 57
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->vy:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    .line 58
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    if-nez v1, :cond_0

    .line 59
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    .line 83
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v0

    .line 63
    .local v0, "layer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    iget-object v3, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->contains(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    goto :goto_0

    .line 67
    :cond_1
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    goto :goto_0

    .line 70
    :cond_2
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gez v1, :cond_5

    .line 71
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    .line 75
    :cond_3
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 76
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    .line 81
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v2, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    goto :goto_0

    .line 72
    :cond_5
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->x:I

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_3

    .line 73
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    goto :goto_1

    .line 77
    :cond_6
    iget v1, p0, Lorg/loon/framework/android/game/action/FireTo;->y:I

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/FireTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 78
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FireTo;->isComplete:Z

    goto :goto_2
.end method
