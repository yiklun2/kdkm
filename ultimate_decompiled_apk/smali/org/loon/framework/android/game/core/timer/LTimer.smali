.class public Lorg/loon/framework/android/game/core/timer/LTimer;
.super Ljava/lang/Object;
.source "LTimer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private active:Z

.field private currentTick:J

.field private delay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x1c2

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    .line 43
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    goto :goto_0
.end method


# virtual methods
.method public action(J)Z
    .locals 4
    .param p1, "elapsedTime"    # J

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 53
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 55
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public action(Lorg/loon/framework/android/game/core/timer/LTimerContext;)Z
    .locals 4
    .param p1, "context"    # Lorg/loon/framework/android/game/core/timer/LTimerContext;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/timer/LTimerContext;->getTimeSinceLastUpdate()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 65
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 66
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTick()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    return-wide v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    return v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 75
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    .line 97
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/LTimer;->refresh()V

    .line 98
    return-void
.end method

.method public setCurrentTick(J)V
    .locals 0
    .param p1, "tick"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 115
    return-void
.end method

.method public setDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    .line 106
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/LTimer;->refresh()V

    .line 107
    return-void
.end method

.method public setEquals(Lorg/loon/framework/android/game/core/timer/LTimer;)V
    .locals 2
    .param p1, "other"    # Lorg/loon/framework/android/game/core/timer/LTimer;

    .prologue
    .line 78
    iget-boolean v0, p1, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    .line 79
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->delay:J

    .line 80
    iget-wide v0, p1, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->currentTick:J

    .line 81
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    .line 89
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/timer/LTimer;->active:Z

    .line 93
    return-void
.end method
