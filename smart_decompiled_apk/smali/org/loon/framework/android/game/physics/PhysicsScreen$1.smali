.class Lorg/loon/framework/android/game/physics/PhysicsScreen$1;
.super Ljava/lang/Object;
.source "PhysicsScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/physics/PhysicsScreen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/physics/PhysicsScreen;

.field private final synthetic val$e:Lorg/loon/framework/android/game/core/graphics/Touch;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/physics/PhysicsScreen;Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsScreen;

    iput-object p2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;->val$e:Lorg/loon/framework/android/game/core/graphics/Touch;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsScreen;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->access$0(Lorg/loon/framework/android/game/physics/PhysicsScreen;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;->this$0:Lorg/loon/framework/android/game/physics/PhysicsScreen;

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;->val$e:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->onDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    .line 345
    monitor-exit v1

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
