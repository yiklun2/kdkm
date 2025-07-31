.class Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;
.super Ljava/lang/Object;
.source "AStarFinderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/map/AStarFinderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskQueue"
.end annotation


# instance fields
.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/AStarFinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/loon/framework/android/game/action/map/AStarFinderPool;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/action/map/AStarFinderPool;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->this$0:Lorg/loon/framework/android/game/action/map/AStarFinderPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->queue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/loon/framework/android/game/action/map/AStarFinder;)V
    .locals 1
    .param p1, "t"    # Lorg/loon/framework/android/game/action/map/AStarFinder;

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lorg/loon/framework/android/game/action/map/AStarFinder;)Lorg/loon/framework/android/game/action/map/AStarFinder;
    .locals 3
    .param p1, "element"    # Lorg/loon/framework/android/game/action/map/AStarFinder;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/action/map/AStarFinder;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    .line 108
    .local v0, "af":Lorg/loon/framework/android/game/action/map/AStarFinder;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/AStarFinder;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 106
    .end local v0    # "af":Lorg/loon/framework/android/game/action/map/AStarFinder;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/action/map/AStarFinder;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized poll()Lorg/loon/framework/android/game/action/map/AStarFinder;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/AStarFinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
