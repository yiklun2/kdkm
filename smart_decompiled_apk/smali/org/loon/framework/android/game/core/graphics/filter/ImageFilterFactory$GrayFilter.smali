.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;
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
    name = "GrayFilter"
.end annotation


# instance fields
.field private brighter:Z

.field private percent:I

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;ZI)V
    .locals 0
    .param p2, "b"    # Z
    .param p3, "p"    # I

    .prologue
    .line 478
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-boolean p2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->brighter:Z

    .line 477
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->percent:I

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rgb"    # I

    .prologue
    .line 481
    const-wide v1, 0x3fd322d0e5604189L    # 0.299

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fe2c8b439581062L    # 0.587

    .line 482
    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 481
    add-double/2addr v1, v3

    .line 482
    const-wide v3, 0x3fbd2f1a9fbe76c9L    # 0.114

    and-int/lit16 v5, p3, 0xff

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 481
    add-double/2addr v1, v3

    .line 482
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 481
    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 483
    .local v0, "gray":I
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->brighter:Z

    if-eqz v1, :cond_2

    .line 484
    rsub-int v1, v0, 0xff

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->percent:I

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    rsub-int v0, v1, 0xff

    .line 488
    :goto_0
    if-gez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 492
    const/16 v0, 0xff

    .line 494
    :cond_1
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 495
    shl-int/lit8 v2, v0, 0x0

    .line 494
    or-int/2addr v1, v2

    return v1

    .line 486
    :cond_2
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$GrayFilter;->percent:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x64

    goto :goto_0
.end method
