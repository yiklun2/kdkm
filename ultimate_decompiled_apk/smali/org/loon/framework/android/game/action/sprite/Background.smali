.class public Lorg/loon/framework/android/game/action/sprite/Background;
.super Lorg/loon/framework/android/game/action/sprite/AbstractBackground;
.source "Background.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient buffer:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Background;-><init>(Ljavax/microedition/lcdui/Image;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 44
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Background;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;-><init>(II)V

    .line 54
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 0
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 48
    invoke-direct {p0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/AbstractBackground;-><init>(II)V

    .line 49
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    .line 50
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 7
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 63
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Background;->alpha:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Background;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 64
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Background;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 65
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v6

    .line 66
    .local v6, "oldClip":Landroid/graphics/Rect;
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 67
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 69
    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    .line 76
    :goto_0
    return-void

    .line 71
    .end local v6    # "oldClip":Landroid/graphics/Rect;
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v6

    .line 72
    .restart local v6    # "oldClip":Landroid/graphics/Rect;
    invoke-interface {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 73
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    .line 74
    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Background;->buffer:Ljavax/microedition/lcdui/Image;

    .line 59
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/Background;->setSize(FF)V

    .line 60
    return-void
.end method
