.class Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GIFDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/sprite/GIFDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Image;I)V
    .locals 0
    .param p1, "im"    # Ljavax/microedition/lcdui/Image;
    .param p2, "del"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;->image:Ljavax/microedition/lcdui/Image;

    .line 105
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/GIFDecoder$GifFrame;->delay:I

    .line 106
    return-void
.end method
