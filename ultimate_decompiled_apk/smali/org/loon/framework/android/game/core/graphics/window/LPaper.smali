.class public Lorg/loon/framework/android/game/core/graphics/window/LPaper;
.super Lorg/loon/framework/android/game/core/graphics/LContainer;
.source "LPaper.java"


# instance fields
.field private animation:Lorg/loon/framework/android/game/action/sprite/Animation;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    .line 57
    if-ge p3, v2, :cond_0

    const/4 p3, 0x1

    move v1, p3

    .end local p3    # "w":I
    .local v1, "w":I
    :goto_0
    if-ge p4, v2, :cond_1

    const/4 p4, 0x1

    move v0, p4

    .end local p4    # "h":I
    .local v0, "h":I
    :goto_1
    invoke-static {p3, p4, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 58
    invoke-direct {p0, v2, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 59
    return-void

    .end local v0    # "h":I
    .end local v1    # "w":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    :cond_0
    move v1, p3

    .line 57
    .end local p3    # "w":I
    .restart local v1    # "w":I
    goto :goto_0

    :cond_1
    move v0, p4

    .end local p4    # "h":I
    .restart local v0    # "h":I
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;-><init>(Ljava/lang/String;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "background"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 3
    .param p1, "background"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/loon/framework/android/game/core/graphics/LContainer;-><init>(IIII)V

    .line 33
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 37
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->customRendering:Z

    .line 38
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 39
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->setElastic(Z)V

    .line 40
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->setLocked(Z)V

    .line 41
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->setLayer(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public addAnimationFrame(Ljava/lang/String;J)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "timer"    # J

    .prologue
    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Ljava/lang/String;J)V

    .line 75
    return-void
.end method

.method public addAnimationFrame(Ljavax/microedition/lcdui/Image;J)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "timer"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Ljavax/microedition/lcdui/Image;J)V

    .line 79
    return-void
.end method

.method public addAnimationFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V
    .locals 1
    .param p1, "image"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p2, "timer"    # J

    .prologue
    .line 70
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    .line 71
    return-void
.end method

.method protected createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->visible:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 107
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 108
    invoke-interface {p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 109
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 110
    neg-int v0, p2

    neg-int v1, p3

    invoke-interface {p1, v0, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public doClick()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public downClick()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public getAnimation()Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "Paper"

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->locked:Z

    return v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 119
    return-void
.end method

.method protected processKeyPressed()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->doClick()V

    .line 100
    :cond_0
    return-void
.end method

.method protected processTouchClicked()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->doClick()V

    .line 94
    :cond_0
    return-void
.end method

.method protected processTouchDragged()V
    .locals 4

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->locked:Z

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->move(DD)V

    .line 135
    :cond_1
    return-void
.end method

.method protected processTouchPressed()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->downClick()V

    .line 141
    :cond_0
    return-void
.end method

.method protected processTouchReleased()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->upClick()V

    .line 147
    :cond_0
    return-void
.end method

.method public setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;)V
    .locals 0
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 67
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->locked:Z

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->getUIName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upClick()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->visible:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->update(J)V

    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Animation;->update(J)V

    .line 126
    :cond_0
    return-void
.end method

.method protected validateSize()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->validateSize()V

    .line 159
    return-void
.end method
