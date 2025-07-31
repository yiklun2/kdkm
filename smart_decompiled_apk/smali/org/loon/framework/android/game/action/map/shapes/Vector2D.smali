.class public Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x19991a5f30ceeeceL


# instance fields
.field protected x:D

.field protected y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    .line 44
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    .line 40
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 48
    iput-wide p3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 2
    .param p1, "vector2D"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-wide v0, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 53
    iget-wide v0, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 54
    return-void
.end method

.method public static cross(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 2
    .param p0, "a"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p1, "b"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->cross(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static difference(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2
    .param p0, "first"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p1, "second"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 256
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V

    .line 257
    .local v0, "answer":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->sub(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    return-object v1
.end method

.method public static dot(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 2
    .param p0, "a"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p1, "b"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->dot(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/List;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;)",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;"
        }
    .end annotation

    .prologue
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    const-wide/16 v2, 0x0

    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 179
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 180
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    .line 182
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->sum(Ljava/util/List;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->scale(D)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    goto :goto_0
.end method

.method public static mult(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;D)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2
    .param p0, "vector"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p1, "scalar"    # D

    .prologue
    .line 277
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V

    .line 278
    .local v0, "answer":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->scale(D)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    return-object v1
.end method

.method public static rotate90(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 5
    .param p0, "vec"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 265
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public static rotate90R(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 5
    .param p0, "vec"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 269
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public static sum(Ljava/util/List;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;)",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;"
        }
    .end annotation

    .prologue
    .local p0, "summands":Ljava/util/List;, "Ljava/util/List<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    const-wide/16 v3, 0x0

    .line 164
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v3, v4, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    .line 165
    .local v1, "result":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    return-object v1

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 167
    .local v2, "v":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->addThis(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    goto :goto_0
.end method

.method public static sum(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2
    .param p0, "a"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p1, "b"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 173
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V

    .line 174
    .local v0, "answer":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->addThis(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 8
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 152
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    add-double v0, v4, v6

    .line 153
    .local v0, "x":D
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    add-double v2, v4, v6

    .line 154
    .local v2, "y":D
    new-instance v4, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v4
.end method

.method public addThis(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 4
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 159
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 160
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 120
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public cross(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 6
    .param p1, "vec"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public distance(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 2
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->distanceSquared(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSquared(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 8
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 234
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 235
    .local v0, "dx":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 237
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public dot(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 6
    .param p1, "vec"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public dotProduct(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D
    .locals 6
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 215
    iget-wide v0, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 84
    instance-of v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 86
    .local v0, "p":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    iget-wide v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 88
    .end local v0    # "p":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    :cond_0
    return v1
.end method

.method public equalsDelta(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;D)Z
    .locals 4
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "delta"    # D

    .prologue
    .line 251
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    sub-double/2addr v0, p2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    add-double/2addr v0, p2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 252
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    sub-double/2addr v0, p2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    add-double/2addr v0, p2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 251
    goto :goto_0
.end method

.method public getCoords()[D
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public length()F
    .locals 6

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()D
    .locals 6

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public level()D
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0, p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->dotProduct(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public modulate(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 8
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 245
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double v0, v4, v6

    .line 246
    .local v0, "x":D
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double v2, v4, v6

    .line 247
    .local v2, "y":D
    new-instance v4, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v4
.end method

.method public move(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 71
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 72
    return-void
.end method

.method public move(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 4
    .param p1, "vector2D"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 58
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 59
    return-void
.end method

.method public move_multiples(II)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "multiples"    # I

    .prologue
    .line 62
    if-gtz p2, :cond_0

    .line 63
    const/4 p2, 0x1

    .line 65
    :cond_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getDirection(I)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v0

    .line 66
    .local v0, "v":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    mul-int/2addr v1, p2

    int-to-double v1, v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    mul-int/2addr v3, p2

    int-to-double v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move(DD)V

    .line 67
    return-void
.end method

.method public multiply(D)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 211
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v1, p1

    iget-wide v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public normalize()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 7

    .prologue
    .line 225
    invoke-virtual {p0, p0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->dotProduct(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 226
    .local v0, "magnitude":D
    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    iget-wide v3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    div-double/2addr v3, v0

    iget-wide v5, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    div-double/2addr v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v2
.end method

.method public reverse()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 139
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 140
    return-object p0
.end method

.method public rotate90()V
    .locals 4

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setLocation(DD)V

    .line 262
    return-void
.end method

.method public scale(D)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2
    .param p1, "a"    # D

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 220
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 221
    return-object p0
.end method

.method public set(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 133
    iput-wide p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 134
    iput-wide p3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 135
    return-void
.end method

.method public set(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 128
    float-to-double v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 129
    float-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 130
    return-void
.end method

.method public set(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 4
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(DD)V

    .line 125
    return-void
.end method

.method public setLocation(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 80
    iput-wide p3, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 81
    return-void
.end method

.method public setX(D)V
    .locals 0
    .param p1, "x"    # D

    .prologue
    .line 96
    iput-wide p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 97
    return-void
.end method

.method public setY(D)V
    .locals 0
    .param p1, "y"    # D

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 101
    return-void
.end method

.method public sub(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 4
    .param p1, "v"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    .line 188
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    .line 189
    return-object p0
.end method

.method public subtract(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 8
    .param p1, "other"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 193
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    sub-double v0, v4, v6

    .line 194
    .local v0, "x":D
    iget-wide v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    iget-wide v6, p1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    sub-double v2, v4, v6

    .line 195
    .local v2, "y":D
    new-instance v4, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[Vector2D x:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 283
    iget-wide v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method public x()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x:D

    double-to-int v0, v0

    return v0
.end method

.method public y()I
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y:D

    double-to-int v0, v0

    return v0
.end method
