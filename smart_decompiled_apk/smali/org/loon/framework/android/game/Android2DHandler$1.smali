.class Lorg/loon/framework/android/game/Android2DHandler$1;
.super Ljava/lang/Thread;
.source "Android2DHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/Android2DHandler;

.field private final synthetic val$screen:Lorg/loon/framework/android/game/core/graphics/Screen;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/Android2DHandler;Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/Android2DHandler$1;->this$0:Lorg/loon/framework/android/game/Android2DHandler;

    iput-object p2, p0, Lorg/loon/framework/android/game/Android2DHandler$1;->val$screen:Lorg/loon/framework/android/game/core/graphics/Screen;

    .line 294
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    :goto_0
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler$1;->val$screen:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->onLoad()V

    .line 303
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler$1;->val$screen:Lorg/loon/framework/android/game/core/graphics/Screen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->setOnLoadState(Z)V

    .line 304
    return-void

    .line 298
    :cond_0
    const-wide/16 v0, 0x3c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method
