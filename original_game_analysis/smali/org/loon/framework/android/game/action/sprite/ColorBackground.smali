.class public Lorg/loon/framework/android/game/action/sprite/ColorBackground;
.super Lorg/loon/framework/android/game/action/sprite/AbstractBackground;
.source "ColorBackground.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/LColor;II)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 40
    invoke-direct {p0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;-><init>(II)V

    .line 41
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 42
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 57
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->visible:Z

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 61
    .local v1, "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->alpha:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->alpha:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 62
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    .local v0, "oldClip":Landroid/graphics/Rect;
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 64
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->alpha:F

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 65
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 66
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 67
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 68
    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    .line 76
    :goto_1
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto :goto_0

    .line 70
    .end local v0    # "oldClip":Landroid/graphics/Rect;
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v0

    .line 71
    .restart local v0    # "oldClip":Landroid/graphics/Rect;
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 72
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 73
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 74
    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/ColorBackground;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 54
    return-void
.end method
