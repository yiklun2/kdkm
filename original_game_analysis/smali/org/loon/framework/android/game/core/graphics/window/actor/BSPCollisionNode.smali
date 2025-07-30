.class public final Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
.super Ljava/lang/Object;
.source "BSPCollisionNode.java"


# instance fields
.field private actors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;",
            ">;"
        }
    .end annotation
.end field

.field private area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private areaRipple:Z

.field private left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private parent:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private right:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private splitAxis:I

.field private splitPos:I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/map/shapes/RectBox;II)V
    .locals 1
    .param p1, "area"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "splitAxis"    # I
    .param p3, "splitPos"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 54
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    .line 55
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method private resizeChildren()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getLeftArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->right:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->right:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->getRightArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public actorRemoved(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public addActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    invoke-direct {v1, p1, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    monitor-exit v1

    .line 77
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 169
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    .line 170
    .local v0, "anode":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark()V

    .line 172
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActorsIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getActorsList()Ljava/util/List;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getChildSide(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)I
    .locals 1
    .param p1, "child"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEntriesIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->resizeChildren()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    return-object v0
.end method

.method public getLeftArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 6

    .prologue
    .line 108
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 109
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 110
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 108
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    .line 111
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    goto :goto_0
.end method

.method public getParent()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->parent:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    return-object v0
.end method

.method public getRight()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->resizeChildren()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->right:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    return-object v0
.end method

.method public getRightArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 6

    .prologue
    .line 115
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 116
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 117
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 115
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    .line 118
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v4

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    goto :goto_0
.end method

.method public getSplitAxis()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    return v0
.end method

.method public getSplitPos()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public numberActors()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public setArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "area"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->area:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    .line 82
    return-void
.end method

.method public setChild(ILorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 0
    .param p1, "side"    # I
    .param p2, "child"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->left:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iput-object p0, p2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->parent:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->right:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iput-object p0, p2, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->parent:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    goto :goto_0
.end method

.method public setParent(Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->parent:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 158
    return-void
.end method

.method public setSplitAxis(I)V
    .locals 1
    .param p1, "axis"    # I

    .prologue
    .line 85
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    if-eq p1, v0, :cond_0

    .line 86
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitAxis:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    .line 89
    :cond_0
    return-void
.end method

.method public setSplitPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 92
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    if-eq p1, v0, :cond_0

    .line 93
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->splitPos:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->areaRipple:Z

    .line 97
    :cond_0
    return-void
.end method
