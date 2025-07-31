.class public Lorg/loon/framework/android/game/action/sprite/Picture;
.super Lorg/loon/framework/android/game/core/LObject;
.source "Picture.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = -0x1b82061e96784a95L


# instance fields
.field private alpha:F

.field private height:I

.field private image:Ljavax/microedition/lcdui/Image;

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private visible:Z

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Picture;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/Picture;-><init>(Ljava/lang/String;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Picture;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/Picture;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 4
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/Picture;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 70
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    .line 71
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    .line 73
    :cond_0
    int-to-double v0, p2

    int-to-double v2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/Picture;->setLocation(DD)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->visible:Z

    .line 75
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->visible:Z

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 80
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->y()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 83
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 87
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    .line 122
    :cond_0
    return-void
.end method

.method public equals(Lorg/loon/framework/android/game/action/sprite/Picture;)Z
    .locals 2
    .param p1, "p"    # Lorg/loon/framework/android/game/action/sprite/Picture;

    .prologue
    .line 90
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    iget v1, p1, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    iget v1, p1, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->hashCode()I

    move-result v0

    iget-object v1, p1, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 146
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Picture;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    return v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->visible:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 154
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->alpha:F

    .line 155
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    .line 130
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    .line 131
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    .line 132
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->image:Ljavax/microedition/lcdui/Image;

    .line 136
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->width:I

    .line 137
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->height:I

    .line 138
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/Picture;->visible:Z

    .line 115
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "timer"    # J

    .prologue
    .line 107
    return-void
.end method
