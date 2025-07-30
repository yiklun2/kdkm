.class public Lorg/loon/framework/android/game/action/sprite/CollisionMask;
.super Ljava/lang/Object;
.source "CollisionMask.java"


# instance fields
.field private bottom:I

.field private data:Lorg/loon/framework/android/game/action/sprite/Mask;

.field private left:I

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/Mask;)V
    .locals 6
    .param p1, "data"    # Lorg/loon/framework/android/game/action/sprite/Mask;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Mask;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Mask;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->set(Lorg/loon/framework/android/game/action/sprite/Mask;IIII)V

    .line 36
    return-void
.end method

.method private calculateBoundingBox()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    .line 53
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    .line 54
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->right:I

    .line 55
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->bottom:I

    .line 56
    return-void
.end method


# virtual methods
.method public checkBoundingBoxCollision(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkBoundingBoxCollision(Lorg/loon/framework/android/game/action/sprite/CollisionMask;)Z
    .locals 2
    .param p1, "other"    # Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->getBounds()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->getBounds()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 59
    goto :goto_0
.end method

.method public collidesWith(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->checkBoundingBoxCollision(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->calculateBoundingBox()V

    .line 89
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->data:Lorg/loon/framework/android/game/action/sprite/Mask;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/Mask;->getPixel(II)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collidesWith(Lorg/loon/framework/android/game/action/sprite/CollisionMask;)Z
    .locals 7
    .param p1, "other"    # Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->checkBoundingBoxCollision(Lorg/loon/framework/android/game/action/sprite/CollisionMask;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-direct {p1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->calculateBoundingBox()V

    .line 70
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->calculateBoundingBox()V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "a":Z
    const/4 v1, 0x0

    .line 73
    .local v1, "b":Z
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    .local v3, "y":I
    :goto_0
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->bottom:I

    if-lt v3, v4, :cond_1

    .line 83
    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v3    # "y":I
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 74
    .restart local v0    # "a":Z
    .restart local v1    # "b":Z
    .restart local v3    # "y":I
    :cond_1
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    .local v2, "x":I
    :goto_2
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->right:I

    if-lt v2, v4, :cond_2

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->data:Lorg/loon/framework/android/game/action/sprite/Mask;

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    sub-int v5, v2, v5

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lorg/loon/framework/android/game/action/sprite/Mask;->getPixel(II)Z

    move-result v0

    .line 76
    iget-object v4, p1, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->data:Lorg/loon/framework/android/game/action/sprite/Mask;

    iget v5, p1, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->left:I

    sub-int v5, v2, v5

    iget v6, p1, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->top:I

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lorg/loon/framework/android/game/action/sprite/Mask;->getPixel(II)Z

    move-result v1

    .line 77
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 78
    const/4 v4, 0x1

    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getBounds()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public set(Lorg/loon/framework/android/game/action/sprite/Mask;IIII)V
    .locals 1
    .param p1, "data"    # Lorg/loon/framework/android/game/action/sprite/Mask;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 39
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->data:Lorg/loon/framework/android/game/action/sprite/Mask;

    .line 40
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method
