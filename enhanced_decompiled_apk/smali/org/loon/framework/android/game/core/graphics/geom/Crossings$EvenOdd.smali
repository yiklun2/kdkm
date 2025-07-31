.class public final Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;
.super Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
.source "Crossings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EvenOdd"
.end annotation


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "xlo"    # D
    .param p3, "ylo"    # D
    .param p5, "xhi"    # D
    .param p7, "yhi"    # D

    .prologue
    .line 294
    invoke-direct/range {p0 .. p8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;-><init>(DDDD)V

    .line 295
    return-void
.end method


# virtual methods
.method public final covers(DD)Z
    .locals 4
    .param p1, "ystart"    # D
    .param p3, "yend"    # D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    aget-wide v2, v2, v1

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    aget-wide v2, v2, v0

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public record(DDI)V
    .locals 23
    .param p1, "ystart"    # D
    .param p3, "yend"    # D
    .param p5, "direction"    # I

    .prologue
    .line 302
    cmpl-double v20, p1, p3

    if-ltz v20, :cond_0

    .line 372
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v3, 0x0

    .line 307
    .local v3, "from":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v21, v3, 0x1

    aget-wide v20, v20, v21

    cmpl-double v20, p1, v20

    if-gtz v20, :cond_6

    .line 310
    :cond_1
    move v6, v3

    .line 311
    .local v6, "to":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v3, v0, :cond_7

    .line 358
    :goto_3
    if-ge v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    move/from16 v22, v0

    sub-int v22, v22, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    move/from16 v20, v0

    sub-int v20, v20, v3

    add-int v6, v6, v20

    .line 362
    cmpg-double v20, p1, p3

    if-gez v20, :cond_5

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_4

    .line 364
    add-int/lit8 v20, v6, 0xa

    move/from16 v0, v20

    new-array v5, v0, [D

    .line 365
    .local v5, "newranges":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    .line 368
    .end local v5    # "newranges":[D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "to":I
    .local v7, "to":I
    aput-wide p1, v20, v6

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "to":I
    .restart local v6    # "to":I
    aput-wide p3, v20, v7

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iput v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->limit:I

    goto/16 :goto_0

    .line 308
    .end local v6    # "to":I
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    .line 312
    .restart local v6    # "to":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "from":I
    .local v4, "from":I
    aget-wide v18, v20, v3

    .line 313
    .local v18, "yrlo":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "from":I
    .restart local v3    # "from":I
    aget-wide v16, v20, v4

    .line 314
    .local v16, "yrhi":D
    cmpg-double v20, p3, v18

    if-gez v20, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "to":I
    .restart local v7    # "to":I
    aput-wide p1, v20, v6

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "to":I
    .restart local v6    # "to":I
    aput-wide p3, v20, v7

    .line 318
    move-wide/from16 p1, v18

    .line 319
    move-wide/from16 p3, v16

    .line 320
    goto/16 :goto_2

    .line 324
    :cond_8
    cmpg-double v20, p1, v18

    if-gez v20, :cond_9

    .line 325
    move-wide/from16 v14, p1

    .line 326
    .local v14, "yll":D
    move-wide/from16 v12, v18

    .line 331
    .local v12, "ylh":D
    :goto_4
    cmpg-double v20, p3, v16

    if-gez v20, :cond_a

    .line 332
    move-wide/from16 v10, p3

    .line 333
    .local v10, "yhl":D
    move-wide/from16 v8, v16

    .line 338
    .local v8, "yhh":D
    :goto_5
    cmpl-double v20, v12, v10

    if-nez v20, :cond_b

    .line 339
    move-wide/from16 p1, v14

    .line 340
    move-wide/from16 p3, v8

    .line 354
    :goto_6
    cmpl-double v20, p1, p3

    if-ltz v20, :cond_2

    goto/16 :goto_3

    .line 328
    .end local v8    # "yhh":D
    .end local v10    # "yhl":D
    .end local v12    # "ylh":D
    .end local v14    # "yll":D
    :cond_9
    move-wide/from16 v14, v18

    .line 329
    .restart local v14    # "yll":D
    move-wide/from16 v12, p1

    .restart local v12    # "ylh":D
    goto :goto_4

    .line 335
    :cond_a
    move-wide/from16 v10, v16

    .line 336
    .restart local v10    # "yhl":D
    move-wide/from16 v8, p3

    .restart local v8    # "yhh":D
    goto :goto_5

    .line 342
    :cond_b
    cmpl-double v20, v12, v10

    if-lez v20, :cond_c

    .line 343
    move-wide/from16 p1, v10

    .line 344
    move-wide v10, v12

    .line 345
    move-wide/from16 v12, p1

    .line 347
    :cond_c
    cmpl-double v20, v14, v12

    if-eqz v20, :cond_d

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "to":I
    .restart local v7    # "to":I
    aput-wide v14, v20, v6

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;->yranges:[D

    move-object/from16 v20, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "to":I
    .restart local v6    # "to":I
    aput-wide v12, v20, v7

    .line 351
    :cond_d
    move-wide/from16 p1, v10

    .line 352
    move-wide/from16 p3, v8

    goto :goto_6
.end method
