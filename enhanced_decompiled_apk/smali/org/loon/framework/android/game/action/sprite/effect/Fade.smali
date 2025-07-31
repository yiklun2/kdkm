.class public Lorg/loon/framework/android/game/action/sprite/effect/Fade;
.super Lorg/loon/framework/android/game/core/LObject;
.source "Fade.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public currentFrame:F

.field private height:I

.field private offsetX:I

.field private offsetY:I

.field private opacity:F

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field public stop:Z

.field public time:F

.field public type:I

.field private visible:Z

.field private width:I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/LColor;IIII)V
    .locals 1
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "delay"    # I
    .param p3, "type"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->visible:Z

    .line 69
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->type:I

    .line 70
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->setDelay(I)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 72
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->width:I

    .line 73
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->height:I

    .line 74
    return-void
.end method

.method public static getInstance(ILorg/loon/framework/android/game/core/graphics/LColor;)Lorg/loon/framework/android/game/action/sprite/effect/Fade;
    .locals 6
    .param p0, "type"    # I
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 62
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;

    const/16 v2, 0x3c

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v4

    .line 63
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, p0

    .line 62
    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;-><init>(Lorg/loon/framework/android/game/core/graphics/LColor;IIII)V

    return-object v0
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 139
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->visible:Z

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->stop:Z

    if-nez v2, :cond_0

    .line 145
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->time:F

    div-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v0, v2, v3

    .line 146
    .local v0, "op":F
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->setOpacity(F)V

    .line 147
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->opacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 148
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 149
    .local v1, "tempColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v4

    .line 150
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->opacity:F

    float-to-int v5, v5

    .line 149
    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(IIII)V

    .line 151
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetX:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->x()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetY:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->y()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->height:I

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 152
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->y()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 183
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->y()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getCurrentFrame()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    return v0
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->time:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->height:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetY:I

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->opacity:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->width:I

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->stop:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->visible:Z

    return v0
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 95
    return-void
.end method

.method public setCurrentFrame(F)V
    .locals 0
    .param p1, "currentFrame"    # F

    .prologue
    .line 102
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    .line 103
    return-void
.end method

.method public setDelay(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 81
    int-to-float v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->time:F

    .line 82
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->type:I

    if-nez v0, :cond_0

    .line 83
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->time:F

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    goto :goto_0
.end method

.method public setOffsetX(I)V
    .locals 0
    .param p1, "offsetX"    # I

    .prologue
    .line 199
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetX:I

    .line 200
    return-void
.end method

.method public setOffsetY(I)V
    .locals 0
    .param p1, "offsetY"    # I

    .prologue
    .line 207
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->offsetY:I

    .line 208
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .prologue
    .line 131
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->opacity:F

    .line 132
    return-void
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->stop:Z

    .line 111
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->type:I

    .line 119
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->opacity:F

    .line 123
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->visible:Z

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(J)V
    .locals 4
    .param p1, "timer"    # J

    .prologue
    const/4 v3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->type:I

    if-nez v0, :cond_1

    .line 159
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    .line 160
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->setOpacity(F)V

    .line 162
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->stop:Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    .line 166
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->currentFrame:F

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->time:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->setOpacity(F)V

    .line 168
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->stop:Z

    goto :goto_0
.end method
