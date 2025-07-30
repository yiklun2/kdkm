.class public Lorg/loon/framework/android/game/physics/PhysicsPolygon;
.super Ljava/lang/Object;
.source "PhysicsPolygon.java"


# static fields
.field public static final MAX_SIZE:I = 0x4


# instance fields
.field protected building:Z

.field private npoints:I

.field private polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field private polygonShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;

.field private xpoints:[I

.field private ypoints:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 63
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 59
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon(II)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;II)V
    .locals 1
    .param p1, "spr"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 67
    invoke-virtual {p1, p2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon(II)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 71
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-direct {p0, v0, v1, v2}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>([I[II)V

    .line 72
    return-void
.end method

.method public constructor <init>([I[II)V
    .locals 0
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->setPolygon([I[II)V

    .line 76
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "v"    # [Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    array-length v1, p1

    iput v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    .line 80
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    .line 81
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    if-lt v0, v1, :cond_0

    .line 86
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget-object v2, p1, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 84
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget-object v2, p1, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPoint(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 169
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 170
    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    mul-int/lit8 v0, v1, 0x2

    .line 171
    .local v0, "newLength":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 172
    const/4 v0, 0x4

    .line 176
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    .line 177
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    .line 179
    .end local v0    # "newLength":I
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    aput p1, v1, v2

    .line 180
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    aput p2, v1, v2

    .line 181
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    .line 182
    return-void

    .line 173
    .restart local v0    # "newLength":I
    :cond_3
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_0
.end method

.method public addPoint(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 2
    .param p1, "point"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 165
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->addPoint(II)V

    .line 166
    return-void
.end method

.method public getPoint(I)Lorg/loon/framework/android/game/core/graphics/geom/Point;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index > xpoints.length || index > ypoints.length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v2, v2, p1

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    return-object v0
.end method

.method public getPoint2D()[Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .locals 5

    .prologue
    .line 107
    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    new-array v1, v2, [Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 108
    .local v1, "points":[Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    if-lt v0, v2, :cond_0

    .line 111
    return-object v1

    .line 109
    :cond_0
    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v4, v4, v0

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Point2D;-><init>(FF)V

    aput-object v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    return v0
.end method

.method public getPolygon()Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>([I[II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 200
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 197
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 198
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    goto :goto_0
.end method

.method public getPolygon2D()Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getPoint2D()[Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;-><init>([Lorg/loon/framework/android/game/action/map/shapes/Point2D;)V

    return-object v0
.end method

.method public getPolygonShape()Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygonShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygonShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygonShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getVertexs()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 93
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->polygonShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    return-object v0
.end method

.method public getVertex(I)[F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index > xpoints.length || index > ypoints.length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v2, v2, p1

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v2, v2, p1

    int-to-float v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getVertexs()[F
    .locals 6

    .prologue
    .line 97
    iget v4, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    mul-int/lit8 v2, v4, 0x2

    .line 98
    .local v2, "vertice_size":I
    new-array v3, v2, [F

    .line 99
    .local v3, "verts":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 103
    return-object v3

    .line 100
    :cond_0
    iget-object v4, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v4, v4, v1

    int-to-float v4, v4

    aput v4, v3, v0

    .line 101
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v5, v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    .line 99
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isConvex()Z
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, "isPositive":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    if-lt v5, v13, :cond_0

    move v11, v12

    .line 161
    :goto_1
    return v11

    .line 146
    :cond_0
    if-nez v5, :cond_2

    iget v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    add-int/lit8 v7, v13, -0x1

    .line 147
    .local v7, "lower":I
    :goto_2
    move v8, v5

    .line 148
    .local v8, "middle":I
    iget v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    add-int/lit8 v13, v13, -0x1

    if-ne v5, v13, :cond_3

    move v10, v11

    .line 149
    .local v10, "upper":I
    :goto_3
    iget-object v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v13, v13, v8

    iget-object v14, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v14, v14, v7

    sub-int/2addr v13, v14

    int-to-float v1, v13

    .line 150
    .local v1, "dx0":F
    iget-object v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v13, v13, v8

    iget-object v14, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v14, v14, v7

    sub-int/2addr v13, v14

    int-to-float v3, v13

    .line 151
    .local v3, "dy0":F
    iget-object v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v13, v13, v10

    iget-object v14, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    aget v14, v14, v8

    sub-int/2addr v13, v14

    int-to-float v2, v13

    .line 152
    .local v2, "dx1":F
    iget-object v13, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v13, v13, v10

    iget-object v14, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    aget v14, v14, v8

    sub-int/2addr v13, v14

    int-to-float v4, v13

    .line 153
    .local v4, "dy1":F
    mul-float v13, v1, v4

    mul-float v14, v2, v3

    sub-float v0, v13, v14

    .line 154
    .local v0, "cross":F
    const/4 v13, 0x0

    cmpl-float v13, v0, v13

    if-ltz v13, :cond_4

    move v9, v12

    .line 155
    .local v9, "newIsP":Z
    :goto_4
    if-nez v5, :cond_5

    .line 156
    move v6, v9

    .line 145
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "cross":F
    .end local v1    # "dx0":F
    .end local v2    # "dx1":F
    .end local v3    # "dy0":F
    .end local v4    # "dy1":F
    .end local v7    # "lower":I
    .end local v8    # "middle":I
    .end local v9    # "newIsP":Z
    .end local v10    # "upper":I
    :cond_2
    add-int/lit8 v7, v5, -0x1

    goto :goto_2

    .line 148
    .restart local v7    # "lower":I
    .restart local v8    # "middle":I
    :cond_3
    add-int/lit8 v10, v5, 0x1

    goto :goto_3

    .restart local v0    # "cross":F
    .restart local v1    # "dx0":F
    .restart local v2    # "dx1":F
    .restart local v3    # "dy0":F
    .restart local v4    # "dy1":F
    .restart local v10    # "upper":I
    :cond_4
    move v9, v11

    .line 154
    goto :goto_4

    .line 157
    .restart local v9    # "newIsP":Z
    :cond_5
    if-eq v6, v9, :cond_1

    goto :goto_1
.end method

.method public setPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 127
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->setPolygon([I[II)V

    .line 128
    return-void
.end method

.method public setPolygon([I[II)V
    .locals 2
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 131
    array-length v0, p1

    if-gt p3, v0, :cond_0

    array-length v0, p2

    if-le p3, v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "npoints > xpoints.length || npoints > ypoints.length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    if-gez p3, :cond_2

    .line 136
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "npoints < 0"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iput p3, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->npoints:I

    .line 139
    invoke-static {p1, p3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->xpoints:[I

    .line 140
    invoke-static {p2, p3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->ypoints:[I

    .line 141
    return-void
.end method
