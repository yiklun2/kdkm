.class public Lorg/loon/framework/android/game/action/map/AStarFinder;
.super Ljava/lang/Object;
.source "AStarFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;
    }
.end annotation


# static fields
.field private static astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

.field private static fieldMap:Lorg/loon/framework/android/game/action/map/Field2D;

.field private static over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private static start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;


# instance fields
.field private endX:I

.field private endY:I

.field private field:Lorg/loon/framework/android/game/action/map/Field2D;

.field private flag:Z

.field private flying:Z

.field private goal:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field

.field private pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

.field private pathes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;",
            ">;"
        }
    .end annotation
.end field

.field private spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

.field private startX:I

.field private startY:I

.field private visitedCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZ)V
    .locals 9
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "endX"    # I
    .param p5, "endY"    # I
    .param p6, "flying"    # Z
    .param p7, "flag"    # Z

    .prologue
    .line 78
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZZLorg/loon/framework/android/game/action/map/AStarFinderListener;)V
    .locals 0
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "endX"    # I
    .param p5, "endY"    # I
    .param p6, "flying"    # Z
    .param p7, "flag"    # Z
    .param p8, "callback"    # Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 67
    iput p2, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    .line 68
    iput p3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    .line 69
    iput p4, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    .line 70
    iput p5, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    .line 71
    iput-boolean p6, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    .line 72
    iput-boolean p7, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flag:Z

    .line 73
    iput-object p8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    .line 74
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "flying"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    .line 62
    return-void
.end method

.method private astar(Lorg/loon/framework/android/game/action/map/Field2D;Z)Ljava/util/LinkedList;
    .locals 10
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    :cond_0
    iget-object v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 223
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .line 201
    :cond_1
    iget-object v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    .line 202
    .local v7, "spath":Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;
    invoke-static {v7}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$2(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-static {v7}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$2(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 203
    .local v0, "current":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    iget-object v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->goal:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 204
    invoke-static {v7}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$2(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)Ljava/util/LinkedList;

    move-result-object v8

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p1, v0, p2}, Lorg/loon/framework/android/game/action/map/Field2D;->neighbors(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 208
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 209
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 210
    .local v3, "next":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    iget-object v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 208
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_4
    iget-object v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p1, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->isHit(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    if-eqz v8, :cond_3

    .line 217
    :cond_5
    new-instance v4, Ljava/util/LinkedList;

    invoke-static {v7}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$2(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v4, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {v7}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$3(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)I

    move-result v8

    iget-object v9, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->goal:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1, v9, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->score(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)I

    move-result v9

    add-int v5, v8, v9

    .line 220
    .local v5, "score":I
    invoke-direct {p0, v5, v4}, Lorg/loon/framework/android/game/action/map/AStarFinder;->insert(ILjava/util/LinkedList;)V

    goto :goto_2
.end method

.method private calc(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;
    .locals 3
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "start"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p3, "goal"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p4, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p2, p3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iput-object p3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->goal:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    .line 177
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    .line 182
    :goto_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    if-nez v0, :cond_3

    .line 184
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    .line 188
    :goto_3
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    if-nez v0, :cond_4

    .line 190
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    invoke-direct {v0, p0, v2, v1}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;-><init>(Lorg/loon/framework/android/game/action/map/AStarFinder;ILjava/util/LinkedList;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    .line 195
    :goto_4
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-direct {p0, p1, p4}, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar(Lorg/loon/framework/android/game/action/map/Field2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->visitedCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_2

    .line 186
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_3

    .line 192
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    invoke-static {v0, v2}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$0(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;I)V

    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->spath:Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->path:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$1(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;Ljava/util/LinkedList;)V

    goto :goto_4
.end method

.method public static find(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZ)Ljava/util/LinkedList;
    .locals 5
    .param p0, "maps"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "IIIIZ)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    .line 118
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 123
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p3

    int-to-double v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 128
    :goto_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    sget-object v1, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    sget-object v2, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p0, v1, v2, p5}, Lorg/loon/framework/android/game/action/map/AStarFinder;->calc(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_1
.end method

.method public static find(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;
    .locals 1
    .param p0, "maps"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p1, "start"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "goal"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p3, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    .line 136
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/action/map/AStarFinder;->calc(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static find([[IIIIIZ)Ljava/util/LinkedList;
    .locals 5
    .param p0, "maps"    # [[I
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[IIIIIZ)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 105
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p3

    int-to-double v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 110
    :goto_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    sget-object v1, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-static {p0, v0, v1, p5}, Lorg/loon/framework/android/game/action/map/AStarFinder;->find([[ILorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_1
.end method

.method public static find([[ILorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;
    .locals 2
    .param p0, "maps"    # [[I
    .param p1, "start"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "goal"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p3, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lorg/loon/framework/android/game/action/map/AStarFinder;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/AStarFinder;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    .line 144
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->fieldMap:Lorg/loon/framework/android/game/action/map/Field2D;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/map/Field2D;-><init>([[I)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->fieldMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 149
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->astar:Lorg/loon/framework/android/game/action/map/AStarFinder;

    sget-object v1, Lorg/loon/framework/android/game/action/map/AStarFinder;->fieldMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/loon/framework/android/game/action/map/AStarFinder;->calc(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->fieldMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/action/map/Field2D;->setMap([[I)V

    goto :goto_0
.end method

.method private insert(ILjava/util/LinkedList;)V
    .locals 5
    .param p1, "score"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 228
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 235
    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    new-instance v4, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    invoke-direct {v4, p0, p1, p2}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;-><init>(Lorg/loon/framework/android/game/action/map/AStarFinder;ILjava/util/LinkedList;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_1
    return-void

    .line 229
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    .line 230
    .local v2, "spath":Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;
    invoke-static {v2}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->access$3(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)I

    move-result v3

    if-lt v3, p1, :cond_1

    .line 231
    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathes:Ljava/util/LinkedList;

    new-instance v4, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;

    invoke-direct {v4, p0, p1, p2}, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;-><init>(Lorg/loon/framework/android/game/action/map/AStarFinder;ILjava/util/LinkedList;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    check-cast p1, Lorg/loon/framework/android/game/action/map/AStarFinder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 95
    :cond_0
    return v0
.end method

.method public findPath()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    int-to-double v1, v1

    iget v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 158
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    int-to-double v1, v1

    iget v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 163
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    sget-object v1, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    sget-object v2, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-boolean v3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flag:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/AStarFinder;->calc(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->start:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_0

    .line 161
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/action/map/AStarFinder;->over:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget v1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_1
.end method

.method public getEndX()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    return v0
.end method

.method public getEndY()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    return v0
.end method

.method public isFlying()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->pathFoundListener:Lorg/loon/framework/android/game/action/map/AStarFinderListener;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/AStarFinder;->findPath()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/action/map/AStarFinderListener;->pathFound(Ljava/util/LinkedList;)V

    .line 262
    :cond_0
    return-void
.end method

.method public update(Lorg/loon/framework/android/game/action/map/AStarFinder;)V
    .locals 1
    .param p1, "find"    # Lorg/loon/framework/android/game/action/map/AStarFinder;

    .prologue
    .line 82
    iget-object v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->field:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 83
    iget v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startX:I

    .line 84
    iget v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->startY:I

    .line 85
    iget v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endX:I

    .line 86
    iget v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    iput v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->endY:I

    .line 87
    iget-boolean v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flying:Z

    .line 88
    iget-boolean v0, p1, Lorg/loon/framework/android/game/action/map/AStarFinder;->flag:Z

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder;->flag:Z

    .line 89
    return-void
.end method
