.class public Lorg/loon/framework/android/game/action/FadeTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "FadeTo.java"


# instance fields
.field public currentFrame:I

.field private opacity:I

.field public time:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "speed"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 36
    iput p1, p0, Lorg/loon/framework/android/game/action/FadeTo;->type:I

    .line 37
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/action/FadeTo;->setSpeed(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getOpacity()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->opacity:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->time:I

    int-to-float v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->type:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->isComplete:Z

    return v0
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/loon/framework/android/game/action/FadeTo;->opacity:I

    .line 50
    return-void
.end method

.method public setSpeed(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 65
    iput p1, p0, Lorg/loon/framework/android/game/action/FadeTo;->time:I

    .line 66
    iget v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->type:I

    if-nez v0, :cond_0

    .line 67
    iget v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->time:I

    iput v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/loon/framework/android/game/action/FadeTo;->type:I

    .line 46
    return-void
.end method

.method public update(J)V
    .locals 6
    .param p1, "elapsedTime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->type:I

    if-nez v2, :cond_2

    .line 79
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    .line 80
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/action/FadeTo;->setOpacity(I)V

    .line 82
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FadeTo;->isComplete:Z

    .line 91
    :cond_0
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    int-to-double v2, v2

    iget v4, p0, Lorg/loon/framework/android/game/action/FadeTo;->time:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v0, v2, v4

    .line 92
    .local v0, "op":D
    double-to-int v2, v0

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/action/FadeTo;->setOpacity(I)V

    .line 93
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->opacity:I

    if-lez v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v3, p0, Lorg/loon/framework/android/game/action/FadeTo;->opacity:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setAlpha(F)V

    .line 96
    :cond_1
    return-void

    .line 85
    .end local v0    # "op":D
    :cond_2
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    .line 86
    iget v2, p0, Lorg/loon/framework/android/game/action/FadeTo;->currentFrame:I

    iget v3, p0, Lorg/loon/framework/android/game/action/FadeTo;->time:I

    if-ne v2, v3, :cond_0

    .line 87
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/action/FadeTo;->setOpacity(I)V

    .line 88
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/FadeTo;->isComplete:Z

    goto :goto_0
.end method
