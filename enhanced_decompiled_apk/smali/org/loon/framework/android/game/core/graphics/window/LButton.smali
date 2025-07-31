.class public Lorg/loon/framework/android/game/core/graphics/window/LButton;
.super Lorg/loon/framework/android/game/core/graphics/LComponent;
.source "LButton.java"


# instance fields
.field private exception:Z

.field private font:Ljavax/microedition/lcdui/Font;

.field private fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private offsetLeft:I

.field private offsetTop:I

.field private over:Z

.field private pressed:Z

.field private pressedTime:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    const/4 v5, 0x0

    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 80
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/core/graphics/LComponent;-><init>(IIII)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    .line 45
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->font:Ljavax/microedition/lcdui/Font;

    .line 47
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 81
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>(Ljavax/microedition/lcdui/Image;Ljava/lang/String;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "row"    # I
    .param p4, "col"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>(Ljavax/microedition/lcdui/Image;Ljava/lang/String;IIII)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;Ljava/lang/String;II)V
    .locals 7
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>(Ljavax/microedition/lcdui/Image;Ljava/lang/String;IIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "row"    # I
    .param p4, "col"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 70
    invoke-static {p1, p3, p4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/LButton;-><init>([Ljavax/microedition/lcdui/Image;Ljava/lang/String;IIII)V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljavax/microedition/lcdui/Image;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "img"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "row"    # I
    .param p4, "col"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 74
    invoke-direct {p0, p5, p6, p3, p4}, Lorg/loon/framework/android/game/core/graphics/LComponent;-><init>(IIII)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    .line 45
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->font:Ljavax/microedition/lcdui/Font;

    .line 47
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 75
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->setImages([Ljavax/microedition/lcdui/Image;)V

    .line 76
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public doClick()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public downClick()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getFontColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getOffsetLeft()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->offsetLeft:I

    return v0
.end method

.method public getOffsetTop()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->offsetTop:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "Button"

    return-object v0
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->exception:Z

    return v0
.end method

.method public isTouchOver()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->over:Z

    return v0
.end method

.method public isTouchPressed()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    return v0
.end method

.method protected processKeyPressed()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 197
    const/4 v0, 0x5

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressedTime:I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    .line 199
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->doClick()V

    .line 201
    :cond_0
    return-void
.end method

.method protected processKeyReleased()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyReleased()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    .line 208
    :cond_0
    return-void
.end method

.method protected processTouchClicked()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchReleased()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->doClick()V

    .line 170
    :cond_0
    return-void
.end method

.method protected processTouchDragged()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->isTouchDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v0

    .line 147
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v1}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v1

    .line 146
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->intersects(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->over:Z

    .line 149
    :cond_0
    return-void
.end method

.method protected processTouchEntered()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->over:Z

    .line 188
    return-void
.end method

.method protected processTouchExited()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->over:Z

    .line 192
    return-void
.end method

.method protected processTouchPressed()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchPressed()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->downClick()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    .line 177
    :cond_0
    return-void
.end method

.method protected processTouchReleased()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchReleased()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->upClick()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    .line 184
    :cond_0
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->font:Ljavax/microedition/lcdui/Font;

    .line 224
    return-void
.end method

.method public setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "fontColor"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 232
    return-void
.end method

.method public setImages([Ljavax/microedition/lcdui/Image;)V
    .locals 7
    .param p1, "images"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x4

    new-array v0, v2, [Ljavax/microedition/lcdui/Image;

    .line 86
    .local v0, "buttons":[Ljavax/microedition/lcdui/Image;
    if-eqz p1, :cond_0

    .line 87
    array-length v1, p1

    .line 88
    .local v1, "size":I
    packed-switch v1, :pswitch_data_0

    .line 111
    iput-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->exception:Z

    .line 115
    .end local v1    # "size":I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->exception:Z

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {p0, v0, v4}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->setImageUI([Ljavax/microedition/lcdui/Image;Z)V

    .line 119
    :cond_1
    return-void

    .line 90
    .restart local v1    # "size":I
    :pswitch_0
    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getGray(Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v3

    .line 91
    aget-object v2, p1, v3

    aput-object v2, v0, v4

    .line 92
    aget-object v2, p1, v3

    aput-object v2, v0, v5

    .line 93
    aget-object v2, p1, v3

    aput-object v2, v0, v6

    goto :goto_0

    .line 96
    :pswitch_1
    aget-object v2, p1, v3

    aput-object v2, v0, v3

    .line 97
    aget-object v2, p1, v4

    aput-object v2, v0, v4

    .line 98
    aget-object v2, p1, v3

    aput-object v2, v0, v5

    .line 99
    aget-object v2, p1, v3

    aput-object v2, v0, v6

    goto :goto_0

    .line 102
    :pswitch_2
    aget-object v2, p1, v3

    aput-object v2, v0, v3

    .line 103
    aget-object v2, p1, v4

    aput-object v2, v0, v4

    .line 104
    aget-object v2, p1, v5

    aput-object v2, v0, v5

    .line 105
    aget-object v2, p1, v3

    aput-object v2, v0, v6

    goto :goto_0

    .line 108
    :pswitch_3
    move-object v0, p1

    .line 109
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOffsetLeft(I)V
    .locals 0
    .param p1, "offsetLeft"    # I

    .prologue
    .line 239
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->offsetLeft:I

    .line 240
    return-void
.end method

.method public setOffsetTop(I)V
    .locals 0
    .param p1, "offsetTop"    # I

    .prologue
    .line 247
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->offsetTop:I

    .line 248
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->text:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->createUI()V

    .line 142
    return-void
.end method

.method public upClick()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "timer"    # J

    .prologue
    .line 122
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressedTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressedTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressedTime:I

    if-gtz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LButton;->pressed:Z

    .line 125
    :cond_0
    return-void
.end method
