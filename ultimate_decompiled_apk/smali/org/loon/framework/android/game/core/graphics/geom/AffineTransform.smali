.class public Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
.super Ljava/lang/Object;
.source "AffineTransform.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final APPLY_IDENTITY:I = 0x0

.field static final APPLY_SCALE:I = 0x2

.field static final APPLY_SHEAR:I = 0x4

.field static final APPLY_TRANSLATE:I = 0x1

.field private static final HI_IDENTITY:I = 0x0

.field private static final HI_SCALE:I = 0x10

.field private static final HI_SHEAR:I = 0x20

.field private static final HI_SHIFT:I = 0x3

.field private static final HI_TRANSLATE:I = 0x8

.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final rot90conversion:[I

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field transient state:I

.field private transient type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1234
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rot90conversion:[I

    .line 101
    return-void

    .line 1234
    :array_0
    .array-data 4
        0x4
        0x5
        0x4
        0x5
        0x2
        0x3
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 466
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 566
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 567
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 568
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 569
    iput-wide p9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 570
    iput-wide p11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 571
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 572
    return-void
.end method

.method private constructor <init>(DDDDDDI)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D
    .param p13, "state"    # I

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 446
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 447
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 448
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 449
    iput-wide p9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 450
    iput-wide p11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 451
    iput p13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 453
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "m00"    # F
    .param p2, "m10"    # F
    .param p3, "m01"    # F
    .param p4, "m11"    # F
    .param p5, "m02"    # F
    .param p6, "m12"    # F

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    float-to-double v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 509
    float-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 510
    float-to-double v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 511
    float-to-double v0, p4

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 512
    float-to-double v0, p5

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 513
    float-to-double v0, p6

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 514
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 515
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 2
    .param p1, "Tx"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 478
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 479
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 480
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 481
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 482
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 483
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 484
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 485
    return-void
.end method

.method public constructor <init>([D)V
    .locals 3
    .param p1, "flatmatrix"    # [D

    .prologue
    const/4 v2, 0x5

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 591
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 592
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 593
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 594
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 595
    const/4 v0, 0x4

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 596
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 598
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 599
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "flatmatrix"    # [F

    .prologue
    const/4 v2, 0x5

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 534
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 535
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 536
    const/4 v0, 0x3

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 537
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 538
    const/4 v0, 0x4

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 539
    aget v0, p1, v2

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 541
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 542
    return-void
.end method

.method private static _matround(D)D
    .locals 4
    .param p0, "matval"    # D

    .prologue
    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    .line 3471
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private calculateType()V
    .locals 15

    .prologue
    .line 786
    const/4 v8, 0x0

    .line 789
    .local v8, "ret":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 790
    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v11, :pswitch_data_0

    .line 792
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 795
    :pswitch_0
    const/4 v8, 0x1

    .line 798
    :pswitch_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .local v0, "M0":D
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .local v4, "M2":D
    mul-double v11, v0, v4

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .local v6, "M3":D
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .local v2, "M1":D
    mul-double v13, v6, v2

    add-double/2addr v11, v13

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_0

    .line 800
    const/16 v11, 0x20

    iput v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 896
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    .end local v4    # "M2":D
    .end local v6    # "M3":D
    :goto_0
    return-void

    .line 803
    .restart local v0    # "M0":D
    .restart local v2    # "M1":D
    .restart local v4    # "M2":D
    .restart local v6    # "M3":D
    :cond_0
    const-wide/16 v11, 0x0

    cmpl-double v11, v0, v11

    if-ltz v11, :cond_2

    const/4 v9, 0x1

    .line 804
    .local v9, "sgn0":Z
    :goto_1
    const-wide/16 v11, 0x0

    cmpl-double v11, v2, v11

    if-ltz v11, :cond_3

    const/4 v10, 0x1

    .line 805
    .local v10, "sgn1":Z
    :goto_2
    if-ne v9, v10, :cond_6

    .line 808
    cmpl-double v11, v0, v2

    if-nez v11, :cond_1

    neg-double v11, v6

    cmpl-double v11, v4, v11

    if-eqz v11, :cond_4

    .line 809
    :cond_1
    or-int/lit8 v8, v8, 0x14

    .line 895
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    .end local v4    # "M2":D
    .end local v6    # "M3":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :goto_3
    :pswitch_2
    iput v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 803
    .restart local v0    # "M0":D
    .restart local v2    # "M1":D
    .restart local v4    # "M2":D
    .restart local v6    # "M3":D
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 804
    .restart local v9    # "sgn0":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 810
    .restart local v10    # "sgn1":Z
    :cond_4
    mul-double v11, v0, v2

    mul-double v13, v4, v6

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_5

    .line 811
    or-int/lit8 v8, v8, 0x12

    goto :goto_3

    .line 813
    :cond_5
    or-int/lit8 v8, v8, 0x10

    goto :goto_3

    .line 818
    :cond_6
    neg-double v11, v2

    cmpl-double v11, v0, v11

    if-nez v11, :cond_7

    cmpl-double v11, v4, v6

    if-eqz v11, :cond_8

    .line 819
    :cond_7
    or-int/lit8 v8, v8, 0x54

    goto :goto_3

    .line 820
    :cond_8
    mul-double v11, v0, v2

    mul-double v13, v4, v6

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_9

    .line 821
    or-int/lit8 v8, v8, 0x52

    goto :goto_3

    .line 823
    :cond_9
    or-int/lit8 v8, v8, 0x50

    .line 826
    goto :goto_3

    .line 828
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    .end local v4    # "M2":D
    .end local v6    # "M3":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :pswitch_3
    const/4 v8, 0x1

    .line 831
    :pswitch_4
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .restart local v0    # "M0":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v0, v11

    if-ltz v11, :cond_a

    const/4 v9, 0x1

    .line 832
    .restart local v9    # "sgn0":Z
    :goto_4
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v2    # "M1":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v2, v11

    if-ltz v11, :cond_b

    const/4 v10, 0x1

    .line 833
    .restart local v10    # "sgn1":Z
    :goto_5
    if-eq v9, v10, :cond_e

    .line 835
    neg-double v11, v2

    cmpl-double v11, v0, v11

    if-eqz v11, :cond_c

    .line 836
    or-int/lit8 v8, v8, 0xc

    goto :goto_3

    .line 831
    .end local v2    # "M1":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 832
    .restart local v2    # "M1":D
    .restart local v9    # "sgn0":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 837
    .restart local v10    # "sgn1":Z
    :cond_c
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v0, v11

    if-eqz v11, :cond_d

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v11, v0, v11

    if-eqz v11, :cond_d

    .line 838
    or-int/lit8 v8, v8, 0xa

    goto :goto_3

    .line 840
    :cond_d
    or-int/lit8 v8, v8, 0x8

    goto :goto_3

    .line 844
    :cond_e
    cmpl-double v11, v0, v2

    if-nez v11, :cond_f

    .line 845
    or-int/lit8 v8, v8, 0x4a

    goto :goto_3

    .line 847
    :cond_f
    or-int/lit8 v8, v8, 0x4c

    .line 850
    goto :goto_3

    .line 852
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :pswitch_5
    const/4 v8, 0x1

    .line 855
    :pswitch_6
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .restart local v0    # "M0":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v0, v11

    if-ltz v11, :cond_10

    const/4 v9, 0x1

    .line 856
    .restart local v9    # "sgn0":Z
    :goto_6
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v2    # "M1":D
    const-wide/16 v11, 0x0

    cmpl-double v11, v2, v11

    if-ltz v11, :cond_11

    const/4 v10, 0x1

    .line 857
    .restart local v10    # "sgn1":Z
    :goto_7
    if-ne v9, v10, :cond_16

    .line 858
    if-eqz v9, :cond_13

    .line 861
    cmpl-double v11, v0, v2

    if-nez v11, :cond_12

    .line 862
    or-int/lit8 v8, v8, 0x2

    goto/16 :goto_3

    .line 855
    .end local v2    # "M1":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_6

    .line 856
    .restart local v2    # "M1":D
    .restart local v9    # "sgn0":Z
    :cond_11
    const/4 v10, 0x0

    goto :goto_7

    .line 864
    .restart local v10    # "sgn1":Z
    :cond_12
    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_3

    .line 868
    :cond_13
    cmpl-double v11, v0, v2

    if-eqz v11, :cond_14

    .line 869
    or-int/lit8 v8, v8, 0xc

    goto/16 :goto_3

    .line 870
    :cond_14
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v11, v0, v11

    if-eqz v11, :cond_15

    .line 871
    or-int/lit8 v8, v8, 0xa

    goto/16 :goto_3

    .line 873
    :cond_15
    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_3

    .line 878
    :cond_16
    neg-double v11, v2

    cmpl-double v11, v0, v11

    if-nez v11, :cond_19

    .line 879
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v0, v11

    if-eqz v11, :cond_17

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v11, v0, v11

    if-nez v11, :cond_18

    .line 880
    :cond_17
    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_3

    .line 882
    :cond_18
    or-int/lit8 v8, v8, 0x42

    goto/16 :goto_3

    .line 885
    :cond_19
    or-int/lit8 v8, v8, 0x44

    .line 888
    goto/16 :goto_3

    .line 890
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    .end local v9    # "sgn0":Z
    .end local v10    # "sgn1":Z
    :pswitch_7
    const/4 v8, 0x1

    .line 891
    goto/16 :goto_3

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRotateInstance(D)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 1
    .param p0, "theta"    # D

    .prologue
    .line 648
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    .line 649
    .local v0, "Tx":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    invoke-virtual {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToRotation(D)V

    .line 650
    return-object v0
.end method

.method public static getRotateInstance(DDD)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 7
    .param p0, "theta"    # D
    .param p2, "anchorx"    # D
    .param p4, "anchory"    # D

    .prologue
    .line 693
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    .local v0, "Tx":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 694
    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToRotation(DDD)V

    .line 695
    return-object v0
.end method

.method public static getScaleInstance(DD)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 1
    .param p0, "sx"    # D
    .param p2, "sy"    # D

    .prologue
    .line 719
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    .line 720
    .local v0, "Tx":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToScale(DD)V

    .line 721
    return-object v0
.end method

.method public static getShearInstance(DD)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 1
    .param p0, "shx"    # D
    .param p2, "shy"    # D

    .prologue
    .line 747
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    .line 748
    .local v0, "Tx":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToShear(DD)V

    .line 749
    return-object v0
.end method

.method public static getTranslateInstance(DD)Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 1
    .param p0, "tx"    # D
    .param p2, "ty"    # D

    .prologue
    .line 622
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    .line 623
    .local v0, "Tx":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToTranslation(DD)V

    .line 624
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3575
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3576
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 3577
    return-void
.end method

.method private final rotate180()V
    .locals 5

    .prologue
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1261
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1262
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1263
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1264
    .local v0, "state":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1267
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1268
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    neg-double v1, v1

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1278
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1279
    return-void

    .line 1272
    :cond_0
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 1273
    and-int/lit8 v1, v0, -0x3

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    goto :goto_0

    .line 1275
    :cond_1
    or-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    goto :goto_0
.end method

.method private final rotate270()V
    .locals 7

    .prologue
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1282
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1283
    .local v0, "M0":D
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1284
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1285
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1286
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1287
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1288
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rot90conversion:[I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    aget v2, v3, v4

    .line 1289
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    .line 1290
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    .line 1291
    add-int/lit8 v2, v2, -0x2

    .line 1293
    :cond_0
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1294
    const/4 v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1295
    return-void
.end method

.method private final rotate90()V
    .locals 7

    .prologue
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1245
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1246
    .local v0, "M0":D
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1247
    neg-double v3, v0

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1248
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1249
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1250
    neg-double v3, v0

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1251
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rot90conversion:[I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    aget v2, v3, v4

    .line 1252
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    .line 1253
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    .line 1254
    add-int/lit8 v2, v2, -0x2

    .line 1256
    :cond_0
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1257
    const/4 v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1258
    return-void
.end method

.method private stateError()V
    .locals 2

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "missing case in transform state switch"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3570
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3571
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3509
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3510
    :catch_0
    move-exception v0

    .line 3512
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public concatenate(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 29
    .param p1, "Tx"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v21, v0

    .line 1808
    .local v21, "mystate":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v22, v0

    .line 1809
    .local v22, "txstate":I
    shl-int/lit8 v23, v22, 0x3

    or-int v23, v23, v21

    packed-switch v23, :pswitch_data_0

    .line 1923
    :pswitch_0
    move-object/from16 v0, p1

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1924
    .local v9, "T00":D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1925
    .local v11, "T01":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1926
    .local v13, "T02":D
    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1927
    .local v15, "T10":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v17, v0

    .line 1928
    .local v17, "T11":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v19, v0

    .line 1929
    .local v19, "T12":D
    packed-switch v21, :pswitch_data_1

    .line 1931
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 1934
    :pswitch_1
    or-int v23, v21, v22

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1937
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1938
    .local v5, "M0":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1939
    .local v7, "M1":D
    mul-double v23, v9, v5

    mul-double v25, v15, v7

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1940
    mul-double v23, v11, v5

    mul-double v25, v17, v7

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1941
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    mul-double v25, v13, v5

    mul-double v27, v19, v7

    add-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1943
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1944
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1945
    mul-double v23, v9, v5

    mul-double v25, v15, v7

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1946
    mul-double v23, v11, v5

    mul-double v25, v17, v7

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1947
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    mul-double v25, v13, v5

    mul-double v27, v19, v7

    add-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1948
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1990
    .end local v5    # "M0":D
    .end local v7    # "M1":D
    .end local v9    # "T00":D
    .end local v11    # "T01":D
    .end local v13    # "T02":D
    .end local v15    # "T10":D
    .end local v17    # "T11":D
    .end local v19    # "T12":D
    :goto_0
    :pswitch_3
    return-void

    .line 1824
    :pswitch_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1825
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1828
    :pswitch_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1829
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1832
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1833
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1834
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1835
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1838
    :pswitch_7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1839
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1842
    :pswitch_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1843
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1844
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1845
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1848
    :pswitch_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1849
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1852
    :pswitch_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1853
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1854
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1855
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1856
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1867
    :pswitch_b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->translate(DD)V

    goto/16 :goto_0

    .line 1878
    :pswitch_c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->scale(DD)V

    goto/16 :goto_0

    .line 1884
    :pswitch_d
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1885
    .restart local v11    # "T01":D
    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1886
    .restart local v15    # "T10":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1887
    .restart local v5    # "M0":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    mul-double v23, v23, v15

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1888
    mul-double v23, v5, v11

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1889
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1890
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v23, v0

    mul-double v23, v23, v15

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1891
    mul-double v23, v5, v11

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1892
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1896
    .end local v5    # "M0":D
    .end local v11    # "T01":D
    .end local v15    # "T10":D
    :pswitch_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1897
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1898
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1899
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1900
    xor-int/lit8 v23, v21, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1901
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1905
    :pswitch_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1906
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1907
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1908
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1909
    xor-int/lit8 v23, v21, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1910
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1913
    :pswitch_10
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1914
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1915
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1916
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1917
    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1918
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1953
    .restart local v9    # "T00":D
    .restart local v11    # "T01":D
    .restart local v13    # "T02":D
    .restart local v15    # "T10":D
    .restart local v17    # "T11":D
    .restart local v19    # "T12":D
    :pswitch_11
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1954
    .restart local v5    # "M0":D
    mul-double v23, v15, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1955
    mul-double v23, v17, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1956
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    mul-double v25, v19, v5

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1958
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1959
    mul-double v23, v9, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1960
    mul-double v23, v11, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1961
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    mul-double v25, v13, v5

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1989
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    goto/16 :goto_0

    .line 1966
    .end local v5    # "M0":D
    :pswitch_12
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1967
    .restart local v5    # "M0":D
    mul-double v23, v9, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1968
    mul-double v23, v11, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1969
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    mul-double v25, v13, v5

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1971
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1972
    mul-double v23, v15, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1973
    mul-double v23, v17, v5

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1974
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    mul-double v25, v19, v5

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    goto :goto_1

    .line 1978
    .end local v5    # "M0":D
    :pswitch_13
    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1979
    move-object/from16 v0, p0

    iput-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1980
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    add-double v23, v23, v13

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1982
    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1983
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1984
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    add-double v23, v23, v19

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1985
    or-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1986
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1929
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createInverse()Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2234
    move-object/from16 v0, p0

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v2, :pswitch_data_0

    .line 2236
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2239
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    sub-double v16, v2, v4

    .line 2240
    .local v16, "det":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 2241
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Determinant is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2242
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2241
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2244
    :cond_0
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    div-double v3, v3, v16

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    neg-double v5, v5

    div-double v5, v5, v16

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    neg-double v7, v7

    div-double v7, v7, v16

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2245
    div-double v9, v9, v16

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v18, v0

    mul-double v13, v13, v18

    sub-double/2addr v11, v13

    div-double v11, v11, v16

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v18, v0

    mul-double v13, v13, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v18, v0

    .line 2246
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v13, v13, v18

    .line 2247
    div-double v13, v13, v16

    const/4 v15, 0x7

    .line 2244
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    .line 2284
    .end local v16    # "det":D
    :goto_0
    return-object v2

    .line 2249
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    sub-double v16, v2, v4

    .line 2250
    .restart local v16    # "det":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 2251
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Determinant is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2252
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2251
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2254
    :cond_1
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    div-double v3, v3, v16

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    neg-double v5, v5

    div-double v5, v5, v16

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    neg-double v7, v7

    div-double v7, v7, v16

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2255
    div-double v9, v9, v16

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x6

    .line 2254
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto :goto_0

    .line 2257
    .end local v16    # "det":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 2258
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Determinant is 0"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2260
    :cond_3
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    div-double/2addr v7, v9

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    neg-double v11, v11

    .line 2261
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    div-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    neg-double v13, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v18, v0

    div-double v13, v13, v18

    const/4 v15, 0x5

    .line 2260
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto/16 :goto_0

    .line 2263
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    .line 2264
    :cond_4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Determinant is 0"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2266
    :cond_5
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    div-double/2addr v7, v9

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 2267
    const-wide/16 v13, 0x0

    const/4 v15, 0x4

    .line 2266
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto/16 :goto_0

    .line 2269
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7

    .line 2270
    :cond_6
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Determinant is 0"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2272
    :cond_7
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    neg-double v11, v11

    .line 2273
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    div-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    neg-double v13, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v18, v0

    div-double v13, v13, v18

    const/4 v15, 0x3

    .line 2272
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto/16 :goto_0

    .line 2275
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_9

    .line 2276
    :cond_8
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Determinant is 0"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2278
    :cond_9
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    div-double/2addr v9, v11

    const-wide/16 v11, 0x0

    .line 2279
    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    .line 2278
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto/16 :goto_0

    .line 2281
    :pswitch_6
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    neg-double v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    neg-double v13, v13

    .line 2282
    const/4 v15, 0x1

    .line 2281
    invoke-direct/range {v2 .. v15}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>(DDDDDDI)V

    goto/16 :goto_0

    .line 2284
    :pswitch_7
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    invoke-direct {v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;-><init>()V

    goto/16 :goto_0

    .line 2234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTransformedShape(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)Lorg/loon/framework/android/game/core/graphics/geom/Shape;
    .locals 1
    .param p1, "pSrc"    # Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .prologue
    .line 3462
    if-nez p1, :cond_0

    .line 3463
    const/4 v0, 0x0

    .line 3465
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Path2D$Double;

    invoke-direct {v0, p1, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Path2D$Double;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Shape;Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V

    goto :goto_0
.end method

.method public deltaTransform(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .locals 10
    .param p1, "ptSrc"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "ptDst"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 3315
    if-nez p2, :cond_0

    .line 3316
    instance-of v4, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    if-eqz v4, :cond_1

    .line 3317
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>()V

    .line 3323
    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    .line 3324
    .local v0, "x":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    .line 3325
    .local v2, "y":D
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v4, :pswitch_data_0

    .line 3327
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 3331
    :pswitch_0
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    .line 3344
    :goto_1
    return-object p2

    .line 3319
    .end local v0    # "x":D
    .end local v2    # "y":D
    :cond_1
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;-><init>()V

    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    goto :goto_0

    .line 3335
    .restart local v0    # "x":D
    .restart local v2    # "y":D
    :pswitch_1
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3339
    :pswitch_2
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3343
    :pswitch_3
    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deltaTransform([DI[DII)V
    .locals 23
    .param p1, "srcPts"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [D
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 3389
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    mul-int/lit8 v19, p5, 0x2

    add-int v19, v19, p2

    move/from16 v0, p4

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 3398
    mul-int/lit8 v19, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3400
    move/from16 p2, p4

    .line 3402
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 3404
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 3408
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3409
    .local v5, "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3410
    .local v7, "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3411
    .local v9, "M10":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .local v11, "M11":D
    move/from16 v13, p4

    .end local p4    # "dstOff":I
    .local v13, "dstOff":I
    move/from16 v14, p2

    .line 3412
    .end local p2    # "srcOff":I
    .local v14, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    move/from16 p4, v13

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v14

    .line 3443
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M10":D
    .end local v11    # "M11":D
    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_1
    :goto_1
    return-void

    .line 3413
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v5    # "M00":D
    .restart local v7    # "M01":D
    .restart local v9    # "M10":D
    .restart local v11    # "M11":D
    .restart local v13    # "dstOff":I
    .restart local v14    # "srcOff":I
    :cond_2
    add-int/lit8 p2, v14, 0x1

    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v15, p1, v14

    .line 3414
    .local v15, "x":D
    add-int/lit8 v14, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v14    # "srcOff":I
    aget-wide v17, p1, p2

    .line 3415
    .local v17, "y":D
    add-int/lit8 p4, v13, 0x1

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v19, v15, v5

    mul-double v21, v17, v7

    add-double v19, v19, v21

    aput-wide v19, p3, v13

    .line 3416
    add-int/lit8 v13, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    mul-double v19, v15, v9

    mul-double v21, v17, v11

    add-double v19, v19, v21

    aput-wide v19, p3, p4

    goto :goto_0

    .line 3421
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M10":D
    .end local v11    # "M11":D
    .end local v13    # "dstOff":I
    .end local v14    # "srcOff":I
    .end local v15    # "x":D
    .end local v17    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3422
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v9    # "M10":D
    move/from16 v13, p4

    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    move/from16 v14, p2

    .line 3423
    .end local p2    # "srcOff":I
    .restart local v14    # "srcOff":I
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v13

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v14

    .line 3428
    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 3424
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    .restart local v14    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v14, 0x1

    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v15, p1, v14

    .line 3425
    .restart local v15    # "x":D
    add-int/lit8 p4, v13, 0x1

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v14, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v14    # "srcOff":I
    aget-wide v19, p1, p2

    mul-double v19, v19, v7

    aput-wide v19, p3, v13

    .line 3426
    add-int/lit8 v13, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    mul-double v19, v15, v9

    aput-wide v19, p3, p4

    goto :goto_2

    .line 3431
    .end local v7    # "M01":D
    .end local v9    # "M10":D
    .end local v13    # "dstOff":I
    .end local v14    # "srcOff":I
    .end local v15    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3432
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v11    # "M11":D
    move/from16 v13, p4

    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    move/from16 v14, p2

    .line 3433
    .end local p2    # "srcOff":I
    .restart local v14    # "srcOff":I
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_4

    move/from16 p4, v13

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v14

    .line 3437
    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 3434
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    .restart local v14    # "srcOff":I
    :cond_4
    add-int/lit8 p4, v13, 0x1

    .end local v13    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v14, 0x1

    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v19, p1, v14

    mul-double v19, v19, v5

    aput-wide v19, p3, v13

    .line 3435
    add-int/lit8 v13, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v13    # "dstOff":I
    add-int/lit8 v14, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v14    # "srcOff":I
    aget-wide v19, p1, p2

    mul-double v19, v19, v11

    aput-wide v19, p3, p4

    goto :goto_3

    .line 3440
    .end local v5    # "M00":D
    .end local v11    # "M11":D
    .end local v13    # "dstOff":I
    .end local v14    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_5

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_1

    .line 3441
    :cond_5
    mul-int/lit8 v19, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 3402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3545
    instance-of v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    if-nez v2, :cond_1

    .line 3552
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 3549
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .line 3551
    .local v0, "a":Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 3552
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeterminant()D
    .locals 6

    .prologue
    .line 936
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v0, :pswitch_data_0

    .line 938
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 942
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 951
    :goto_0
    return-wide v0

    .line 945
    :pswitch_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v2

    neg-double v0, v0

    goto :goto_0

    .line 948
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    goto :goto_0

    .line 951
    :pswitch_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMatrix([D)V
    .locals 4
    .param p1, "flatmatrix"    # [D

    .prologue
    const/4 v3, 0x5

    .line 1046
    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    aput-wide v1, p1, v0

    .line 1047
    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    aput-wide v1, p1, v0

    .line 1048
    const/4 v0, 0x2

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    aput-wide v1, p1, v0

    .line 1049
    const/4 v0, 0x3

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    aput-wide v1, p1, v0

    .line 1050
    array-length v0, p1

    if-le v0, v3, :cond_0

    .line 1051
    const/4 v0, 0x4

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    aput-wide v1, p1, v0

    .line 1052
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    aput-wide v0, p1, v3

    .line 1054
    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    .prologue
    .line 1066
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .prologue
    .line 1079
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    .prologue
    .line 1092
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    .prologue
    .line 1105
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    .prologue
    .line 1118
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .prologue
    .line 1131
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 774
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->calculateType()V

    .line 776
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f

    .line 3523
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 3524
    .local v0, "bits":J
    mul-long v2, v0, v6

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3525
    mul-long v2, v0, v6

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3526
    mul-long v2, v0, v6

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3527
    mul-long v2, v0, v6

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3528
    mul-long v2, v0, v6

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 3529
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public inverseTransform(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .locals 12
    .param p1, "ptSrc"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "ptDst"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 3076
    if-nez p2, :cond_0

    .line 3077
    instance-of v6, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    if-eqz v6, :cond_1

    .line 3078
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>()V

    .line 3084
    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v2

    .line 3085
    .local v2, "x":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v4

    .line 3086
    .local v4, "y":D
    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v6, :pswitch_data_0

    .line 3088
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 3091
    :pswitch_0
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v6

    .line 3092
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    sub-double/2addr v4, v6

    .line 3095
    :pswitch_1
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iget-wide v10, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v8, v10

    sub-double v0, v6, v8

    .line 3096
    .local v0, "det":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 3097
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Determinant is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3097
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3080
    .end local v0    # "det":D
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_1
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;-><init>()V

    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    goto :goto_0

    .line 3100
    .restart local v0    # "det":D
    .restart local v2    # "x":D
    .restart local v4    # "y":D
    :cond_2
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    .line 3101
    div-double/2addr v8, v0

    .line 3100
    invoke-virtual {p2, v6, v7, v8, v9}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    .line 3128
    .end local v0    # "det":D
    :goto_1
    return-object p2

    .line 3104
    :pswitch_2
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v6

    .line 3105
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    sub-double/2addr v4, v6

    .line 3108
    :pswitch_3
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    .line 3109
    :cond_3
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Determinant is 0"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3111
    :cond_4
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    div-double v6, v4, v6

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    div-double v8, v2, v8

    invoke-virtual {p2, v6, v7, v8, v9}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3114
    :pswitch_4
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v6

    .line 3115
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    sub-double/2addr v4, v6

    .line 3118
    :pswitch_5
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v6, v6, v8

    if-nez v6, :cond_6

    .line 3119
    :cond_5
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Determinant is 0"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3121
    :cond_6
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    div-double v6, v2, v6

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    div-double v8, v4, v8

    invoke-virtual {p2, v6, v7, v8, v9}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3124
    :pswitch_6
    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    sub-double v6, v2, v6

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    sub-double v8, v4, v8

    invoke-virtual {p2, v6, v7, v8, v9}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3127
    :pswitch_7
    invoke-virtual {p2, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 3086
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inverseTransform([DI[DII)V
    .locals 29
    .param p1, "srcPts"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [D
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3166
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    mul-int/lit8 v25, p5, 0x2

    add-int v25, v25, p2

    move/from16 v0, p4

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 3175
    mul-int/lit8 v25, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3177
    move/from16 p2, p4

    .line 3179
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3181
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 3184
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3185
    .local v5, "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3186
    .local v7, "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3187
    .local v9, "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3188
    .local v11, "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 3189
    .local v13, "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 3190
    .local v15, "M12":D
    mul-double v25, v5, v13

    mul-double v27, v7, v11

    sub-double v17, v25, v27

    .line 3191
    .local v17, "det":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    const-wide/16 v27, 0x1

    cmpg-double v25, v25, v27

    if-gtz v25, :cond_13

    .line 3192
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Determinant is "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3193
    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3192
    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3196
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .local v19, "dstOff":I
    .local v20, "srcOff":I
    :cond_1
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v25, p1, v20

    sub-double v21, v25, v9

    .line 3197
    .local v21, "x":D
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    sub-double v23, v25, v15

    .line 3198
    .local v23, "y":D
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v25, v21, v13

    mul-double v27, v23, v7

    sub-double v25, v25, v27

    div-double v25, v25, v17

    aput-wide v25, p3, v19

    .line 3199
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    mul-double v25, v23, v5

    mul-double v27, v21, v11

    sub-double v25, v25, v27

    div-double v25, v25, v17

    aput-wide v25, p3, p4

    .line 3195
    .end local v21    # "x":D
    .end local v23    # "y":D
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_1

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3281
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v17    # "det":D
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_2
    :goto_1
    return-void

    .line 3203
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3204
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3205
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3206
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 3207
    .restart local v13    # "M11":D
    mul-double v25, v5, v13

    mul-double v27, v7, v11

    sub-double v17, v25, v27

    .line 3208
    .restart local v17    # "det":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    const-wide/16 v27, 0x1

    cmpg-double v25, v25, v27

    if-gtz v25, :cond_12

    .line 3209
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Determinant is "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3210
    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 3209
    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3213
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v21, p1, v20

    .line 3214
    .restart local v21    # "x":D
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v23, p1, p2

    .line 3215
    .restart local v23    # "y":D
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v25, v21, v13

    mul-double v27, v23, v7

    sub-double v25, v25, v27

    div-double v25, v25, v17

    aput-wide v25, p3, v19

    .line 3216
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    mul-double v25, v23, v5

    mul-double v27, v21, v11

    sub-double v25, v25, v27

    div-double v25, v25, v17

    aput-wide v25, p3, p4

    .line 3212
    .end local v21    # "x":D
    .end local v23    # "y":D
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3218
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 3220
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v17    # "det":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3221
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3222
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3223
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 3224
    .restart local v15    # "M12":D
    const-wide/16 v25, 0x0

    cmpl-double v25, v7, v25

    if-eqz v25, :cond_4

    const-wide/16 v25, 0x0

    cmpl-double v25, v11, v25

    if-nez v25, :cond_11

    .line 3225
    :cond_4
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3228
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_5
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v25, p1, v20

    sub-double v21, v25, v9

    .line 3229
    .restart local v21    # "x":D
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    sub-double v25, v25, v15

    div-double v25, v25, v11

    aput-wide v25, p3, v19

    .line 3230
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    div-double v25, v21, v7

    aput-wide v25, p3, p4

    .line 3227
    .end local v21    # "x":D
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_5

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3232
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3234
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v15    # "M12":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3235
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3236
    .restart local v11    # "M10":D
    const-wide/16 v25, 0x0

    cmpl-double v25, v7, v25

    if-eqz v25, :cond_6

    const-wide/16 v25, 0x0

    cmpl-double v25, v11, v25

    if-nez v25, :cond_10

    .line 3237
    :cond_6
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3240
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_7
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v21, p1, v20

    .line 3241
    .restart local v21    # "x":D
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    div-double v25, v25, v11

    aput-wide v25, p3, v19

    .line 3242
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    div-double v25, v21, v7

    aput-wide v25, p3, p4

    .line 3239
    .end local v21    # "x":D
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_7

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3244
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3246
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3247
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3248
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 3249
    .restart local v13    # "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 3250
    .restart local v15    # "M12":D
    const-wide/16 v25, 0x0

    cmpl-double v25, v5, v25

    if-eqz v25, :cond_8

    const-wide/16 v25, 0x0

    cmpl-double v25, v13, v25

    if-nez v25, :cond_f

    .line 3251
    :cond_8
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3254
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_9
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v25, p1, v20

    sub-double v25, v25, v9

    div-double v25, v25, v5

    aput-wide v25, p3, v19

    .line 3255
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    sub-double v25, v25, v15

    div-double v25, v25, v13

    aput-wide v25, p3, p4

    .line 3253
    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_9

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3257
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3259
    .end local v5    # "M00":D
    .end local v9    # "M02":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3260
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 3261
    .restart local v13    # "M11":D
    const-wide/16 v25, 0x0

    cmpl-double v25, v5, v25

    if-eqz v25, :cond_a

    const-wide/16 v25, 0x0

    cmpl-double v25, v13, v25

    if-nez v25, :cond_e

    .line 3262
    :cond_a
    new-instance v25, Ljava/lang/Exception;

    const-string v26, "Determinant is 0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 3265
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_b
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v25, p1, v20

    div-double v25, v25, v5

    aput-wide v25, p3, v19

    .line 3266
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    div-double v25, v25, v13

    aput-wide v25, p3, p4

    .line 3264
    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_b

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3268
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3270
    .end local v5    # "M00":D
    .end local v13    # "M11":D
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3271
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .line 3272
    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_c

    move/from16 p4, v19

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v20

    .line 3276
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3273
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    .restart local v20    # "srcOff":I
    :cond_c
    add-int/lit8 p4, v19, 0x1

    .end local v19    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v20, 0x1

    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v25, p1, v20

    sub-double v25, v25, v9

    aput-wide v25, p3, v19

    .line 3274
    add-int/lit8 v19, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    add-int/lit8 v20, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    aget-wide v25, p1, p2

    sub-double v25, v25, v15

    aput-wide v25, p3, p4

    goto :goto_7

    .line 3278
    .end local v9    # "M02":D
    .end local v15    # "M12":D
    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_d

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 3279
    :cond_d
    mul-int/lit8 v25, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .restart local v5    # "M00":D
    .restart local v13    # "M11":D
    :cond_e
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto :goto_6

    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local v9    # "M02":D
    .restart local v15    # "M12":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_f
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto/16 :goto_5

    .end local v5    # "M00":D
    .end local v9    # "M02":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local v7    # "M01":D
    .restart local v11    # "M10":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_10
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto/16 :goto_4

    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local v9    # "M02":D
    .restart local v15    # "M12":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_11
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto/16 :goto_3

    .end local v9    # "M02":D
    .end local v15    # "M12":D
    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local v5    # "M00":D
    .restart local v13    # "M11":D
    .restart local v17    # "det":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_12
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto/16 :goto_2

    .end local v19    # "dstOff":I
    .end local v20    # "srcOff":I
    .restart local v9    # "M02":D
    .restart local v15    # "M12":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_13
    move/from16 v19, p4

    .end local p4    # "dstOff":I
    .restart local v19    # "dstOff":I
    move/from16 v20, p2

    .end local p2    # "srcOff":I
    .restart local v20    # "srcOff":I
    goto/16 :goto_0

    .line 3179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invert()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2311
    move-object/from16 v0, p0

    iget v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v15, :pswitch_data_0

    .line 2313
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2316
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2317
    .local v1, "M00":D
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2318
    .local v3, "M01":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2319
    .local v5, "M02":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2320
    .local v7, "M10":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2321
    .local v9, "M11":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2322
    .local v11, "M12":D
    mul-double v15, v1, v9

    mul-double v17, v3, v7

    sub-double v13, v15, v17

    .line 2323
    .local v13, "det":D
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_0

    .line 2324
    new-instance v15, Ljava/lang/Exception;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Determinant is "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2325
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2324
    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2327
    :cond_0
    div-double v15, v9, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2328
    neg-double v15, v7

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2329
    neg-double v15, v3

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2330
    div-double v15, v1, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2331
    mul-double v15, v3, v11

    mul-double v17, v9, v5

    sub-double v15, v15, v17

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2332
    mul-double v15, v7, v5

    mul-double v17, v1, v11

    sub-double v15, v15, v17

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2424
    .end local v1    # "M00":D
    .end local v3    # "M01":D
    .end local v5    # "M02":D
    .end local v7    # "M10":D
    .end local v9    # "M11":D
    .end local v11    # "M12":D
    .end local v13    # "det":D
    :goto_0
    :pswitch_1
    return-void

    .line 2335
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2336
    .restart local v1    # "M00":D
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2337
    .restart local v3    # "M01":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2338
    .restart local v7    # "M10":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2339
    .restart local v9    # "M11":D
    mul-double v15, v1, v9

    mul-double v17, v3, v7

    sub-double v13, v15, v17

    .line 2340
    .restart local v13    # "det":D
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_1

    .line 2341
    new-instance v15, Ljava/lang/Exception;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Determinant is "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2342
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2341
    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2344
    :cond_1
    div-double v15, v9, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2345
    neg-double v15, v7

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2346
    neg-double v15, v3

    div-double/2addr v15, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2347
    div-double v15, v1, v13

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    goto :goto_0

    .line 2352
    .end local v1    # "M00":D
    .end local v3    # "M01":D
    .end local v7    # "M10":D
    .end local v9    # "M11":D
    .end local v13    # "det":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2353
    .restart local v3    # "M01":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2354
    .restart local v5    # "M02":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2355
    .restart local v7    # "M10":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2356
    .restart local v11    # "M12":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v3, v15

    if-eqz v15, :cond_2

    const-wide/16 v15, 0x0

    cmpl-double v15, v7, v15

    if-nez v15, :cond_3

    .line 2357
    :cond_2
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2360
    :cond_3
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v3

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2361
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v7

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2363
    neg-double v15, v11

    div-double/2addr v15, v7

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2364
    neg-double v15, v5

    div-double/2addr v15, v3

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    goto/16 :goto_0

    .line 2367
    .end local v3    # "M01":D
    .end local v5    # "M02":D
    .end local v7    # "M10":D
    .end local v11    # "M12":D
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2368
    .restart local v3    # "M01":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2369
    .restart local v7    # "M10":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v3, v15

    if-eqz v15, :cond_4

    const-wide/16 v15, 0x0

    cmpl-double v15, v7, v15

    if-nez v15, :cond_5

    .line 2370
    :cond_4
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2373
    :cond_5
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v3

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2374
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v7

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    goto/16 :goto_0

    .line 2380
    .end local v3    # "M01":D
    .end local v7    # "M10":D
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2381
    .restart local v1    # "M00":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2382
    .restart local v5    # "M02":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2383
    .restart local v9    # "M11":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2384
    .restart local v11    # "M12":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v1, v15

    if-eqz v15, :cond_6

    const-wide/16 v15, 0x0

    cmpl-double v15, v9, v15

    if-nez v15, :cond_7

    .line 2385
    :cond_6
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2387
    :cond_7
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v1

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2390
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v9

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2391
    neg-double v15, v5

    div-double/2addr v15, v1

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2392
    neg-double v15, v11

    div-double/2addr v15, v9

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    goto/16 :goto_0

    .line 2395
    .end local v1    # "M00":D
    .end local v5    # "M02":D
    .end local v9    # "M11":D
    .end local v11    # "M12":D
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2396
    .restart local v1    # "M00":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2397
    .restart local v9    # "M11":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v1, v15

    if-eqz v15, :cond_8

    const-wide/16 v15, 0x0

    cmpl-double v15, v9, v15

    if-nez v15, :cond_9

    .line 2398
    :cond_8
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Determinant is 0"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2400
    :cond_9
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v1

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2403
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double/2addr v15, v9

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    goto/16 :goto_0

    .line 2412
    .end local v1    # "M00":D
    .end local v9    # "M11":D
    :pswitch_7
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    neg-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2413
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    neg-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    goto/16 :goto_0

    .line 2311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 3497
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preConcatenate(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 25
    .param p1, "Tx"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 2018
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v19, v0

    .line 2019
    .local v19, "mystate":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v20, v0

    .line 2020
    .local v20, "txstate":I
    shl-int/lit8 v21, v20, 0x3

    or-int v21, v21, v19

    packed-switch v21, :pswitch_data_0

    .line 2115
    :pswitch_0
    move-object/from16 v0, p1

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2116
    .local v7, "T00":D
    move-object/from16 v0, p1

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2117
    .local v9, "T01":D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2118
    .local v11, "T02":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2119
    .local v13, "T10":D
    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2120
    .local v15, "T11":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v17, v0

    .line 2121
    .local v17, "T12":D
    packed-switch v19, :pswitch_data_1

    .line 2123
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2126
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2127
    .local v3, "M0":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2128
    .local v5, "M1":D
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    add-double v11, v11, v21

    .line 2129
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    add-double v17, v17, v21

    .line 2133
    .end local v3    # "M0":D
    .end local v5    # "M1":D
    :pswitch_2
    move-object/from16 v0, p0

    iput-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2134
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2136
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2137
    .restart local v3    # "M0":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2138
    .restart local v5    # "M1":D
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2139
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2141
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2142
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2143
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2144
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2208
    .end local v5    # "M1":D
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 2209
    .end local v3    # "M0":D
    .end local v7    # "T00":D
    .end local v9    # "T01":D
    .end local v11    # "T02":D
    .end local v13    # "T10":D
    .end local v15    # "T11":D
    .end local v17    # "T12":D
    :goto_1
    :pswitch_3
    return-void

    .line 2037
    :pswitch_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2038
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2039
    or-int/lit8 v21, v19, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 2040
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_1

    .line 2048
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v23, v0

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2049
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v23, v0

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    goto :goto_1

    .line 2055
    :pswitch_6
    or-int/lit8 v21, v19, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 2064
    :pswitch_7
    move-object/from16 v0, p1

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2065
    .restart local v7    # "T00":D
    move-object/from16 v0, p1

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2066
    .restart local v15    # "T11":D
    and-int/lit8 v21, v19, 0x4

    if-eqz v21, :cond_2

    .line 2067
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2068
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2069
    and-int/lit8 v21, v19, 0x2

    if-eqz v21, :cond_0

    .line 2070
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2071
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2077
    :cond_0
    :goto_2
    and-int/lit8 v21, v19, 0x1

    if-eqz v21, :cond_1

    .line 2078
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2079
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2081
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_1

    .line 2074
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2075
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    goto :goto_2

    .line 2085
    .end local v7    # "T00":D
    .end local v15    # "T11":D
    :pswitch_8
    or-int/lit8 v19, v19, 0x2

    .line 2091
    :pswitch_9
    xor-int/lit8 v21, v19, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 2096
    :pswitch_a
    move-object/from16 v0, p1

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2097
    .restart local v9    # "T01":D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2099
    .restart local v13    # "T10":D
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2100
    .restart local v3    # "M0":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2101
    mul-double v21, v3, v13

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2103
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2104
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2105
    mul-double v21, v3, v13

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2107
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2108
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2109
    mul-double v21, v3, v13

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2110
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_1

    .line 2148
    .end local v3    # "M0":D
    .restart local v7    # "T00":D
    .restart local v11    # "T02":D
    .restart local v15    # "T11":D
    .restart local v17    # "T12":D
    :pswitch_b
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2149
    .restart local v3    # "M0":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2150
    .restart local v5    # "M1":D
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    add-double v11, v11, v21

    .line 2151
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    add-double v17, v17, v21

    .line 2155
    .end local v3    # "M0":D
    .end local v5    # "M1":D
    :pswitch_c
    move-object/from16 v0, p0

    iput-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2156
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2158
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2159
    .restart local v3    # "M0":D
    mul-double v21, v3, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2160
    mul-double v21, v3, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2162
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2163
    mul-double v21, v3, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2164
    mul-double v21, v3, v13

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    goto/16 :goto_0

    .line 2168
    .end local v3    # "M0":D
    :pswitch_d
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2169
    .restart local v3    # "M0":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2170
    .restart local v5    # "M1":D
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    add-double v11, v11, v21

    .line 2171
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    add-double v17, v17, v21

    .line 2175
    .end local v3    # "M0":D
    .end local v5    # "M1":D
    :pswitch_e
    move-object/from16 v0, p0

    iput-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2176
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2178
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2179
    .restart local v3    # "M0":D
    mul-double v21, v3, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2180
    mul-double v21, v3, v13

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2182
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2183
    mul-double v21, v3, v9

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2184
    mul-double v21, v3, v15

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    goto/16 :goto_0

    .line 2188
    .end local v3    # "M0":D
    :pswitch_f
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2189
    .restart local v3    # "M0":D
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2190
    .restart local v5    # "M1":D
    mul-double v21, v3, v7

    mul-double v23, v5, v9

    add-double v21, v21, v23

    add-double v11, v11, v21

    .line 2191
    mul-double v21, v3, v13

    mul-double v23, v5, v15

    add-double v21, v21, v23

    add-double v17, v17, v21

    .line 2195
    .end local v3    # "M0":D
    .end local v5    # "M1":D
    :pswitch_10
    move-object/from16 v0, p0

    iput-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2196
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 2198
    move-object/from16 v0, p0

    iput-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2199
    move-object/from16 v0, p0

    iput-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2201
    move-object/from16 v0, p0

    iput-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2202
    move-object/from16 v0, p0

    iput-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2204
    or-int v21, v19, v20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 2205
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_1

    .line 2020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 2121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public rotate(D)V
    .locals 13
    .param p1, "theta"    # D

    .prologue
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 1317
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 1318
    .local v6, "sin":D
    cmpl-double v8, v6, v11

    if-nez v8, :cond_1

    .line 1319
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rotate90()V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    cmpl-double v8, v6, v9

    if-nez v8, :cond_2

    .line 1321
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rotate270()V

    goto :goto_0

    .line 1323
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 1324
    .local v4, "cos":D
    cmpl-double v8, v4, v9

    if-nez v8, :cond_3

    .line 1325
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rotate180()V

    goto :goto_0

    .line 1326
    :cond_3
    cmpl-double v8, v4, v11

    if-eqz v8, :cond_0

    .line 1328
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1329
    .local v0, "M0":D
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1330
    .local v2, "M1":D
    mul-double v8, v4, v0

    mul-double v10, v6, v2

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1331
    neg-double v8, v6

    mul-double/2addr v8, v0

    mul-double v10, v4, v2

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1332
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1333
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1334
    mul-double v8, v4, v0

    mul-double v10, v6, v2

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1335
    neg-double v8, v6

    mul-double/2addr v8, v0

    mul-double v10, v4, v2

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1336
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    goto :goto_0
.end method

.method public rotate(DDD)V
    .locals 4
    .param p1, "theta"    # D
    .param p3, "anchorx"    # D
    .param p5, "anchory"    # D

    .prologue
    .line 1371
    invoke-virtual {p0, p3, p4, p5, p6}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->translate(DD)V

    .line 1372
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->rotate(D)V

    .line 1373
    neg-double v0, p3

    neg-double v2, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->translate(DD)V

    .line 1374
    return-void
.end method

.method public scale(DD)V
    .locals 10
    .param p1, "sx"    # D
    .param p3, "sy"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, -0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1397
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1398
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 1400
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 1404
    :pswitch_0
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v3, p1

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1405
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v3, p3

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1409
    :pswitch_1
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v3, p3

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1410
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v3, p1

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1411
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v3, v3, v8

    if-nez v3, :cond_0

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v3, v3, v8

    if-nez v3, :cond_0

    .line 1412
    and-int/lit8 v0, v0, 0x1

    .line 1413
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    .line 1414
    if-nez v0, :cond_1

    :goto_0
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1420
    :goto_1
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1443
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1415
    goto :goto_0

    .line 1417
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 1418
    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_1

    .line 1425
    :pswitch_2
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v3, p1

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1426
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v3, p3

    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1427
    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    .line 1428
    and-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1429
    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1430
    goto :goto_3

    .line 1432
    :cond_4
    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_2

    .line 1437
    :pswitch_3
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1438
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1439
    cmpl-double v1, p1, v5

    if-nez v1, :cond_5

    cmpl-double v1, p3, v5

    if-eqz v1, :cond_0

    .line 1440
    :cond_5
    or-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1441
    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_2

    .line 1398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setToIdentity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1525
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1526
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1527
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1528
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1529
    return-void
.end method

.method public setToRotation(D)V
    .locals 13
    .param p1, "theta"    # D

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 1584
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 1586
    .local v2, "sin":D
    cmpl-double v4, v2, v9

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v5

    if-nez v4, :cond_1

    .line 1587
    :cond_0
    const-wide/16 v0, 0x0

    .line 1588
    .local v0, "cos":D
    const/4 v4, 0x4

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1589
    iput v12, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1605
    :goto_0
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1606
    iput-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1607
    neg-double v4, v2

    iput-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1608
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1609
    iput-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1610
    iput-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1611
    return-void

    .line 1591
    .end local v0    # "cos":D
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 1592
    .restart local v0    # "cos":D
    cmpl-double v4, v0, v5

    if-nez v4, :cond_2

    .line 1593
    const-wide/16 v2, 0x0

    .line 1594
    const/4 v4, 0x2

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1595
    iput v12, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1596
    :cond_2
    cmpl-double v4, v0, v9

    if-nez v4, :cond_3

    .line 1597
    const-wide/16 v2, 0x0

    .line 1598
    iput v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1599
    iput v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1601
    :cond_3
    const/4 v4, 0x6

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1602
    const/16 v4, 0x10

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setToRotation(DDD)V
    .locals 8
    .param p1, "theta"    # D
    .param p3, "anchorx"    # D
    .param p5, "anchory"    # D

    .prologue
    .line 1649
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->setToRotation(D)V

    .line 1650
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1651
    .local v2, "sin":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    sub-double v0, v4, v6

    .line 1652
    .local v0, "oneMinusCos":D
    mul-double v4, p3, v0

    mul-double v6, p5, v2

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1653
    mul-double v4, p5, v0

    mul-double v6, p3, v2

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1654
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 1655
    :cond_0
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1656
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1658
    :cond_1
    return-void
.end method

.method public setToScale(DD)V
    .locals 5
    .param p1, "sx"    # D
    .param p3, "sy"    # D

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 1681
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1682
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1683
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1684
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1685
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1686
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1687
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    cmpl-double v0, p3, v2

    if-eqz v0, :cond_1

    .line 1688
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1689
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1694
    :goto_0
    return-void

    .line 1691
    :cond_1
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1692
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setToShear(DD)V
    .locals 6
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    .line 1717
    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1718
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1719
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1720
    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1721
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1722
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1723
    cmpl-double v0, p1, v1

    if-nez v0, :cond_0

    cmpl-double v0, p3, v1

    if-eqz v0, :cond_1

    .line 1724
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1725
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1730
    :goto_0
    return-void

    .line 1727
    :cond_1
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1728
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setToTranslation(DD)V
    .locals 7
    .param p1, "tx"    # D
    .param p3, "ty"    # D

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    .line 1550
    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1551
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1552
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1553
    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1554
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1555
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1556
    cmpl-double v0, p1, v1

    if-nez v0, :cond_0

    cmpl-double v0, p3, v1

    if-eqz v0, :cond_1

    .line 1557
    :cond_0
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1558
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1563
    :goto_0
    return-void

    .line 1560
    :cond_1
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1561
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0
.end method

.method public setTransform(DDDDDD)V
    .locals 0
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .prologue
    .line 1772
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1773
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1774
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1775
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1776
    iput-wide p9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1777
    iput-wide p11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1778
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 1779
    return-void
.end method

.method public setTransform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
    .locals 2
    .param p1, "Tx"    # Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;

    .prologue
    .line 1742
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1743
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1744
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1745
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1746
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1747
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1748
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1749
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1750
    return-void
.end method

.method public shear(DD)V
    .locals 10
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .prologue
    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    .line 1469
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1470
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    .line 1472
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 1478
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1479
    .local v0, "M0":D
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1480
    .local v2, "M1":D
    mul-double v5, v2, p3

    add-double/2addr v5, v0

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1481
    mul-double v5, v0, p1

    add-double/2addr v5, v2

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1483
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1484
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1485
    mul-double v5, v2, p3

    add-double/2addr v5, v0

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1486
    mul-double v5, v0, p1

    add-double/2addr v5, v2

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1487
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->updateState()V

    .line 1515
    .end local v0    # "M0":D
    .end local v2    # "M1":D
    :cond_0
    :goto_0
    return-void

    .line 1491
    :pswitch_1
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v5, p3

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 1492
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v5, p1

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 1493
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 1494
    :cond_1
    or-int/lit8 v5, v4, 0x2

    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1496
    :cond_2
    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1500
    :pswitch_2
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v5, p1

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1501
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v5, p3

    iput-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1502
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    .line 1503
    :cond_3
    or-int/lit8 v5, v4, 0x4

    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1505
    :cond_4
    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1509
    :pswitch_3
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 1510
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 1511
    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_5

    iget-wide v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_0

    .line 1512
    :cond_5
    or-int/lit8 v5, v4, 0x2

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1513
    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AffineTransform[["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3484
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3485
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->_matround(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .locals 10
    .param p1, "ptSrc"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "ptDst"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    .prologue
    .line 2446
    if-nez p2, :cond_0

    .line 2447
    instance-of v4, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    if-eqz v4, :cond_1

    .line 2448
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>()V

    .line 2454
    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v0

    .line 2455
    .local v0, "x":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v2

    .line 2456
    .local v2, "y":D
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v4, :pswitch_data_0

    .line 2458
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2461
    :pswitch_0
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    .line 2483
    :goto_1
    return-object p2

    .line 2450
    .end local v0    # "x":D
    .end local v2    # "y":D
    :cond_1
    new-instance p2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    .end local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;-><init>()V

    .restart local p2    # "ptDst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    goto :goto_0

    .line 2464
    .restart local v0    # "x":D
    .restart local v2    # "y":D
    :pswitch_1
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2467
    :pswitch_2
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2470
    :pswitch_3
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v4, v2

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2473
    :pswitch_4
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2476
    :pswitch_5
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2479
    :pswitch_6
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v4, v0

    iget-wide v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v6, v2

    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2482
    :pswitch_7
    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    goto :goto_1

    .line 2456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([DI[DII)V
    .locals 27
    .param p1, "srcPts"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [D
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 2730
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    mul-int/lit8 v23, p5, 0x2

    add-int v23, v23, p2

    move/from16 v0, p4

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 2739
    mul-int/lit8 v23, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2741
    move/from16 p2, p4

    .line 2743
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2745
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2748
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2749
    .local v5, "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2750
    .local v7, "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2751
    .local v9, "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2752
    .local v11, "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2753
    .local v13, "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .local v15, "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .local v17, "dstOff":I
    move/from16 v18, p2

    .line 2754
    .end local p2    # "srcOff":I
    .local v18, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2823
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_1
    :goto_1
    return-void

    .line 2755
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v5    # "M00":D
    .restart local v7    # "M01":D
    .restart local v9    # "M02":D
    .restart local v11    # "M10":D
    .restart local v13    # "M11":D
    .restart local v15    # "M12":D
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_2
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v19, p1, v18

    .line 2756
    .local v19, "x":D
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v21, p1, p2

    .line 2757
    .local v21, "y":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v23, v5, v19

    mul-double v25, v7, v21

    add-double v23, v23, v25

    add-double v23, v23, v9

    aput-wide v23, p3, v17

    .line 2758
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    mul-double v25, v13, v21

    add-double v23, v23, v25

    add-double v23, v23, v15

    aput-wide v23, p3, p4

    goto :goto_0

    .line 2762
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .end local v21    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2763
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2764
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2765
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v13    # "M11":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2766
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2772
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 2767
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v19, p1, v18

    .line 2768
    .restart local v19    # "x":D
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v21, p1, p2

    .line 2769
    .restart local v21    # "y":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v23, v5, v19

    mul-double v25, v7, v21

    add-double v23, v23, v25

    aput-wide v23, p3, v17

    .line 2770
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    mul-double v25, v13, v21

    add-double v23, v23, v25

    aput-wide v23, p3, p4

    goto :goto_2

    .line 2774
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .end local v21    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2775
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2776
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2777
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2778
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_4

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2783
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 2779
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_4
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v19, p1, v18

    .line 2780
    .restart local v19    # "x":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v23, p1, p2

    mul-double v23, v23, v7

    add-double v23, v23, v9

    aput-wide v23, p3, v17

    .line 2781
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    add-double v23, v23, v15

    aput-wide v23, p3, p4

    goto :goto_3

    .line 2785
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2786
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v11    # "M10":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2787
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_5

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2792
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2788
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_5
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v19, p1, v18

    .line 2789
    .restart local v19    # "x":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v23, p1, p2

    mul-double v23, v23, v7

    aput-wide v23, p3, v17

    .line 2790
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    aput-wide v23, p3, p4

    goto :goto_4

    .line 2794
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2795
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2796
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2797
    .restart local v13    # "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2798
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_6

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2802
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2799
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_6
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v23, p1, v18

    mul-double v23, v23, v5

    add-double v23, v23, v9

    aput-wide v23, p3, v17

    .line 2800
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v23, p1, p2

    mul-double v23, v23, v13

    add-double v23, v23, v15

    aput-wide v23, p3, p4

    goto :goto_5

    .line 2804
    .end local v5    # "M00":D
    .end local v9    # "M02":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2805
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v13    # "M11":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2806
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_7

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2810
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2807
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_7
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v23, p1, v18

    mul-double v23, v23, v5

    aput-wide v23, p3, v17

    .line 2808
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v23, p1, p2

    mul-double v23, v23, v13

    aput-wide v23, p3, p4

    goto :goto_6

    .line 2812
    .end local v5    # "M00":D
    .end local v13    # "M11":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2813
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2814
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_8

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2818
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2815
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_8
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v23, p1, v18

    add-double v23, v23, v9

    aput-wide v23, p3, v17

    .line 2816
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget-wide v23, p1, p2

    add-double v23, v23, v15

    aput-wide v23, p3, p4

    goto :goto_7

    .line 2820
    .end local v9    # "M02":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_9

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_1

    .line 2821
    :cond_9
    mul-int/lit8 v23, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 2743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([DI[FII)V
    .locals 24
    .param p1, "srcPts"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [F
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 2968
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 2970
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2973
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2974
    .local v2, "M00":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2975
    .local v4, "M01":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2976
    .local v6, "M02":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2977
    .local v8, "M10":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2978
    .local v10, "M11":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .local v12, "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .local v14, "dstOff":I
    move/from16 v15, p2

    .line 2979
    .end local p2    # "srcOff":I
    .local v15, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3049
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    :goto_1
    return-void

    .line 2980
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v2    # "M00":D
    .restart local v4    # "M01":D
    .restart local v6    # "M02":D
    .restart local v8    # "M10":D
    .restart local v10    # "M11":D
    .restart local v12    # "M12":D
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_0
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v16, p1, v15

    .line 2981
    .local v16, "x":D
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v18, p1, p2

    .line 2982
    .local v18, "y":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v20, v2, v16

    mul-double v22, v4, v18

    add-double v20, v20, v22

    add-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 2983
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    mul-double v22, v10, v18

    add-double v20, v20, v22

    add-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_0

    .line 2987
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .end local v18    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2988
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2989
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2990
    .restart local v8    # "M10":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v10    # "M11":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2991
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_1

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2997
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 2992
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_1
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v16, p1, v15

    .line 2993
    .restart local v16    # "x":D
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v18, p1, p2

    .line 2994
    .restart local v18    # "y":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v20, v2, v16

    mul-double v22, v4, v18

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 2995
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    mul-double v22, v10, v18

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_2

    .line 2999
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .end local v18    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3000
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3001
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 3002
    .restart local v8    # "M10":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3003
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3008
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3004
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_2
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v16, p1, v15

    .line 3005
    .restart local v16    # "x":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    mul-double v20, v20, v4

    add-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3006
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    add-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_3

    .line 3010
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 3011
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v8    # "M10":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3012
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3017
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3013
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v16, p1, v15

    .line 3014
    .restart local v16    # "x":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    mul-double v20, v20, v4

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3015
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_4

    .line 3019
    .end local v4    # "M01":D
    .end local v8    # "M10":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3020
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3021
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 3022
    .restart local v10    # "M11":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3023
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_4

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3027
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3024
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_4
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v20, p1, v15

    mul-double v20, v20, v2

    add-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3025
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    mul-double v20, v20, v10

    add-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_5

    .line 3029
    .end local v2    # "M00":D
    .end local v6    # "M02":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 3030
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v10    # "M11":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3031
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_5

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3035
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3032
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_5
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v20, p1, v15

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3033
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_6

    .line 3037
    .end local v2    # "M00":D
    .end local v10    # "M11":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 3038
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3039
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_6

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3043
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3040
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_6
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v20, p1, v15

    add-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3041
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    add-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_7

    .end local v6    # "M02":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 3045
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_8
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_7

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 3049
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 3046
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_7
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v20, p1, v15

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, v14

    .line 3047
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget-wide v20, p1, p2

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, p3, p4

    goto :goto_8

    .line 2968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[DII)V
    .locals 24
    .param p1, "srcPts"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [D
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 2855
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 2857
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2860
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2861
    .local v2, "M00":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2862
    .local v4, "M01":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2863
    .local v6, "M02":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2864
    .local v8, "M10":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2865
    .local v10, "M11":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .local v12, "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .local v14, "dstOff":I
    move/from16 v15, p2

    .line 2866
    .end local p2    # "srcOff":I
    .local v15, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2936
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    :goto_1
    return-void

    .line 2867
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v2    # "M00":D
    .restart local v4    # "M01":D
    .restart local v6    # "M02":D
    .restart local v8    # "M10":D
    .restart local v10    # "M11":D
    .restart local v12    # "M12":D
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_0
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2868
    .local v16, "x":D
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2869
    .local v18, "y":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v20, v2, v16

    mul-double v22, v4, v18

    add-double v20, v20, v22

    add-double v20, v20, v6

    aput-wide v20, p3, v14

    .line 2870
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    mul-double v22, v10, v18

    add-double v20, v20, v22

    add-double v20, v20, v12

    aput-wide v20, p3, p4

    goto :goto_0

    .line 2874
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .end local v18    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2875
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2876
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2877
    .restart local v8    # "M10":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v10    # "M11":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2878
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_1

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2884
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 2879
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_1
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2880
    .restart local v16    # "x":D
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 2881
    .restart local v18    # "y":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v20, v2, v16

    mul-double v22, v4, v18

    add-double v20, v20, v22

    aput-wide v20, p3, v14

    .line 2882
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    mul-double v22, v10, v18

    add-double v20, v20, v22

    aput-wide v20, p3, p4

    goto :goto_2

    .line 2886
    .end local v2    # "M00":D
    .end local v4    # "M01":D
    .end local v8    # "M10":D
    .end local v10    # "M11":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .end local v18    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2887
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2888
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2889
    .restart local v8    # "M10":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2890
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2895
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2891
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_2
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2892
    .restart local v16    # "x":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    add-double v20, v20, v6

    aput-wide v20, p3, v14

    .line 2893
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    add-double v20, v20, v12

    aput-wide v20, p3, p4

    goto :goto_3

    .line 2897
    .end local v4    # "M01":D
    .end local v6    # "M02":D
    .end local v8    # "M10":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2898
    .restart local v4    # "M01":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v8    # "M10":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2899
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2904
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2900
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2901
    .restart local v16    # "x":D
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    aput-wide v20, p3, v14

    .line 2902
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    mul-double v20, v8, v16

    aput-wide v20, p3, p4

    goto :goto_4

    .line 2906
    .end local v4    # "M01":D
    .end local v8    # "M10":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .end local v16    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2907
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2908
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2909
    .restart local v10    # "M11":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2910
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_4

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2914
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2911
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_4
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v2

    add-double v20, v20, v6

    aput-wide v20, p3, v14

    .line 2912
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    add-double v20, v20, v12

    aput-wide v20, p3, p4

    goto :goto_5

    .line 2916
    .end local v2    # "M00":D
    .end local v6    # "M02":D
    .end local v10    # "M11":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2917
    .restart local v2    # "M00":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v10    # "M11":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2918
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_5

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2922
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2919
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_5
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v2

    aput-wide v20, p3, v14

    .line 2920
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    aput-wide v20, p3, p4

    goto :goto_6

    .line 2924
    .end local v2    # "M00":D
    .end local v10    # "M11":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2925
    .restart local v6    # "M02":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v12    # "M12":D
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2926
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_6

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2930
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2927
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_6
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v20, v20, v6

    aput-wide v20, p3, v14

    .line 2928
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v20, v20, v12

    aput-wide v20, p3, p4

    goto :goto_7

    .end local v6    # "M02":D
    .end local v12    # "M12":D
    .end local v14    # "dstOff":I
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    move/from16 v14, p4

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    move/from16 v15, p2

    .line 2932
    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    :goto_8
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_7

    move/from16 p4, v14

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v15

    .line 2936
    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2933
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    .restart local v15    # "srcOff":I
    :cond_7
    add-int/lit8 p4, v14, 0x1

    .end local v14    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v15, 0x1

    .end local v15    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v20, p1, v15

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, p3, v14

    .line 2934
    add-int/lit8 v14, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v14    # "dstOff":I
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v15    # "srcOff":I
    aget v20, p1, p2

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, p3, p4

    goto :goto_8

    .line 2855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([FI[FII)V
    .locals 27
    .param p1, "srcPts"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dstPts"    # [F
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 2602
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    mul-int/lit8 v23, p5, 0x2

    add-int v23, v23, p2

    move/from16 v0, p4

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 2611
    mul-int/lit8 v23, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2613
    move/from16 p2, p4

    .line 2615
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2617
    invoke-direct/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2620
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2621
    .local v5, "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2622
    .local v7, "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2623
    .local v9, "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2624
    .local v11, "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2625
    .local v13, "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .local v15, "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .local v17, "dstOff":I
    move/from16 v18, p2

    .line 2626
    .end local p2    # "srcOff":I
    .local v18, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_2

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2695
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_1
    :goto_1
    return-void

    .line 2627
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v5    # "M00":D
    .restart local v7    # "M01":D
    .restart local v9    # "M02":D
    .restart local v11    # "M10":D
    .restart local v13    # "M11":D
    .restart local v15    # "M12":D
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_2
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 2628
    .local v19, "x":D
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 2629
    .local v21, "y":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v23, v5, v19

    mul-double v25, v7, v21

    add-double v23, v23, v25

    add-double v23, v23, v9

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2630
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    mul-double v25, v13, v21

    add-double v23, v23, v25

    add-double v23, v23, v15

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_0

    .line 2634
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .end local v21    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2635
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2636
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2637
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v13    # "M11":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2638
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_3

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2644
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto :goto_1

    .line 2639
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_3
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 2640
    .restart local v19    # "x":D
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 2641
    .restart local v21    # "y":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    mul-double v23, v5, v19

    mul-double v25, v7, v21

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2642
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    mul-double v25, v13, v21

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_2

    .line 2646
    .end local v5    # "M00":D
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    .end local v13    # "M11":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .end local v21    # "y":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2647
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2648
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .line 2649
    .restart local v11    # "M10":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2650
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_3
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_4

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2655
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2651
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_4
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 2652
    .restart local v19    # "x":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v7

    add-double v23, v23, v9

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2653
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    add-double v23, v23, v15

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_3

    .line 2657
    .end local v7    # "M01":D
    .end local v9    # "M02":D
    .end local v11    # "M10":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    .line 2658
    .restart local v7    # "M01":D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    .restart local v11    # "M10":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2659
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_4
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_5

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2664
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2660
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_5
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 2661
    .restart local v19    # "x":D
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v7

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2662
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    mul-double v23, v11, v19

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_4

    .line 2666
    .end local v7    # "M01":D
    .end local v11    # "M10":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .end local v19    # "x":D
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2667
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2668
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .line 2669
    .restart local v13    # "M11":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2670
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_5
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_6

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2674
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2671
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_6
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v5

    add-double v23, v23, v9

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2672
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v13

    add-double v23, v23, v15

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_5

    .line 2676
    .end local v5    # "M00":D
    .end local v9    # "M02":D
    .end local v13    # "M11":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    .line 2677
    .restart local v5    # "M00":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    .restart local v13    # "M11":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2678
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_6
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_7

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2682
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2679
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_7
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v5

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2680
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, v13

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_6

    .line 2684
    .end local v5    # "M00":D
    .end local v13    # "M11":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 2685
    .restart local v9    # "M02":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .restart local v15    # "M12":D
    move/from16 v17, p4

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    move/from16 v18, p2

    .line 2686
    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    :goto_7
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_8

    move/from16 p4, v17

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    move/from16 p2, v18

    .line 2690
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    goto/16 :goto_1

    .line 2687
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    .restart local v18    # "srcOff":I
    :cond_8
    add-int/lit8 p4, v17, 0x1

    .end local v17    # "dstOff":I
    .restart local p4    # "dstOff":I
    add-int/lit8 p2, v18, 0x1

    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget v23, p1, v18

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    add-double v23, v23, v9

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, v17

    .line 2688
    add-int/lit8 v17, p4, 0x1

    .end local p4    # "dstOff":I
    .restart local v17    # "dstOff":I
    add-int/lit8 v18, p2, 0x1

    .end local p2    # "srcOff":I
    .restart local v18    # "srcOff":I
    aget v23, p1, p2

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    add-double v23, v23, v15

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, p3, p4

    goto :goto_7

    .line 2692
    .end local v9    # "M02":D
    .end local v15    # "M12":D
    .end local v17    # "dstOff":I
    .end local v18    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_9

    move/from16 v0, p2

    move/from16 v1, p4

    if-eq v0, v1, :cond_1

    .line 2693
    :cond_9
    mul-int/lit8 v23, p5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 2615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transform([Lorg/loon/framework/android/game/core/graphics/geom/Point2D;I[Lorg/loon/framework/android/game/core/graphics/geom/Point2D;II)V
    .locals 15
    .param p1, "ptSrc"    # [Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "srcOff"    # I
    .param p3, "ptDst"    # [Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p4, "dstOff"    # I
    .param p5, "numPts"    # I

    .prologue
    .line 2523
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .local v4, "state":I
    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .local v1, "dstOff":I
    move/from16 v3, p2

    .line 2524
    .end local p2    # "srcOff":I
    .local v3, "srcOff":I
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-gez p5, :cond_0

    .line 2571
    return-void

    .line 2526
    :cond_0
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-object v2, p1, v3

    .line 2527
    .local v2, "src":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getX()D

    move-result-wide v5

    .line 2528
    .local v5, "x":D
    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->getY()D

    move-result-wide v7

    .line 2529
    .local v7, "y":D
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "dstOff":I
    .restart local p4    # "dstOff":I
    aget-object v0, p3, v1

    .line 2530
    .local v0, "dst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    if-nez v0, :cond_1

    .line 2531
    instance-of v9, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    if-eqz v9, :cond_2

    .line 2532
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    .end local v0    # "dst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>()V

    .line 2536
    .restart local v0    # "dst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    :goto_1
    add-int/lit8 v9, p4, -0x1

    aput-object v0, p3, v9

    .line 2538
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 2540
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 2543
    :pswitch_0
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v11, v5

    iget-wide v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    .line 2544
    iget-wide v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v11, v13

    .line 2543
    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2545
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto :goto_0

    .line 2534
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :cond_2
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;

    .end local v0    # "dst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Float;-><init>()V

    .restart local v0    # "dst":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    goto :goto_1

    .line 2547
    :pswitch_1
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v11, v5

    iget-wide v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2548
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto :goto_0

    .line 2550
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_2
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v9, v7

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v11, v5

    iget-wide v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v11, v13

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2551
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto :goto_0

    .line 2553
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_3
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v9, v7

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v11, v5

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2554
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto/16 :goto_0

    .line 2556
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_4
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v9, v11

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v7

    iget-wide v13, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v11, v13

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2557
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto/16 :goto_0

    .line 2559
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_5
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v5

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v7

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2560
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto/16 :goto_0

    .line 2562
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_6
    iget-wide v9, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v9, v5

    iget-wide v11, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v11, v7

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .line 2563
    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto/16 :goto_0

    .line 2565
    .end local v1    # "dstOff":I
    .end local v3    # "srcOff":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    :pswitch_7
    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->setLocation(DD)V

    move/from16 v1, p4

    .end local p4    # "dstOff":I
    .restart local v1    # "dstOff":I
    move/from16 v3, p2

    .end local p2    # "srcOff":I
    .restart local v3    # "srcOff":I
    goto/16 :goto_0

    .line 2538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public translate(DD)V
    .locals 7
    .param p1, "tx"    # D
    .param p3, "ty"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 1154
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    packed-switch v0, :pswitch_data_0

    .line 1156
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->stateError()V

    .line 1159
    :pswitch_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1160
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1161
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x6

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1163
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    if-eq v0, v6, :cond_0

    .line 1164
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1169
    :pswitch_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1170
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1171
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 1172
    :cond_1
    const/4 v0, 0x7

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1173
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1177
    :pswitch_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v0, p3

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1178
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1179
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 1180
    const/4 v0, 0x4

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1181
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    if-eq v0, v6, :cond_0

    .line 1182
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1187
    :pswitch_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1188
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1189
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 1190
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1191
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1195
    :pswitch_4
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1196
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v0, p3

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1197
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 1198
    const/4 v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1199
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    if-eq v0, v6, :cond_0

    .line 1200
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1205
    :pswitch_5
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1206
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    mul-double/2addr v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1207
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 1208
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1209
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1213
    :pswitch_6
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1214
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1215
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 1216
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1217
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1221
    :pswitch_7
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    .line 1222
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    .line 1223
    cmpl-double v0, p1, v4

    if-nez v0, :cond_4

    cmpl-double v0, p3, v4

    if-eqz v0, :cond_0

    .line 1224
    :cond_4
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1225
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto/16 :goto_0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 978
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m01:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m10:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 979
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v0, v0, v5

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v0, v0, v5

    if-nez v0, :cond_1

    .line 980
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 981
    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 982
    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    .line 1015
    :goto_0
    return-void

    .line 984
    :cond_0
    iput v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 985
    iput v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 988
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 989
    const/4 v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 990
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 992
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 993
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 997
    :cond_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m00:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m11:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    .line 998
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 999
    const/4 v0, 0x4

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1000
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1002
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1003
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1006
    :cond_5
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m02:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->m12:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    .line 1007
    const/4 v0, 0x6

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1008
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0

    .line 1010
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->state:I

    .line 1011
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;->type:I

    goto :goto_0
.end method
