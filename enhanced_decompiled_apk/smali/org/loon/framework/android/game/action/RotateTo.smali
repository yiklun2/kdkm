.class public Lorg/loon/framework/android/game/action/RotateTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "RotateTo.java"


# instance fields
.field private diffAngle:F

.field private dstAngle:F

.field private speed:F

.field private startAngle:F


# direct methods
.method public constructor <init>(FF)V
    .locals 3
    .param p1, "dstAngle"    # F
    .param p2, "speed"    # F

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 34
    iput p1, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    .line 35
    iget v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 36
    iput v2, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    .line 40
    :cond_0
    :goto_0
    iput p2, p0, Lorg/loon/framework/android/game/action/RotateTo;->speed:F

    .line 41
    return-void

    .line 37
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 38
    iput v1, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    goto :goto_0
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->isComplete:Z

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRotation()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->startAngle:F

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->diffAngle:F

    .line 50
    return-void
.end method

.method public update(J)V
    .locals 3
    .param p1, "elapsedTime"    # J

    .prologue
    .line 53
    iget v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->startAngle:F

    iget v1, p0, Lorg/loon/framework/android/game/action/RotateTo;->diffAngle:F

    iget v2, p0, Lorg/loon/framework/android/game/action/RotateTo;->speed:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->startAngle:F

    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v1, p0, Lorg/loon/framework/android/game/action/RotateTo;->startAngle:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setRotation(I)V

    .line 55
    iget v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->startAngle:F

    iget v1, p0, Lorg/loon/framework/android/game/action/RotateTo;->dstAngle:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/RotateTo;->isComplete:Z

    .line 58
    :cond_0
    return-void
.end method
