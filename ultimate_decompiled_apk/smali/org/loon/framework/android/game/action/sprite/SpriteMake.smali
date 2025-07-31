.class public Lorg/loon/framework/android/game/action/sprite/SpriteMake;
.super Ljava/lang/Object;
.source "SpriteMake.java"


# static fields
.field public static final DOWN:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final LOWER_LEFT:I = 0x4

.field public static final LOWER_RIGHT:I = 0x5

.field public static final RIGHT:I = 0x2

.field public static final UP:I = 0x3

.field public static final UPPER_LEFT:I = 0x6

.field public static final UPPER_RIGHT:I = 0x7


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private images:[[Ljavax/microedition/lcdui/Image;

.field private shadowImage:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    .line 57
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageHeight:I

    .line 58
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplit2Images(Ljava/lang/String;IIZ)[[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    .line 59
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getFlipHorizintalImage2D([[Ljavax/microedition/lcdui/Image;)[[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    .line 60
    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    return v0
.end method

.method public getImages()[[Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getMove(I)[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMoveSprite(IJ)Lorg/loon/framework/android/game/action/sprite/Sprite;
    .locals 2
    .param p1, "index"    # I
    .param p2, "timer"    # J

    .prologue
    .line 80
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Sprite;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, p1

    invoke-direct {v0, v1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>([Ljavax/microedition/lcdui/Image;J)V

    return-object v0
.end method

.method public getOnlyMove(I)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->images:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public makeShadowImage()Ljavax/microedition/lcdui/Image;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->shadowImage:Ljavax/microedition/lcdui/Image;

    if-nez v2, :cond_0

    .line 64
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    .line 65
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    .line 64
    invoke-static {v2, v3, v4}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->shadowImage:Ljavax/microedition/lcdui/Image;

    .line 66
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->shadowImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 67
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 68
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    div-int/lit8 v3, v3, 0x3

    sub-int v3, v2, v3

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    div-int/lit8 v4, v2, 0x3

    .line 69
    sget-object v5, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    move v2, v1

    .line 68
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->rectOval(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 70
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 72
    .end local v0    # "g":Ljavax/microedition/lcdui/Graphics;
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->shadowImage:Ljavax/microedition/lcdui/Image;

    return-object v1
.end method

.method public setImageHeight(I)V
    .locals 0
    .param p1, "imageHeight"    # I

    .prologue
    .line 96
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageHeight:I

    .line 97
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .param p1, "imageWidth"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteMake;->imageWidth:I

    .line 105
    return-void
.end method
