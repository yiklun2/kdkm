.class public Lorg/loon/framework/android/game/action/ActionControl;
.super Ljava/lang/Object;
.source "ActionControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/ActionControl$ActionThread;
    }
.end annotation


# static fields
.field private static instanceAction:Lorg/loon/framework/android/game/action/ActionControl;


# instance fields
.field private actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

.field private actions:Lorg/loon/framework/android/game/action/Actions;

.field private fps:I

.field private pause:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x1e

    iput v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->fps:I

    .line 49
    new-instance v0, Lorg/loon/framework/android/game/action/Actions;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/Actions;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/Actions;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    return-object v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/action/ActionControl;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->pause:Z

    return v0
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/action/ActionControl;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->fps:I

    return v0
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/ActionControl$ActionThread;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    return-object v0
.end method

.method static synthetic access$4(Lorg/loon/framework/android/game/action/ActionControl;Lorg/loon/framework/android/game/action/ActionControl$ActionThread;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    return-void
.end method

.method public static getInstance()Lorg/loon/framework/android/game/action/ActionControl;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lorg/loon/framework/android/game/action/ActionControl;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/action/ActionControl;->instanceAction:Lorg/loon/framework/android/game/action/ActionControl;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/loon/framework/android/game/action/ActionControl;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/ActionControl;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/ActionControl;->instanceAction:Lorg/loon/framework/android/game/action/ActionControl;

    .line 44
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/ActionControl;->instanceAction:Lorg/loon/framework/android/game/action/ActionControl;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeActionThread()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/Actions;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;-><init>(Lorg/loon/framework/android/game/action/ActionControl;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    .line 142
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->start()V

    .line 138
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;
    .param p2, "obj"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/loon/framework/android/game/action/ActionControl;->addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V

    .line 61
    return-void
.end method

.method public addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V
    .locals 2
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;
    .param p2, "obj"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "paused"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/Actions;->addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V

    .line 55
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionControl;->makeActionThread()V

    .line 53
    monitor-exit v1

    .line 57
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/Actions;->clear()V

    .line 123
    return-void
.end method

.method public getAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/ActionEvent;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 88
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/Actions;->getAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/Actions;->getCount()I

    move-result v0

    monitor-exit v1

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFPS()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->fps:I

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->pause:Z

    return v0
.end method

.method public removeAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 76
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/Actions;->removeAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 76
    monitor-exit v1

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAction(Lorg/loon/framework/android/game/action/ActionEvent;)V
    .locals 2
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;

    .prologue
    .line 82
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/Actions;->removeAction(Lorg/loon/framework/android/game/action/ActionEvent;)V

    .line 82
    monitor-exit v1

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllActions(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 64
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/Actions;->removeAllActions(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 64
    monitor-exit v1

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFPS(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/loon/framework/android/game/action/ActionControl;->fps:I

    .line 107
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/ActionControl;->pause:Z

    .line 119
    return-void
.end method

.method public start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 100
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/Actions;->start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 100
    monitor-exit v1

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actionThread:Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->end()V

    .line 135
    :cond_0
    return-void
.end method

.method public stop(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 94
    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionControl;->actions:Lorg/loon/framework/android/game/action/Actions;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/Actions;->stop(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 94
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAll()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/ActionControl;->setFPS(I)V

    .line 127
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/ActionControl;->clear()V

    .line 128
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/ActionControl;->stop()V

    .line 129
    return-void
.end method
