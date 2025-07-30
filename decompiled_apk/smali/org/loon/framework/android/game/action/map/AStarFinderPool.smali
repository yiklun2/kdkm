.class public Lorg/loon/framework/android/game/action/map/AStarFinderPool;
.super Ljava/lang/Object;
.source "AStarFinderPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;
    }
.end annotation


# instance fields
.field private field:Lorg/loon/framework/android/game/action/map/Field2D;

.field private pathQueue:Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

.field private pathfinderThread:Ljava/lang/Thread;

.field private running:Z


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/map/Field2D;)V
    .locals 1
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;-><init>(Lorg/loon/framework/android/game/action/map/AStarFinderPool;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathQueue:Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

    .line 43
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->running:Z

    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathfinderThread:Ljava/lang/Thread;

    .line 46
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathfinderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1
    .param p1, "maps"    # [[I

    .prologue
    .line 39
    new-instance v0, Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/map/Field2D;-><init>([[I)V

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/map/AStarFinderPool;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;)V

    .line 40
    return-void
.end method

.method private emptyPathQueue()V
    .locals 2

    .prologue
    .line 61
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathQueue:Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->poll()Lorg/loon/framework/android/game/action/map/AStarFinder;

    move-result-object v0

    .local v0, "task":Lorg/loon/framework/android/game/action/map/AStarFinder;
    if-nez v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;->run()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    :goto_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->running:Z

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 52
    :cond_0
    const-wide/32 v0, 0xf4240

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->emptyPathQueue()V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public search(IIIIZ)Ljava/util/LinkedList;
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "flying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZ)V

    .line 98
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;->findPath()Ljava/util/LinkedList;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public search(IIIIZZ)Ljava/util/LinkedList;
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "flying"    # Z
    .param p6, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZ)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZ)V

    .line 92
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;->findPath()Ljava/util/LinkedList;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public search(IIIIZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V
    .locals 8
    .param p1, "startx"    # I
    .param p2, "starty"    # I
    .param p3, "endx"    # I
    .param p4, "endy"    # I
    .param p5, "flying"    # Z
    .param p6, "callback"    # Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    .prologue
    .line 86
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->search(IIIIZZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V

    .line 87
    return-void
.end method

.method public search(IIIIZZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V
    .locals 10
    .param p1, "startx"    # I
    .param p2, "starty"    # I
    .param p3, "endx"    # I
    .param p4, "endy"    # I
    .param p5, "flying"    # Z
    .param p6, "flag"    # Z
    .param p7, "callback"    # Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    .prologue
    .line 73
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V

    .line 75
    .local v0, "pathfinderTask":Lorg/loon/framework/android/game/action/map/AStarFinder;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathQueue:Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

    invoke-virtual {v1, v0}, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->contains(Lorg/loon/framework/android/game/action/map/AStarFinder;)Lorg/loon/framework/android/game/action/map/AStarFinder;

    move-result-object v9

    .line 76
    .local v9, "existing":Lorg/loon/framework/android/game/action/map/AStarFinder;
    if-eqz v9, :cond_0

    .line 77
    invoke-virtual {v9, v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;->update(Lorg/loon/framework/android/game/action/map/AStarFinder;)V

    .line 81
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathfinderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 82
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathQueue:Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;

    invoke-virtual {v1, v0}, Lorg/loon/framework/android/game/action/map/AStarFinderPool$TaskQueue;->add(Lorg/loon/framework/android/game/action/map/AStarFinder;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->running:Z

    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinderPool;->pathfinderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    return-void
.end method
