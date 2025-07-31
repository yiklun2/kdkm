.class Lorg/loon/framework/android/game/action/sprite/GIFDecoder;
.super Ljava/lang/Object;
.source "GIFDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Ljavax/microedition/lcdui/Image;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Ljavax/microedition/lcdui/Image;

.field protected lastRect:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->loopCount:I

    .line 74
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    .line 76
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    .line 78
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    .line 80
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastDispose:I

    .line 82
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    .line 84
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    .line 36
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 276
    const/4 v2, -0x1

    .line 277
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 280
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 281
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    .line 283
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 284
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->prefix:[S

    .line 285
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 286
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 288
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    .line 289
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v11

    .line 290
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 291
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 292
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 293
    .local v3, "available":I
    move/from16 v18, v2

    .line 294
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 295
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 296
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-lt v7, v6, :cond_6

    .line 301
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 303
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-lt v15, v0, :cond_7

    :cond_5
    move/from16 v21, v22

    .line 364
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-lt v15, v0, :cond_12

    .line 368
    return-void

    .line 297
    .end local v4    # "bi":I
    .end local v5    # "bits":I
    .end local v10    # "count":I
    .end local v12    # "datum":I
    .end local v14    # "first":I
    .end local v15    # "i":I
    .end local v20    # "pi":I
    .end local v21    # "top":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 304
    .restart local v4    # "bi":I
    .restart local v5    # "bits":I
    .restart local v10    # "count":I
    .restart local v12    # "datum":I
    .restart local v14    # "first":I
    .restart local v15    # "i":I
    .restart local v20    # "pi":I
    .restart local v22    # "top":I
    :cond_7
    if-nez v22, :cond_13

    .line 305
    if-ge v5, v9, :cond_a

    .line 306
    if-nez v10, :cond_9

    .line 307
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readBlock()I

    move-result v10

    .line 308
    if-gtz v10, :cond_8

    move/from16 v21, v22

    .line 309
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 310
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_8
    const/4 v4, 0x0

    .line 312
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 313
    add-int/lit8 v5, v5, 0x8

    .line 314
    add-int/lit8 v4, v4, 0x1

    .line 315
    add-int/lit8 v10, v10, -0x1

    .line 316
    goto :goto_1

    .line 318
    :cond_a
    and-int v7, v12, v8

    .line 319
    shr-int/2addr v12, v9

    .line 320
    sub-int/2addr v5, v9

    .line 321
    if-gt v7, v3, :cond_5

    if-ne v7, v13, :cond_b

    move/from16 v21, v22

    .line 322
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 323
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_b
    if-ne v7, v6, :cond_c

    .line 324
    add-int/lit8 v9, v11, 0x1

    .line 325
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 326
    add-int/lit8 v3, v6, 0x2

    .line 327
    move/from16 v18, v2

    .line 328
    goto :goto_1

    .line 330
    :cond_c
    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 332
    move/from16 v18, v7

    .line 333
    move v14, v7

    move/from16 v22, v21

    .line 334
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 336
    :cond_d
    move/from16 v16, v7

    .line 337
    .local v16, "in_code":I
    if-ne v7, v3, :cond_e

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 339
    move/from16 v7, v18

    move/from16 v22, v21

    .line 341
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    :goto_4
    if-gt v7, v6, :cond_f

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 346
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_10

    move/from16 v21, v22

    .line 347
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 342
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 348
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 351
    add-int/lit8 v3, v3, 0x1

    .line 352
    and-int v23, v3, v8

    if-nez v23, :cond_11

    .line 353
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    .line 354
    add-int/lit8 v9, v9, 0x1

    .line 355
    add-int/2addr v8, v3

    .line 357
    :cond_11
    move/from16 v18, v16

    .line 359
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 361
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 365
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 364
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_13
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    .line 115
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;->delay:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    .line 118
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "im":Ljavax/microedition/lcdui/Image;
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 210
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;

    iget-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;->image:Ljavax/microedition/lcdui/Image;

    .line 212
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    return v0
.end method

.method public getFrameSize()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getFrame(I)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->loopCount:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 376
    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frames:Ljava/util/ArrayList;

    .line 378
    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gct:[I

    .line 379
    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lct:[I

    .line 380
    return-void
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 389
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/BufferedInputStream;)I
    .locals 1
    .param p1, "is"    # Ljava/io/BufferedInputStream;

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->init()V

    .line 221
    if-eqz p1, :cond_1

    .line 222
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->in:Ljava/io/BufferedInputStream;

    .line 223
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readHeader()V

    .line 224
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readContents()V

    .line 226
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    if-gez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 234
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    return v0

    .line 231
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->init()V

    .line 242
    if-eqz p1, :cond_2

    .line 243
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 244
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object p1, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    move-object v1, p1

    .line 246
    check-cast v1, Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->in:Ljava/io/BufferedInputStream;

    .line 247
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readHeader()V

    .line 248
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readContents()V

    .line 250
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    if-gez v1, :cond_1

    .line 251
    const/4 v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 258
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    return v1

    .line 255
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public read(Ljava/lang/String;)I
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 266
    invoke-static {p1}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 267
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 272
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    return v1

    .line 270
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    goto :goto_0
.end method

.method protected readBlock()I
    .locals 5

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "n":I
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    if-lez v2, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_2

    .line 407
    :cond_0
    :goto_1
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 408
    const/4 v2, 0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 411
    .end local v0    # "count":I
    :cond_1
    return v1

    .line 399
    .restart local v0    # "count":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 400
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 402
    add-int/2addr v1, v0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 13
    .param p1, "ncolors"    # I

    .prologue
    .line 415
    mul-int/lit8 v8, p1, 0x3

    .line 416
    .local v8, "nbytes":I
    const/4 v10, 0x0

    check-cast v10, [I

    .line 417
    .local v10, "tab":[I
    new-array v1, v8, [B

    .line 418
    .local v1, "c":[B
    const/4 v7, 0x0

    .line 420
    .local v7, "n":I
    :try_start_0
    iget-object v11, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 423
    :goto_0
    if-ge v7, v8, :cond_1

    .line 424
    const/4 v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 436
    :cond_0
    return-object v10

    .line 426
    :cond_1
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    move v4, v3

    .line 429
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 430
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    .line 431
    .local v9, "r":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v5

    and-int/lit16 v2, v11, 0xff

    .line 432
    .local v2, "g":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v0, v11, 0xff

    .line 433
    .local v0, "b":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, v10, v4

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 421
    .end local v0    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "r":I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method protected readContents()V
    .locals 6

    .prologue
    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    :cond_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    .line 443
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 477
    const/4 v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    goto :goto_0

    .line 445
    :sswitch_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readImage()V

    goto :goto_0

    .line 448
    :sswitch_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    .line 449
    sparse-switch v1, :sswitch_data_1

    .line 465
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->skip()V

    goto :goto_0

    .line 451
    :sswitch_3
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 454
    :sswitch_4
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readBlock()I

    .line 455
    const-string v0, ""

    .line 456
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 459
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 460
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->skip()V

    goto :goto_0

    .line 470
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 471
    goto :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 449
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    .line 484
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v0

    .line 485
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    .line 486
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 487
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    .line 489
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    .line 490
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    .line 491
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transIndex:I

    .line 492
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    .line 493
    return-void

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 496
    const-string v1, ""

    .line 497
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 500
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 501
    const/4 v2, 0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 510
    :cond_0
    :goto_1
    return-void

    .line 498
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readLSD()V

    .line 506
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gct:[I

    .line 508
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gct:[I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 513
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ix:I

    .line 514
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iy:I

    .line 515
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iw:I

    .line 516
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ih:I

    .line 518
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v0

    .line 519
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lctFlag:Z

    .line 520
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->interlace:Z

    .line 521
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lctSize:I

    .line 522
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 523
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lct:[I

    .line 524
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lct:[I

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    .line 530
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 531
    .local v1, "save":I
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transIndex:I

    aget v1, v2, v5

    .line 533
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transIndex:I

    aput v4, v2, v5

    .line 536
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    if-nez v2, :cond_2

    .line 537
    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->status:I

    .line 540
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 562
    :cond_3
    :goto_3
    return-void

    .end local v1    # "save":I
    :cond_4
    move v2, v4

    .line 519
    goto :goto_0

    :cond_5
    move v2, v4

    .line 520
    goto :goto_1

    .line 526
    :cond_6
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gct:[I

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    .line 527
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgIndex:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 528
    iput v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgColor:I

    goto :goto_2

    .line 543
    .restart local v1    # "save":I
    :cond_7
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->decodeImageData()V

    .line 544
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->skip()V

    .line 546
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 549
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    .line 551
    new-instance v2, Ljavax/microedition/lcdui/Image;

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    invoke-direct {v2, v4, v5, v3}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    .line 553
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->setPixels()V

    .line 555
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frames:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;-><init>(Ljavax/microedition/lcdui/Image;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-boolean v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 558
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transIndex:I

    aput v1, v2, v3

    .line 560
    :cond_8
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    .line 566
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    .line 568
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v0

    .line 569
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gctFlag:Z

    .line 571
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->gctSize:I

    .line 572
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgIndex:I

    .line 573
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixelAspect:I

    .line 574
    return-void

    .line 569
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readBlock()I

    .line 579
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 580
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 581
    .local v0, "b1":I
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 582
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->loopCount:I

    .line 584
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v2

    .line 577
    if-eqz v2, :cond_0

    .line 585
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 588
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 592
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastDispose:I

    .line 593
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ix:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iy:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iw:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ih:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastRect:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 594
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastImage:Ljavax/microedition/lcdui/Image;

    .line 595
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->bgColor:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastBgColor:I

    .line 596
    iput v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->dispose:I

    .line 597
    iput-boolean v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    .line 598
    iput v5, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->delay:I

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lct:[I

    .line 600
    return-void
.end method

.method protected setPixels()V
    .locals 24

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v5

    .line 135
    .local v5, "dest":[I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastDispose:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastDispose:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->frameCount:I

    move/from16 v20, v0

    add-int/lit8 v15, v20, -0x2

    .line 138
    .local v15, "n":I
    if-lez v15, :cond_2

    .line 139
    add-int/lit8 v20, v15, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->getFrame(I)Ljavax/microedition/lcdui/Image;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastImage:Ljavax/microedition/lcdui/Image;

    .line 144
    .end local v15    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastImage:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastImage:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v17

    .line 146
    .local v17, "prev":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Image;->setPixels([III)V

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastDispose:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v8

    .line 149
    .local v8, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v4, 0x0

    .line 150
    .local v4, "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->transparency:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 151
    new-instance v4, Lorg/loon/framework/android/game/core/graphics/LColor;

    .end local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(IIII)V

    .line 155
    .restart local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    :goto_1
    invoke-interface {v8, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastRect:Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljavax/microedition/lcdui/Graphics;->fill(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    .line 157
    invoke-interface {v8}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 161
    .end local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    .end local v8    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v17    # "prev":[I
    :cond_1
    const/16 v16, 0x1

    .line 162
    .local v16, "pass":I
    const/16 v11, 0x8

    .line 163
    .local v11, "inc":I
    const/4 v10, 0x0

    .line 164
    .local v10, "iline":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ih:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v9, v0, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->image:Ljavax/microedition/lcdui/Image;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Ljavax/microedition/lcdui/Image;->setPixels([III)V

    .line 205
    return-void

    .line 141
    .end local v9    # "i":I
    .end local v10    # "iline":I
    .end local v11    # "inc":I
    .end local v16    # "pass":I
    .restart local v15    # "n":I
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastImage:Ljavax/microedition/lcdui/Image;

    goto/16 :goto_0

    .line 153
    .end local v15    # "n":I
    .restart local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    .restart local v8    # "g":Ljavax/microedition/lcdui/Graphics;
    .restart local v17    # "prev":[I
    :cond_3
    new-instance v4, Lorg/loon/framework/android/game/core/graphics/LColor;

    .end local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->lastBgColor:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(I)V

    .restart local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    goto :goto_1

    .line 165
    .end local v4    # "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    .end local v8    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v17    # "prev":[I
    .restart local v9    # "i":I
    .restart local v10    # "iline":I
    .restart local v11    # "inc":I
    .restart local v16    # "pass":I
    :cond_4
    move v14, v9

    .line 166
    .local v14, "line":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->interlace:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ih:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v10, v0, :cond_5

    .line 168
    add-int/lit8 v16, v16, 0x1

    .line 169
    packed-switch v16, :pswitch_data_0

    .line 182
    :cond_5
    :goto_3
    move v14, v10

    .line 183
    add-int/2addr v10, v11

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iy:I

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    move/from16 v20, v0

    mul-int v13, v14, v20

    .line 188
    .local v13, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->ix:I

    move/from16 v20, v0

    add-int v7, v13, v20

    .line 189
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iw:I

    move/from16 v20, v0

    add-int v6, v7, v20

    .line 190
    .local v6, "dlim":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    move/from16 v20, v0

    add-int v20, v20, v13

    move/from16 v0, v20

    if-ge v0, v6, :cond_7

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->width:I

    move/from16 v20, v0

    add-int v6, v13, v20

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->iw:I

    move/from16 v20, v0

    mul-int v18, v9, v20

    .local v18, "sx":I
    move/from16 v19, v18

    .line 194
    .end local v18    # "sx":I
    .local v19, "sx":I
    :goto_4
    if-lt v7, v6, :cond_9

    .line 164
    .end local v6    # "dlim":I
    .end local v7    # "dx":I
    .end local v13    # "k":I
    .end local v19    # "sx":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 171
    :pswitch_0
    const/4 v10, 0x4

    .line 172
    goto :goto_3

    .line 174
    :pswitch_1
    const/4 v10, 0x2

    .line 175
    const/4 v11, 0x4

    .line 176
    goto :goto_3

    .line 178
    :pswitch_2
    const/4 v10, 0x1

    .line 179
    const/4 v11, 0x2

    goto :goto_3

    .line 195
    .restart local v6    # "dlim":I
    .restart local v7    # "dx":I
    .restart local v13    # "k":I
    .restart local v19    # "sx":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->pixels:[B

    move-object/from16 v20, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "sx":I
    .restart local v18    # "sx":I
    aget-byte v20, v20, v19

    move/from16 v0, v20

    and-int/lit16 v12, v0, 0xff

    .line 196
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->act:[I

    move-object/from16 v20, v0

    aget v4, v20, v12

    .line 197
    .local v4, "c":I
    if-eqz v4, :cond_a

    .line 198
    aput v4, v5, v7

    .line 200
    :cond_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v18

    .end local v18    # "sx":I
    .restart local v19    # "sx":I
    goto :goto_4

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 604
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->readBlock()I

    .line 605
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/GIFDecoder;->err()Z

    move-result v0

    .line 603
    if-eqz v0, :cond_0

    .line 606
    :cond_1
    return-void
.end method
