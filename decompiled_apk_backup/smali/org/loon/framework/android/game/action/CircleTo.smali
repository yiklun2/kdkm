.class public Lorg/loon/framework/android/game/action/CircleTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "CircleTo.java"


# instance fields
.field private cx:I

.field private cy:I

.field private dt:D

.field private radius:I

.field private velocity:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "radius"    # I
    .param p2, "velocity"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 40
    iput p1, p0, Lorg/loon/framework/android/game/action/CircleTo;->radius:I

    .line 41
    iput p2, p0, Lorg/loon/framework/android/game/action/CircleTo;->velocity:I

    .line 42
    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->isComplete:Z

    return v0
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cx:I

    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cy:I

    .line 51
    iget v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cx:I

    iget v1, p0, Lorg/loon/framework/android/game/action/CircleTo;->radius:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->x:I

    .line 52
    iget v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cy:I

    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->y:I

    .line 53
    return-void
.end method

.method public update(J)V
    .locals 8
    .param p1, "elapsedTime"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->dt:D

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->dt:D

    .line 57
    iget v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cx:I

    int-to-double v0, v0

    iget v2, p0, Lorg/loon/framework/android/game/action/CircleTo;->radius:I

    int-to-double v2, v2

    .line 58
    iget v4, p0, Lorg/loon/framework/android/game/action/CircleTo;->velocity:I

    int-to-double v4, v4

    iget-wide v6, p0, Lorg/loon/framework/android/game/action/CircleTo;->dt:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 57
    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->x:I

    .line 59
    iget v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->cy:I

    int-to-double v0, v0

    iget v2, p0, Lorg/loon/framework/android/game/action/CircleTo;->radius:I

    int-to-double v2, v2

    .line 60
    iget v4, p0, Lorg/loon/framework/android/game/action/CircleTo;->velocity:I

    int-to-double v4, v4

    iget-wide v6, p0, Lorg/loon/framework/android/game/action/CircleTo;->dt:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 59
    iput v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->y:I

    .line 61
    iget-object v0, p0, Lorg/loon/framework/android/game/action/CircleTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v1, p0, Lorg/loon/framework/android/game/action/CircleTo;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/CircleTo;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 62
    return-void
.end method
