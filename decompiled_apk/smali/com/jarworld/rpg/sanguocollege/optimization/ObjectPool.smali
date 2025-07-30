.class public Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

.field private static final pools:Ljava/util/Map;
.field private static final maxPoolSizes:Ljava/util/Map;
.field private static final currentPoolSizes:Ljava/util/Map;
.field private static final DEFAULT_POOL_SIZE:I = 0x64

.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->maxPoolSizes:Ljava/util/Map;
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->currentPoolSizes:Ljava/util/Map;
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Queue;
    if-nez v0, :cond_0
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->maxPoolSizes:Ljava/util/Map;
    const/16 v2, 0x64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->currentPoolSizes:Ljava/util/Map;
    const/4 v2, 0x0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    move-result-object v1
    if-nez v1, :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->currentPoolSizes:Ljava/util/Map;
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v2
    add-int/lit8 v2, v2, 0x1
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->currentPoolSizes:Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_1
    return-object v1
    :catch_0
    move-exception v2
    new-instance v3, Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Failed to create object of type: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v3
.end method

.method public static returnObject(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation
    if-nez p0, :cond_0
    return-void
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Queue;
    if-nez v1, :cond_1
    new-instance v1, Ljava/util/LinkedList;
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->maxPoolSizes:Ljava/util/Map;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    if-nez v2, :cond_2
    const/16 v2, 0x64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->maxPoolSizes:Ljava/util/Map;
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Ljava/util/Queue;->size()I
    move-result v3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v4
    if-ge v3, v4, :cond_3
    invoke-static {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->resetObject(Ljava/lang/Object;)V
    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :cond_3
    return-void
.end method

.method private static resetObject(Ljava/lang/Object;)V
    .locals 2
    instance-of v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool$Poolable;
    if-eqz v0, :cond_0
    check-cast p0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool$Poolable;
    invoke-interface {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool$Poolable;->reset()V
    :cond_0
    return-void
.end method

.method public static clearAllPools()V
    .locals 1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->pools:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/optimization/ObjectPool;->currentPoolSizes:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    return-void
.end method

.method public interface Poolable
    .method public abstract reset()V
    .end method
.end method