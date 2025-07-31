.class public Lorg/loon/framework/android/game/core/timer/LTimerContext;
.super Ljava/lang/Object;
.source "LTimerContext.java"


# instance fields
.field public millisSleepTime:J

.field public timeSinceLastUpdate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimerContext;->timeSinceLastUpdate:J

    .line 30
    return-void
.end method


# virtual methods
.method public getSleepTimeMillis()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimerContext;->millisSleepTime:J

    return-wide v0
.end method

.method public declared-synchronized getTimeSinceLastUpdate()J
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/timer/LTimerContext;->timeSinceLastUpdate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSleepTimeMillis(J)V
    .locals 0
    .param p1, "millisSleepTime"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/timer/LTimerContext;->millisSleepTime:J

    .line 46
    return-void
.end method

.method public declared-synchronized setTimeSinceLastUpdate(J)V
    .locals 1
    .param p1, "timeSinceLastUpdate"    # J

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/timer/LTimerContext;->timeSinceLastUpdate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
