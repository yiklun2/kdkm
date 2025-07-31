.class public Lorg/loon/framework/android/game/core/graphics/window/LPicture;
.super Lorg/loon/framework/android/game/core/graphics/LContainer;
.source "LPicture.java"


# instance fields
.field private image:Ljavax/microedition/lcdui/Image;

.field private states:I

.field private thread:Ljava/lang/Thread;

.field private timer:Lorg/loon/framework/android/game/core/timer/LTimer;

.field private wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/LContainer;-><init>(IIII)V

    .line 50
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 51
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    invoke-direct {v0, p3, p4}, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;-><init>(II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    .line 52
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 53
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    invoke-virtual {v0, v3}, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->setRunning(Z)V

    .line 54
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->customRendering:Z

    .line 55
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->setElastic(Z)V

    .line 56
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->setLocked(Z)V

    .line 57
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->setLayer(I)V

    .line 58
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/core/graphics/window/LPicture;Ljavax/microedition/lcdui/Image;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    return-void
.end method


# virtual methods
.method protected createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->visible:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawSize(Ljavax/microedition/lcdui/Image;IIII)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->dispose()V

    .line 90
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 91
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 94
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    .line 96
    :cond_0
    return-void
.end method

.method public doClick()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getStates()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->states:I

    return v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "Picture"

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->locked:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "transparency"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;-><init>(Lorg/loon/framework/android/game/core/graphics/window/LPicture;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->thread:Ljava/lang/Thread;

    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->thread:Ljava/lang/Thread;

    .line 74
    :cond_0
    return-void
.end method

.method public loadImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    .line 78
    return-void
.end method

.method public notBackground()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 62
    return-void
.end method

.method protected processKeyPressed()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->doClick()V

    .line 108
    :cond_0
    return-void
.end method

.method protected processTouchDragged()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->locked:Z

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->move(DD)V

    .line 136
    :cond_1
    return-void
.end method

.method protected processTouchPressed()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->isTouchClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->doClick()V

    .line 102
    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->locked:Z

    .line 148
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->visible:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->update(J)V

    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->image:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->wait:Lorg/loon/framework/android/game/action/sprite/WaitAnimation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->next()V

    .line 117
    :cond_0
    return-void
.end method
