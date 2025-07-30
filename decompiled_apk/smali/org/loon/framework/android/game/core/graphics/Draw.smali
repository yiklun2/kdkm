.class public Lorg/loon/framework/android/game/core/graphics/Draw;
.super Ljava/lang/Object;
.source "Draw.java"


# instance fields
.field private font:Ljavax/microedition/lcdui/Font;

.field private offsetGraphics:Ljavax/microedition/lcdui/Graphics;

.field private offsetScreen:Ljavax/microedition/lcdui/Image;

.field private xPoints:[I

.field private yPoints:[I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/ThreadScreen;)V
    .locals 3
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/ThreadScreen;

    .prologue
    const/4 v1, 0x4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    .line 44
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetScreen:Ljavax/microedition/lcdui/Image;

    .line 45
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 46
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->font:Ljavax/microedition/lcdui/Font;

    .line 47
    return-void
.end method


# virtual methods
.method public circle(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "pixel"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 167
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    div-int/lit8 v2, p3, 0x2

    sub-int v2, p2, v2

    const/4 v5, 0x0

    const/16 v6, 0x168

    move v3, p3

    move v4, p3

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->drawArc(IIIIII)V

    goto :goto_0
.end method

.method public circle(IIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 175
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    div-int/lit8 v2, p3, 0x2

    sub-int v2, p2, v2

    const/4 v5, 0x0

    const/16 v6, 0x168

    move v3, p3

    move v4, p3

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->drawArc(IIIIII)V

    goto :goto_0
.end method

.method public circleFill(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "pixel"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 151
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    div-int/lit8 v2, p3, 0x2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2, p3, p3}, Ljavax/microedition/lcdui/Graphics;->fillOval(IIII)V

    goto :goto_0
.end method

.method public circleFill(IIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 159
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    div-int/lit8 v2, p3, 0x2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2, p3, p3}, Ljavax/microedition/lcdui/Graphics;->fillOval(IIII)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 2
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "d"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 119
    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, v1}, Ljavax/microedition/lcdui/Graphics;->drawMirrorImage(Ljavax/microedition/lcdui/Image;IIZ)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, v1}, Ljavax/microedition/lcdui/Graphics;->drawFlipImage(Ljavax/microedition/lcdui/Image;IIZ)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, v1}, Ljavax/microedition/lcdui/Graphics;->drawReverseImage(Ljavax/microedition/lcdui/Image;IIZ)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;IIIIII)V
    .locals 10
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "w1"    # I
    .param p7, "w2"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    add-int v4, p2, p4

    add-int v5, p3, p5

    add-int v8, p6, p4

    .line 112
    add-int v9, p7, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 111
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 10
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "dx1"    # I
    .param p3, "dy1"    # I
    .param p4, "dx2"    # I
    .param p5, "dy2"    # I
    .param p6, "sx1"    # I
    .param p7, "sy1"    # I
    .param p8, "sx2"    # I
    .param p9, "sy2"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method public drawPolygon([I[III)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I
    .param p4, "pixel"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 242
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawPolygon([I[II)V

    goto :goto_0
.end method

.method public drawPolygon([I[IILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 234
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawPolygon([I[II)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;III)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "pixel"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 65
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 73
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public fillPolygon([I[III)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I
    .param p4, "pixel"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 216
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public fillPolygon([I[IILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "xPoints"    # [I
    .param p2, "yPoints"    # [I
    .param p3, "nPoints"    # I
    .param p4, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 221
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 225
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public fillRect(IIIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "pixel"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 200
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    aput p1, v0, v1

    .line 201
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    aput p2, v0, v1

    .line 202
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    add-int v1, p1, p3

    aput v1, v0, v2

    .line 203
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    aput p2, v0, v2

    .line 204
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    add-int v1, p1, p3

    aput v1, v0, v3

    .line 205
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    add-int v1, p2, p4

    aput v1, v0, v3

    .line 206
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    aput p1, v0, v4

    .line 207
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    add-int v1, p2, p4

    aput v1, v0, v4

    .line 208
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->xPoints:[I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->yPoints:[I

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillPolygon([I[II)V

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->font:Ljavax/microedition/lcdui/Font;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetScreen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetScreen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public line(IIIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "pixel"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 81
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto :goto_0
.end method

.method public line(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 143
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto :goto_0
.end method

.method public rect(IIIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "pixel"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 184
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_0
.end method

.method public rect(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 192
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_0
.end method

.method public rgbToPixel(III)I
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 50
    invoke-static {p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/LColor;->getPixel(III)I

    move-result v0

    return v0
.end method

.method public setFont(Ljava/lang/String;II)V
    .locals 2
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-static {p1, p2, p3}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    goto :goto_0
.end method

.method public surfaceCopy(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Draw;->offsetScreen:Ljavax/microedition/lcdui/Image;

    invoke-interface {p1, v0, v1, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 247
    return-void
.end method
