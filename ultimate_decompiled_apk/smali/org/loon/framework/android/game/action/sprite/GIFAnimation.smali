.class public Lorg/loon/framework/android/game/action/sprite/GIFAnimation;
.super Lorg/loon/framework/android/game/core/LObject;
.source "GIFAnimation.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private animation:Lorg/loon/framework/android/game/action/sprite/Animation;

.field private gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

.field private height:I

.field private isVisible:Z

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 49
    new-instance v3, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-direct {v3}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    .line 50
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-virtual {v3, p1}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read(Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getFrameSize()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    move-result-object v0

    .line 52
    .local v0, "d":Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v3

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->width:I

    .line 53
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v3

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->height:I

    .line 54
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->isVisible:Z

    .line 55
    new-instance v3, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v3}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getFrameCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 62
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-virtual {v3, v2}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getDelay(I)I

    move-result v1

    .line 59
    .local v1, "delay":I
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 60
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    invoke-virtual {v4, v2}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getFrame(I)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    if-nez v1, :cond_1

    const/16 v1, 0x64

    .end local v1    # "delay":I
    :cond_1
    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Ljavax/microedition/lcdui/Image;J)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->isVisible:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->y()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 86
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getAnimation()Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 123
    .local v0, "simg":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 114
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getGifDecoder()Lorg/loon/framework/android/game/action/sprite/GIFDecoder;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->gifDecoder:Lorg/loon/framework/android/game/action/sprite/GIFDecoder;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->width:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->isVisible:Z

    return v0
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "runing"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->setRunning(Z)V

    .line 66
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->isVisible:Z

    .line 102
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->isVisible:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFAnimation;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Animation;->update(J)V

    .line 76
    :cond_0
    return-void
.end method
