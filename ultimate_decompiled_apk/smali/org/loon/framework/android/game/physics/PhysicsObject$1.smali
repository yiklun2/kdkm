.class Lorg/loon/framework/android/game/physics/PhysicsObject$1;
.super Ljava/lang/Object;
.source "PhysicsObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/physics/PhysicsObject;->setRotateSheet(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

.field private final synthetic val$img:Landroid/graphics/Bitmap;

.field private final synthetic val$index:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/physics/PhysicsObject;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    iput-object p2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->val$img:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->val$index:Ljava/lang/Integer;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 422
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    new-instance v3, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iget-object v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->val$img:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    iget v5, v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 423
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->access$0(Lorg/loon/framework/android/game/physics/PhysicsObject;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v5, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 422
    invoke-static {v2, v3}, Lorg/loon/framework/android/game/physics/PhysicsObject;->access$1(Lorg/loon/framework/android/game/physics/PhysicsObject;Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;)V

    .line 424
    invoke-static {}, Lorg/loon/framework/android/game/physics/PhysicsObject;->access$2()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->val$index:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-static {v3}, Lorg/loon/framework/android/game/physics/PhysicsObject;->access$3(Lorg/loon/framework/android/game/physics/PhysicsObject;)Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->access$4(Lorg/loon/framework/android/game/physics/PhysicsObject;Z)V

    .line 426
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
