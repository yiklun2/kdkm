.class public Lorg/loon/framework/android/game/core/graphics/geom/Area;
.super Ljava/lang/Object;
.source "Area.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/lang/Cloneable;


# static fields
.field private static EmptyCurves:Ljava/util/Vector;


# instance fields
.field private cachedBounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

.field private curves:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->EmptyCurves:Ljava/util/Vector;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->EmptyCurves:Ljava/util/Vector;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
    .locals 1
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    instance-of v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .end local p1    # "s":Lorg/loon/framework/android/game/core/graphics/geom/Shape;
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 107
    :goto_0
    return-void

    .line 105
    .restart local p1    # "s":Lorg/loon/framework/android/game/core/graphics/geom/Shape;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Shape;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->pathToCurves(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    goto :goto_0
.end method

.method private getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 11

    .prologue
    const-wide/16 v5, 0x0

    .line 408
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->cachedBounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    if-eqz v1, :cond_0

    .line 409
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->cachedBounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .line 420
    :goto_0
    return-object v0

    .line 411
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>()V

    .line 412
    .local v0, "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 413
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 415
    .local v9, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getX0()D

    move-result-wide v1

    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getY0()D

    move-result-wide v3

    move-wide v7, v5

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->setRect(DDDD)V

    .line 416
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v10, v1, :cond_2

    .line 420
    .end local v9    # "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .end local v10    # "i":I
    :cond_1
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->cachedBounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    goto :goto_0

    .line 417
    .restart local v9    # "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .restart local v10    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->enlarge(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V

    .line 416
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private invalidateBounds()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->cachedBounds:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .line 406
    return-void
.end method

.method private static pathToCurves(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;)Ljava/util/Vector;
    .locals 28
    .param p0, "pi"    # Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    .prologue
    .line 110
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 111
    .local v2, "curves":Ljava/util/Vector;
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->getWindingRule()I

    move-result v27

    .line 126
    .local v27, "windingRule":I
    const/16 v11, 0x17

    new-array v0, v11, [D

    move-object/from16 v25, v0

    .line 127
    .local v25, "coords":[D
    const-wide/16 v7, 0x0

    .local v7, "movx":D
    const-wide/16 v9, 0x0

    .line 128
    .local v9, "movy":D
    const-wide/16 v3, 0x0

    .local v3, "curx":D
    const-wide/16 v5, 0x0

    .line 130
    .local v5, "cury":D
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 167
    invoke-static/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 169
    if-nez v27, :cond_1

    .line 170
    new-instance v26, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;

    invoke-direct/range {v26 .. v26}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;-><init>()V

    .line 174
    .local v26, "operator":Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
    :goto_1
    sget-object v11, Lorg/loon/framework/android/game/core/graphics/geom/Area;->EmptyCurves:Ljava/util/Vector;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v11}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v11

    return-object v11

    .line 131
    .end local v26    # "operator":Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 165
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 134
    const/4 v11, 0x0

    aget-wide v7, v25, v11

    move-wide v3, v7

    .line 135
    const/4 v11, 0x1

    aget-wide v9, v25, v11

    move-wide v5, v9

    .line 136
    invoke-static {v2, v7, v8, v9, v10}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertMove(Ljava/util/Vector;DD)V

    goto :goto_2

    .line 139
    :pswitch_1
    const/4 v11, 0x0

    aget-wide v16, v25, v11

    .line 140
    .local v16, "newx":D
    const/4 v11, 0x1

    aget-wide v18, v25, v11

    .local v18, "newy":D
    move-object v11, v2

    move-wide v12, v3

    move-wide v14, v5

    .line 141
    invoke-static/range {v11 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 142
    move-wide/from16 v3, v16

    .line 143
    move-wide/from16 v5, v18

    .line 144
    goto :goto_2

    .line 146
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_2
    const/4 v11, 0x2

    aget-wide v16, v25, v11

    .line 147
    .restart local v16    # "newx":D
    const/4 v11, 0x3

    aget-wide v18, v25, v11

    .restart local v18    # "newy":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    .line 148
    invoke-static/range {v20 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertQuad(Ljava/util/Vector;DD[D)V

    .line 149
    move-wide/from16 v3, v16

    .line 150
    move-wide/from16 v5, v18

    .line 151
    goto :goto_2

    .line 153
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_3
    const/4 v11, 0x4

    aget-wide v16, v25, v11

    .line 154
    .restart local v16    # "newx":D
    const/4 v11, 0x5

    aget-wide v18, v25, v11

    .restart local v18    # "newy":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    .line 155
    invoke-static/range {v20 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertCubic(Ljava/util/Vector;DD[D)V

    .line 156
    move-wide/from16 v3, v16

    .line 157
    move-wide/from16 v5, v18

    .line 158
    goto :goto_2

    .line 160
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_4
    invoke-static/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 161
    move-wide v3, v7

    .line 162
    move-wide v5, v9

    goto :goto_2

    .line 172
    :cond_1
    new-instance v26, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;

    invoke-direct/range {v26 .. v26}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;-><init>()V

    .restart local v26    # "operator":Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
    goto :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/core/graphics/geom/Area;)V
    .locals 3
    .param p1, "rhs"    # Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .prologue
    .line 206
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$AddOp;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$AddOp;-><init>()V

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$AddOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 207
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 208
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Area;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    return-object v0
.end method

.method public contains(DD)Z
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 534
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->contains(DD)Z

    move-result v5

    if-nez v5, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v3

    .line 537
    :cond_1
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 538
    .local v2, "enum_":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 539
    .local v1, "crossings":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 543
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v4, :cond_0

    move v3, v4

    goto :goto_0

    .line 540
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 541
    .local v0, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->crossingsFor(DD)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1
.end method

.method public contains(DDDD)Z
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 559
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gez v0, :cond_1

    .line 560
    :cond_0
    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    .line 562
    :cond_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->contains(DDDD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 563
    const/4 v0, 0x0

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    add-double v5, p1, p5

    add-double v7, p3, p7

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->findCrossings(Ljava/util/Vector;DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;

    move-result-object v9

    .line 566
    .local v9, "c":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    if-eqz v9, :cond_3

    add-double v0, p3, p7

    invoke-virtual {v9, p3, p4, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->covers(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Z
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 551
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 574
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public createTransformedArea(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/Area;
    .locals 1
    .param p1, "t"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 524
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Area;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    .line 525
    .local v0, "a":Lorg/loon/framework/android/game/core/graphics/geom/Area;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->transform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    .line 526
    return-object v0
.end method

.method public equals(Lorg/loon/framework/android/game/core/graphics/geom/Area;)Z
    .locals 4
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .prologue
    .line 483
    if-ne p1, p0, :cond_0

    .line 484
    const/4 v1, 0x1

    .line 490
    :goto_0
    return v1

    .line 486
    :cond_0
    if-nez p1, :cond_1

    .line 487
    const/4 v1, 0x0

    goto :goto_0

    .line 489
    :cond_1
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;

    invoke-direct {v1}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;-><init>()V

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 490
    .local v0, "c":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    goto :goto_0
.end method

.method public exclusiveOr(Lorg/loon/framework/android/game/core/graphics/geom/Area;)V
    .locals 3
    .param p1, "rhs"    # Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .prologue
    .line 306
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;-><init>()V

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 307
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 308
    return-void
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 612
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-direct {v0, v1, p1}, Lorg/loon/framework/android/game/core/graphics/geom/AreaIterator;-><init>(Ljava/util/Vector;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;D)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .locals 2
    .param p1, "at"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .param p2, "flatness"    # D

    .prologue
    .line 634
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/FlatteningPathIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;D)V

    return-object v0
.end method

.method public intersect(Lorg/loon/framework/android/game/core/graphics/geom/Area;)V
    .locals 3
    .param p1, "rhs"    # Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .prologue
    .line 272
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$IntOp;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$IntOp;-><init>()V

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$IntOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 273
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 274
    return-void
.end method

.method public intersects(DDDD)Z
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D

    .prologue
    .line 582
    const-wide/16 v0, 0x0

    cmpg-double v0, p5, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p7, v0

    if-gez v0, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 585
    :cond_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getCachedBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 586
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    add-double v5, p1, p5

    add-double v7, p3, p7

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->findCrossings(Ljava/util/Vector;DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;

    move-result-object v9

    .line 589
    .local v9, "c":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 597
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPolygonal()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 339
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 340
    .local v0, "enum_":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 345
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 342
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRectangular()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 356
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 357
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v3

    .line 360
    :cond_1
    const/4 v5, 0x3

    if-le v2, v5, :cond_2

    move v3, v4

    .line 361
    goto :goto_0

    .line 363
    :cond_2
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 364
    .local v0, "c1":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 365
    .local v1, "c2":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v5

    if-eq v5, v3, :cond_4

    :cond_3
    move v3, v4

    .line 366
    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXTop()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXBot()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXTop()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXBot()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_6

    :cond_5
    move v3, v4

    .line 369
    goto :goto_0

    .line 371
    :cond_6
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    :cond_7
    move v3, v4

    .line 373
    goto :goto_0
.end method

.method public isSingular()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 390
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    move v1, v2

    .line 400
    :goto_0
    return v1

    .line 393
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 394
    .local v0, "enum_":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 395
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 400
    goto :goto_0

    .line 396
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v1

    if-nez v1, :cond_1

    .line 397
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 316
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 317
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 318
    return-void
.end method

.method public subtract(Lorg/loon/framework/android/game/core/graphics/geom/Area;)V
    .locals 3
    .param p1, "rhs"    # Lorg/loon/framework/android/game/core/graphics/geom/Area;

    .prologue
    .line 239
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$SubOp;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$SubOp;-><init>()V

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$SubOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 240
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 241
    return-void
.end method

.method public transform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 2
    .param p1, "t"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transform must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->getPathIterator(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->pathToCurves(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Area;->curves:Ljava/util/Vector;

    .line 508
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Area;->invalidateBounds()V

    .line 509
    return-void
.end method
