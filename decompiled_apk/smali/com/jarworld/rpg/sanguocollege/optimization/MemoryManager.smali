.class public Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"

.field private static instance:Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
.field private memoryPool:Ljava/util/Map;
.field private cacheSize:I
.field private maxCacheSize:I
.field private gcThreshold:I
.field private lastGCTime:J

.method static constructor <clinit>()V
    .locals 1
    const/4 v0, 0x0
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->instance:Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    return-void
.end method

.method private constructor <init>()V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    const/16 v0, 0x64
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->cacheSize:I
    const/16 v0, 0xc8
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->maxCacheSize:I
    const/16 v0, 0x32
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->gcThreshold:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->lastGCTime:J
    return-void
.end method

.method public static getInstance()Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    .locals 1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->instance:Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    if-nez v0, :cond_0
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;-><init>()V
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->instance:Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->instance:Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;
    return-object v0
.end method

.method public allocateMemory(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :cond_0
    new-array v0, p2, [B
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public freeMemory(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public optimizeMemory()V
    .locals 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->lastGCTime:J
    sub-long/2addr v0, v2
    const-wide/16 v2, 0x7530
    cmp-long v0, v0, v2
    if-ltz v0, :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->lastGCTime:J
    :cond_0
    return-void
.end method

.method public getMemoryUsage()I
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I
    move-result v0
    return v0
.end method

.method public clearCache()V
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/MemoryManager;->memoryPool:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    return-void
.end method