.class public Lorg/loon/framework/android/game/action/map/TileMap;
.super Ljava/lang/Object;
.source "TileMap.java"


# instance fields
.field private height:I

.field private offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private scrollingVelocity:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private tileHeight:I

.field private tileWidth:I

.field private tiles:[Ljavax/microedition/lcdui/Image;

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v0, 0x20

    .line 49
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/loon/framework/android/game/action/map/TileMap;-><init>(IIII)V

    .line 50
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p3, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileWidth:I

    .line 62
    iput p4, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileHeight:I

    .line 63
    iput p1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->width:I

    .line 64
    iput p2, p0, Lorg/loon/framework/android/game/action/map/TileMap;->height:I

    .line 65
    mul-int v0, p1, p2

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tiles:[Ljavax/microedition/lcdui/Image;

    .line 66
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 67
    return-void
.end method


# virtual methods
.method public getCollision(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;DD)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 11
    .param p1, "p"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "width"    # D
    .param p4, "height"    # D

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v9

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/loon/framework/android/game/action/map/TileMap;->getTileFromPixels(DD)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 118
    .local v0, "tile1":Ljavax/microedition/lcdui/Image;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v9

    add-double/2addr v9, p4

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/loon/framework/android/game/action/map/TileMap;->getTileFromPixels(DD)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 119
    .local v1, "tile2":Ljavax/microedition/lcdui/Image;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v7

    add-double/2addr v7, p2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v9

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/loon/framework/android/game/action/map/TileMap;->getTileFromPixels(DD)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 121
    .local v2, "tile3":Ljavax/microedition/lcdui/Image;
    const-wide/16 v5, 0x0

    .local v5, "y":D
    move-wide v3, v5

    .line 122
    .local v3, "x":D
    if-eqz v0, :cond_2

    .line 123
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 127
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 128
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 132
    :cond_1
    :goto_1
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v7, v3, v4, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v7

    .line 124
    :cond_2
    if-eqz v2, :cond_0

    .line 125
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 129
    :cond_3
    if-eqz v0, :cond_1

    .line 130
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->height:I

    return v0
.end method

.method public getOffset()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    return-object v0
.end method

.method public getScrollingVelocity()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->scrollingVelocity:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    return-object v0
.end method

.method public getTile(II)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tiles:[Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTileFromPixels(DD)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 78
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/map/TileMap;->getTileFromPixels(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getTileFromPixels(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Ljavax/microedition/lcdui/Image;
    .locals 9
    .param p1, "p"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v5

    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v7

    add-double v1, v5, v7

    .line 83
    .local v1, "x":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v5

    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v7

    add-double v3, v5, v7

    .line 84
    .local v3, "y":D
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/TileMap;->pixelsToTiles(DD)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v0

    .line 85
    .local v0, "tileCoordinates":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    .line 86
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 85
    invoke-virtual {p0, v5, v6}, Lorg/loon/framework/android/game/action/map/TileMap;->getTile(II)Ljavax/microedition/lcdui/Image;

    move-result-object v5

    return-object v5
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->width:I

    return v0
.end method

.method public pixelsToTiles(DD)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 8
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 90
    iget v4, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileWidth:I

    int-to-double v4, v4

    div-double v4, p1, v4

    sub-double v0, v4, v6

    .line 91
    .local v0, "xprime":D
    iget v4, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileHeight:I

    int-to-double v4, v4

    div-double v4, p3, v4

    sub-double v2, v4, v6

    .line 92
    .local v2, "yprime":D
    new-instance v4, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v4
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 188
    iput p1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->height:I

    .line 189
    return-void
.end method

.method public setOffset(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 142
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setX(D)V

    .line 143
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setY(D)V

    .line 144
    return-void
.end method

.method public setOffset(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 3
    .param p1, "offset"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setX(D)V

    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setY(D)V

    .line 154
    return-void
.end method

.method public setScrollingVelocity(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 0
    .param p1, "velocity"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->scrollingVelocity:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 172
    return-void
.end method

.method public setTile(IILjavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tiles:[Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aput-object p3, v0, v1

    .line 75
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/loon/framework/android/game/action/map/TileMap;->width:I

    .line 197
    return-void
.end method

.method public tilesToPixels(DD)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 8
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 103
    iget v4, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, p1

    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 104
    .local v0, "xprime":D
    iget v4, p0, Lorg/loon/framework/android/game/action/map/TileMap;->tileHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, p3

    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/TileMap;->offset:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 105
    .local v2, "yprime":D
    new-instance v4, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v4
.end method
