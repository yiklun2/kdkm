.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.super Ljava/lang/Object;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$AddOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$IntOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$SubOp;,
        Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$XorOp;
    }
.end annotation


# static fields
.field public static final CTAG_LEFT:I = 0x0

.field public static final CTAG_RIGHT:I = 0x1

.field public static final ETAG_ENTER:I = 0x1

.field public static final ETAG_EXIT:I = -0x1

.field public static final ETAG_IGNORE:I = 0x0

.field private static EmptyChainList:[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd; = null

.field private static EmptyLinkList:[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink; = null

.field public static final RSTAG_INSIDE:I = 0x1

.field public static final RSTAG_OUTSIDE:I = -0x1

.field private static YXTopComparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 173
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$1;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$1;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    .line 402
    new-array v0, v1, [Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->EmptyLinkList:[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 403
    new-array v0, v1, [Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->EmptyChainList:[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;-><init>()V

    return-void
.end method

.method private static addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 3
    .param p0, "edges"    # Ljava/util/Vector;
    .param p1, "curves"    # Ljava/util/Vector;
    .param p2, "curvetag"    # I

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 165
    .local v1, "enum_":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    return-void

    .line 166
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 167
    .local v0, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getOrder()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    invoke-direct {v2, v0, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Curve;I)V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 8
    .param p0, "subcurves"    # Ljava/util/Vector;
    .param p1, "chains"    # Ljava/util/Vector;

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 383
    .local v3, "numchains":I
    if-nez v3, :cond_0

    .line 400
    :goto_0
    return-void

    .line 386
    :cond_0
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_1

    .line 387
    new-instance v6, Ljava/lang/InternalError;

    const-string v7, "Odd number of chains!"

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    :cond_1
    new-array v1, v3, [Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 390
    .local v1, "endlist":[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    invoke-virtual {p1, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 391
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 399
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    goto :goto_0

    .line 392
    :cond_2
    add-int/lit8 v6, v2, -0x1

    aget-object v4, v1, v6

    .line 393
    .local v4, "open":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    aget-object v0, v1, v2

    .line 394
    .local v0, "close":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    invoke-virtual {v4, v0}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->linkTo(Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    move-result-object v5

    .line 395
    .local v5, "subcurve":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    if-eqz v5, :cond_3

    .line 396
    invoke-virtual {p0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method public static obstructs(DDI)Z
    .locals 3
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "phase"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    cmpg-double v2, p0, p2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmpg-double v2, p0, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 38
    .param p1, "edges"    # Ljava/util/Vector;

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v26

    .line 192
    .local v26, "numedges":I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ge v0, v2, :cond_0

    .line 378
    .end local p1    # "edges":Ljava/util/Vector;
    :goto_0
    return-object p1

    .line 195
    .restart local p1    # "edges":Ljava/util/Vector;
    :cond_0
    move/from16 v0, v26

    new-array v2, v0, [Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .line 196
    .local v13, "edgelist":[Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    invoke-static {v13, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 198
    const/16 v18, 0x0

    .line 199
    .local v18, "left":I
    const/16 v31, 0x0

    .line 200
    .local v31, "right":I
    const/4 v11, 0x0

    .line 201
    .local v11, "cur":I
    const/16 v22, 0x0

    .line 202
    .local v22, "next":I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v35, v0

    .line 203
    .local v35, "yrange":[D
    new-instance v32, Ljava/util/Vector;

    invoke-direct/range {v32 .. v32}, Ljava/util/Vector;-><init>()V

    .line 204
    .local v32, "subcurves":Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 205
    .local v10, "chains":Ljava/util/Vector;
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 207
    .local v20, "links":Ljava/util/Vector;
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 363
    :cond_1
    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 364
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 365
    .local v30, "ret":Ljava/util/Vector;
    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v14

    .line 366
    .local v14, "enum_":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 p1, v30

    .line 378
    goto :goto_0

    .line 208
    .end local v14    # "enum_":Ljava/util/Enumeration;
    .end local v30    # "ret":Ljava/util/Vector;
    :cond_2
    const/4 v2, 0x0

    aget-wide v33, v35, v2

    .line 210
    .local v33, "y":D
    add-int/lit8 v22, v31, -0x1

    move/from16 v11, v22

    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 219
    add-int/lit8 v18, v22, 0x1

    .line 221
    move/from16 v0, v18

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 222
    move/from16 v0, v31

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 225
    aget-object v2, v13, v31

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v33

    .line 226
    const/4 v2, 0x0

    aget-wide v2, v35, v2

    cmpl-double v2, v33, v2

    if-lez v2, :cond_3

    .line 227
    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 229
    :cond_3
    const/4 v2, 0x0

    aput-wide v33, v35, v2

    .line 232
    :cond_4
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v26

    if-lt v0, v1, :cond_b

    .line 242
    :cond_5
    const/4 v2, 0x1

    aget-object v3, v13, v18

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v36

    aput-wide v36, v35, v2

    .line 243
    move/from16 v0, v31

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 244
    aget-object v2, v13, v31

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v33

    .line 245
    const/4 v2, 0x1

    aget-wide v2, v35, v2

    cmpl-double v2, v2, v33

    if-lez v2, :cond_6

    .line 246
    const/4 v2, 0x1

    aput-wide v33, v35, v2

    .line 252
    :cond_6
    const/16 v23, 0x1

    .line 253
    .local v23, "nexteq":I
    move/from16 v11, v18

    move/from16 v24, v23

    .end local v23    # "nexteq":I
    .local v24, "nexteq":I
    :goto_5
    move/from16 v0, v31

    if-lt v11, v0, :cond_c

    .line 288
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->newRow()V

    .line 289
    const/4 v2, 0x0

    aget-wide v4, v35, v2

    .line 290
    .local v4, "ystart":D
    const/4 v2, 0x1

    aget-wide v6, v35, v2

    .line 291
    .local v6, "yend":D
    move/from16 v11, v18

    :goto_6
    move/from16 v0, v31

    if-lt v11, v0, :cond_11

    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->getState()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 337
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Still inside at end of active edge list!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "num curves = "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v36, v31, v18

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "num links = "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "y top = "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x0

    aget-wide v36, v35, v36

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    move/from16 v0, v31

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    .line 342
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "y top of next curve = "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    aget-object v36, v13, v31

    invoke-virtual/range {v36 .. v36}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :goto_7
    move/from16 v11, v18

    :goto_8
    move/from16 v0, v31

    if-lt v11, v0, :cond_1c

    .line 357
    :cond_7
    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 358
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->clear()V

    .line 361
    const/4 v2, 0x0

    aput-wide v6, v35, v2

    goto/16 :goto_1

    .line 211
    .end local v4    # "ystart":D
    .end local v6    # "yend":D
    .end local v24    # "nexteq":I
    :cond_8
    aget-object v12, v13, v11

    .line 212
    .local v12, "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v2

    cmpl-double v2, v2, v33

    if-lez v2, :cond_a

    .line 213
    move/from16 v0, v22

    if-le v0, v11, :cond_9

    .line 214
    aput-object v12, v13, v22

    .line 216
    :cond_9
    add-int/lit8 v22, v22, -0x1

    .line 210
    :cond_a
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 233
    .end local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    :cond_b
    aget-object v12, v13, v31

    .line 234
    .restart local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v2

    cmpl-double v2, v2, v33

    if-gtz v2, :cond_5

    .line 237
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_4

    .line 254
    .end local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .restart local v24    # "nexteq":I
    :cond_c
    aget-object v12, v13, v11

    .line 255
    .restart local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->setEquivalence(I)V

    .line 256
    move/from16 v22, v11

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    :cond_d
    move/from16 v23, v24

    .line 280
    .end local v24    # "nexteq":I
    .restart local v23    # "nexteq":I
    :goto_a
    aput-object v12, v13, v22

    .line 253
    add-int/lit8 v11, v11, 0x1

    move/from16 v24, v23

    .end local v23    # "nexteq":I
    .restart local v24    # "nexteq":I
    goto/16 :goto_5

    .line 257
    :cond_e
    add-int/lit8 v2, v22, -0x1

    aget-object v29, v13, v2

    .line 258
    .local v29, "prevedge":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->compareTo(Lorg/loon/framework/android/game/core/graphics/geom/Edge;[D)I

    move-result v27

    .line 259
    .local v27, "ordering":I
    const/4 v2, 0x1

    aget-wide v2, v35, v2

    const/16 v36, 0x0

    aget-wide v36, v35, v36

    cmpg-double v2, v2, v36

    if-gtz v2, :cond_f

    .line 260
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "backstepping to "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x1

    aget-wide v36, v35, v36

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    const-string v36, " from "

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v36, 0x0

    aget-wide v36, v35, v36

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_f
    if-ltz v27, :cond_10

    .line 264
    if-nez v27, :cond_d

    .line 269
    invoke-virtual/range {v29 .. v29}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getEquivalence()I

    move-result v15

    .line 270
    .local v15, "eq":I
    if-nez v15, :cond_21

    .line 271
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "nexteq":I
    .restart local v23    # "nexteq":I
    move/from16 v15, v24

    .line 272
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->setEquivalence(I)V

    .line 274
    :goto_b
    invoke-virtual {v12, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->setEquivalence(I)V

    goto :goto_a

    .line 278
    .end local v15    # "eq":I
    .end local v23    # "nexteq":I
    .restart local v24    # "nexteq":I
    :cond_10
    aput-object v29, v13, v22

    .line 256
    add-int/lit8 v22, v22, -0x1

    goto :goto_9

    .line 292
    .end local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v27    # "ordering":I
    .end local v29    # "prevedge":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .restart local v4    # "ystart":D
    .restart local v6    # "yend":D
    :cond_11
    aget-object v12, v13, v11

    .line 294
    .restart local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getEquivalence()I

    move-result v15

    .line 295
    .restart local v15    # "eq":I
    if-eqz v15, :cond_1a

    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->getState()I

    move-result v28

    .line 302
    .local v28, "origstate":I
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_17

    const/4 v8, -0x1

    .line 304
    .local v8, "etag":I
    :goto_c
    const/4 v9, 0x0

    .line 305
    .local v9, "activematch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    move-object/from16 v21, v12

    .line 306
    .local v21, "longestmatch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    move-wide/from16 v16, v6

    .line 310
    .local v16, "furthesty":D
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I

    .line 311
    if-nez v9, :cond_13

    invoke-virtual {v12, v4, v5, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->isActiveFor(DI)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 312
    move-object v9, v12

    .line 314
    :cond_13
    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYBot()D

    move-result-wide v33

    .line 315
    cmpl-double v2, v33, v16

    if-lez v2, :cond_14

    .line 316
    move-object/from16 v21, v12

    .line 317
    move-wide/from16 v16, v33

    .line 319
    :cond_14
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_15

    .line 320
    aget-object v12, v13, v11

    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getEquivalence()I

    move-result v2

    if-eq v2, v15, :cond_12

    .line 321
    :cond_15
    add-int/lit8 v11, v11, -0x1

    .line 322
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->getState()I

    move-result v2

    move/from16 v0, v28

    if-ne v2, v0, :cond_18

    .line 323
    const/4 v8, 0x0

    .line 330
    .end local v9    # "activematch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v16    # "furthesty":D
    .end local v21    # "longestmatch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v28    # "origstate":I
    :goto_d
    if-eqz v8, :cond_16

    .line 331
    invoke-virtual {v12, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->record(DI)V

    .line 332
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v3

    invoke-direct/range {v2 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Curve;DDI)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 303
    .end local v8    # "etag":I
    .restart local v28    # "origstate":I
    :cond_17
    const/4 v8, 0x1

    goto :goto_c

    .line 325
    .restart local v8    # "etag":I
    .restart local v9    # "activematch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .restart local v16    # "furthesty":D
    .restart local v21    # "longestmatch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    :cond_18
    if-eqz v9, :cond_19

    move-object v12, v9

    :goto_e
    goto :goto_d

    :cond_19
    move-object/from16 v12, v21

    goto :goto_e

    .line 328
    .end local v8    # "etag":I
    .end local v9    # "activematch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v16    # "furthesty":D
    .end local v21    # "longestmatch":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v28    # "origstate":I
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I

    move-result v8

    .restart local v8    # "etag":I
    goto :goto_d

    .line 345
    .end local v8    # "etag":I
    .end local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v15    # "eq":I
    :cond_1b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "no more curves"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 348
    :cond_1c
    aget-object v12, v13, v11

    .line 349
    .restart local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getEquivalence()I

    move-result v15

    .line 351
    .restart local v15    # "eq":I
    if-eqz v15, :cond_1d

    .line 352
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v36, "  was equal to "

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v36, "..."

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 367
    .end local v4    # "ystart":D
    .end local v6    # "yend":D
    .end local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .end local v15    # "eq":I
    .end local v24    # "nexteq":I
    .end local v33    # "y":D
    .restart local v14    # "enum_":Ljava/util/Enumeration;
    .restart local v30    # "ret":Ljava/util/Vector;
    :cond_1e
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 368
    .local v19, "link":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    invoke-virtual/range {v19 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getMoveto()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 369
    move-object/from16 v25, v19

    .line 370
    .local v25, "nextlink":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    :cond_1f
    :goto_f
    invoke-virtual/range {v25 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getNext()Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    move-result-object v25

    if-nez v25, :cond_20

    .line 376
    invoke-virtual/range {v19 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getSubCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 371
    :cond_20
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->absorb(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 372
    invoke-virtual/range {v19 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getSubCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 373
    move-object/from16 v19, v25

    goto :goto_f

    .end local v14    # "enum_":Ljava/util/Enumeration;
    .end local v19    # "link":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .end local v25    # "nextlink":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .end local v30    # "ret":Ljava/util/Vector;
    .restart local v12    # "e":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .restart local v15    # "eq":I
    .restart local v24    # "nexteq":I
    .restart local v27    # "ordering":I
    .restart local v29    # "prevedge":Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .restart local v33    # "y":D
    :cond_21
    move/from16 v23, v24

    .end local v24    # "nexteq":I
    .restart local v23    # "nexteq":I
    goto/16 :goto_b
.end method

.method public static resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 25
    .param p0, "subcurves"    # Ljava/util/Vector;
    .param p1, "chains"    # Ljava/util/Vector;
    .param p2, "links"    # Ljava/util/Vector;

    .prologue
    .line 407
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v18

    .line 409
    .local v18, "numlinks":I
    if-nez v18, :cond_2

    .line 410
    sget-object v12, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->EmptyLinkList:[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 418
    .local v12, "linklist":[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v17

    .line 420
    .local v17, "numchains":I
    if-nez v17, :cond_4

    .line 421
    sget-object v10, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->EmptyChainList:[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 429
    .local v10, "endlist":[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    :goto_1
    const/4 v6, 0x0

    .line 430
    .local v6, "curchain":I
    const/4 v7, 0x0

    .line 431
    .local v7, "curlink":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clear()V

    .line 432
    const/16 v21, 0x0

    aget-object v2, v10, v21

    .line 433
    .local v2, "chain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    const/16 v21, 0x1

    aget-object v15, v10, v21

    .line 434
    .local v15, "nextchain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    const/16 v21, 0x0

    aget-object v11, v12, v21

    .line 435
    .local v11, "link":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    const/16 v21, 0x1

    aget-object v16, v12, v21

    .line 436
    .local v16, "nextlink":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    :cond_0
    :goto_2
    if-nez v2, :cond_6

    if-nez v11, :cond_6

    .line 501
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v21

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1

    .line 502
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Odd number of chains!"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    :cond_1
    return-void

    .line 412
    .end local v2    # "chain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .end local v6    # "curchain":I
    .end local v7    # "curlink":I
    .end local v10    # "endlist":[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .end local v11    # "link":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .end local v12    # "linklist":[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .end local v15    # "nextchain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .end local v16    # "nextlink":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .end local v17    # "numchains":I
    :cond_2
    and-int/lit8 v21, v18, 0x1

    if-eqz v21, :cond_3

    .line 413
    new-instance v21, Ljava/lang/InternalError;

    const-string v22, "Odd number of new curves!"

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 415
    :cond_3
    add-int/lit8 v21, v18, 0x2

    move/from16 v0, v21

    new-array v12, v0, [Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 416
    .restart local v12    # "linklist":[Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 423
    .restart local v17    # "numchains":I
    :cond_4
    and-int/lit8 v21, v17, 0x1

    if-eqz v21, :cond_5

    .line 424
    new-instance v21, Ljava/lang/InternalError;

    const-string v22, "Odd number of chains!"

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 426
    :cond_5
    add-int/lit8 v21, v17, 0x2

    move/from16 v0, v21

    new-array v10, v0, [Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 427
    .restart local v10    # "endlist":[Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 441
    .restart local v2    # "chain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .restart local v6    # "curchain":I
    .restart local v7    # "curlink":I
    .restart local v11    # "link":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .restart local v15    # "nextchain":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .restart local v16    # "nextlink":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    :cond_6
    if-nez v11, :cond_b

    const/4 v4, 0x1

    .line 442
    .local v4, "connectchains":Z
    :goto_3
    if-nez v2, :cond_c

    const/4 v5, 0x1

    .line 444
    .local v5, "connectlinks":Z
    :goto_4
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 450
    and-int/lit8 v21, v6, 0x1

    if-nez v21, :cond_d

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->getX()D

    move-result-wide v21

    .line 451
    invoke-virtual {v15}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->getX()D

    move-result-wide v23

    cmpl-double v21, v21, v23

    if-nez v21, :cond_d

    const/4 v4, 0x1

    .line 452
    :goto_5
    and-int/lit8 v21, v7, 0x1

    if-nez v21, :cond_e

    invoke-virtual {v11}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getX()D

    move-result-wide v21

    .line 453
    invoke-virtual/range {v16 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getX()D

    move-result-wide v23

    cmpl-double v21, v21, v23

    if-nez v21, :cond_e

    const/4 v5, 0x1

    .line 455
    :goto_6
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 460
    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->getX()D

    move-result-wide v8

    .line 461
    .local v8, "cx":D
    invoke-virtual {v11}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getX()D

    move-result-wide v13

    .line 462
    .local v13, "lx":D
    if-eqz v15, :cond_f

    cmpg-double v21, v8, v13

    if-gez v21, :cond_f

    .line 463
    invoke-virtual {v15}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->getX()D

    move-result-wide v21

    .line 462
    move-wide/from16 v0, v21

    invoke-static {v0, v1, v13, v14, v6}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->obstructs(DDI)Z

    move-result v21

    if-eqz v21, :cond_f

    const/4 v4, 0x1

    .line 464
    :goto_7
    if-eqz v16, :cond_10

    cmpg-double v21, v13, v8

    if-gez v21, :cond_10

    .line 465
    invoke-virtual/range {v16 .. v16}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getX()D

    move-result-wide v21

    .line 464
    move-wide/from16 v0, v21

    invoke-static {v0, v1, v8, v9, v7}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->obstructs(DDI)Z

    move-result v21

    if-eqz v21, :cond_10

    const/4 v5, 0x1

    .line 468
    .end local v8    # "cx":D
    .end local v13    # "lx":D
    :cond_7
    :goto_8
    if-eqz v4, :cond_9

    .line 469
    invoke-virtual {v2, v15}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->linkTo(Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    move-result-object v20

    .line 470
    .local v20, "subcurve":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    if-eqz v20, :cond_8

    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_8
    add-int/lit8 v6, v6, 0x2

    .line 474
    aget-object v2, v10, v6

    .line 475
    add-int/lit8 v21, v6, 0x1

    aget-object v15, v10, v21

    .line 477
    .end local v20    # "subcurve":Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    :cond_9
    if-eqz v5, :cond_a

    .line 478
    new-instance v19, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)V

    .line 479
    .local v19, "openend":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)V

    .line 480
    .local v3, "closeend":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->setOtherEnd(Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)V

    .line 481
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v7, v7, 0x2

    .line 484
    aget-object v11, v12, v7

    .line 485
    add-int/lit8 v21, v7, 0x1

    aget-object v16, v12, v21

    .line 487
    .end local v3    # "closeend":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .end local v19    # "openend":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    :cond_a
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 491
    invoke-virtual {v2, v11}, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->addLink(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 492
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v6, v6, 0x1

    .line 494
    move-object v2, v15

    .line 495
    add-int/lit8 v21, v6, 0x1

    aget-object v15, v10, v21

    .line 496
    add-int/lit8 v7, v7, 0x1

    .line 497
    move-object/from16 v11, v16

    .line 498
    add-int/lit8 v21, v7, 0x1

    aget-object v16, v12, v21

    goto/16 :goto_2

    .line 441
    .end local v4    # "connectchains":Z
    .end local v5    # "connectlinks":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 442
    .restart local v4    # "connectchains":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 451
    .restart local v5    # "connectlinks":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 453
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 462
    .restart local v8    # "cx":D
    .restart local v13    # "lx":D
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 464
    :cond_10
    const/4 v5, 0x0

    goto :goto_8
.end method


# virtual methods
.method public calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2
    .param p1, "left"    # Ljava/util/Vector;
    .param p2, "right"    # Ljava/util/Vector;

    .prologue
    .line 156
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 157
    .local v0, "edges":Ljava/util/Vector;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    .line 158
    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    .line 159
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;->pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public abstract classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I
.end method

.method public abstract getState()I
.end method

.method public abstract newRow()V
.end method
