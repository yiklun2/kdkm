.class public Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;
.super Lorg/loon/framework/android/game/action/sprite/j2me/Layer;
.source "Sprite.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/Trans;


# instance fields
.field private collHeight:I

.field private collWidth:I

.field private collX:I

.field private collY:I

.field private cols:I

.field private frame:I

.field private img:Ljavax/microedition/lcdui/Image;

.field private refX:I

.field private refY:I

.field private rgbData:[I

.field private rgbDataAux:[I

.field private rows:I

.field private sequence:[I

.field private transform:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;-><init>(Ljavax/microedition/lcdui/Image;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;-><init>(IIIIZ)V

    .line 71
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 76
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p2

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    .line 77
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    div-int/2addr v0, p3

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    .line 78
    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    .line 79
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    .line 80
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;)V
    .locals 6
    .param p1, "otherSprite"    # Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    .prologue
    .line 84
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v3

    .line 85
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;-><init>(IIIIZ)V

    .line 86
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 87
    iget-object v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    .line 88
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 89
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 90
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    .line 91
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    .line 92
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    .line 93
    iget-object v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 94
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    .line 95
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    .line 96
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    .line 97
    iget v0, p1, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    .line 98
    return-void
.end method

.method private declared-synchronized collidesWith(Ljava/lang/Object;II)Z
    .locals 35
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "oX"    # I
    .param p3, "oY"    # I

    .prologue
    .line 448
    monitor-enter p0

    const/16 v31, 0x0

    .local v31, "tX":I
    const/16 v32, 0x0

    .local v32, "tY":I
    const/16 v30, 0x0

    .local v30, "tW":I
    const/16 v29, 0x0

    .line 449
    .local v29, "tH":I
    const/16 v18, 0x0

    .local v18, "oW":I
    const/16 v17, 0x0

    .line 451
    .local v17, "oH":I
    move-object/from16 v28, p0

    .line 452
    .local v28, "t":Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;
    const/4 v2, 0x1

    .line 454
    .local v2, "another":Z
    :goto_0
    if-nez v2, :cond_0

    .line 550
    move/from16 v0, v31

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    add-int v33, p2, v18

    move/from16 v0, v31

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 551
    const/16 v33, 0x0

    .line 603
    :goto_1
    monitor-exit p0

    return v33

    .line 457
    :cond_0
    :try_start_0
    move-object/from16 v0, v28

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    .line 458
    .local v5, "cX":I
    move-object/from16 v0, v28

    iget v6, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    .line 459
    .local v6, "cY":I
    move-object/from16 v0, v28

    iget v4, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    .line 460
    .local v4, "cW":I
    move-object/from16 v0, v28

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    .line 462
    .local v3, "cH":I
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 463
    :cond_1
    const/16 v33, 0x0

    goto :goto_1

    .line 466
    :cond_2
    move-object/from16 v0, v28

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_0

    .line 516
    const/16 v33, 0x0

    goto :goto_1

    .line 468
    :pswitch_0
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v5

    .line 469
    .local v26, "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v6

    .line 470
    .local v27, "sY":I
    move/from16 v25, v4

    .line 471
    .local v25, "sW":I
    move/from16 v24, v3

    .line 519
    .local v24, "sH":I
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 520
    move/from16 v31, v26

    .line 521
    move/from16 v32, v27

    .line 522
    move/from16 v30, v25

    .line 523
    move/from16 v29, v24

    .line 524
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 526
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    move-object/from16 v28, v0

    goto :goto_0

    .line 474
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_1
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v5

    .line 475
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v3

    .line 476
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 477
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 478
    .restart local v24    # "sH":I
    goto :goto_2

    .line 480
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_2
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v4

    .line 481
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v6

    .line 482
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 483
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 484
    .restart local v24    # "sH":I
    goto :goto_2

    .line 486
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_3
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v4

    .line 487
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v3

    .line 488
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 489
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 490
    .restart local v24    # "sH":I
    goto :goto_2

    .line 492
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_4
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v6

    .line 493
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v5

    .line 494
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 495
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 496
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 498
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_5
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v3

    .line 499
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v5

    .line 500
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 501
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 502
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 504
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_6
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v3

    .line 505
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v4

    .line 506
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 507
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 508
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 510
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_7
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v6

    .line 511
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v4

    .line 512
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 513
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 514
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 527
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move/from16 v33, v0

    if-eqz v33, :cond_4

    .line 528
    const/4 v2, 0x0

    .line 529
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move-object v12, v0

    .line 530
    .local v12, "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getX()I

    move-result p2

    .line 531
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getY()I

    move-result p3

    .line 532
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getWidth()I

    move-result v18

    .line 533
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getHeight()I

    move-result v17

    goto/16 :goto_0

    .line 535
    .end local v12    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    :cond_4
    const/4 v2, 0x0

    .line 536
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v9, v0

    .line 537
    .local v9, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    .line 538
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v17

    goto/16 :goto_0

    .line 541
    .end local v9    # "img":Ljavax/microedition/lcdui/Image;
    :cond_5
    const/4 v2, 0x0

    .line 543
    move/from16 p2, v26

    .line 544
    move/from16 p3, v27

    .line 545
    move/from16 v18, v25

    .line 546
    move/from16 v17, v24

    goto/16 :goto_0

    .line 552
    .end local v3    # "cH":I
    .end local v4    # "cW":I
    .end local v5    # "cX":I
    .end local v6    # "cY":I
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :cond_6
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_7

    add-int v33, v31, v30

    move/from16 v0, v33

    move/from16 v1, p2

    if-gt v0, v1, :cond_7

    .line 553
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 554
    :cond_7
    move/from16 v0, v32

    move/from16 v1, p3

    if-le v0, v1, :cond_8

    add-int v33, p3, v17

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_8

    .line 555
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 556
    :cond_8
    move/from16 v0, v32

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    add-int v33, v32, v29

    move/from16 v0, v33

    move/from16 v1, p3

    if-gt v0, v1, :cond_9

    .line 557
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 559
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move/from16 v33, v0

    if-eqz v33, :cond_14

    .line 561
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move-object v12, v0

    .line 565
    .restart local v12    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    move/from16 v0, p2

    move/from16 v1, v31

    if-le v0, v1, :cond_b

    .line 566
    move/from16 v21, p2

    .line 567
    .local v21, "rX":I
    add-int v33, p2, v18

    add-int v34, v31, v30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    add-int v33, p2, v18

    :goto_3
    sub-int v20, v33, v21

    .line 572
    .local v20, "rW":I
    :goto_4
    move/from16 v0, p3

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    .line 573
    move/from16 v22, p3

    .line 574
    .local v22, "rY":I
    add-int v33, p3, v17

    add-int v34, v32, v29

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    add-int v33, p3, v17

    :goto_5
    sub-int v19, v33, v22

    .line 580
    .local v19, "rH":I
    :goto_6
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellWidth()I

    move-result v11

    .line 581
    .local v11, "lW":I
    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellHeight()I

    move-result v10

    .line 583
    .local v10, "lH":I
    sub-int v33, v21, p2

    div-int v15, v33, v11

    .line 584
    .local v15, "minC":I
    sub-int v33, v22, p3

    div-int v16, v33, v10

    .line 585
    .local v16, "minR":I
    sub-int v33, v21, p2

    add-int v33, v33, v20

    add-int/lit8 v33, v33, -0x1

    div-int v13, v33, v11

    .line 586
    .local v13, "maxC":I
    sub-int v33, v22, p3

    add-int v33, v33, v19

    add-int/lit8 v33, v33, -0x1

    div-int v14, v33, v10

    .line 588
    .local v14, "maxR":I
    move/from16 v23, v16

    .local v23, "row":I
    :goto_7
    move/from16 v0, v23

    if-le v0, v14, :cond_10

    .line 600
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 567
    .end local v10    # "lH":I
    .end local v11    # "lW":I
    .end local v13    # "maxC":I
    .end local v14    # "maxR":I
    .end local v15    # "minC":I
    .end local v16    # "minR":I
    .end local v19    # "rH":I
    .end local v20    # "rW":I
    .end local v22    # "rY":I
    .end local v23    # "row":I
    :cond_a
    add-int v33, v31, v30

    goto :goto_3

    .line 569
    .end local v21    # "rX":I
    :cond_b
    move/from16 v21, v31

    .line 570
    .restart local v21    # "rX":I
    add-int v33, v31, v30

    add-int v34, p2, v18

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_c

    add-int v33, v31, v30

    :goto_8
    sub-int v20, v33, v21

    .restart local v20    # "rW":I
    goto :goto_4

    .end local v20    # "rW":I
    :cond_c
    add-int v33, p2, v18

    goto :goto_8

    .line 574
    .restart local v20    # "rW":I
    .restart local v22    # "rY":I
    :cond_d
    add-int v33, v32, v29

    goto :goto_5

    .line 576
    .end local v22    # "rY":I
    :cond_e
    move/from16 v22, v32

    .line 577
    .restart local v22    # "rY":I
    add-int v33, v32, v29

    add-int v34, p3, v17

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    add-int v33, v32, v29

    :goto_9
    sub-int v19, v33, v22

    .restart local v19    # "rH":I
    goto :goto_6

    .end local v19    # "rH":I
    :cond_f
    add-int v33, p3, v17

    goto :goto_9

    .line 589
    .restart local v10    # "lH":I
    .restart local v11    # "lW":I
    .restart local v13    # "maxC":I
    .restart local v14    # "maxR":I
    .restart local v15    # "minC":I
    .restart local v16    # "minR":I
    .restart local v19    # "rH":I
    .restart local v23    # "row":I
    :cond_10
    move v8, v15

    .local v8, "col":I
    :goto_a
    if-le v8, v13, :cond_11

    .line 588
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 590
    :cond_11
    move/from16 v0, v23

    invoke-virtual {v12, v8, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCell(II)I

    move-result v7

    .line 592
    .local v7, "cell":I
    if-gez v7, :cond_12

    .line 593
    invoke-virtual {v12, v7}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getAnimatedTile(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 595
    :cond_12
    if-eqz v7, :cond_13

    .line 596
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 589
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 603
    .end local v7    # "cell":I
    .end local v8    # "col":I
    .end local v10    # "lH":I
    .end local v11    # "lW":I
    .end local v12    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    .end local v13    # "maxC":I
    .end local v14    # "maxR":I
    .end local v15    # "minC":I
    .end local v16    # "minR":I
    .end local v19    # "rH":I
    .end local v20    # "rW":I
    .end local v21    # "rX":I
    .end local v22    # "rY":I
    .end local v23    # "row":I
    :cond_14
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 448
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private declared-synchronized collidesWithPixelLevel(Ljava/lang/Object;II)Z
    .locals 75
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "oX"    # I
    .param p3, "oY"    # I

    .prologue
    .line 609
    monitor-enter p0

    const/16 v22, 0x1

    .line 610
    .local v22, "another":Z
    move-object/from16 v63, p0

    .line 612
    .local v63, "t":Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;
    const/16 v69, 0x0

    .local v69, "tX":I
    const/16 v70, 0x0

    .local v70, "tY":I
    const/16 v68, 0x0

    .local v68, "tW":I
    const/16 v65, 0x0

    .line 613
    .local v65, "tH":I
    const/16 v50, 0x0

    .local v50, "oW":I
    const/16 v47, 0x0

    .line 615
    .local v47, "oH":I
    :goto_0
    if-nez v22, :cond_0

    .line 717
    move/from16 v0, v69

    move/from16 v1, p2

    if-le v0, v1, :cond_a

    add-int v3, p2, v50

    move/from16 v0, v69

    if-lt v0, v3, :cond_a

    .line 718
    const/4 v3, 0x0

    .line 926
    :goto_1
    monitor-exit p0

    return v3

    .line 621
    :cond_0
    :try_start_0
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_1

    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    add-int/2addr v3, v5

    if-lez v3, :cond_1

    .line 622
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_1

    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    add-int/2addr v3, v5

    if-gtz v3, :cond_2

    .line 624
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 626
    :cond_2
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    if-ltz v3, :cond_3

    move-object/from16 v0, v63

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    move/from16 v25, v0

    .line 627
    .local v25, "cX":I
    :goto_2
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    if-ltz v3, :cond_4

    move-object/from16 v0, v63

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    move/from16 v26, v0

    .line 628
    .local v26, "cY":I
    :goto_3
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    add-int/2addr v3, v5

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_5

    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    add-int/2addr v3, v5

    .line 629
    sub-int v24, v3, v25

    .line 630
    .local v24, "cW":I
    :goto_4
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    add-int/2addr v3, v5

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_6

    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    .line 631
    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    add-int/2addr v3, v5

    sub-int v23, v3, v26

    .line 633
    .local v23, "cH":I
    :goto_5
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    packed-switch v3, :pswitch_data_0

    .line 683
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 626
    .end local v23    # "cH":I
    .end local v24    # "cW":I
    .end local v25    # "cX":I
    .end local v26    # "cY":I
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 627
    .restart local v25    # "cX":I
    :cond_4
    const/16 v26, 0x0

    goto :goto_3

    .line 629
    .restart local v26    # "cY":I
    :cond_5
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v3

    sub-int v24, v3, v25

    goto :goto_4

    .line 631
    .restart local v24    # "cW":I
    :cond_6
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v3

    sub-int v23, v3, v26

    goto :goto_5

    .line 635
    .restart local v23    # "cH":I
    :pswitch_0
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v25

    .line 636
    .local v61, "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v26

    .line 637
    .local v62, "sY":I
    move/from16 v60, v24

    .line 638
    .local v60, "sW":I
    move/from16 v57, v23

    .line 686
    .local v57, "sH":I
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_9

    .line 687
    move/from16 v69, v61

    .line 688
    move/from16 v70, v62

    .line 689
    move/from16 v68, v60

    .line 690
    move/from16 v65, v57

    .line 691
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    if-eqz v3, :cond_7

    .line 693
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    move-object/from16 v63, v0

    goto/16 :goto_0

    .line 641
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_1
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v25

    .line 642
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v62, v3, v23

    .line 643
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 644
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 645
    .restart local v57    # "sH":I
    goto :goto_6

    .line 647
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_2
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v61, v3, v24

    .line 648
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v26

    .line 649
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 650
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 651
    .restart local v57    # "sH":I
    goto :goto_6

    .line 653
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_3
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v61, v3, v24

    .line 654
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v62, v3, v23

    .line 655
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 656
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 657
    .restart local v57    # "sH":I
    goto :goto_6

    .line 659
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_4
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v26

    .line 660
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v25

    .line 661
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 662
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 663
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 665
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_5
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/2addr v3, v5

    sub-int v61, v3, v23

    .line 666
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v25

    .line 667
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 668
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 669
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 671
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_6
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/2addr v3, v5

    sub-int v61, v3, v23

    .line 672
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/2addr v3, v5

    sub-int v62, v3, v24

    .line 673
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 674
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 675
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 677
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_7
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v26

    .line 678
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/2addr v3, v5

    sub-int v62, v3, v24

    .line 679
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 680
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 681
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 694
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    if-eqz v3, :cond_8

    .line 695
    const/16 v22, 0x0

    .line 696
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move-object/from16 v37, v0

    .line 697
    .local v37, "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getX()I

    move-result p2

    .line 698
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getY()I

    move-result p3

    .line 699
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getWidth()I

    move-result v50

    .line 700
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getHeight()I

    move-result v47

    goto/16 :goto_0

    .line 702
    .end local v37    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    :cond_8
    const/16 v22, 0x0

    .line 703
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    .line 704
    .local v11, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v50

    .line 705
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v47

    goto/16 :goto_0

    .line 708
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    :cond_9
    const/16 v22, 0x0

    .line 710
    move/from16 p2, v61

    .line 711
    move/from16 p3, v62

    .line 712
    move/from16 v50, v60

    .line 713
    move/from16 v47, v57

    goto/16 :goto_0

    .line 719
    .end local v23    # "cH":I
    .end local v24    # "cW":I
    .end local v25    # "cX":I
    .end local v26    # "cY":I
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :cond_a
    move/from16 v0, v69

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    add-int v3, v69, v68

    move/from16 v0, p2

    if-gt v3, v0, :cond_b

    .line 720
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 721
    :cond_b
    move/from16 v0, v70

    move/from16 v1, p3

    if-le v0, v1, :cond_c

    add-int v3, p3, v47

    move/from16 v0, v70

    if-lt v0, v3, :cond_c

    .line 722
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 723
    :cond_c
    move/from16 v0, v70

    move/from16 v1, p3

    if-ge v0, v1, :cond_d

    add-int v3, v70, v65

    move/from16 v0, p3

    if-gt v3, v0, :cond_d

    .line 724
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 728
    :cond_d
    move/from16 v0, p2

    move/from16 v1, v69

    if-le v0, v1, :cond_11

    .line 729
    move/from16 v51, p2

    .line 730
    .local v51, "rX":I
    add-int v3, p2, v50

    add-int v5, v69, v68

    if-ge v3, v5, :cond_10

    add-int v3, p2, v50

    :goto_7
    sub-int v6, v3, v51

    .line 735
    .local v6, "rW":I
    :goto_8
    move/from16 v0, p3

    move/from16 v1, v70

    if-le v0, v1, :cond_14

    .line 736
    move/from16 v52, p3

    .line 737
    .local v52, "rY":I
    add-int v3, p3, v47

    add-int v5, v70, v65

    if-ge v3, v5, :cond_13

    add-int v3, p3, v47

    :goto_9
    sub-int v10, v3, v52

    .line 743
    .local v10, "rH":I
    :goto_a
    const/16 v64, 0x0

    .local v64, "tColIncr":I
    const/16 v67, 0x0

    .local v67, "tRowIncr":I
    const/16 v66, 0x0

    .line 744
    .local v66, "tOffset":I
    const/16 v46, 0x0

    .local v46, "oColIncr":I
    const/16 v49, 0x0

    .local v49, "oRowIncr":I
    const/16 v48, 0x0

    .line 746
    .local v48, "oOffset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    move/from16 v29, v0

    .line 748
    .local v29, "f":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v31

    .line 749
    .local v31, "fW":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v30

    .line 750
    .local v30, "fH":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    rem-int v3, v29, v3

    mul-int v32, v31, v3

    .line 751
    .local v32, "fX":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    div-int v3, v29, v3

    mul-int v33, v30, v3

    .line 753
    .local v33, "fY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbData:[I

    if-nez v3, :cond_e

    .line 754
    mul-int v3, v31, v30

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbData:[I

    .line 755
    mul-int v3, v31, v30

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    .line 758
    :cond_e
    move-object/from16 v63, p0

    .line 759
    const/16 v22, 0x1

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbData:[I

    .line 762
    .local v4, "tRgbData":[I
    :cond_f
    :goto_c
    if-nez v22, :cond_17

    .line 918
    const/16 v55, 0x0

    .local v55, "row":I
    :goto_d
    move/from16 v0, v55

    if-lt v0, v10, :cond_27

    .line 926
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 730
    .end local v4    # "tRgbData":[I
    .end local v6    # "rW":I
    .end local v10    # "rH":I
    .end local v29    # "f":I
    .end local v30    # "fH":I
    .end local v31    # "fW":I
    .end local v32    # "fX":I
    .end local v33    # "fY":I
    .end local v46    # "oColIncr":I
    .end local v48    # "oOffset":I
    .end local v49    # "oRowIncr":I
    .end local v52    # "rY":I
    .end local v55    # "row":I
    .end local v64    # "tColIncr":I
    .end local v66    # "tOffset":I
    .end local v67    # "tRowIncr":I
    :cond_10
    add-int v3, v69, v68

    goto :goto_7

    .line 732
    .end local v51    # "rX":I
    :cond_11
    move/from16 v51, v69

    .line 733
    .restart local v51    # "rX":I
    add-int v3, v69, v68

    add-int v5, p2, v50

    if-ge v3, v5, :cond_12

    add-int v3, v69, v68

    :goto_e
    sub-int v6, v3, v51

    .restart local v6    # "rW":I
    goto :goto_8

    .end local v6    # "rW":I
    :cond_12
    add-int v3, p2, v50

    goto :goto_e

    .line 737
    .restart local v6    # "rW":I
    .restart local v52    # "rY":I
    :cond_13
    add-int v3, v70, v65

    goto :goto_9

    .line 739
    .end local v52    # "rY":I
    :cond_14
    move/from16 v52, v70

    .line 740
    .restart local v52    # "rY":I
    add-int v3, v70, v65

    add-int v5, p3, v47

    if-ge v3, v5, :cond_15

    add-int v3, v70, v65

    :goto_f
    sub-int v10, v3, v52

    .restart local v10    # "rH":I
    goto :goto_a

    .end local v10    # "rH":I
    :cond_15
    add-int v3, p3, v47

    goto :goto_f

    .line 746
    .restart local v10    # "rH":I
    .restart local v46    # "oColIncr":I
    .restart local v48    # "oOffset":I
    .restart local v49    # "oRowIncr":I
    .restart local v64    # "tColIncr":I
    .restart local v66    # "tOffset":I
    .restart local v67    # "tRowIncr":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    aget v29, v3, v5

    goto :goto_b

    .line 767
    .restart local v4    # "tRgbData":[I
    .restart local v29    # "f":I
    .restart local v30    # "fH":I
    .restart local v31    # "fW":I
    .restart local v32    # "fX":I
    .restart local v33    # "fY":I
    :cond_17
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    packed-switch v3, :pswitch_data_1

    .line 825
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 769
    :pswitch_8
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v51

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v33, v52

    .line 770
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    .line 769
    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 771
    const/16 v58, 0x0

    .line 772
    .local v58, "sOffset":I
    const/16 v56, 0x1

    .line 773
    .local v56, "sColIncr":I
    const/16 v59, 0x0

    .line 828
    .local v59, "sRowIncr":I
    :goto_10
    move-object/from16 v0, p1

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_26

    .line 829
    move/from16 v66, v58

    .line 830
    move/from16 v67, v59

    .line 831
    move/from16 v64, v56

    .line 833
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    if-eqz v3, :cond_19

    .line 835
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;

    move-object/from16 v63, v0

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    .line 838
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v3, :cond_18

    move-object/from16 v0, v63

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    move/from16 v29, v0

    .line 840
    :goto_11
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v31

    .line 841
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v30

    .line 842
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    rem-int v3, v29, v3

    mul-int v32, v31, v3

    .line 843
    move-object/from16 v0, v63

    iget v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    div-int v3, v29, v3

    mul-int v33, v30, v3

    goto/16 :goto_c

    .line 776
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_9
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v31

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v8

    sub-int v8, v51, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    .line 777
    add-int/lit8 v7, v7, -0x1

    add-int v8, v33, v30

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v9

    sub-int v9, v52, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v6

    .line 776
    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 778
    mul-int v3, v10, v6

    add-int/lit8 v58, v3, -0x1

    .line 779
    .restart local v58    # "sOffset":I
    const/16 v56, -0x1

    .line 780
    .restart local v56    # "sColIncr":I
    const/16 v59, 0x0

    .line 781
    .restart local v59    # "sRowIncr":I
    goto :goto_10

    .line 783
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_a
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v31

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v8

    sub-int v8, v51, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    .line 784
    add-int/lit8 v7, v7, -0x1

    add-int v8, v33, v52

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    .line 783
    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 785
    add-int/lit8 v58, v6, -0x1

    .line 786
    .restart local v58    # "sOffset":I
    const/16 v56, -0x1

    .line 787
    .restart local v56    # "sColIncr":I
    shl-int/lit8 v59, v6, 0x1

    .line 788
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 790
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_b
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v51

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v33, v30

    .line 791
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v9

    sub-int v9, v52, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v6

    .line 790
    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 792
    add-int/lit8 v3, v10, -0x1

    mul-int v58, v3, v6

    .line 793
    .restart local v58    # "sOffset":I
    const/16 v56, 0x1

    .line 794
    .restart local v56    # "sColIncr":I
    shl-int/lit8 v3, v6, 0x1

    neg-int v0, v3

    move/from16 v59, v0

    .line 795
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 797
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_c
    move-object/from16 v0, v63

    iget-object v7, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v52

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v33, v30

    .line 798
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v5

    sub-int v5, v51, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    .line 797
    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 799
    add-int/lit8 v3, v6, -0x1

    mul-int v58, v3, v10

    .line 800
    .restart local v58    # "sOffset":I
    neg-int v0, v10

    move/from16 v56, v0

    .line 801
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    add-int/lit8 v59, v3, 0x1

    .line 802
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 804
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_d
    move-object/from16 v0, v63

    iget-object v7, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v31

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v5

    sub-int v5, v52, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    .line 805
    add-int v3, v33, v30

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v5

    sub-int v5, v51, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    .line 804
    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 806
    mul-int v3, v10, v6

    add-int/lit8 v58, v3, -0x1

    .line 807
    .restart local v58    # "sOffset":I
    neg-int v0, v10

    move/from16 v56, v0

    .line 808
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    add-int/lit8 v59, v3, -0x1

    .line 809
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 811
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_e
    move-object/from16 v0, v63

    iget-object v7, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v52

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v33, v51

    .line 812
    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    .line 811
    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 813
    const/16 v58, 0x0

    .line 814
    .restart local v58    # "sOffset":I
    move/from16 v56, v10

    .line 815
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    neg-int v3, v3

    add-int/lit8 v59, v3, 0x1

    .line 816
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 818
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_f
    move-object/from16 v0, v63

    iget-object v7, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v31

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v5

    sub-int v5, v52, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    .line 819
    add-int v3, v33, v51

    invoke-virtual/range {v63 .. v63}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    .line 818
    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 820
    add-int/lit8 v58, v10, -0x1

    .line 821
    .restart local v58    # "sOffset":I
    move/from16 v56, v10

    .line 822
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    neg-int v3, v3

    add-int/lit8 v59, v3, -0x1

    .line 823
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_10

    .line 838
    :cond_18
    move-object/from16 v0, v63

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    move-object/from16 v0, v63

    iget v5, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    aget v29, v3, v5

    goto/16 :goto_11

    .line 844
    :cond_19
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    if-eqz v3, :cond_25

    .line 845
    const/16 v22, 0x0

    .line 846
    move-object/from16 v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;

    move-object/from16 v37, v0

    .line 847
    .restart local v37    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    move-object/from16 v0, v37

    iget-object v11, v0, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 849
    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    const/16 v48, 0x0

    .line 850
    const/16 v46, 0x1

    .line 851
    const/16 v49, 0x0

    .line 853
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellWidth()I

    move-result v36

    .line 854
    .local v36, "lW":I
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellHeight()I

    move-result v35

    .line 856
    .local v35, "lH":I
    sub-int v3, v51, p2

    div-int v42, v3, v36

    .line 857
    .local v42, "minC":I
    sub-int v3, v52, p3

    div-int v43, v3, v35

    .line 858
    .local v43, "minR":I
    sub-int v3, v51, p2

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    div-int v38, v3, v36

    .line 859
    .local v38, "maxC":I
    sub-int v3, v52, p3

    add-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x1

    div-int v39, v3, v35

    .line 861
    .local v39, "maxR":I
    move/from16 v55, v43

    .restart local v55    # "row":I
    :goto_12
    move/from16 v0, v55

    move/from16 v1, v39

    if-gt v0, v1, :cond_f

    .line 862
    move/from16 v28, v42

    .local v28, "col":I
    :goto_13
    move/from16 v0, v28

    move/from16 v1, v38

    if-le v0, v1, :cond_1a

    .line 861
    add-int/lit8 v55, v55, 0x1

    goto :goto_12

    .line 863
    :cond_1a
    move-object/from16 v0, v37

    move/from16 v1, v28

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCell(II)I

    move-result v27

    .line 865
    .local v27, "cell":I
    if-gez v27, :cond_1b

    .line 866
    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getAnimatedTile(I)I

    move-result v27

    .line 868
    :cond_1b
    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_1c

    sub-int v3, v51, p2

    rem-int v44, v3, v36

    .line 869
    .local v44, "minX":I
    :goto_14
    move/from16 v0, v55

    move/from16 v1, v43

    if-ne v0, v1, :cond_1d

    sub-int v3, v52, p3

    rem-int v45, v3, v35

    .line 870
    .local v45, "minY":I
    :goto_15
    move/from16 v0, v28

    move/from16 v1, v38

    if-ne v0, v1, :cond_1e

    add-int v3, v51, v6

    sub-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    rem-int v40, v3, v36

    .line 872
    .local v40, "maxX":I
    :goto_16
    move/from16 v0, v55

    move/from16 v1, v39

    if-ne v0, v1, :cond_1f

    add-int v3, v52, v10

    sub-int v3, v3, p3

    add-int/lit8 v3, v3, -0x1

    rem-int v41, v3, v35

    .line 875
    .local v41, "maxY":I
    :goto_17
    sub-int v3, v55, v43

    mul-int v3, v3, v35

    mul-int/2addr v3, v6

    sub-int v5, v28, v42

    mul-int v5, v5, v36

    add-int/2addr v5, v3

    .line 876
    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_20

    const/4 v3, 0x0

    .line 875
    :goto_18
    sub-int/2addr v5, v3

    .line 877
    move/from16 v0, v55

    move/from16 v1, v43

    if-ne v0, v1, :cond_21

    const/4 v3, 0x0

    :goto_19
    mul-int/2addr v3, v6

    .line 875
    sub-int v13, v5, v3

    .line 879
    .local v13, "c":I
    if-nez v27, :cond_24

    .line 881
    move/from16 v73, v45

    .local v73, "y":I
    :goto_1a
    move/from16 v0, v73

    move/from16 v1, v41

    if-le v0, v1, :cond_22

    .line 862
    .end local v73    # "y":I
    :goto_1b
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    .line 868
    .end local v13    # "c":I
    .end local v40    # "maxX":I
    .end local v41    # "maxY":I
    .end local v44    # "minX":I
    .end local v45    # "minY":I
    :cond_1c
    const/16 v44, 0x0

    goto :goto_14

    .line 869
    .restart local v44    # "minX":I
    :cond_1d
    const/16 v45, 0x0

    goto :goto_15

    .line 871
    .restart local v45    # "minY":I
    :cond_1e
    add-int/lit8 v40, v36, -0x1

    goto :goto_16

    .line 873
    .restart local v40    # "maxX":I
    :cond_1f
    add-int/lit8 v41, v35, -0x1

    goto :goto_17

    .line 876
    .restart local v41    # "maxY":I
    :cond_20
    sub-int v3, v51, p2

    rem-int v3, v3, v36

    goto :goto_18

    .line 877
    :cond_21
    sub-int v3, v52, p3

    rem-int v3, v3, v35

    goto :goto_19

    .line 883
    .restart local v13    # "c":I
    .restart local v73    # "y":I
    :cond_22
    move/from16 v71, v44

    .local v71, "x":I
    :goto_1c
    move/from16 v0, v71

    move/from16 v1, v40

    if-le v0, v1, :cond_23

    .line 881
    add-int/lit8 v73, v73, 0x1

    .line 882
    sub-int v3, v40, v44

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v6, v3

    add-int/2addr v13, v3

    goto :goto_1a

    .line 884
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    const/4 v5, 0x0

    aput v5, v3, v13

    .line 883
    add-int/lit8 v71, v71, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 889
    .end local v71    # "x":I
    .end local v73    # "y":I
    :cond_24
    add-int/lit8 v27, v27, -0x1

    .line 891
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 892
    invoke-virtual/range {v37 .. v37}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->getCellWidth()I

    move-result v5

    .line 891
    div-int v34, v3, v5

    .line 893
    .local v34, "imgCols":I
    rem-int v3, v27, v34

    mul-int v72, v36, v3

    .line 894
    .local v72, "xSrc":I
    div-int v3, v27, v34

    mul-int v74, v3, v35

    .line 895
    .local v74, "ySrc":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    add-int v15, v72, v44

    .line 896
    add-int v16, v74, v45

    sub-int v3, v40, v44

    add-int/lit8 v17, v3, 0x1

    sub-int v3, v41, v45

    .line 897
    add-int/lit8 v18, v3, 0x1

    move v14, v6

    .line 895
    invoke-virtual/range {v11 .. v18}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1b

    .line 609
    .end local v4    # "tRgbData":[I
    .end local v6    # "rW":I
    .end local v10    # "rH":I
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    .end local v13    # "c":I
    .end local v27    # "cell":I
    .end local v28    # "col":I
    .end local v29    # "f":I
    .end local v30    # "fH":I
    .end local v31    # "fW":I
    .end local v32    # "fX":I
    .end local v33    # "fY":I
    .end local v34    # "imgCols":I
    .end local v35    # "lH":I
    .end local v36    # "lW":I
    .end local v37    # "layer":Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    .end local v38    # "maxC":I
    .end local v39    # "maxR":I
    .end local v40    # "maxX":I
    .end local v41    # "maxY":I
    .end local v42    # "minC":I
    .end local v43    # "minR":I
    .end local v44    # "minX":I
    .end local v45    # "minY":I
    .end local v46    # "oColIncr":I
    .end local v48    # "oOffset":I
    .end local v49    # "oRowIncr":I
    .end local v51    # "rX":I
    .end local v52    # "rY":I
    .end local v55    # "row":I
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    .end local v64    # "tColIncr":I
    .end local v66    # "tOffset":I
    .end local v67    # "tRowIncr":I
    .end local v72    # "xSrc":I
    .end local v74    # "ySrc":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 903
    .restart local v4    # "tRgbData":[I
    .restart local v6    # "rW":I
    .restart local v10    # "rH":I
    .restart local v29    # "f":I
    .restart local v30    # "fH":I
    .restart local v31    # "fW":I
    .restart local v32    # "fX":I
    .restart local v33    # "fY":I
    .restart local v46    # "oColIncr":I
    .restart local v48    # "oOffset":I
    .restart local v49    # "oRowIncr":I
    .restart local v51    # "rX":I
    .restart local v52    # "rY":I
    .restart local v56    # "sColIncr":I
    .restart local v58    # "sOffset":I
    .restart local v59    # "sRowIncr":I
    .restart local v64    # "tColIncr":I
    .restart local v66    # "tOffset":I
    .restart local v67    # "tRowIncr":I
    :cond_25
    const/16 v22, 0x0

    .line 904
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    .line 905
    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    const/16 v16, 0x0

    sub-int v18, v51, p2

    sub-int v19, v52, p3

    move-object v14, v11

    move/from16 v17, v6

    move/from16 v20, v6

    move/from16 v21, v10

    invoke-virtual/range {v14 .. v21}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)[I

    .line 906
    const/16 v48, 0x0

    .line 907
    const/16 v46, 0x1

    .line 908
    const/16 v49, 0x0

    goto/16 :goto_c

    .line 911
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    :cond_26
    const/16 v22, 0x0

    .line 912
    move/from16 v48, v58

    .line 913
    move/from16 v49, v59

    .line 914
    move/from16 v46, v56

    goto/16 :goto_c

    .line 919
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    .restart local v55    # "row":I
    :cond_27
    const/16 v28, 0x0

    .restart local v28    # "col":I
    :goto_1d
    move/from16 v0, v28

    if-lt v0, v6, :cond_28

    .line 918
    add-int/lit8 v55, v55, 0x1

    add-int v66, v66, v67

    add-int v48, v48, v49

    goto/16 :goto_d

    .line 920
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbData:[I

    aget v53, v3, v66

    .line 921
    .local v53, "rgb":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    aget v54, v3, v48
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    .local v54, "rgbA":I
    and-int v3, v53, v54

    shr-int/lit8 v3, v3, 0x18

    const/4 v5, -0x1

    if-ne v3, v5, :cond_29

    .line 923
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 919
    :cond_29
    add-int/lit8 v28, v28, 0x1

    add-int v66, v66, v64

    add-int v48, v48, v46

    goto :goto_1d

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 767
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final collidesWith(Ljavax/microedition/lcdui/Image;IIZ)Z
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "iX"    # I
    .param p3, "iY"    # I
    .param p4, "pixelLevel"    # Z

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_1
    if-eqz p4, :cond_2

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;Z)Z
    .locals 2
    .param p1, "otherSprite"    # Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;
    .param p2, "pixelLevel"    # Z

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    if-eqz p2, :cond_3

    .line 142
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;Z)Z
    .locals 2
    .param p1, "layer"    # Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;
    .param p2, "pixelLevel"    # Z

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/j2me/TiledLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    if-eqz p2, :cond_3

    .line 127
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_3
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public defineCollisionRectangle(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 206
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 208
    :cond_1
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collX:I

    .line 209
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collY:I

    .line 210
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collWidth:I

    .line 211
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->collHeight:I

    .line 212
    return-void
.end method

.method public defineReferencePixel(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 149
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 150
    return-void
.end method

.method public final getFrame()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    return v0
.end method

.method public getFrameSequenceLength()I
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getRawFrameCount()I
    .locals 2

    .prologue
    .line 353
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelX()I
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelY()I
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v0

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public nextFrame()V
    .locals 3

    .prologue
    .line 255
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int/2addr v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 259
    :goto_1
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    .line 258
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    goto :goto_1
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v0, :cond_1

    iget v10, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 343
    .local v10, "f":I
    :goto_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v4

    .line 344
    .local v4, "w":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    .line 345
    .local v5, "h":I
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    rem-int v0, v10, v0

    mul-int v2, v4, v0

    .line 346
    .local v2, "fx":I
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    div-int v0, v10, v0

    mul-int v3, v5, v0

    .line 348
    .local v3, "fy":I
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getX()I

    move-result v7

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getY()I

    move-result v8

    .line 349
    const/16 v9, 0x14

    move-object v0, p1

    .line 348
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    .line 342
    .end local v2    # "fx":I
    .end local v3    # "fy":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v10    # "f":I
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    aget v10, v0, v1

    goto :goto_1
.end method

.method public prevFrame()V
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 266
    :goto_1
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    .line 265
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    goto :goto_1
.end method

.method public setFrame(I)V
    .locals 3
    .param p1, "frame"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    if-nez v1, :cond_1

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int v0, v1, v2

    .line 248
    .local v0, "l":I
    :goto_0
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 247
    .end local v0    # "l":I
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    array-length v0, v1

    goto :goto_0

    .line 251
    .restart local v0    # "l":I
    :cond_2
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 252
    return-void
.end method

.method public setFrameSequence([I)V
    .locals 6
    .param p1, "sequence"    # [I

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 222
    .local v2, "max":I
    array-length v1, p1

    .line 224
    .local v1, "l":I
    if-nez v1, :cond_1

    .line 225
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 227
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 233
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    .line 235
    const/4 v4, 0x0

    iput v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    goto :goto_0

    .line 228
    :cond_2
    aget v3, p1, v0

    .line 229
    .local v3, "value":I
    if-gt v3, v2, :cond_3

    if-gez v3, :cond_4

    .line 230
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 227
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 9
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v6

    .line 271
    .local v6, "oldW":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v5

    .line 272
    .local v5, "oldH":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 273
    .local v3, "newW":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    .line 275
    .local v2, "newH":I
    invoke-virtual {p0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->setSize(II)V

    .line 277
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    rem-int/2addr v7, p2

    if-nez v7, :cond_0

    .line 278
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    rem-int/2addr v7, p3

    if-eqz v7, :cond_1

    .line 279
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 269
    .end local v2    # "newH":I
    .end local v3    # "newW":I
    .end local v5    # "oldH":I
    .end local v6    # "oldW":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 280
    .restart local v2    # "newH":I
    .restart local v3    # "newW":I
    .restart local v5    # "oldH":I
    .restart local v6    # "oldW":I
    :cond_1
    :try_start_1
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 282
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    iget v8, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    mul-int v4, v7, v8

    .line 283
    .local v4, "oldFrames":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    div-int/2addr v7, p2

    iput v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    .line 284
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    div-int/2addr v7, p3

    iput v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    .line 286
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rows:I

    iget v8, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->cols:I

    mul-int/2addr v7, v8

    if-ge v7, v4, :cond_2

    .line 288
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->sequence:[I

    .line 289
    const/4 v7, 0x0

    iput v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->frame:I

    .line 292
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v7

    if-ne p2, v7, :cond_3

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v7

    if-eq p3, v7, :cond_4

    .line 294
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, p2, p3}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->defineCollisionRectangle(IIII)V

    .line 295
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbDataAux:[I

    iput-object v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->rgbData:[I

    .line 297
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    if-eqz v7, :cond_4

    .line 299
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    packed-switch v7, :pswitch_data_0

    .line 329
    monitor-exit p0

    .line 336
    :goto_0
    return-void

    .line 301
    :pswitch_0
    sub-int v0, v3, v6

    .line 302
    .local v0, "dx":I
    sub-int v1, v2, v5

    .line 332
    .local v1, "dy":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->move(II)V

    .line 269
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :pswitch_1
    sub-int v0, v3, v6

    .line 306
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 307
    .restart local v1    # "dy":I
    goto :goto_1

    .line 309
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_2
    const/4 v0, 0x0

    .line 310
    .restart local v0    # "dx":I
    sub-int v1, v2, v5

    .line 311
    .restart local v1    # "dy":I
    goto :goto_1

    .line 313
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_3
    sub-int v0, v2, v5

    .line 314
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 315
    .restart local v1    # "dy":I
    goto :goto_1

    .line 317
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_4
    sub-int v0, v2, v5

    .line 318
    .restart local v0    # "dx":I
    sub-int v1, v3, v6

    .line 319
    .restart local v1    # "dy":I
    goto :goto_1

    .line 321
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_5
    const/4 v0, 0x0

    .line 322
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 323
    .restart local v1    # "dy":I
    goto :goto_1

    .line 325
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_6
    const/4 v0, 0x0

    .line 326
    .restart local v0    # "dx":I
    sub-int v1, v3, v6

    .line 327
    .restart local v1    # "dy":I
    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRefPixelPosition(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v3

    .line 163
    .local v3, "width":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v2

    .line 165
    .local v2, "height":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    packed-switch v4, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 168
    .local v0, "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 202
    .local v1, "curRefY":I
    :goto_1
    sub-int v4, p1, v0

    sub-int v5, p2, v1

    invoke-virtual {p0, v4, v5}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->setPosition(II)V

    goto :goto_0

    .line 171
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_1
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v0, v3, v4

    .line 172
    .restart local v0    # "curRefX":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v1, v2, v4

    .line 173
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 175
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_2
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v0, v3, v4

    .line 176
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 177
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 179
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_3
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 180
    .restart local v0    # "curRefX":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v1, v2, v4

    .line 181
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 183
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_4
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v0, v2, v4

    .line 184
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 185
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 187
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_5
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v0, v2, v4

    .line 188
    .restart local v0    # "curRefX":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v1, v3, v4

    .line 189
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 191
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_6
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 192
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 193
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 195
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_7
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 196
    .restart local v0    # "curRefX":I
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v1, v3, v4

    .line 197
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setTransform(I)V
    .locals 9
    .param p1, "transform"    # I

    .prologue
    .line 357
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    if-ne v7, p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getWidth()I

    move-result v6

    .line 361
    .local v6, "width":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->getHeight()I

    move-result v3

    .line 362
    .local v3, "height":I
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    .line 366
    .local v2, "currentTransform":I
    packed-switch p1, :pswitch_data_0

    .line 400
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 368
    :pswitch_0
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 369
    .local v4, "newRefX":I
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 405
    .local v5, "newRefY":I
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 407
    :pswitch_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 408
    .local v0, "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 442
    .local v1, "curRefY":I
    :goto_2
    sub-int v7, v0, v4

    sub-int v8, v1, v5

    invoke-virtual {p0, v7, v8}, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->move(II)V

    .line 443
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->transform:I

    goto :goto_0

    .line 372
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_2
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v4, v6, v7

    .line 373
    .restart local v4    # "newRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v5, v3, v7

    .line 374
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 376
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_3
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v4, v6, v7

    .line 377
    .restart local v4    # "newRefX":I
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 378
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 380
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_4
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 381
    .restart local v4    # "newRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v5, v3, v7

    .line 382
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 384
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_5
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v4, v3, v7

    .line 385
    .restart local v4    # "newRefX":I
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 386
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 388
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_6
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v4, v3, v7

    .line 389
    .restart local v4    # "newRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v5, v6, v7

    .line 390
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 392
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_7
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 393
    .restart local v4    # "newRefX":I
    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 394
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 396
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_8
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 397
    .restart local v4    # "newRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v5, v6, v7

    .line 398
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 411
    :pswitch_9
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v0, v6, v7

    .line 412
    .restart local v0    # "curRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v1, v3, v7

    .line 413
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 415
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_a
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v0, v6, v7

    .line 416
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 417
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 419
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_b
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 420
    .restart local v0    # "curRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v1, v3, v7

    .line 421
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 423
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_c
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v0, v3, v7

    .line 424
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 425
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 427
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_d
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    sub-int v0, v3, v7

    .line 428
    .restart local v0    # "curRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v1, v6, v7

    .line 429
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 431
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_e
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 432
    .restart local v0    # "curRefX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    .line 433
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 435
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_f
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refY:I

    .line 436
    .restart local v0    # "curRefX":I
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/Sprite;->refX:I

    sub-int v1, v6, v7

    .line 437
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
