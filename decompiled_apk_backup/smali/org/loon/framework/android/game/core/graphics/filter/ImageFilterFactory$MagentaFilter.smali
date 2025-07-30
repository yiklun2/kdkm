.class final Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$MagentaFilter;
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
    name = "MagentaFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory$MagentaFilter;->this$0:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

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
    .line 649
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    const v1, 0xff00ff

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    return v0
.end method
