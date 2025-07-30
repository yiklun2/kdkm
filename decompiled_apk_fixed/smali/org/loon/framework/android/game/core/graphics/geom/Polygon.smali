.class public Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;
    }
.end annotation


# static fields
.field private static final MIN_LENGTH:I = 0x4

.field private static final serialVersionUID:J = -0x59a6bfa6a13b9c51L


# instance fields
.field protected bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

.field public npoints:I

.field public xpoints:[I

.field public ypoints:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 101
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 102
    return-void
.end method

.method public constructor <init>([I[II)V
    .locals 2
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    array-length v0, p1

    if-gt p3, v0, :cond_0

    array-length v0, p2

    if-le p3, v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "npoints > xpoints.length || npoints > ypoints.length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    if-gez p3, :cond_2

    .line 130
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "npoints < 0"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 135
    invoke-static {p1, p3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 136
    invoke-static {p2, p3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 137
    return-void
.end method

.method private getCrossings(DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    .locals 14
    .param p1, "xlo"    # D
    .param p3, "ylo"    # D
    .param p5, "xhi"    # D
    .param p7, "yhi"    # D

    .prologue
    .line 436
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;-><init>(DDDD)V

    .line 437
    .local v0, "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    add-int/lit8 v2, v2, -0x1

    aget v12, v1, v2

    .line 438
    .local v12, "lastx":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    add-int/lit8 v2, v2, -0x1

    aget v13, v1, v2

    .line 442
    .local v13, "lasty":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lt v11, v1, :cond_0

    .line 452
    .end local v0    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :goto_1
    return-object v0

    .line 443
    .restart local v0    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v9, v1, v11

    .line 444
    .local v9, "curx":I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v10, v1, v11

    .line 445
    .local v10, "cury":I
    int-to-double v1, v12

    int-to-double v3, v13

    int-to-double v5, v9

    int-to-double v7, v10

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const/4 v0, 0x0

    goto :goto_1

    .line 448
    :cond_1
    move v12, v9

    .line 449
    move v13, v10

    .line 442
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPoint(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 259
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 260
    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    mul-int/lit8 v0, v1, 0x2

    .line 263
    .local v0, "newLength":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 264
    const/4 v0, 0x4

    .line 269
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 270
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 272
    .end local v0    # "newLength":I
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    aput p1, v1, v2

    .line 273
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    aput p2, v1, v2

    .line 274
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 275
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->updateBounds(II)V

    .line 278
    :cond_3
    return-void

    .line 265
    .restart local v0    # "newLength":I
    :cond_4
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_0
.end method

.method calculateBounds([I[II)V
    .locals 10
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 203
    const v2, 0x7fffffff

    .line 204
    .local v2, "boundsMinX":I
    const v3, 0x7fffffff

    .line 205
    .local v3, "boundsMinY":I
    const/high16 v0, -0x80000000

    .line 206
    .local v0, "boundsMaxX":I
    const/high16 v1, -0x80000000

    .line 208
    .local v1, "boundsMaxY":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 216
    new-instance v7, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 217
    sub-int v8, v0, v2

    .line 218
    sub-int v9, v1, v3

    invoke-direct {v7, v2, v3, v8, v9}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 216
    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 219
    return-void

    .line 209
    :cond_0
    aget v5, p1, v4

    .line 210
    .local v5, "x":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 211
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 212
    aget v6, p2, v4

    .line 213
    .local v6, "y":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 214
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public contains(DD)Z
    .locals 19
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBoundingBox()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v15

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->contains(DD)Z

    move-result v15

    if-nez v15, :cond_1

    .line 372
    :cond_0
    const/4 v15, 0x0

    .line 430
    :goto_0
    return v15

    .line 374
    :cond_1
    const/4 v6, 0x0

    .line 376
    .local v6, "hits":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v8, v15, v16

    .line 377
    .local v8, "lastx":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v9, v15, v16

    .line 381
    .local v9, "lasty":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lt v7, v15, :cond_2

    .line 430
    and-int/lit8 v15, v6, 0x1

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_0

    .line 382
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v4, v15, v7

    .line 383
    .local v4, "curx":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v5, v15, v7

    .line 385
    .local v5, "cury":I
    if-ne v5, v9, :cond_4

    .line 381
    :cond_3
    :goto_2
    move v8, v4

    move v9, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 390
    :cond_4
    if-ge v4, v8, :cond_5

    .line 391
    int-to-double v15, v8

    cmpl-double v15, p1, v15

    if-gez v15, :cond_3

    .line 394
    move v10, v4

    .line 403
    .local v10, "leftx":I
    :goto_3
    if-ge v5, v9, :cond_7

    .line 404
    int-to-double v15, v5

    cmpg-double v15, p3, v15

    if-ltz v15, :cond_3

    int-to-double v15, v9

    cmpl-double v15, p3, v15

    if-gez v15, :cond_3

    .line 407
    int-to-double v15, v10

    cmpg-double v15, p1, v15

    if-gez v15, :cond_6

    .line 408
    add-int/lit8 v6, v6, 0x1

    .line 409
    goto :goto_2

    .line 396
    .end local v10    # "leftx":I
    :cond_5
    int-to-double v15, v4

    cmpl-double v15, p1, v15

    if-gez v15, :cond_3

    .line 399
    move v10, v8

    .restart local v10    # "leftx":I
    goto :goto_3

    .line 411
    :cond_6
    int-to-double v15, v4

    sub-double v11, p1, v15

    .line 412
    .local v11, "test1":D
    int-to-double v15, v5

    sub-double v13, p3, v15

    .line 425
    .local v13, "test2":D
    :goto_4
    sub-int v15, v9, v5

    int-to-double v15, v15

    div-double v15, v13, v15

    sub-int v17, v8, v4

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpg-double v15, v11, v15

    if-gez v15, :cond_3

    .line 426
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 414
    .end local v11    # "test1":D
    .end local v13    # "test2":D
    :cond_7
    int-to-double v15, v9

    cmpg-double v15, p3, v15

    if-ltz v15, :cond_3

    int-to-double v15, v5

    cmpl-double v15, p3, v15

    if-gez v15, :cond_3

    .line 417
    int-to-double v15, v10

    cmpg-double v15, p1, v15

    if-gez v15, :cond_8

    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 419
    goto :goto_2

    .line 421
    :cond_8
    int-to-double v15, v8

    sub-double v11, p1, v15

    .line 422
    .restart local v11    # "test1":D
    int-to-double v15, v9

    sub-double v13, p3, v15

    .restart local v13    # "test2":D
    goto :goto_4

    .line 430
    .end local v4    # "curx":I
    .end local v5    # "cury":I
    .end local v10    # "leftx":I
    .end local v11    # "test1":D
    .end local v13    # "test2":D
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public contains(DDDD)Z
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 489
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBoundingBox()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    .line 493
    :cond_1
    add-double v5, p1, p5

    add-double v7, p3, p7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getCrossings(DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;

    move-result-object v9

    .line 494
    .local v9, "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    if-eqz v9, :cond_2

    add-double v0, p3, p7

    invoke-virtual {v9, p3, p4, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->covers(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 337
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 460
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point;)Z
    .locals 2
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 321
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->contains(II)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 502
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBoundingBox()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>()V

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->calculateBounds([I[II)V

    .line 308
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    goto :goto_0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBoundingBox()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 519
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;

    invoke-direct {v0, p0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon$PolygonPathIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;Lorg/loon/framework/android/game/core/graphics/geom/Polygon;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 1
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v0

    return-object v0
.end method

.method public inside(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public intersects(DDDD)Z
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 468
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBoundingBox()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 472
    :cond_1
    add-double v5, p1, p5

    add-double v7, p3, p7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getCrossings(DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;

    move-result-object v9

    .line 473
    .local v9, "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 481
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 175
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 159
    return-void
.end method

.method public translate(II)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    if-lt v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    invoke-virtual {v1, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->translate(II)V

    .line 193
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 188
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v2, v1, v0

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateBounds(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    if-ge p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 228
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iput p1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 235
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    if-ge p2, v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    sub-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 237
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iput p2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 243
    :goto_1
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->bounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    sub-int v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    goto :goto_1
.end method
