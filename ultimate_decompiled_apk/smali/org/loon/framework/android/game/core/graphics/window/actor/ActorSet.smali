.class public Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;
.super Ljava/util/AbstractSet;
.source "ActorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;,
        Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    }
.end annotation


# instance fields
.field private code:I

.field private hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field private listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field private numActors:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 31
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 33
    new-array v0, v1, [Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 35
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    .line 37
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    .line 29
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    return-object v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->remove(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    return-void
.end method

.method private getActorNode(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    .locals 6
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v5, v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 118
    :cond_0
    :goto_0
    return-object v2

    .line 104
    :cond_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v3

    .line 105
    .local v3, "seq":I
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v5, v5

    rem-int v1, v3, v5

    .line 106
    .local v1, "hash":I
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v2, v5, v1

    .line 107
    .local v2, "hashHead":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    if-nez v2, :cond_2

    move-object v2, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object v5, v2, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eq v5, p1, :cond_0

    .line 112
    iget-object v0, v2, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .local v0, "curNode":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    :goto_1
    if-ne v0, v2, :cond_3

    move-object v2, v4

    .line 118
    goto :goto_0

    .line 113
    :cond_3
    iget-object v5, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-ne v5, p1, :cond_4

    move-object v2, v0

    .line 114
    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    goto :goto_1
.end method

.method private remove(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V
    .locals 4
    .param p1, "actorNode"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .prologue
    .line 135
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v1

    .line 136
    .local v1, "seq":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 137
    .local v0, "hash":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 138
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aput-object v3, v2, v0

    .line 139
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 140
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->remove()V

    .line 145
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    .line 146
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_1

    .line 147
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->resize()V

    .line 150
    :cond_1
    return-void
.end method

.method private resize()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->resize(I)V

    .line 94
    return-void
.end method

.method private resize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 82
    new-array v4, p1, [Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 83
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v0, v4, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .local v0, "currentActor":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    :goto_0
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    if-ne v0, v4, :cond_0

    .line 90
    return-void

    .line 84
    :cond_0
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v3

    .line 85
    .local v3, "seq":I
    rem-int v1, v3, p1

    .line 86
    .local v1, "hash":I
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v2, v4, v1

    .line 87
    .local v2, "hashHead":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aput-object v0, v4, v1

    .line 88
    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->setHashListHead(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 83
    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 6
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->contains(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const/4 v4, 0x0

    .line 60
    :goto_0
    return v4

    .line 47
    :cond_0
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    .line 48
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 49
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v4, v4, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 48
    invoke-direct {v2, p0, p1, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 50
    .local v2, "newNode":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v3

    .line 51
    .local v3, "seq":I
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_1

    .line 52
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->resize()V

    .line 59
    :goto_1
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    .line 60
    const/4 v4, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v4, v4

    rem-int v0, v3, v4

    .line 55
    .local v0, "hash":I
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v1, v4, v0

    .line 56
    .local v1, "hashHead":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aput-object v2, v4, v0

    .line 57
    invoke-virtual {v2, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->setHashListHead(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    goto :goto_1
.end method

.method public addAll([Ljava/lang/Object;)V
    .locals 8
    .param p1, "o"    # [Ljava/lang/Object;

    .prologue
    .line 65
    array-length v6, p1

    .line 66
    .local v6, "size":I
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    .line 67
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->resize()V

    .line 68
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 79
    return-void

    .line 69
    :cond_0
    aget-object v0, p1, v3

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 70
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    new-instance v4, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 71
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->listHeadTail:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v7, v7, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 70
    invoke-direct {v4, p0, v0, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 72
    .local v4, "newNode":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v5

    .line 73
    .local v5, "seq":I
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    array-length v7, v7

    rem-int v1, v5, v7

    .line 74
    .local v1, "hash":I
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aget-object v2, v7, v1

    .line 75
    .local v2, "hashHead":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->hashMap:[Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    aput-object v4, v7, v1

    .line 76
    invoke-virtual {v4, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->setHashListHead(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 77
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    add-int/2addr v7, v5

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->getActorNode(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)V

    return-object v0
.end method

.method public remove(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 3
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->getActorNode(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    move-result-object v0

    .line 125
    .local v0, "actorNode":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->remove(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 127
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getSequenceNumber()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->code:I

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->numActors:I

    return v0
.end method
