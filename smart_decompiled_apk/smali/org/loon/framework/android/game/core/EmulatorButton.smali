.class public Lorg/loon/framework/android/game/core/EmulatorButton;
.super Ljava/lang/Object;
.source "EmulatorButton.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmap1:Landroid/graphics/Bitmap;

.field private bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private click:Z

.field private disabled:Z

.field private id:I

.field private onClick:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 7
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 50
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIIIZ)V
    .locals 9
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "flag"    # Z

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIIIZII)V
    .locals 7
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "flag"    # Z
    .param p7, "sizew"    # I
    .param p8, "sizeh"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p6, :cond_2

    .line 68
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, p1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "tmp":Ljavax/microedition/lcdui/Image;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 69
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    iput-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    const/4 v0, 0x0

    .line 75
    .end local v0    # "tmp":Ljavax/microedition/lcdui/Image;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p8, :cond_1

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p7, p8, v5}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap1:Landroid/graphics/Bitmap;

    .line 79
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v6, v6, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 81
    return-void

    .line 73
    :cond_2
    iput-object p1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-static {p1, v6}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZ)V

    .line 47
    return-void
.end method


# virtual methods
.method public disable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    .line 158
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    if-nez v0, :cond_0

    .line 180
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    int-to-float v2, v2

    .line 182
    sget-object v3, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    .line 181
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    int-to-float v2, v2

    .line 185
    sget-object v3, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    if-nez v0, :cond_0

    .line 170
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public getBounds()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    return v0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->id:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    return v0
.end method

.method public hit(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 100
    :goto_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    .line 102
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    if-nez v0, :cond_0

    .line 103
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    .line 105
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hit(III)V
    .locals 4
    .param p1, "nid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p2, p3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v3, v3, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, p2, p3, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 88
    :goto_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    .line 90
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->id:I

    if-ne p1, v0, :cond_0

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    .line 93
    :cond_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->setPointerId(I)V

    .line 95
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    .line 97
    :cond_1
    return-void

    .line 89
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClick()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->disabled:Z

    return v0
.end method

.method public setLocation(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setX(I)V

    .line 137
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setY(I)V

    .line 138
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 141
    iput p1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->id:I

    .line 142
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setX(I)V

    .line 121
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->bounds:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setY(I)V

    .line 125
    return-void
.end method

.method public unhit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    .line 116
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    .line 117
    return-void
.end method

.method public unhit(I)V
    .locals 2
    .param p1, "nid"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->id:I

    if-ne v0, p1, :cond_0

    .line 109
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->click:Z

    .line 110
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/EmulatorButton;->onClick:Z

    .line 112
    :cond_0
    return-void
.end method
