.class public Lorg/loon/framework/android/game/action/sprite/StatusBar;
.super Lorg/loon/framework/android/game/core/LObject;
.source "StatusBar.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private dead:Z

.field private height:I

.field private hit:Z

.field private hpString:Ljava/lang/String;

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private showValue:Z

.field private value:I

.field private valueMax:I

.field private valueMin:I

.field private visible:Z

.field private w:F

.field private we:F

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/StatusBar;-><init>(IIII)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v1, 0x64

    .line 59
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/sprite/StatusBar;-><init>(IIIIII)V

    .line 60
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 63
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 64
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    .line 65
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 66
    mul-int v0, p5, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 67
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    mul-int/2addr v0, p5

    int-to-float v0, v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 68
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    .line 69
    iput p6, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    .line 70
    iput-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->visible:Z

    .line 71
    iput-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hit:Z

    .line 72
    int-to-double v0, p3

    int-to-double v2, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->setLocation(DD)V

    .line 73
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 74
    return-void
.end method

.method private drawBar(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 92
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->gray:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 93
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-interface {p1, p5, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 94
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    if-gt v0, v1, :cond_1

    .line 95
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->dead:Z

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 98
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    mul-int/2addr v0, p3

    div-int/2addr v0, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-interface {p1, p5, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-interface {p1, p5, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 107
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 108
    return-void

    .line 102
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 103
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-interface {p1, p5, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 104
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 105
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    mul-int/2addr v0, p3

    div-int/2addr v0, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-interface {p1, p5, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->visible:Z

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->showValue:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hpString:Ljava/lang/String;

    .line 144
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 145
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hpString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v8

    .line 146
    .local v8, "w":I
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v7

    .line 147
    .local v7, "h":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->x()I

    move-result v1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->y()I

    move-result v2

    .line 148
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    .line 147
    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 150
    .end local v7    # "h":I
    .end local v8    # "w":I
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    float-to-int v2, v0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    float-to-int v3, v0

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->x()I

    move-result v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->y()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIII)V

    .line 152
    :cond_1
    return-void
.end method

.method public empty()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 86
    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 87
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 88
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 89
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 160
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->height:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    return v0
.end method

.method public isHit()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hit:Z

    return v0
.end method

.method public isShowHP()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->showValue:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->visible:Z

    return v0
.end method

.method public set(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 78
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    .line 79
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 80
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 81
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 82
    return-void
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 177
    return-void
.end method

.method public setDead(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->dead:Z

    .line 123
    return-void
.end method

.method public setHit(Z)V
    .locals 0
    .param p1, "hit"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hit:Z

    .line 237
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "valueMax"    # I

    .prologue
    .line 206
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    .line 207
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 208
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 209
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->state()Z

    .line 210
    return-void
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "valueMin"    # I

    .prologue
    .line 217
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 218
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 219
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    mul-int/2addr v0, p1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 220
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->state()Z

    .line 221
    return-void
.end method

.method public setShowHP(Z)V
    .locals 0
    .param p1, "showHP"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->showValue:Z

    .line 169
    return-void
.end method

.method public setUpdate(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    invoke-static {v0, p1, v1}, Lorg/loon/framework/android/game/utils/NumberUtils;->mid(III)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 117
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 118
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    .line 119
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 228
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 229
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->visible:Z

    .line 193
    return-void
.end method

.method public state()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 126
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 128
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->we:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 129
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 130
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    float-to-int v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    div-int/2addr v1, v2

    .line 131
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 130
    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/utils/NumberUtils;->mid(III)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    .line 137
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    .line 134
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->w:F

    float-to-int v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMax:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->width:I

    div-int/2addr v1, v2

    .line 135
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->valueMin:I

    .line 134
    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/utils/NumberUtils;->mid(III)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->value:I

    goto :goto_1
.end method

.method public update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/StatusBar;->hit:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->state()Z

    .line 199
    :cond_0
    return-void
.end method

.method public updateTo(II)V
    .locals 0
    .param p1, "v1"    # I
    .param p2, "v2"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->setValue(I)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/action/sprite/StatusBar;->setUpdate(I)V

    .line 113
    return-void
.end method
