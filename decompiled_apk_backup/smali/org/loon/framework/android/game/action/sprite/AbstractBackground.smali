.class public abstract Lorg/loon/framework/android/game/action/sprite/AbstractBackground;
.super Lorg/loon/framework/android/game/core/LObject;
.source "AbstractBackground.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected alpha:F

.field private camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

.field private layer:I

.field protected visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    .line 52
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;-><init>(II)V

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 46
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Camera;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Camera;-><init>(FFFF)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->visible:Z

    .line 48
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getMinX()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getMinY()F

    move-result v0

    float-to-int v3, v0

    .line 57
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getWidth()F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getHeight()F

    move-result v0

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->createUI(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 58
    return-void
.end method

.method public abstract createUI(Ljavax/microedition/lcdui/Graphics;IIII)V
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->alpha:F

    return v0
.end method

.method public getCamera()Lorg/loon/framework/android/game/action/map/shapes/Camera;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->layer:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getX()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getY()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->visible:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 91
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->alpha:F

    .line 92
    return-void
.end method

.method public setCenter(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setCenter(FF)V

    .line 66
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 123
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->layer:I

    .line 124
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 61
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setSize(FF)V

    .line 62
    return-void
.end method

.method public setToCenter(II)V
    .locals 3
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setCenter(FF)V

    .line 88
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->visible:Z

    .line 108
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setX(F)V

    .line 72
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 75
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->setY(F)V

    .line 76
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "timer"    # J

    .prologue
    .line 112
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;->camera:Lorg/loon/framework/android/game/action/map/shapes/Camera;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Camera;->getY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
