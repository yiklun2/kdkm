.class public Lorg/loon/framework/android/game/core/graphics/window/LMessage;
.super Lorg/loon/framework/android/game/core/graphics/LContainer;
.source "LMessage.java"


# instance fields
.field private animation:Lorg/loon/framework/android/game/action/sprite/Animation;

.field private dh:I

.field private dw:I

.field private dx:I

.field private dy:I

.field private fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private messageFont:Ljavax/microedition/lcdui/Font;

.field private print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

.field private printTime:J

.field private totalDuration:J


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;-><init>(IIII)V

    .line 53
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 56
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 60
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "formImage"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 64
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 4
    .param p1, "formImage"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 68
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/core/graphics/LContainer;-><init>(IIII)V

    .line 41
    const-string v0, "Monospaced"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->messageFont:Ljavax/microedition/lcdui/Font;

    .line 43
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 69
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 70
    if-nez p1, :cond_1

    .line 71
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, p4, p5, v2}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 72
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setAlpha(F)V

    .line 82
    :cond_0
    :goto_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    invoke-direct {v0, v1, p4, p5}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;-><init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    .line 83
    const-string v0, "system/images/creese.png"

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setTipIcon(Ljava/lang/String;)V

    .line 84
    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->totalDuration:J

    .line 85
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->customRendering:Z

    .line 86
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setElastic(Z)V

    .line 87
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setLocked(Z)V

    .line 88
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setLayer(I)V

    .line 89
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 75
    if-ne p4, v3, :cond_2

    .line 76
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p4

    .line 78
    :cond_2
    if-ne p5, v3, :cond_0

    .line 79
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result p5

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getScreenX()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dw:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 242
    add-int/lit8 v0, v0, -0x14

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getScreenY()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dh:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 241
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setPauseIconAnimationLocation(II)V

    .line 243
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->complete()V

    .line 93
    return-void
.end method

.method protected createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 198
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->visible:Z

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    .line 202
    .local v0, "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 203
    .local v1, "oldFont":Ljavax/microedition/lcdui/Font;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 204
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->messageFont:Ljavax/microedition/lcdui/Font;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 205
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v2, p1, v3}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->draw(Ljavax/microedition/lcdui/Graphics;Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 206
    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 207
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 208
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 210
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 211
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->updateIcon()V

    .line 212
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v2

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dx:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dy:I

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0
.end method

.method public doClick()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public getFontColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getLeftOffset()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getLeftOffset()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->messageFont:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getMessageLength()I

    move-result v0

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getTopOffset()I

    move-result v0

    return v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "Message"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isEnglish()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isEnglish()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->locked:Z

    return v0
.end method

.method protected processKeyPressed()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->doClick()V

    .line 180
    :cond_0
    return-void
.end method

.method protected processTouchClicked()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->doClick()V

    .line 173
    return-void
.end method

.method protected processTouchDragged()V
    .locals 4

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->locked:Z

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->move(DD)V

    .line 224
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->updateIcon()V

    .line 226
    :cond_1
    return-void
.end method

.method public setDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v0, 0x1

    .line 140
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .end local p1    # "delay":J
    :cond_0
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->totalDuration:J

    .line 141
    return-void
.end method

.method public setEnglish(Z)V
    .locals 2
    .param p1, "e"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setEnglish(Z)V

    .line 133
    return-void
.end method

.method public setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "fontColor"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 251
    return-void
.end method

.method public setLeftOffset(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setLeftOffset(I)V

    .line 97
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->locked:Z

    .line 267
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setMessage(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setMessage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setMessage(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public setMessageFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "messageFont"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 258
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->messageFont:Ljavax/microedition/lcdui/Font;

    .line 259
    return-void
.end method

.method public setMessageLength(I)V
    .locals 1
    .param p1, "messageLength"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setMessageLength(I)V

    .line 117
    return-void
.end method

.method public setNotTipIcon()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setCreeseIcon(Ljavax/microedition/lcdui/Image;)V

    .line 129
    return-void
.end method

.method public setPauseIconAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;)V
    .locals 2
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 230
    if-eqz p1, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage(I)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    .line 232
    .local v0, "image":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dw:I

    .line 234
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dh:I

    .line 235
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->updateIcon()V

    .line 238
    .end local v0    # "image":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    :cond_0
    return-void
.end method

.method public setPauseIconAnimationLocation(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dx:I

    .line 149
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->dy:I

    .line 150
    return-void
.end method

.method public setTipIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setCreeseIcon(Ljavax/microedition/lcdui/Image;)V

    .line 121
    return-void
.end method

.method public setTipIcon(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "icon"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setCreeseIcon(Ljavax/microedition/lcdui/Image;)V

    .line 125
    return-void
.end method

.method public setTopOffset(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setTopOffset(I)V

    .line 101
    return-void
.end method

.method public update(J)V
    .locals 4
    .param p1, "elapsedTime"    # J

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->visible:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->update(J)V

    .line 187
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Animation;->update(J)V

    .line 190
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->printTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->printTime:J

    .line 191
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->printTime:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->totalDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 192
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->printTime:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->totalDuration:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->printTime:J

    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->print:Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next()Z

    goto :goto_0
.end method

.method protected validateSize()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->validateSize()V

    .line 271
    return-void
.end method
