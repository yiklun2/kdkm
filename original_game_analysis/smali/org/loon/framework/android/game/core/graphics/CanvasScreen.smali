.class public abstract Lorg/loon/framework/android/game/core/graphics/CanvasScreen;
.super Lorg/loon/framework/android/game/core/graphics/Screen;
.source "CanvasScreen.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/j2me/J2MEKey;


# static fields
.field public static final DOWN_PRESSED:I = 0x40

.field public static final FIRE_PRESSED:I = 0x100

.field public static final GAME_A_PRESSED:I = 0x200

.field public static final GAME_B_PRESSED:I = 0x400

.field public static final GAME_C_PRESSED:I = 0x800

.field public static final GAME_D_PRESSED:I = 0x1000

.field public static final LEFT_PRESSED:I = 0x4

.field public static final RIGHT_PRESSED:I = 0x20

.field public static final UP_PRESSED:I = 0x2


# instance fields
.field private bufferedImage:Ljavax/microedition/lcdui/Image;

.field private clipHeight:I

.field private clipWidth:I

.field private clipX:I

.field private clipY:I

.field private fullSize:Z

.field private grapBitmap:Landroid/graphics/Bitmap;

.field private keyStates:I

.field private moveFlag:Z

.field private nowHeight:I

.field private nowWidth:I

.field private offsetX:I

.field private offsetY:I

.field private overFlag:Z

.field private releasedKeys:I

.field private screenGraphics:Ljavax/microedition/lcdui/Graphics;

.field private setClip:Z

.field private tmpHeight:I

.field private tmpWidth:I

.field private updateFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v0, 0x5

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 71
    sput-boolean v4, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 72
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setFPS(J)V

    .line 73
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setRepaintMode(I)V

    .line 74
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getHeight()I

    move-result v1

    invoke-static {v0, v1, v4}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    .line 75
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    .line 76
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    .line 77
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 78
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    .line 79
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v0

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const-wide/16 v0, 0x5

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 92
    sput-boolean v4, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 93
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setFPS(J)V

    .line 94
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    .line 95
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->updateFlag:Z

    .line 97
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setRepaintMode(I)V

    .line 98
    invoke-static {p1, p2, v4}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    .line 101
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v0

    goto :goto_0
.end method

.method public constructor <init>(IIII)V
    .locals 5
    .param p1, "nw"    # I
    .param p2, "nh"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const-wide/16 v0, 0x5

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 82
    sput-boolean v4, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 83
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setFPS(J)V

    .line 84
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setRepaintMode(I)V

    .line 85
    invoke-static {p1, p2, v4}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    .line 86
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0, p3, p4}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setSize(II)V

    .line 89
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getMaxFPS()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->dispose()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->overFlag:Z

    .line 123
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 125
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->bufferedImage:Ljavax/microedition/lcdui/Image;

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 129
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_2
    return-void
.end method

.method public final draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 362
    return-void
.end method

.method public exitGame()V
    .locals 0

    .prologue
    .line 354
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->exit()V

    .line 355
    return-void
.end method

.method public flushGraphics()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setClip:Z

    .line 247
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipX:I

    .line 248
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipY:I

    .line 249
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipWidth:I

    .line 250
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipHeight:I

    .line 251
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->repaint()V

    .line 252
    return-void
.end method

.method public flushGraphics(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setClip:Z

    .line 238
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipX:I

    .line 239
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipY:I

    .line 240
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipWidth:I

    .line 241
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipHeight:I

    .line 242
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->repaint()V

    .line 243
    return-void
.end method

.method public getCurrentHeight()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    return v0
.end method

.method public getCurrentWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    return v0
.end method

.method public getGameAction(I)I
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 190
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 155
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 159
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 161
    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 163
    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 165
    :sswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 167
    :sswitch_6
    const/16 v0, 0xa

    goto :goto_0

    .line 169
    :sswitch_7
    const/16 v0, 0xb

    goto :goto_0

    .line 171
    :sswitch_8
    const/16 v0, 0xc

    goto :goto_0

    .line 183
    :sswitch_9
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    .line 184
    .local v0, "rval":I
    goto :goto_0

    .line 186
    .end local v0    # "rval":I
    :sswitch_a
    const/16 v0, 0x2a

    goto :goto_0

    .line 188
    :sswitch_b
    const/16 v0, 0x23

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_9
        0xd -> :sswitch_9
        0xe -> :sswitch_9
        0xf -> :sswitch_9
        0x10 -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1d -> :sswitch_5
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x20 -> :sswitch_8
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getKeyCode(I)I
    .locals 2
    .param p1, "gameAction"    # I

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 197
    :sswitch_0
    const/16 v0, 0x13

    goto :goto_0

    .line 199
    :sswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 201
    :sswitch_2
    const/16 v0, 0x15

    goto :goto_0

    .line 203
    :sswitch_3
    const/16 v0, 0x16

    goto :goto_0

    .line 205
    :sswitch_4
    const/16 v0, 0x42

    goto :goto_0

    .line 207
    :sswitch_5
    const/16 v0, 0x1d

    goto :goto_0

    .line 209
    :sswitch_6
    const/16 v0, 0x1e

    goto :goto_0

    .line 211
    :sswitch_7
    const/16 v0, 0x1f

    goto :goto_0

    .line 213
    :sswitch_8
    const/16 v0, 0x20

    goto :goto_0

    .line 225
    :sswitch_9
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v0, v1, 0x7

    .line 226
    .local v0, "rval":I
    goto :goto_0

    .line 228
    .end local v0    # "rval":I
    :sswitch_a
    const/16 v0, 0x12

    goto :goto_0

    .line 230
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0x23 -> :sswitch_a
        0x2a -> :sswitch_b
        0x30 -> :sswitch_9
        0x31 -> :sswitch_9
        0x32 -> :sswitch_9
        0x33 -> :sswitch_9
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
        0x36 -> :sswitch_9
        0x37 -> :sswitch_9
        0x38 -> :sswitch_9
        0x39 -> :sswitch_9
    .end sparse-switch
.end method

.method public getKeyStates()I
    .locals 3

    .prologue
    .line 138
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyStates:I

    .line 139
    .local v0, "states":I
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyStates:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyStates:I

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    .line 141
    return v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->fullSize:Z

    return v0
.end method

.method protected abstract keyPressed(I)V
.end method

.method protected abstract keyReleased(I)V
.end method

.method public move(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 104
    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->moveFlag:Z

    .line 109
    :goto_0
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->offsetX:I

    .line 110
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->offsetY:I

    .line 111
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->moveFlag:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 312
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 313
    .local v1, "code":I
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getGameAction(I)I

    move-result v2

    .line 314
    .local v2, "gameAction":I
    if-eqz v2, :cond_0

    .line 315
    shl-int v0, v5, v2

    .line 316
    .local v0, "bit":I
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyStates:I

    or-int/2addr v3, v0

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyStates:I

    .line 317
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    .line 319
    .end local v0    # "bit":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyPressed(I)V

    .line 320
    return v5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 326
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 327
    .local v0, "code":I
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getGameAction(I)I

    move-result v1

    .line 328
    .local v1, "gameAction":I
    if-eqz v1, :cond_0

    .line 329
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->releasedKeys:I

    .line 331
    :cond_0
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->keyReleased(I)V

    .line 332
    return v4
.end method

.method public onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 4
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 338
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->pointerPressed(DD)V

    .line 339
    return-void
.end method

.method public onTouchMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 4
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 344
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->pointerMove(DD)V

    .line 345
    return-void
.end method

.method public onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 4
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 350
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Touch;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->pointerReleased(DD)V

    .line 351
    return-void
.end method

.method protected abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method protected abstract pointerMove(DD)V
.end method

.method protected abstract pointerPressed(DD)V
.end method

.method protected abstract pointerReleased(DD)V
.end method

.method public declared-synchronized repaint()V
    .locals 5

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->overFlag:Z

    if-nez v0, :cond_1

    .line 278
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setClip:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipY:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipWidth:I

    .line 280
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipHeight:I

    .line 279
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setClip:Z

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->screenGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 286
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->fullSize:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/LSystem;->repaintFull(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->moveFlag:Z

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->offsetY:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/LSystem;->repaintLocation(Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->updateFlag:Z

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/LSystem;->repaint(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->grapBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/loon/framework/android/game/core/LSystem;->repaint(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public repaint(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->setClip:Z

    .line 302
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipX:I

    .line 303
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipY:I

    .line 304
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipWidth:I

    .line 305
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->clipHeight:I

    .line 306
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->repaint()V

    .line 307
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->fullSize:Z

    .line 261
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->tmpWidth:I

    .line 262
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->tmpHeight:I

    .line 263
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    .line 264
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->fullSize:Z

    .line 267
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->tmpWidth:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    .line 268
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->tmpHeight:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, 0x1

    .line 114
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowWidth:I

    .line 115
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->nowHeight:I

    .line 116
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->updateFlag:Z

    .line 117
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->fullSize:Z

    .line 118
    return-void
.end method
