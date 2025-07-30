.class public Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;
.super Ljava/lang/Object;
.source "CollisionManager.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;


# instance fields
.field private collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

.field private collisionClasses:Ljava/util/HashSet;

.field private freeObjects:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    .line 41
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    .line 35
    return-void
.end method

.method private makeCollisionObjects(Ljava/lang/Class;Z)V
    .locals 10
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "includeSubclasses"    # Z

    .prologue
    .line 65
    if-nez p1, :cond_5

    .line 66
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 67
    .local v1, "entries":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 68
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 79
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 92
    .end local v1    # "entries":Ljava/util/Set;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_0
    if-eqz p2, :cond_2

    .line 93
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 94
    .restart local v1    # "entries":Ljava/util/Set;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v2, "entries1":Ljava/util/HashSet;
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 96
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 103
    .end local v1    # "entries":Ljava/util/Set;
    .end local v2    # "entries1":Ljava/util/HashSet;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 69
    .restart local v1    # "entries":Ljava/util/Set;
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 70
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 72
    .local v7, "itr":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 77
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 74
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v8, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_2

    .line 80
    .end local v0    # "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .end local v1    # "entries":Ljava/util/Set;
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "itr":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 81
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    .local v3, "entries2":Ljava/util/List;
    if-eqz v3, :cond_0

    .line 83
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 86
    .restart local v6    # "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 88
    .local v5, "entry1":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v8, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_3

    .line 97
    .end local v3    # "entries2":Ljava/util/List;
    .end local v5    # "entry1":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .restart local v1    # "entries":Ljava/util/Set;
    .restart local v2    # "entries1":Ljava/util/HashSet;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    .restart local v4    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->makeCollisionObjects(Ljava/lang/Class;Z)V

    goto :goto_1
.end method

.method private prepareForCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)V
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->makeCollisionObjects(Ljava/lang/Class;Z)V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->makeCollisionObjects(Ljava/lang/Class;Z)V

    .line 108
    return-void
.end method


# virtual methods
.method public addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 112
    .local v1, "cls":Ljava/lang/Class;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v2, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 116
    .local v0, "classSet":Ljava/util/LinkedList;
    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "classSet":Ljava/util/LinkedList;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .restart local v0    # "classSet":Ljava/util/LinkedList;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->clear()V

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 48
    :cond_2
    monitor-exit v1

    .line 59
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->prepareForCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)V

    .line 126
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "distance"    # I
    .param p3, "diag"    # Z
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 130
    invoke-direct {p0, p1, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->prepareForCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)V

    .line 131
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 135
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v4, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 136
    .local v3, "result":Ljava/util/List;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 137
    .local v0, "entries":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    return-object v3

    .line 139
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .local v1, "entry":Ljava/util/Map$Entry;
    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getObjectsAt(IILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->makeCollisionObjects(Ljava/lang/Class;Z)V

    .line 149
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getObjectsAt(IILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->makeCollisionObjects(Ljava/lang/Class;Z)V

    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjectsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->getObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->prepareForCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)V

    .line 163
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 167
    invoke-direct {p0, p1, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->prepareForCollision(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)V

    .line 168
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public initialize(I)V
    .locals 1
    .param p1, "cellSize"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->initialize(I)V

    .line 45
    return-void
.end method

.method public removeObject(Ljava/lang/Class;)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 182
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 183
    .local v0, "classSet":Ljava/util/LinkedList;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    return-void
.end method

.method public removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 172
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 174
    .local v0, "classSet":Ljava/util/LinkedList;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v1, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_0
.end method

.method public updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "oldX"    # I
    .param p3, "oldY"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V

    .line 195
    :cond_0
    return-void
.end method

.method public updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->freeObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 202
    :cond_0
    return-void
.end method
