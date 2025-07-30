.class public Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;
.super Ljava/lang/Object;
.source "PerformanceMonitor.java"

.field private frameCount:J
.field private totalFrameTime:J
.field private lastUpdateTime:J
.field private fpsHistory:Ljava/util/List;
.field private maxFPS:I
.field private minFPS:I
.field private avgFPS:I

.method public constructor <init>()V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->frameCount:J
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->totalFrameTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->lastUpdateTime:J
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    const v0, 0x7fffffff
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->avgFPS:I
    return-void
.end method

.method public update(J)V
    .locals 6
    .param p1, "deltaTime"    # J
    iget-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->frameCount:J
    const-wide/16 v2, 0x1
    add-long/2addr v0, v2
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->frameCount:J
    iget-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->totalFrameTime:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->totalFrameTime:J
    const-wide/16 v0, 0x0
    cmp-long v0, p1, v0
    if-lez v0, :cond_0
    const-wide/16 v0, 0x3e8
    div-long/2addr v0, p1
    long-to-int v0, v0
    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->updateFPSStats(I)V
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->lastUpdateTime:J
    sub-long/2addr v0, v2
    const-wide/16 v2, 0x3e8
    cmp-long v0, v0, v2
    if-ltz v0, :cond_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->logPerformanceStats()V
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->lastUpdateTime:J
    :cond_1
    return-void
.end method

.method private updateFPSStats(I)V
    .locals 2
    .param p1, "fps"    # I
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v0
    const/16 v1, 0x3c
    if-le v0, v1, :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    const/4 v1, 0x0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :cond_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    if-le p1, v0, :cond_1
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    if-ge p1, v0, :cond_2
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    :cond_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->calculateAverageFPS()V
    return-void
.end method

.method private calculateAverageFPS()V
    .locals 4
    const/4 v0, 0x0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-nez v3, :cond_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    if-lez v2, :cond_1
    div-int v2, v0, v2
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->avgFPS:I
    :cond_1
    return-void
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    move-result v3
    add-int/2addr v0, v3
    goto :goto_0
.end method

.method private logPerformanceStats()V
    .locals 4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Performance Stats - FPS: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->avgFPS:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " (Min: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", Max: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ")"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    return-void
.end method

.method public getAverageFPS()I
    .locals 1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->avgFPS:I
    return v0
.end method

.method public getMaxFPS()I
    .locals 1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    return v0
.end method

.method public getMinFPS()I
    .locals 1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    return v0
.end method

.method public getFrameCount()J
    .locals 2
    iget-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->frameCount:J
    return-wide v0
.end method

.method public reset()V
    .locals 2
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->frameCount:J
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->totalFrameTime:J
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->fpsHistory:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->clear()V
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->maxFPS:I
    const v0, 0x7fffffff
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->minFPS:I
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/PerformanceMonitor;->avgFPS:I
    return-void
.end method