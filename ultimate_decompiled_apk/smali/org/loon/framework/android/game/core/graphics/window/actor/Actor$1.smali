.class Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;
.super Ljava/lang/Object;
.source "Actor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setRotateSheet(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field private final synthetic val$img:Landroid/graphics/Bitmap;

.field private final synthetic val$index:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->val$img:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->val$index:Ljava/lang/Integer;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 460
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    new-instance v1, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->val$img:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-static {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)I

    move-result v3

    .line 461
    invoke-direct {v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 460
    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 462
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->access$1()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->val$index:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v2, v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iput-boolean v4, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    .line 464
    return-void
.end method
