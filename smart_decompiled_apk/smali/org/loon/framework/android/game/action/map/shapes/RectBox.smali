.class public Lorg/loon/framework/android/game/action/map/shapes/RectBox;
.super Ljava/lang/Object;
.source "RectBox.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 38
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 46
    return-void
.end method

.method public static getIntersection(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 15
    .param p0, "a"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p1, "b"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v2

    .line 139
    .local v2, "a_x":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v0

    .line 140
    .local v0, "a_r":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v3

    .line 141
    .local v3, "a_y":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v1

    .line 142
    .local v1, "a_t":I
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v6

    .line 143
    .local v6, "b_x":I
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v4

    .line 144
    .local v4, "b_r":I
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v7

    .line 145
    .local v7, "b_y":I
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v5

    .line 146
    .local v5, "b_t":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 147
    .local v10, "i_x":I
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 148
    .local v8, "i_r":I
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 149
    .local v11, "i_y":I
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 150
    .local v9, "i_t":I
    if-ge v10, v8, :cond_0

    if-ge v11, v9, :cond_0

    new-instance v12, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    sub-int v13, v8, v10

    .line 151
    sub-int v14, v9, v11

    invoke-direct {v12, v10, v11, v13, v14}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 150
    :goto_0
    return-object v12

    .line 151
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method public contains(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 216
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    if-lt p2, v0, :cond_0

    .line 217
    add-int v0, p1, p3

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    add-int v0, p2, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 216
    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 228
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method public copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 91
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 92
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 93
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    .line 94
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    .line 95
    return-void
.end method

.method public equals(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 188
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 179
    instance-of v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 180
    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 181
    .local v0, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v3, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v4, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->equals(IIII)Z

    move-result v1

    .line 183
    .end local v0    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArea()I
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getCenterX()D
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterY()D
    .locals 6

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    return v0
.end method

.method public getMaxX()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxY()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMiddleX()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMiddleY()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinX()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    return v0
.end method

.method public getMinY()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    return v0
.end method

.method public getRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 0

    .prologue
    .line 159
    return-object p0
.end method

.method public getRectangle2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 9

    .prologue
    .line 155
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v7

    int-to-double v7, v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxX()I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxY()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    return v0
.end method

.method public intersection(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 278
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    .local v0, "x1":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 280
    .local v2, "y1":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v5, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int v5, p1, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 281
    .local v1, "x2":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v5, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int v5, p2, p4

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 282
    .local v3, "y2":I
    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 283
    return-void
.end method

.method public intersection(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 266
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersection(IIII)V

    .line 267
    return-void
.end method

.method public intersects(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 243
    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    return v0
.end method

.method public intersects(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 256
    add-int v0, p1, p3

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 257
    add-int v0, p2, p4

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 256
    goto :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 239
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    return v0
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 54
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 55
    iput p3, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    .line 56
    iput p4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    .line 57
    return-void
.end method

.method public setBounds(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 49
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 50
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 167
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    .line 168
    return-void
.end method

.method public setLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 71
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 72
    return-void
.end method

.method public setLocation(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 60
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 61
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 62
    return-void
.end method

.method public setLocation(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 1
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 65
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 66
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 67
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 175
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    .line 176
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    .line 80
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    .line 88
    return-void
.end method

.method public union(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 303
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 304
    .local v0, "x1":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 305
    .local v2, "y1":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v5, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int v5, p1, p3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 306
    .local v1, "x2":I
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v5, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int v5, p2, p4

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 307
    .local v3, "y2":I
    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    .line 308
    return-void
.end method

.method public union(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 4
    .param p1, "rect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 291
    iget v0, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->union(IIII)V

    .line 292
    return-void
.end method
