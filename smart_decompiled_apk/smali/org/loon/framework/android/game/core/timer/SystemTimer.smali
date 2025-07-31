.class public Lorg/loon/framework/android/game/core/timer/SystemTimer;
.super Ljava/lang/Object;
.source "SystemTimer.java"


# instance fields
.field private lastTime:J

.field private virtualTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->lastTime:J

    .line 27
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->virtualTime:J

    .line 30
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->start()V

    .line 31
    return-void
.end method

.method public static sleepTimeMicros(JLorg/loon/framework/android/game/core/timer/SystemTimer;)J
    .locals 6
    .param p0, "goalTimeMicros"    # J
    .param p2, "timer"    # Lorg/loon/framework/android/game/core/timer/SystemTimer;

    .prologue
    const-wide/16 v4, 0x64

    .line 50
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 51
    .local v0, "time":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 53
    add-long v2, v0, v4

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v2

    return-wide v2

    .line 54
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getTimeMicros()J
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeMillis()J
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "time":J
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->lastTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 63
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->virtualTime:J

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->lastTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->virtualTime:J

    .line 65
    :cond_0
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->lastTime:J

    .line 67
    iget-wide v2, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->virtualTime:J

    return-wide v2
.end method

.method public sleepTimeMicros(J)J
    .locals 6
    .param p1, "goalTimeMicros"    # J

    .prologue
    const-wide/16 v4, 0x64

    .line 39
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v2

    sub-long v0, p1, v2

    .line 40
    .local v0, "time":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 42
    add-long v2, v0, v4

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v2

    return-wide v2

    .line 43
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->lastTime:J

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/timer/SystemTimer;->virtualTime:J

    .line 36
    return-void
.end method
