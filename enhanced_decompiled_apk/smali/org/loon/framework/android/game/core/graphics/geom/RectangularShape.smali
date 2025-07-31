.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;
.super Ljava/lang/Object;
.source "RectangularShape.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 331
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 24

    .prologue
    .line 340
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    .line 341
    .local v4, "width":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    .line 342
    .local v2, "height":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v4, v18

    if-ltz v18, :cond_0

    const-wide/16 v18, 0x0

    cmpg-double v18, v2, v18

    if-gez v18, :cond_1

    .line 343
    :cond_0
    new-instance v18, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-direct/range {v18 .. v18}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>()V

    .line 351
    :goto_0
    return-object v18

    .line 345
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getX()D

    move-result-wide v6

    .line 346
    .local v6, "x":D
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getY()D

    move-result-wide v12

    .line 347
    .local v12, "y":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 348
    .local v8, "x1":D
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 349
    .local v14, "y1":D
    add-double v18, v6, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 350
    .local v10, "x2":D
    add-double v18, v12, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    .line 351
    .local v16, "y2":D
    new-instance v18, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    double-to-int v0, v8

    move/from16 v19, v0

    double-to-int v0, v14

    move/from16 v20, v0

    sub-double v21, v10, v8

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    .line 352
    sub-double v22, v16, v14

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 351
    invoke-direct/range {v18 .. v22}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method public getCenterX()D
    .locals 6

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterY()D
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getFrame()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 9

    .prologue
    .line 176
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public abstract getHeight()D
.end method

.method public getMaxX()D
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxY()D
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 383
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;D)V

    return-object v0
.end method

.method public abstract getWidth()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 322
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setFrame(DDDD)V
.end method

.method public setFrame(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->setFrame(DDDD)V

    .line 220
    return-void
.end method

.method public setFrameFromCenter(DDDD)V
    .locals 13
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "cornerX"    # D
    .param p7, "cornerY"    # D

    .prologue
    .line 285
    sub-double v0, p5, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 286
    .local v11, "halfW":D
    sub-double v0, p7, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 287
    .local v9, "halfH":D
    sub-double v1, p1, v11

    sub-double v3, p3, v9

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v11

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->setFrame(DDDD)V

    .line 288
    return-void
.end method

.method public setFrameFromCenter(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V
    .locals 9
    .param p1, "center"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "corner"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 303
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    .line 304
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    .line 303
    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->setFrameFromCenter(DDDD)V

    .line 305
    return-void
.end method

.method public setFrameFromDiagonal(DDDD)V
    .locals 11
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D

    .prologue
    .line 238
    cmpg-double v0, p5, p1

    if-gez v0, :cond_0

    .line 239
    move-wide v9, p1

    .line 240
    .local v9, "t":D
    move-wide/from16 p1, p5

    .line 241
    move-wide/from16 p5, v9

    .line 243
    .end local v9    # "t":D
    :cond_0
    cmpg-double v0, p7, p3

    if-gez v0, :cond_1

    .line 244
    move-wide v9, p3

    .line 245
    .restart local v9    # "t":D
    move-wide/from16 p3, p7

    .line 246
    move-wide/from16 p7, v9

    .line 248
    .end local v9    # "t":D
    :cond_1
    sub-double v5, p5, p1

    sub-double v7, p7, p3

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->setFrame(DDDD)V

    .line 249
    return-void
.end method

.method public setFrameFromDiagonal(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V
    .locals 9
    .param p1, "p1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "p2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 264
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/RectangularShape;->setFrameFromDiagonal(DDDD)V

    .line 265
    return-void
.end method
