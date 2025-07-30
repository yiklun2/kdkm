.class public Lorg/loon/framework/android/game/action/MoveTo;
.super Lorg/loon/framework/android/game/action/ActionEvent;
.source "MoveTo.java"


# static fields
.field private static final pathCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private direction:I

.field private endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private endX:I

.field private endY:I

.field private flag:Z

.field private layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

.field private moveX:I

.field private moveY:I

.field private speed:I

.field private startLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private startX:I

.field private startY:I

.field private tmp_path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    const/16 v1, 0x1e

    .line 35
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/Field2D;IIZ)V
    .locals 5
    .param p1, "map"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "flag"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/ActionEvent;-><init>()V

    .line 51
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->startLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 52
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p2

    int-to-double v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 53
    iput-object p1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 54
    iput-boolean p4, p0, Lorg/loon/framework/android/game/action/MoveTo;->flag:Z

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)V
    .locals 2
    .param p1, "map"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "pos"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p3, "flag"    # Z

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v0

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/loon/framework/android/game/action/MoveTo;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIZ)V

    .line 60
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->direction:I

    return v0
.end method

.method public getLayerMap()Lorg/loon/framework/android/game/action/map/Field2D;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    return-object v0
.end method

.method public getPath()Ljava/util/LinkedList;
    .locals 1
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
    .line 116
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 91
    :cond_1
    const/4 v0, 0x1

    .line 92
    .local v0, "hashCode":I
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->flag:Z

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(IZ)I

    move-result v0

    .line 93
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 94
    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v2

    .line 93
    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesWidth(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 96
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesHeight(I)I

    move-result v1

    .line 95
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 97
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 98
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesWidth(I)I

    move-result v1

    .line 97
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 99
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 100
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesHeight(I)I

    move-result v1

    .line 99
    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 101
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 102
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 104
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 106
    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getMap()[[I

    move-result-object v1

    .line 105
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/CollectionUtils;->hashCode([[I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    .line 107
    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->isComplete:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 223
    goto :goto_0
.end method

.method public onLoad()V
    .locals 9

    .prologue
    .line 63
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v8, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 68
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2

    .line 69
    sget-object v0, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/MoveTo;->hashCode()I

    move-result v7

    .line 72
    .local v7, "key":I
    sget-object v0, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    .line 73
    .local v6, "final_path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    if-nez v6, :cond_3

    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 75
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesWidth(I)I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 76
    iget-object v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->startLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesHeight(I)I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 77
    iget-object v4, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesWidth(I)I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 78
    iget-object v5, p0, Lorg/loon/framework/android/game/action/MoveTo;->endLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/loon/framework/android/game/action/map/Field2D;->pixelsToTilesHeight(I)I

    move-result v4

    iget-boolean v5, p0, Lorg/loon/framework/android/game/action/MoveTo;->flag:Z

    .line 74
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/action/map/AStarFinder;->find(Lorg/loon/framework/android/game/action/map/Field2D;IIIIZ)Ljava/util/LinkedList;

    move-result-object v6

    .line 79
    sget-object v0, Lorg/loon/framework/android/game/action/MoveTo;->pathCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    .line 82
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 67
    monitor-exit v8

    goto/16 :goto_0

    .end local v6    # "final_path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    .end local v7    # "key":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    .line 220
    return-void
.end method

.method public start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "target"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lorg/loon/framework/android/game/action/ActionEvent;->start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 112
    iget-object v0, p0, Lorg/loon/framework/android/game/action/MoveTo;->startLocation:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    .line 113
    return-void
.end method

.method public update(J)V
    .locals 6
    .param p1, "elapsedTime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    if-ne v2, v3, :cond_3

    .line 132
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 133
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 134
    .local v1, "moveStart":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 135
    .local v0, "moveEnd":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToWidthPixels(I)I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 136
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToHeightPixels(I)I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 137
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    .line 138
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->layerMap:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileHeight()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    .line 139
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->moveX:I

    .line 140
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->moveY:I

    .line 141
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->moveX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->moveY:I

    invoke-static {v2, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->getDirection(II)I

    move-result v2

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->direction:I

    .line 143
    .end local v0    # "moveEnd":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .end local v1    # "moveStart":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    :cond_2
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->tmp_path:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_3
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->direction:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->original:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v4, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    invoke-virtual {v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    goto/16 :goto_0

    .line 147
    :pswitch_0
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 148
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-ge v2, v3, :cond_4

    .line 149
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto :goto_1

    .line 153
    :pswitch_1
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 154
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-le v2, v3, :cond_4

    .line 155
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto :goto_1

    .line 159
    :pswitch_2
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 160
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-ge v2, v3, :cond_4

    .line 161
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    goto :goto_1

    .line 165
    :pswitch_3
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 166
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-le v2, v3, :cond_4

    .line 167
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    goto :goto_1

    .line 171
    :pswitch_4
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 172
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 173
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-le v2, v3, :cond_5

    .line 174
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 176
    :cond_5
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-ge v2, v3, :cond_4

    .line 177
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto :goto_1

    .line 181
    :pswitch_5
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 182
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 183
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-ge v2, v3, :cond_6

    .line 184
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 186
    :cond_6
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-le v2, v3, :cond_4

    .line 187
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto/16 :goto_1

    .line 191
    :pswitch_6
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 192
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 193
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-ge v2, v3, :cond_7

    .line 194
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 196
    :cond_7
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-ge v2, v3, :cond_4

    .line 197
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto/16 :goto_1

    .line 201
    :pswitch_7
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 202
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->speed:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    .line 203
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    if-le v2, v3, :cond_8

    .line 204
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endX:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startX:I

    .line 206
    :cond_8
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    iget v3, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    if-le v2, v3, :cond_4

    .line 207
    iget v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->endY:I

    iput v2, p0, Lorg/loon/framework/android/game/action/MoveTo;->startY:I

    goto/16 :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
