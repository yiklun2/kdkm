.class public Lorg/loon/framework/android/game/action/sprite/Label;
.super Lorg/loon/framework/android/game/core/LObject;
.source "Label.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alpha:F

.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private font:Ljavax/microedition/lcdui/Font;

.field private height:I

.field private label:Ljava/lang/String;

.field private visible:Z

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 52
    const/16 v0, 0xc

    invoke-static {v0}, Ljavax/microedition/lcdui/Font;->getFont(I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Label;-><init>(Ljavax/microedition/lcdui/Font;Ljava/lang/String;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "font"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "size"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 56
    invoke-static {p2, p3, p4}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-direct {p0, v0, p1, p5, p6}, Lorg/loon/framework/android/game/action/sprite/Label;-><init>(Ljavax/microedition/lcdui/Font;Ljava/lang/String;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Font;Ljava/lang/String;II)V
    .locals 4
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->font:Ljavax/microedition/lcdui/Font;

    .line 61
    iput-object p2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->visible:Z

    .line 64
    int-to-double v0, p3

    int-to-double v2, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/Label;->setLocation(DD)V

    .line 65
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 76
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->visible:Z

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 78
    .local v1, "oldFont":Ljavax/microedition/lcdui/Font;
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v0

    .line 79
    .local v0, "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->font:Ljavax/microedition/lcdui/Font;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 80
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 81
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->width:I

    .line 82
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->height:I

    .line 83
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->alpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->alpha:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 84
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->alpha:F

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 85
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->x()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->y()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 90
    :goto_0
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 91
    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 93
    .end local v0    # "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    .end local v1    # "oldFont":Ljavax/microedition/lcdui/Font;
    :cond_0
    return-void

    .line 88
    .restart local v0    # "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    .restart local v1    # "oldFont":Ljavax/microedition/lcdui/Font;
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->x()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->y()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->alpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 108
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Label;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Label;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Label;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    return-object v0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->height:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->width:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Label;->visible:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 136
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->alpha:F

    .line 137
    return-void
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 145
    return-void
.end method

.method public setFont(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Label;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 69
    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "font"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->font:Ljavax/microedition/lcdui/Font;

    .line 73
    return-void
.end method

.method public setLabel(I)V
    .locals 1
    .param p1, "label"    # I

    .prologue
    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Label;->setLabel(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->label:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/Label;->visible:Z

    .line 117
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "timer"    # J

    .prologue
    .line 105
    return-void
.end method
