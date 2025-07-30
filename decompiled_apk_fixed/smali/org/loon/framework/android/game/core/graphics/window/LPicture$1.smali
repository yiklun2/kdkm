.class Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;
.super Ljava/lang/Object;
.source "LPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/core/graphics/window/LPicture;->loadImage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/window/LPicture;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$transparency:Z


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/LPicture;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/LPicture;

    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->val$transparency:Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/LPicture;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->val$fileName:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LPicture$1;->val$transparency:Z

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/LPicture;->access$0(Lorg/loon/framework/android/game/core/graphics/window/LPicture;Ljavax/microedition/lcdui/Image;)V

    .line 69
    return-void
.end method
