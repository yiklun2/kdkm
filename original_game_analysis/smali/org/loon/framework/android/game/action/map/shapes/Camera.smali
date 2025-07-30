.class public Lorg/loon/framework/android/game/action/map/shapes/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field private bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private height:F

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Camera;-><init>(FFFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    .line 40
    add-float v0, p1, p3

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    .line 41
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    .line 42
    add-float v0, p2, p4

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    .line 43
    iput p3, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->width:F

    .line 44
    iput p4, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->height:F

    .line 45
    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    .prologue
    .line 105
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 109
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    return v0
.end method

.method public getOldHeight()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->height:F

    return v0
.end method

.method public getOldWidth()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->width:F

    return v0
.end method

.method public getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    float-to-int v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getWidth()F

    move-result v3

    float-to-int v3, v3

    .line 129
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 128
    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 134
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    float-to-int v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getWidth()F

    move-result v3

    float-to-int v3, v3

    .line 132
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getHeight()F

    move-result v4

    float-to-int v4, v4

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    return v0
.end method

.method public offsetCenter(FF)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getCenterX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getCenterY()F

    move-result v1

    .line 123
    add-float/2addr v1, p2

    .line 122
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setCenter(FF)V

    .line 124
    return-void
.end method

.method public setCenter(FF)V
    .locals 3
    .param p1, "cx"    # F
    .param p2, "cy"    # F

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getCenterX()F

    move-result v2

    sub-float v0, p1, v2

    .line 114
    .local v0, "dX":F
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getCenterY()F

    move-result v2

    sub-float v1, p2, v2

    .line 115
    .local v1, "dY":F
    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    .line 116
    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    .line 117
    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    .line 118
    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    .line 119
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 48
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->width:F

    .line 49
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->height:F

    .line 50
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    .line 51
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    .line 52
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 55
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minX:F

    .line 56
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxX:F

    .line 57
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 60
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->minY:F

    .line 61
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Camera;->maxY:F

    .line 62
    return-void
.end method
