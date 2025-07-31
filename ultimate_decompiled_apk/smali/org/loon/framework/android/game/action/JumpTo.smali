.class public Lorg/loon/framework/android/game/action/JumpTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "JumpTo.java"


# instance fields
.field private g:F

.field private moveJump:I

.field private moveX:F

.field private moveY:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "m"    # I
    .param p2, "g"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 37
    iput p1, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    .line 38
    iput p2, p0, Lorg/loon/framework/android/game/action/JumpTo;->g:F

    .line 39
    return-void
.end method


# virtual methods
.method public getMoveX()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveX:F

    return v0
.end method

.method public getMoveY()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    .line 47
    return-void
.end method

.method public setMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    .line 54
    iput p1, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveX:F

    .line 55
    return-void
.end method

.method public setMoveY(F)V
    .locals 0
    .param p1, "moveY"    # F

    .prologue
    .line 62
    iput p1, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    .line 63
    return-void
.end method

.method public update(J)V
    .locals 10
    .param p1, "elapsedTime"    # J

    .prologue
    const/4 v9, 0x1

    .line 66
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    if-gez v5, :cond_4

    .line 67
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    iget v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 68
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    .line 75
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v6

    iget v7, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveX:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 76
    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v7

    .line 77
    iget v8, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 75
    invoke-virtual {v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 78
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    if-gez v5, :cond_5

    .line 79
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    iget v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->g:F

    add-float/2addr v5, v6

    iput v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    .line 83
    :goto_1
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v1

    .line 84
    .local v1, "layer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    if-lez v5, :cond_6

    .line 85
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v5

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v6

    .line 86
    iget-object v7, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 87
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    .line 92
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded()Z

    move-result v0

    .line 93
    .local v0, "isLimit":Z
    if-eqz v0, :cond_3

    .line 94
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    .line 95
    .local v4, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v6

    sub-int v3, v5, v6

    .line 96
    .local v3, "limitWidth":I
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v2

    .line 97
    .local v2, "limitHeight":I
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v5

    if-le v5, v3, :cond_7

    .line 98
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 99
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    .line 104
    :cond_2
    :goto_3
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v5

    if-gez v5, :cond_8

    .line 105
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 106
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    .line 113
    .end local v2    # "limitHeight":I
    .end local v3    # "limitWidth":I
    .end local v4    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_3
    :goto_4
    return-void

    .line 71
    .end local v0    # "isLimit":Z
    .end local v1    # "layer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    :cond_4
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    iget v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 72
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveJump:I

    int-to-float v5, v5

    iput v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    goto/16 :goto_0

    .line 81
    :cond_5
    iget v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    iget v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->g:F

    sub-float/2addr v5, v6

    iput v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->moveY:F

    goto/16 :goto_1

    .line 89
    .restart local v1    # "layer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    :cond_6
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v5

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gez v5, :cond_1

    .line 90
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    goto :goto_2

    .line 100
    .restart local v0    # "isLimit":Z
    .restart local v2    # "limitHeight":I
    .restart local v3    # "limitWidth":I
    .restart local v4    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_7
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v5

    if-gez v5, :cond_2

    .line 101
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 102
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    goto :goto_3

    .line 107
    :cond_8
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v5

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    if-le v5, v6, :cond_3

    .line 108
    iget-object v5, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v6, p0, Lorg/loon/framework/android/game/action/JumpTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v6

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v7

    .line 109
    sub-int/2addr v7, v2

    .line 108
    invoke-virtual {v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 110
    iput-boolean v9, p0, Lorg/loon/framework/android/game/action/JumpTo;->isComplete:Z

    goto :goto_4
.end method
