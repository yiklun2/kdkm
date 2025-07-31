.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;
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
    name = "WhiteFilter"
.end annotation


# instance fields
.field private final hsv:[F

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V
    .locals 1

    .prologue
    .line 627
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rgb"    # I

    .prologue
    const/4 v5, 0x1

    .line 632
    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v0, v1, 0xff

    .line 634
    .local v0, "transparency":I
    if-gt v0, v5, :cond_0

    .line 642
    .end local p3    # "rgb":I
    :goto_0
    return p3

    .line 637
    .restart local p3    # "rgb":I
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 638
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x0

    and-int/lit16 v3, v3, 0xff

    .line 639
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    .line 638
    invoke-static {v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->RGBtoHSB(III[F)[F

    .line 640
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    const/4 v2, 0x0

    aput v2, v1, v5

    .line 642
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    aget v2, v2, v5

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$WhiteFilter;->hsv:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->HSBtoRGB(FFF)I

    move-result v1

    shl-int/lit8 v2, v0, 0x18

    add-int p3, v1, v2

    goto :goto_0
.end method
