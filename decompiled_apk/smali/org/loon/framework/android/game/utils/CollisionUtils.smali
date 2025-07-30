.class public Lorg/loon/framework/android/game/utils/CollisionUtils;
.super Ljava/lang/Object;
.source "CollisionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBoundingBoxCollision(Lorg/loon/framework/android/game/action/sprite/Collidable;II)Z
    .locals 1
    .param p0, "other"    # Lorg/loon/framework/android/game/action/sprite/Collidable;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 61
    invoke-interface {p0}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->checkBoundingBoxCollision(II)Z

    move-result v0

    return v0
.end method

.method public static checkBoundingBoxCollision(Lorg/loon/framework/android/game/action/sprite/Collidable;Lorg/loon/framework/android/game/action/sprite/Collidable;)Z
    .locals 2
    .param p0, "other1"    # Lorg/loon/framework/android/game/action/sprite/Collidable;
    .param p1, "other2"    # Lorg/loon/framework/android/game/action/sprite/Collidable;

    .prologue
    .line 56
    invoke-interface {p0}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v0

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->checkBoundingBoxCollision(Lorg/loon/framework/android/game/action/sprite/CollisionMask;)Z

    move-result v0

    return v0
.end method

.method public static checkCollision(Lorg/loon/framework/android/game/action/sprite/Collidable;II)Z
    .locals 1
    .param p0, "other"    # Lorg/loon/framework/android/game/action/sprite/Collidable;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 51
    invoke-interface {p0}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->collidesWith(II)Z

    move-result v0

    return v0
.end method

.method public static checkCollision(Lorg/loon/framework/android/game/action/sprite/Collidable;Lorg/loon/framework/android/game/action/sprite/Collidable;)Z
    .locals 2
    .param p0, "other1"    # Lorg/loon/framework/android/game/action/sprite/Collidable;
    .param p1, "other2"    # Lorg/loon/framework/android/game/action/sprite/Collidable;

    .prologue
    .line 39
    invoke-interface {p0}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v0

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/Collidable;->getMask()Lorg/loon/framework/android/game/action/sprite/CollisionMask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/CollisionMask;->collidesWith(Lorg/loon/framework/android/game/action/sprite/CollisionMask;)Z

    move-result v0

    return v0
.end method

.method public static getDistance(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)D
    .locals 8
    .param p0, "box1"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p1, "box2"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 76
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v5, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 77
    .local v0, "xdiff":D
    iget v4, p0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v5, p1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    sub-int/2addr v4, v5

    int-to-double v2, v4

    .line 78
    .local v2, "ydiff":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private static getMiddlePoint(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .locals 5
    .param p0, "rectangle"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 159
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getCenterX()D

    move-result-wide v1

    .line 160
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getCenterY()D

    move-result-wide v3

    .line 159
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public static isCircToCirc(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z
    .locals 10
    .param p0, "rect1"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p1, "rect2"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 100
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/CollisionUtils;->getMiddlePoint(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    move-result-object v2

    .line 101
    .local v2, "middle1":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->getMiddlePoint(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    move-result-object v3

    .line 102
    .local v3, "middle2":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D;->distance(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D

    move-result-wide v0

    .line 103
    .local v0, "distance":D
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-double v4, v8

    .line 104
    .local v4, "radius1":D
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-double v6, v8

    .line 105
    .local v6, "radius2":D
    sub-double v8, v0, v6

    cmpg-double v8, v8, v4

    if-gez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isPixelHit(Lorg/loon/framework/android/game/action/sprite/Sprite;Lorg/loon/framework/android/game/action/sprite/Sprite;)Z
    .locals 1
    .param p0, "src"    # Lorg/loon/framework/android/game/action/sprite/Sprite;
    .param p1, "dest"    # Lorg/loon/framework/android/game/action/sprite/Sprite;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->checkCollision(Lorg/loon/framework/android/game/action/sprite/Collidable;Lorg/loon/framework/android/game/action/sprite/Collidable;)Z

    move-result v0

    return v0
.end method

.method private static isPointToLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;D)Z
    .locals 4
    .param p0, "point1"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p1, "point2"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p2, "middle"    # Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    .param p3, "radius"    # D

    .prologue
    .line 147
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Double;

    invoke-direct {v2, p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Double;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V

    .line 148
    .local v2, "line":Lorg/loon/framework/android/game/core/graphics/geom/Line2D;
    invoke-virtual {v2, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D;->ptLineDist(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)D

    move-result-wide v0

    .line 149
    .local v0, "distance":D
    cmpg-double v3, v0, p3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isRectToCirc(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z
    .locals 12
    .param p0, "rect1"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p1, "rect2"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-double v4, v8

    .line 117
    .local v4, "radius":D
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/CollisionUtils;->getMiddlePoint(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Lorg/loon/framework/android/game/core/graphics/geom/Point2D;

    move-result-object v3

    .line 118
    .local v3, "middle":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    new-instance v6, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinX()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinY()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>(DD)V

    .line 119
    .local v6, "upperLeft":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    new-instance v7, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxX()I

    move-result v8

    int-to-double v8, v8

    .line 120
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinY()I

    move-result v10

    int-to-double v10, v10

    .line 119
    invoke-direct {v7, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>(DD)V

    .line 121
    .local v7, "upperRight":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinX()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxY()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>(DD)V

    .line 122
    .local v1, "downLeft":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxX()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxY()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {v2, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Point2D$Double;-><init>(DD)V

    .line 123
    .local v2, "downRight":Lorg/loon/framework/android/game/core/graphics/geom/Point2D;
    const/4 v0, 0x1

    .line 124
    .local v0, "collided":Z
    invoke-static {v6, v7, v3, v4, v5}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isPointToLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    invoke-static {v7, v2, v3, v4, v5}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isPointToLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 126
    invoke-static {v6, v1, v3, v4, v5}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isPointToLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 127
    invoke-static {v1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/utils/CollisionUtils;->isPointToLine(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;D)Z

    move-result v8

    if-nez v8, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 133
    :cond_0
    return v0
.end method

.method public static isRectToRect(Lorg/loon/framework/android/game/action/map/shapes/RectBox;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z
    .locals 1
    .param p0, "rect1"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p1, "rect2"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v0

    return v0
.end method
