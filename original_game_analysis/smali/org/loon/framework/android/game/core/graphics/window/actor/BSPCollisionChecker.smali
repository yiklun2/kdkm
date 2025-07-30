.class public Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;
.super Ljava/lang/Object;
.source "BSPCollisionChecker.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;


# static fields
.field public static final PARENT_LEFT:I = 0x0

.field public static final PARENT_NONE:I = 0x3

.field public static final PARENT_RIGHT:I = 0x1

.field public static final REBALANCE_THRESHOLD:I = 0x14

.field public static final X_AXIS:I = 0x0

.field public static final Y_AXIS:I = 0x1

.field private static cache:[Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private static size:I

.field private static tail:I


# instance fields
.field private actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

.field private bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private cellSize:I

.field private inRangeQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

.field private neighbourQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

.field private pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/16 v0, 0x3e8

    new-array v0, v0, [Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cache:[Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 39
    sput v1, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    .line 41
    sput v1, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    .line 83
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->neighbourQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

    .line 85
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    .line 87
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->inRangeQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

    .line 35
    return-void
.end method

.method private checkForOnlyCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 3
    .param p1, "ignore"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .param p3, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;

    .prologue
    .line 448
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getActorsIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    .line 454
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 455
    .local v0, "candidate":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-eq p1, v0, :cond_0

    invoke-interface {p3, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;->checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v2

    .line 450
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 6
    .param p1, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    const/4 v5, 0x0

    .line 261
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 262
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getParent()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v1

    .line 263
    .local v1, "parent":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getChildSide(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)I

    move-result v3

    .line 264
    .local v3, "side":I
    :goto_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 265
    .local v0, "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v2

    .line 266
    .local v2, "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-nez v0, :cond_4

    .line 267
    if-eqz v1, :cond_3

    .line 268
    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 272
    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 279
    :cond_1
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 280
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->returnNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 281
    move-object p1, v1

    .line 282
    goto :goto_0

    .line 263
    .end local v0    # "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v2    # "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v3    # "side":I
    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    .line 274
    .restart local v0    # "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .restart local v2    # "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .restart local v3    # "side":I
    :cond_3
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 275
    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v2, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setParent(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    goto :goto_2

    .line 285
    :cond_4
    if-nez v2, :cond_6

    .line 286
    if-eqz v1, :cond_5

    .line 288
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 291
    invoke-virtual {v1, v3, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 299
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 300
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->returnNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 301
    move-object p1, v1

    .line 302
    goto :goto_0

    .line 293
    :cond_5
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 295
    invoke-virtual {v0, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setParent(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    goto :goto_3

    .line 306
    .end local v0    # "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v1    # "parent":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v2    # "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v3    # "side":I
    :cond_6
    return-object p1
.end method

.method private createNewNode(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 5
    .param p1, "area"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 232
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "splitAxis":B
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMiddleX()I

    move-result v2

    .line 240
    .local v2, "splitPos":I
    :goto_0
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 241
    .local v0, "newNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 242
    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 243
    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 244
    return-object v0

    .line 236
    .end local v0    # "newNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v1    # "splitAxis":B
    .end local v2    # "splitPos":I
    :cond_0
    const/4 v1, 0x1

    .line 237
    .restart local v1    # "splitAxis":B
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMiddleY()I

    move-result v2

    .restart local v2    # "splitPos":I
    goto :goto_0
.end method

.method public static getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    sget v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>()V

    invoke-direct {v0, v2, v3, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;-><init>(Lorg/loon/framework/android/game/action/map/shapes/RectBox;II)V

    .line 54
    .local v0, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .local v1, "ppos":I
    :goto_0
    return-object v0

    .line 47
    .end local v0    # "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v1    # "ppos":I
    :cond_0
    sget v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    sget v3, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    sub-int v1, v2, v3

    .line 48
    .restart local v1    # "ppos":I
    if-gez v1, :cond_1

    .line 49
    add-int/lit16 v1, v1, 0x3e8

    .line 51
    :cond_1
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cache:[Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    aget-object v0, v2, v1

    .line 52
    .restart local v0    # "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setParent(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 53
    sget v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    goto :goto_0
.end method

.method private getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Ljava/util/List;
    .locals 3
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;

    .prologue
    .line 409
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 410
    .local v1, "set":Ljava/util/HashSet;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Ljava/util/Set;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    .local v0, "l":Ljava/util/ArrayList;
    return-object v0
.end method

.method private getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Ljava/util/Set;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 7
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;
    .param p3, "resultSet"    # Ljava/util/Set;
    .param p4, "startNode"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 417
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 418
    .local v4, "nodeStack":Ljava/util/LinkedList;
    if-eqz p4, :cond_0

    .line 419
    invoke-virtual {v4, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 444
    return-void

    .line 422
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 423
    .local v3, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 424
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getActorsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 425
    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 432
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v2

    .line 433
    .local v2, "left1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 434
    .local v5, "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-eqz v2, :cond_3

    .line 435
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_3
    if-eqz v5, :cond_0

    .line 439
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    .end local v2    # "left1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v5    # "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 427
    .local v1, "left":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-interface {p2, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;->checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 428
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    .locals 1
    .param p0, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    return-object v0
.end method

.method private getOnlyIntersectingDown(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 7
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;
    .param p3, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v5, 0x0

    .line 493
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-nez v6, :cond_1

    move-object v3, v5

    .line 518
    :cond_0
    :goto_0
    return-object v3

    .line 496
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 497
    .local v2, "nodeStack":Ljava/util/LinkedList;
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 518
    goto :goto_0

    .line 501
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 502
    .local v1, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 503
    invoke-direct {p0, p3, v1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkForOnlyCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    .line 504
    .local v3, "res":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-nez v3, :cond_0

    .line 508
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 509
    .local v0, "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v4

    .line 510
    .local v4, "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_4
    if-eqz v4, :cond_2

    .line 514
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getOnlyObjectDownTree(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 7
    .param p1, "ignore"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p3, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;
    .param p4, "startNode"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    const/4 v5, 0x0

    .line 462
    if-nez p4, :cond_1

    move-object v3, v5

    .line 487
    :cond_0
    :goto_0
    return-object v3

    .line 465
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 466
    .local v2, "nodeStack":Ljava/util/LinkedList;
    invoke-virtual {v2, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 487
    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 470
    .local v1, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    invoke-direct {p0, p1, v1, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkForOnlyCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    .line 472
    .local v3, "res":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-nez v3, :cond_0

    .line 475
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 476
    .local v0, "left":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v4

    .line 477
    .local v4, "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-eqz v0, :cond_4

    .line 478
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_4
    if-eqz v4, :cond_2

    .line 482
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private insertObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 13
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "actorBounds"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p3, "bounds"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p4, "area"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p5, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 182
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->containsActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 184
    invoke-virtual/range {p4 .. p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 185
    invoke-virtual/range {p4 .. p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 186
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeftArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v5

    .line 187
    .local v5, "leftArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRightArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v10

    .line 188
    .local v10, "rightArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getIntersection(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    .line 190
    .local v4, "leftIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getIntersection(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v9

    .line 193
    .local v9, "rightIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    if-eqz v4, :cond_1

    .line 194
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v1

    if-nez v1, :cond_3

    .line 195
    invoke-direct {p0, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->createNewNode(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v12

    .line 196
    .local v12, "newRight":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v12, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->addActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 197
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v12}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 204
    .end local v12    # "newRight":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 205
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v1

    if-nez v1, :cond_4

    .line 206
    invoke-direct {p0, v10}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->createNewNode(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v12

    .line 207
    .restart local v12    # "newRight":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v12, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->addActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 208
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v12}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 219
    .end local v4    # "leftIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v5    # "leftArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v9    # "rightIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v10    # "rightArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v12    # "newRight":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_2
    :goto_1
    return-void

    .line 200
    .restart local v4    # "leftIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v5    # "leftArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v9    # "rightIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v10    # "rightArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 199
    invoke-direct/range {v1 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->insertObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 210
    invoke-direct/range {v6 .. v11}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->insertObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    goto :goto_1

    .line 216
    .end local v4    # "leftIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v5    # "leftArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v9    # "rightIntersects":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v10    # "rightArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->addActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_1
.end method

.method public static returnNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 4
    .param p0, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    const/16 v3, 0x3e8

    .line 59
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cache:[Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    sget v1, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    aput-object p0, v0, v1

    .line 60
    sget v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    if-ne v0, v3, :cond_0

    .line 61
    const/4 v0, 0x0

    sput v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->tail:I

    .line 63
    :cond_0
    sget v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->size:I

    .line 64
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size Error !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    return-void
.end method

.method public static setNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;)V
    .locals 0
    .param p0, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p1, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setData(Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method private updateObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 10
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 319
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    .line 320
    .local v6, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    if-eqz v6, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getActorBounds(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 323
    .local v2, "newBounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 324
    :goto_0
    if-nez v6, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 398
    .end local v2    # "newBounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_0
    :goto_1
    return-void

    .line 325
    .restart local v2    # "newBounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_1
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 326
    .local v5, "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 327
    invoke-direct {p0, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 328
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    goto :goto_0

    .line 335
    .end local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_2
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 336
    .restart local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    .line 337
    .local v4, "bspArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-virtual {v4, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v9

    .local v9, "rNode2":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    :goto_2
    if-eqz v9, :cond_0

    .line 340
    if-eq v9, v6, :cond_3

    .line 341
    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v8

    .line 342
    .local v8, "rNode1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 343
    invoke-direct {p0, v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 339
    .end local v8    # "rNode1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_3
    invoke-virtual {v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v9

    .line 338
    goto :goto_2

    .line 350
    .end local v9    # "rNode2":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    :cond_4
    invoke-virtual {v4, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 351
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v7

    .line 352
    .local v7, "rNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 353
    invoke-direct {p0, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 356
    .end local v7    # "rNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_5
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->clearMark()V

    .line 357
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    .line 334
    .end local v4    # "bspArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_6
    if-nez v6, :cond_2

    .line 360
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    .line 361
    if-eqz v6, :cond_a

    .line 362
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .restart local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :goto_3
    if-eqz v5, :cond_7

    .line 363
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    .line 362
    if-eqz v0, :cond_8

    .line 368
    :cond_7
    if-nez v5, :cond_b

    .line 369
    :goto_4
    if-nez v6, :cond_9

    .line 376
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_1

    .line 364
    :cond_8
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getParent()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 363
    goto :goto_3

    .line 370
    :cond_9
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 371
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 372
    invoke-direct {p0, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 373
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    goto :goto_4

    .line 380
    .end local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_a
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 383
    .restart local v5    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_b
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    .restart local v4    # "bspArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    .line 384
    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->insertObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 387
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_0

    .line 389
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->checkMark()Z

    move-result v0

    if-nez v0, :cond_c

    .line 390
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v5

    .line 391
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 392
    invoke-direct {p0, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 388
    :cond_c
    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v6

    .line 387
    goto :goto_5
.end method


# virtual methods
.method public addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 12
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getActorBounds(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 100
    .local v2, "bounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 103
    const/4 v9, 0x0

    .line 104
    .local v9, "treeArea":B
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMiddleX()I

    move-result v6

    .line 110
    .local v6, "by":I
    :goto_0
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 111
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 112
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0, v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0, v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 114
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->addActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 178
    .end local v6    # "by":I
    .end local v9    # "treeArea":B
    :goto_1
    return-void

    .line 106
    :cond_0
    const/4 v9, 0x1

    .line 107
    .restart local v9    # "treeArea":B
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMiddleY()I

    move-result v6

    .restart local v6    # "by":I
    goto :goto_0

    .line 116
    .end local v6    # "by":I
    .end local v9    # "treeArea":B
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v4

    .line 118
    .local v4, "treeArea1":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_2
    :goto_2
    invoke-virtual {v4, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->insertObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 122
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v1

    sub-int v6, v0, v1

    .line 123
    .restart local v6    # "by":I
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    .line 124
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v1

    .line 125
    sub-int/2addr v1, v6

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v3

    .line 123
    invoke-direct {v7, v6, v0, v1, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 126
    .local v7, "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v8

    .line 127
    .local v8, "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 128
    invoke-virtual {v8, v10}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 129
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 130
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v8, v11, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 131
    iput-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 132
    move-object v4, v7

    .line 135
    .end local v6    # "by":I
    .end local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_4
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 136
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v1

    add-int v6, v0, v1

    .line 137
    .restart local v6    # "by":I
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v1

    .line 138
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v3

    sub-int v3, v6, v3

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v5

    .line 137
    invoke-direct {v7, v0, v1, v3, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 139
    .restart local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v8

    .line 140
    .restart local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 141
    invoke-virtual {v8, v10}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 142
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 143
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v8, v10, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 144
    iput-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 145
    move-object v4, v7

    .line 148
    .end local v6    # "by":I
    .end local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_5
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 149
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    .line 150
    .restart local v6    # "by":I
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    .line 151
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v3

    sub-int/2addr v3, v6

    .line 150
    invoke-direct {v7, v0, v6, v1, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 152
    .restart local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v8

    .line 153
    .restart local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 154
    invoke-virtual {v8, v11}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 155
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 156
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v8, v11, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 157
    iput-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 158
    move-object v4, v7

    .line 161
    .end local v6    # "by":I
    .end local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_6
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 162
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v1

    add-int v6, v0, v1

    .line 163
    .restart local v6    # "by":I
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v0

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v1

    .line 164
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v5

    sub-int v5, v6, v5

    .line 163
    invoke-direct {v7, v0, v1, v3, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 165
    .restart local v7    # "newArea":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v8

    .line 166
    .restart local v8    # "newTop":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->copy(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 167
    invoke-virtual {v8, v11}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitAxis(I)V

    .line 168
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setSplitPos(I)V

    .line 169
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v8, v10, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    .line 170
    iput-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 171
    move-object v4, v7

    goto/16 :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->clear()V

    .line 223
    monitor-exit v1

    .line 227
    :cond_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getActorBounds(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 248
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method public getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getActorBounds(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 546
    .local v0, "r":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-virtual {v1, p2, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->init(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 548
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "distance"    # I
    .param p3, "diag"    # Z
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 576
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v1

    .line 577
    .local v1, "x":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v2

    .line 578
    .local v2, "y":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int v9, v1, v0

    .line 579
    .local v9, "xPixel":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int v10, v2, v0

    .line 580
    .local v10, "yPixel":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int v6, p2, v0

    .line 581
    .local v6, "dPixel":I
    new-instance v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    sub-int v0, v9, v6

    sub-int v3, v10, v6

    .line 582
    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v6, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 581
    invoke-direct {v7, v0, v3, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 584
    .local v7, "r":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->neighbourQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

    monitor-enter v11

    .line 585
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->neighbourQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;->init(IIIZLjava/lang/Class;)V

    .line 586
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->neighbourQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionNeighbourQuery;

    invoke-direct {p0, v7, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Ljava/util/List;

    move-result-object v8

    .line 587
    .local v8, "res":Ljava/util/List;
    monitor-exit v11

    return-object v8

    .line 584
    .end local v8    # "res":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 592
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 593
    .local v7, "set":Ljava/util/HashSet;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 594
    .local v5, "nodeStack":Ljava/util/LinkedList;
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-eqz v8, :cond_0

    .line 595
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->bspTree:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 617
    .local v4, "list1":Ljava/util/ArrayList;
    return-object v4

    .line 598
    .end local v4    # "list1":Ljava/util/ArrayList;
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 599
    .local v3, "list":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getActorsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 600
    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 606
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v2

    .line 607
    .local v2, "left1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v6

    .line 608
    .local v6, "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    if-eqz v2, :cond_3

    .line 609
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_3
    if-eqz v6, :cond_0

    .line 612
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    .end local v2    # "left1":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v6    # "right":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 602
    .local v1, "left":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 603
    :cond_5
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getObjectsAt(IILjava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 535
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    monitor-enter v3

    .line 536
    :try_start_0
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v2, p1

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, v2, v4

    .line 537
    .local v0, "px":I
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v2, p2

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v1, v2, v4

    .line 538
    .local v1, "py":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    invoke-virtual {v2, v0, v1, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->init(IILjava/lang/Class;)V

    .line 539
    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v0, v1, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 540
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    .line 539
    invoke-direct {p0, v2, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 535
    .end local v0    # "px":I
    .end local v1    # "py":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 553
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    div-int/lit8 v0, v5, 0x2

    .line 554
    .local v0, "halfCell":I
    mul-int/lit8 v5, p3, 0x2

    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int v4, v5, v6

    .line 555
    .local v4, "size":I
    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    sub-int v5, p1, p3

    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v0

    sub-int v6, p2, p3

    .line 556
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    .line 555
    invoke-direct {v2, v5, v6, v4, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 558
    .local v2, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    monitor-enter v6

    .line 559
    :try_start_0
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    const/4 v7, 0x0

    invoke-virtual {v5, p4, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->init(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 560
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-direct {p0, v2, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Ljava/util/List;

    move-result-object v3

    .line 558
    .local v3, "result":Ljava/util/List;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 563
    .local v1, "it":Ljava/util/Iterator;
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->inRangeQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

    monitor-enter v6

    .line 564
    :try_start_1
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->inRangeQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v7, p1

    add-int/2addr v7, v0

    .line 565
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v8, p2

    add-int/2addr v8, v0

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v9, p3

    .line 564
    invoke-virtual {v5, v7, v8, v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->init(III)V

    .line 566
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 571
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    .line 558
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/List;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 567
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/List;
    :cond_1
    :try_start_3
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->inRangeQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v7, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionInRangeQuery;->checkCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 568
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 563
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public getObjectsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 7
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getActorBounds(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 641
    .local v2, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    monitor-enter v5

    .line 642
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-virtual {v4, p2, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;->init(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 643
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v1

    .line 644
    .local v1, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    if-nez v1, :cond_0

    .line 645
    monitor-exit v5

    const/4 v3, 0x0

    .line 662
    :goto_0
    return-object v3

    .line 648
    :cond_0
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 650
    .local v0, "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    .line 649
    invoke-direct {p0, p1, v2, v4, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getOnlyObjectDownTree(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    .line 651
    .local v3, "result":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-eqz v3, :cond_1

    .line 652
    monitor-exit v5

    goto :goto_0

    .line 641
    .end local v0    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .end local v1    # "node":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    .end local v3    # "result":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 654
    .restart local v0    # "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .restart local v1    # "node":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    .restart local v3    # "result":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    .line 655
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getParent()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v6

    .line 654
    invoke-virtual {p0, v2, v4, p1, v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getOnlyIntersectingUp(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    .line 656
    if-eqz v3, :cond_2

    .line 657
    monitor-exit v5

    goto :goto_0

    .line 659
    :cond_2
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v1

    .line 660
    if-nez v1, :cond_0

    .line 662
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->actorQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionBaseQuery;

    invoke-direct {p0, v2, v4, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getOnlyIntersectingDown(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    .end local v3    # "result":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getOnlyIntersectingUp(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 2
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "query"    # Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;
    .param p3, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p4, "start"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 524
    :goto_0
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 525
    :cond_2
    invoke-direct {p0, p3, p4, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkForOnlyCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    .line 526
    .local v0, "res":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-nez v0, :cond_1

    .line 529
    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getParent()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object p4

    goto :goto_0
.end method

.method public getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 7
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 625
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    monitor-enter v4

    .line 626
    :try_start_0
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v3, p2

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v0, v3, v5

    .line 627
    .local v0, "px":I
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    mul-int/2addr v3, p3

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v1, v3, v5

    .line 628
    .local v1, "py":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    invoke-virtual {v3, v0, v1, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;->init(IILjava/lang/Class;)V

    .line 629
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    .line 630
    .local v2, "query":Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;
    if-eqz p4, :cond_0

    .line 631
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;

    .end local v2    # "query":Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->pointQuery:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionPointQuery;

    invoke-direct {v2, p4, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionClassQuery;-><init>(Ljava/lang/Class;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;)V

    .line 634
    :cond_0
    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v3, v0, v1, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 635
    check-cast v2, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;

    .line 634
    invoke-direct {p0, v3, v2, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getOnlyIntersectingDown(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionQuery;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 625
    .end local v0    # "px":I
    .end local v1    # "py":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initialize(I)V
    .locals 0
    .param p1, "cellSize"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->cellSize:I

    .line 95
    return-void
.end method

.method public removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 252
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v1

    .local v1, "node":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    :goto_0
    if-nez v1, :cond_0

    .line 257
    return-void

    .line 253
    :cond_0
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    move-result-object v0

    .line 254
    .local v0, "bspNode":Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->remove()V

    .line 255
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->checkRemoveNode(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 252
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v1

    goto :goto_0
.end method

.method public updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V
    .locals 0
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "oldX"    # I
    .param p3, "oldY"    # I

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->updateObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 402
    return-void
.end method

.method public updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 0
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->updateObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 406
    return-void
.end method
