.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;
.super Ljava/lang/Object;
.source "ImageFilterFactory.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RateFilter"
.end annotation


# instance fields
.field private final bRate:D

.field private final gRate:D

.field private final rRate:D

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V
    .locals 2

    .prologue
    .line 526
    const-wide v0, 0x3fe6666666666666L    # 0.7

    invoke-direct {p0, p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;D)V

    .line 527
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;D)V
    .locals 8
    .param p2, "d"    # D

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;-><init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;DDD)V

    .line 531
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;DDD)V
    .locals 3
    .param p2, "d"    # D
    .param p4, "d1"    # D
    .param p6, "d2"    # D

    .prologue
    const-wide/16 v1, 0x0

    .line 547
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    cmpg-double v0, p2, v1

    if-gez v0, :cond_0

    .line 536
    const-wide/16 p2, 0x0

    .line 538
    :cond_0
    cmpg-double v0, p4, v1

    if-gez v0, :cond_1

    .line 539
    const-wide/16 p4, 0x0

    .line 541
    :cond_1
    cmpg-double v0, p6, v1

    if-gez v0, :cond_2

    .line 542
    const-wide/16 p6, 0x0

    .line 544
    :cond_2
    iput-wide p2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->rRate:D

    .line 545
    iput-wide p4, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->gRate:D

    .line 546
    iput-wide p6, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->bRate:D

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 9
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "k"    # I

    .prologue
    const/16 v8, 0xff

    .line 550
    const/high16 v4, -0x1000000

    and-int/2addr v4, p3

    shr-int/lit8 v3, v4, 0x18

    .line 551
    .local v3, "l":I
    const/high16 v4, 0xff0000

    and-int/2addr v4, p3

    shr-int/lit8 v0, v4, 0x10

    .line 552
    .local v0, "i1":I
    const v4, 0xff00

    and-int/2addr v4, p3

    shr-int/lit8 v1, v4, 0x8

    .line 553
    .local v1, "j1":I
    and-int/lit16 v2, p3, 0xff

    .line 554
    .local v2, "k1":I
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->rRate:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 555
    if-le v0, v8, :cond_0

    .line 556
    const/16 v0, 0xff

    .line 558
    :cond_0
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->gRate:D

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 559
    if-le v1, v8, :cond_1

    .line 560
    const/16 v1, 0xff

    .line 562
    :cond_1
    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$RateFilter;->bRate:D

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 563
    if-le v2, v8, :cond_2

    .line 564
    const/16 v2, 0xff

    .line 566
    :cond_2
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v0, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    return v4
.end method
