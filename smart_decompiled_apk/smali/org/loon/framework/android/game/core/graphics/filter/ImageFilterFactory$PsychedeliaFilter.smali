.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PsychedeliaFilter;
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
    name = "PsychedeliaFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$PsychedeliaFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rgb"    # I

    .prologue
    .line 595
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    const/high16 v1, 0xff0000

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method
