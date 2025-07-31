.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlackWhiteFilter;
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
    name = "BlackWhiteFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$BlackWhiteFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rgb"    # I

    .prologue
    .line 502
    const/high16 v5, 0xff0000

    and-int/2addr v5, p3

    shr-int/lit8 v3, v5, 0x10

    .line 503
    .local v3, "red":I
    const v5, 0xff00

    and-int/2addr v5, p3

    shr-int/lit8 v1, v5, 0x8

    .line 504
    .local v1, "green":I
    and-int/lit16 v0, p3, 0xff

    .line 505
    .local v0, "blue":I
    const/high16 v4, -0x1000000

    .line 508
    .local v4, "ret":I
    int-to-double v5, v3

    const-wide v7, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v5, v7

    int-to-double v7, v1

    const-wide v9, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    int-to-double v7, v0

    const-wide v9, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 509
    .local v2, "grey":I
    or-int/2addr v4, v2

    .line 510
    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    .line 511
    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    .line 512
    return v4
.end method
