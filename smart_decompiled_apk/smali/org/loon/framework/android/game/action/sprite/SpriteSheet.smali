.class public Lorg/loon/framework/android/game/action/sprite/SpriteSheet;
.super Ljava/lang/Object;
.source "SpriteSheet.java"


# instance fields
.field private height:I

.field private margin:I

.field private spacing:I

.field private subImages:[[Ljavax/microedition/lcdui/Image;

.field private target:Ljavax/microedition/lcdui/Image;

.field private th:I

.field private tw:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tw"    # I
    .param p3, "th"    # I

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tw"    # I
    .param p3, "th"    # I
    .param p4, "s"    # I
    .param p5, "m"    # I

    .prologue
    .line 42
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "tw"    # I
    .param p3, "th"    # I

    .prologue
    const/4 v4, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "tw"    # I
    .param p3, "th"    # I
    .param p4, "s"    # I
    .param p5, "m"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->target:Ljavax/microedition/lcdui/Image;

    .line 55
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->tw:I

    .line 56
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    .line 57
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->width:I

    .line 58
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->height:I

    .line 59
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    .line 60
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    .line 61
    return-void
.end method

.method private checkImage(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->update()V

    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubImage out of sheet bounds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    if-ltz p2, :cond_2

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    if-lt p2, v0, :cond_3

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubImage out of sheet bounds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    return-void
.end method

.method private getImage(II)Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->checkImage(II)V

    .line 95
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->target:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->tw:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    add-int/2addr v1, v2

    .line 96
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->tw:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    .line 95
    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Image;->getSubImage(IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method private update()V
    .locals 7

    .prologue
    .line 64
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    if-eqz v4, :cond_1

    .line 79
    :cond_0
    return-void

    .line 67
    :cond_1
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->tw:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->tw:I

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 68
    .local v0, "tilesAcross":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->height:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    .line 69
    .local v1, "tilesDown":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->height:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->th:I

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    add-int/2addr v5, v6

    rem-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_2
    filled-new-array {v0, v1}, [I

    move-result-object v4

    const-class v5, Ljavax/microedition/lcdui/Image;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljavax/microedition/lcdui/Image;

    iput-object v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    .line 74
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 75
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_3
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v2

    invoke-direct {p0, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v5

    aput-object v5, v4, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I

    .prologue
    .line 123
    invoke-direct {p0, p4, p5}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->checkImage(II)V

    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p4

    aget-object v0, v0, p5

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 125
    return-void
.end method

.method public getActor(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 115
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getSubImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Ljavax/microedition/lcdui/Image;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->height:I

    return v0
.end method

.method public getHorizontalCount()I
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->update()V

    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    return v0
.end method

.method public getMargin()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    return v0
.end method

.method public getSprite(II)Lorg/loon/framework/android/game/action/sprite/Sprite;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 119
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getSubImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprite;-><init>(Ljavax/microedition/lcdui/Image;)V

    return-object v0
.end method

.method public getSubImage(II)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->checkImage(II)V

    .line 111
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getTarget()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->target:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getVerticalCount()I
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->update()V

    .line 106
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->subImages:[[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 156
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->height:I

    .line 157
    return-void
.end method

.method public setMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 132
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->margin:I

    .line 133
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 140
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->spacing:I

    .line 141
    return-void
.end method

.method public setTarget(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "target"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->target:Ljavax/microedition/lcdui/Image;

    .line 165
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->width:I

    .line 149
    return-void
.end method
