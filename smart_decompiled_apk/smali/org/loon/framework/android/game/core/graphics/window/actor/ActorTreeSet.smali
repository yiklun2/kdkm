.class public Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;
.super Ljava/util/AbstractSet;
.source "ActorTreeSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

.field private subSets:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$1;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$1;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->subSets:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 47
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->subSets:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->subSets:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 2
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null actor !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->add(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->contains(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;)V

    return-object v0
.end method

.method public remove(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->remove(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    return v0
.end method

.method public sendToBack(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 6
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 105
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    if-eqz v3, :cond_1

    .line 106
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    monitor-enter v4

    .line 107
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "o":[Ljava/lang/Object;
    array-length v2, v1

    .line 109
    .local v2, "size":I
    if-eqz v1, :cond_0

    if-gtz v2, :cond_2

    .line 110
    :cond_0
    monitor-exit v4

    .line 128
    .end local v1    # "o":[Ljava/lang/Object;
    .end local v2    # "size":I
    :cond_1
    :goto_0
    return-void

    .line 112
    .restart local v1    # "o":[Ljava/lang/Object;
    .restart local v2    # "size":I
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-ne v3, p1, :cond_3

    .line 113
    monitor-exit v4

    goto :goto_0

    .line 106
    .end local v1    # "o":[Ljava/lang/Object;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 115
    .restart local v1    # "o":[Ljava/lang/Object;
    .restart local v2    # "size":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 124
    :goto_2
    :try_start_1
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->clear()V

    .line 125
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->addAll([Ljava/lang/Object;)V

    .line 106
    monitor-exit v4

    goto :goto_0

    .line 116
    :cond_4
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_5

    .line 117
    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 118
    .restart local v1    # "o":[Ljava/lang/Object;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 119
    .restart local v1    # "o":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 120
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 115
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 6
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 79
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    if-eqz v3, :cond_1

    .line 80
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    monitor-enter v4

    .line 81
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "o":[Ljava/lang/Object;
    array-length v2, v1

    .line 83
    .local v2, "size":I
    if-eqz v1, :cond_0

    if-gtz v2, :cond_2

    .line 84
    :cond_0
    monitor-exit v4

    .line 102
    .end local v1    # "o":[Ljava/lang/Object;
    .end local v2    # "size":I
    :cond_1
    :goto_0
    return-void

    .line 86
    .restart local v1    # "o":[Ljava/lang/Object;
    .restart local v2    # "size":I
    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    if-ne v3, p1, :cond_3

    .line 87
    monitor-exit v4

    goto :goto_0

    .line 80
    .end local v1    # "o":[Ljava/lang/Object;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 89
    .restart local v1    # "o":[Ljava/lang/Object;
    .restart local v2    # "size":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 98
    :goto_2
    :try_start_1
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->clear()V

    .line 99
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->generalSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v3, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->addAll([Ljava/lang/Object;)V

    .line 80
    monitor-exit v4

    goto :goto_0

    .line 90
    :cond_4
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_5

    .line 91
    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 92
    .restart local v1    # "o":[Ljava/lang/Object;
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 93
    .restart local v1    # "o":[Ljava/lang/Object;
    add-int/lit8 v3, v2, -0x1

    aput-object p1, v1, v3

    .line 94
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 89
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "size":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->subSets:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    return v1

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method
