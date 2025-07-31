.class public Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
.super Lorg/loon/framework/android/game/action/sprite/j2me/Layer;
.source "TiledLayer.java"


# instance fields
.field animatedTiles:[I

.field private final cols:I

.field img:Ljavax/microedition/lcdui/Image;

.field numAnimatedTiles:I

.field private numStaticTiles:I

.field private final rows:I

.field private tileHeight:I

.field private tileWidth:I

.field private tiles:[[I


# direct methods
.method public constructor <init>(IILjavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "cols"    # I
    .param p2, "rows"    # I
    .param p3, "img"    # Ljavax/microedition/lcdui/Image;
    .param p4, "tileWidth"    # I
    .param p5, "tileHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    mul-int v3, p1, p4

    mul-int v4, p2, p5

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;-><init>(IIIIZ)V

    .line 46
    if-nez p3, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-lez p5, :cond_1

    if-gtz p4, :cond_2

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_2
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p4

    if-nez v0, :cond_3

    .line 51
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p5

    if-eqz v0, :cond_4

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_4
    iput-object p3, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 55
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->cols:I

    .line 56
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->rows:I

    .line 57
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileWidth:I

    .line 58
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileHeight:I

    .line 59
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p4

    .line 60
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/2addr v2, p5

    mul-int/2addr v0, v2

    .line 59
    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    .line 61
    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tiles:[[I

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    .line 63
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    .line 64
    return-void
.end method


# virtual methods
.method public createAnimatedTile(I)I
    .locals 5
    .param p1, "staticTileIndex"    # I

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    if-le p1, v1, :cond_1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 72
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v1, v1, 0x6

    new-array v0, v1, [I

    .line 73
    .local v0, "temp":[I
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    .line 77
    .end local v0    # "temp":[I
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    aput p1, v1, v2

    .line 78
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    .line 79
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    neg-int v1, v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public fillCells(IIIII)V
    .locals 6
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "numCols"    # I
    .param p4, "numRows"    # I
    .param p5, "index"    # I

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 152
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 150
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 153
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    add-int v4, p1, p3

    :try_start_1
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->cols:I

    if-gt v4, v5, :cond_2

    .line 154
    add-int v4, p2, p4

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->rows:I

    if-le v4, v5, :cond_3

    .line 155
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 156
    :cond_3
    neg-int v4, p5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    if-le p5, v4, :cond_5

    .line 157
    :cond_4
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 159
    :cond_5
    add-int v3, p2, p4

    .line 160
    .local v3, "rMax":I
    add-int v1, p1, p3

    .line 161
    .local v1, "cMax":I
    move v2, p2

    .local v2, "r":I
    :goto_0
    if-lt v2, v3, :cond_6

    .line 150
    monitor-exit p0

    .line 167
    return-void

    .line 162
    :cond_6
    move v0, p1

    .local v0, "c":I
    :goto_1
    if-lt v0, v1, :cond_7

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_7
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tiles:[[I

    aget-object v4, v4, v2

    aput p5, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAnimatedTile(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    neg-int v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 86
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    aget v0, v0, p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getCell(II)I
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method public final getCellHeight()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileWidth:I

    return v0
.end method

.method public final getColumns()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->cols:I

    return v0
.end method

.method public final getRows()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->rows:I

    return v0
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 21
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    monitor-exit p0

    .line 226
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getX()I

    move-result v9

    .line 191
    .local v9, "x":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getY()I

    move-result v10

    .line 193
    .local v10, "y":I
    const/4 v13, 0x0

    .line 194
    .local v13, "c0":I
    const/16 v17, 0x0

    .line 195
    .local v17, "r0":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getColumns()I

    move-result v14

    .line 196
    .local v14, "cMax":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getRows()I

    move-result v18

    .line 198
    .local v18, "rMax":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellWidth()I

    move-result v6

    .line 199
    .local v6, "tW":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellHeight()I

    move-result v7

    .line 201
    .local v7, "tH":I
    move/from16 v20, v9

    .line 202
    .local v20, "x0":I
    const/16 v11, 0x14

    .line 204
    .local v11, "anchor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    div-int v15, v2, v6

    .line 206
    .local v15, "imgCols":I
    move/from16 v16, v17

    .local v16, "r":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 186
    monitor-exit p0

    goto :goto_0

    .end local v6    # "tW":I
    .end local v7    # "tH":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "anchor":I
    .end local v13    # "c0":I
    .end local v14    # "cMax":I
    .end local v15    # "imgCols":I
    .end local v16    # "r":I
    .end local v17    # "r0":I
    .end local v18    # "rMax":I
    .end local v20    # "x0":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 207
    .restart local v6    # "tW":I
    .restart local v7    # "tH":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    .restart local v11    # "anchor":I
    .restart local v13    # "c0":I
    .restart local v14    # "cMax":I
    .restart local v15    # "imgCols":I
    .restart local v16    # "r":I
    .restart local v17    # "r0":I
    .restart local v18    # "rMax":I
    .restart local v20    # "x0":I
    :cond_1
    move/from16 v9, v20

    .line 208
    move v12, v13

    .local v12, "c":I
    :goto_2
    if-lt v12, v14, :cond_2

    .line 206
    add-int/lit8 v16, v16, 0x1

    add-int/2addr v10, v7

    goto :goto_1

    .line 209
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCell(II)I

    move-result v19

    .line 210
    .local v19, "tile":I
    if-gez v19, :cond_3

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getAnimatedTile(I)I

    move-result v19

    .line 212
    :cond_3
    if-nez v19, :cond_4

    .line 208
    :goto_3
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v9, v6

    goto :goto_2

    .line 215
    :cond_4
    add-int/lit8 v19, v19, -0x1

    .line 217
    rem-int v2, v19, v15

    mul-int v4, v6, v2

    .line 218
    .local v4, "xSrc":I
    div-int v2, v19, v15

    mul-int v5, v2, v7

    .line 220
    .local v5, "ySrc":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public setAnimatedTile(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "staticTileIndex"    # I

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    neg-int v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 95
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    if-lt p1, v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_1
    if-ltz p2, :cond_2

    :try_start_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    if-le p2, v0, :cond_3

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 100
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    aput p2, v0, p1

    .line 93
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void
.end method

.method public setCell(III)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "index"    # I

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    neg-int v0, p3

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    if-le p3, v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 112
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aput p3, v0, p1

    .line 109
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    return-void
.end method

.method public setStaticTileSet(Ljavax/microedition/lcdui/Image;II)V
    .locals 9
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "tileWidth"    # I
    .param p3, "tileHeight"    # I

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_0
    if-lez p3, :cond_1

    if-gtz p2, :cond_2

    .line 121
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellHeight()I

    move-result v2

    div-int/2addr v1, v2

    .line 126
    mul-int v7, v0, v1

    .line 129
    .local v7, "newNumStaticTiles":I
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->cols:I

    mul-int v8, v0, p2

    .line 130
    .local v8, "w":I
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->rows:I

    mul-int v6, v0, p3

    .line 132
    .local v6, "h":I
    invoke-virtual {p0, v8, v6}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->setSize(II)V

    .line 134
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileWidth:I

    .line 135
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->tileHeight:I

    .line 137
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    if-lt v7, v0, :cond_5

    .line 138
    iput v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    .line 139
    monitor-exit p0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_5
    iput v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numStaticTiles:I

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->animatedTiles:[I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->numAnimatedTiles:I

    .line 145
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getColumns()I

    move-result v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getRows()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->fillCells(IIIII)V

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
