.class public abstract Lorg/loon/framework/android/game/action/ActionEvent;
.super Ljava/lang/Object;
.source "ActionEvent.java"


# instance fields
.field private actionListener:Lorg/loon/framework/android/game/action/ActionListener;

.field firstTick:Z

.field isComplete:Z

.field isInit:Z

.field original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field tag:Ljava/lang/Object;

.field private timer:Lorg/loon/framework/android/game/core/timer/LTimer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 40
    return-void
.end method


# virtual methods
.method public getActionListener()Lorg/loon/framework/android/game/action/ActionListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract isComplete()Z
.end method

.method public abstract onLoad()V
.end method

.method public setActionListener(Lorg/loon/framework/android/game/action/ActionListener;)V
    .locals 0
    .param p1, "actionListener"    # Lorg/loon/framework/android/game/action/ActionListener;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    .line 115
    return-void
.end method

.method public final setComplete(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->isComplete:Z

    .line 107
    return-void
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 47
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->setDelay(J)V

    .line 48
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->tag:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 76
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->refresh()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->firstTick:Z

    .line 78
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->isComplete:Z

    .line 79
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->isInit:Z

    .line 80
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/action/ActionListener;->start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_0
.end method

.method public step(J)V
    .locals 2
    .param p1, "elapsedTime"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->firstTick:Z

    if-eqz v0, :cond_3

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->firstTick:Z

    .line 56
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->refresh()V

    .line 62
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/action/ActionListener;->process(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/action/ActionEvent;->update(J)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/action/ActionEvent;->actionListener:Lorg/loon/framework/android/game/action/ActionListener;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/ActionEvent;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/action/ActionListener;->stop(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 93
    :cond_0
    return-void
.end method

.method public abstract update(J)V
.end method
