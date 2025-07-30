.class public Lorg/loon/framework/android/game/physics/PolygonDef;
.super Lcom/badlogic/gdx/physics/box2d/FixtureDef;
.source "PolygonDef.java"


# instance fields
.field public vertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public addVertex(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public clearVertices()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    return-void
.end method

.method public getVertexArray()[Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVertexList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    return-object v0
.end method

.method public getVertexs()[F
    .locals 7

    .prologue
    .line 52
    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v3, v5, 0x2

    .line 53
    .local v3, "vertice_size":I
    new-array v4, v3, [F

    .line 54
    .local v4, "verts":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 59
    return-object v4

    .line 55
    :cond_0
    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    .line 56
    .local v2, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v4, v0

    .line 57
    add-int/lit8 v5, v0, 0x1

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v6, v4, v5

    .line 54
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public set(Lorg/loon/framework/android/game/physics/PolygonDef;)V
    .locals 3
    .param p1, "copyMe"    # Lorg/loon/framework/android/game/physics/PolygonDef;

    .prologue
    .line 17
    iget v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->density:F

    iput v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->density:F

    .line 18
    iget v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    iput v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    .line 19
    iget-boolean v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->isSensor:Z

    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->isSensor:Z

    .line 20
    iget v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->restitution:F

    iput v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->restitution:F

    .line 21
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v2, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v2, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iput-short v2, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 22
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v2, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v2, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iput-short v2, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 23
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v2, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v2, v2, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iput-short v2, v1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 24
    iget v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    iput v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 29
    return-void

    .line 27
    :cond_0
    iget-object v1, p1, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->clone()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/physics/PolygonDef;->addVertex(Lcom/badlogic/gdx/math/Vector2;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAsBox(FF)V
    .locals 4
    .param p1, "hx"    # F
    .param p2, "hy"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    neg-float v2, p1

    neg-float v3, p2

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    neg-float v2, p2

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonDef;->vertices:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    neg-float v2, p1

    invoke-direct {v1, v2, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method
