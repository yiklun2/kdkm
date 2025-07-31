.class public Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;
.super Ljava/lang/Object;
.source "ImageFilterExecute.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private filter:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;

.field index:I

.field pixel:I

.field transparency:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;)V
    .locals 0
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "filter"    # Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->filter:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;

    .line 36
    return-void
.end method


# virtual methods
.method public doFilter()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 45
    .local v7, "height":I
    mul-int v9, v3, v7

    .line 46
    .local v9, "length":I
    new-array v1, v9, [I

    .line 47
    .local v1, "pixels":[I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->bitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 48
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-lt v11, v7, :cond_0

    .line 59
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 59
    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 61
    .local v8, "dst":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    check-cast v1, [I

    .line 62
    return-object v8

    .line 49
    .end local v8    # "dst":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-lt v10, v3, :cond_1

    .line 48
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 50
    :cond_1
    mul-int v0, v3, v11

    add-int/2addr v0, v10

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->index:I

    .line 51
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->index:I

    aget v0, v1, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->pixel:I

    .line 52
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->pixel:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->transparency:I

    .line 53
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->transparency:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->filter:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->pixel:I

    invoke-interface {v0, v10, v11, v2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilter;->filterRGB(III)I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->pixel:I

    .line 55
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->index:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterExecute;->pixel:I

    aput v2, v1, v0

    .line 49
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
