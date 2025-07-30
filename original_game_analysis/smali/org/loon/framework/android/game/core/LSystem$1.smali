.class Lorg/loon/framework/android/game/core/LSystem$1;
.super Ljava/lang/Object;
.source "LSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/core/LSystem;->thread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/core/LSystem$1;->val$runnable:Ljava/lang/Runnable;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 324
    :goto_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->access$0()Lorg/loon/framework/android/game/IHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    if-nez v2, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "screen":Lorg/loon/framework/android/game/core/graphics/Screen;
    :goto_1
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->access$0()Lorg/loon/framework/android/game/IHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/loon/framework/android/game/IHandler;->getCurrentScreen()Lorg/loon/framework/android/game/core/graphics/Screen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 337
    :goto_2
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->isOnLoadComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    :try_start_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->stopRepaint()V

    .line 345
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/LSystem$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->startRepaint()V

    .line 351
    :goto_3
    return-void

    .line 326
    .end local v1    # "screen":Lorg/loon/framework/android/game/core/graphics/Screen;
    :cond_0
    const-wide/16 v2, 0x12c

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    goto :goto_0

    .line 333
    .restart local v1    # "screen":Lorg/loon/framework/android/game/core/graphics/Screen;
    :cond_1
    const-wide/16 v2, 0x12c

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 334
    :catch_1
    move-exception v2

    goto :goto_1

    .line 339
    :cond_2
    const-wide/16 v2, 0x12c

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 340
    :catch_2
    move-exception v2

    goto :goto_2

    .line 346
    :catch_3
    move-exception v0

    .line 347
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lorg/loon/framework/android/game/core/LSystem$1;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/loon/framework/android/game/core/LSystem;->post(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->startRepaint()V

    goto :goto_3

    .line 348
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 349
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->startRepaint()V

    .line 350
    throw v2
.end method
