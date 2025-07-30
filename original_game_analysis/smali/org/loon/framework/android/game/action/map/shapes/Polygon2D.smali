.class public Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;
.super Ljava/lang/Object;
.source "Polygon2D.java"


# instance fields
.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Point2D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/loon/framework/android/game/action/map/shapes/Point2D;)V
    .locals 3
    .param p1, "pts"    # [Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    .line 31
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->polygonClock([Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 40
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    :cond_2
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 37
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private convex(DDDDDD)Z
    .locals 4
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "x3"    # D
    .param p11, "y3"    # D

    .prologue
    .line 195
    invoke-direct/range {p0 .. p12}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->triangleArea(DDDDDD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    goto :goto_0
.end method

.method private getPreviousPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    goto :goto_0
.end method

.method private isEar(Lorg/loon/framework/android/game/action/map/shapes/Point2D;I)Z
    .locals 9
    .param p1, "point"    # Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 119
    iget v7, p1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    if-ne v7, v8, :cond_0

    .line 145
    :goto_0
    return v6

    .line 123
    :cond_0
    invoke-direct {p0, p2}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getPreviousPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v3

    .line 124
    .local v3, "p0":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v7, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 125
    .local v4, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    invoke-direct {p0, p2}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getNextPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v5

    .line 127
    .local v5, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 128
    .local v2, "numPoints":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 145
    const/4 v6, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v7, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 132
    .local v0, "currPoint":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    invoke-virtual {v0, v3}, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v4}, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    invoke-virtual {v0, v5}, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_3
    iget v7, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    if-ne v7, v8, :cond_2

    .line 138
    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->isSide(Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    invoke-virtual {p0, v0, v4, v3, v5}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->isSide(Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    invoke-virtual {p0, v0, v5, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->isSide(Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0
.end method

.method private polygonClock([Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z
    .locals 13
    .param p1, "pts"    # [Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .prologue
    .line 213
    array-length v6, p1

    .line 215
    .local v6, "numPoints":I
    const/4 v10, 0x3

    if-ge v6, v10, :cond_0

    .line 216
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Less than three points !"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 218
    :cond_0
    const/4 v10, 0x0

    aget-object v5, p1, v10

    .line 219
    .local v5, "minPoint":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    const/4 v4, 0x0

    .line 221
    .local v4, "minIndex":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_2

    .line 236
    const/4 v7, 0x0

    .local v7, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    const/4 v8, 0x0

    .local v8, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    const/4 v9, 0x0

    .line 238
    .local v9, "p3":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    if-nez v4, :cond_5

    .line 239
    add-int/lit8 v10, v6, -0x1

    aget-object v7, p1, v10

    .line 240
    const/4 v10, 0x0

    aget-object v8, p1, v10

    .line 241
    const/4 v10, 0x1

    aget-object v9, p1, v10

    .line 253
    :cond_1
    :goto_1
    iget v10, v8, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v11, v7, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    sub-float/2addr v10, v11

    iget v11, v9, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    iget v12, v8, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v0, v10

    .line 254
    .local v0, "crossProduct":D
    iget v10, v8, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    iget v11, v7, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    sub-float/2addr v10, v11

    iget v11, v9, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v12, v8, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    sub-double/2addr v0, v10

    .line 256
    const-wide/16 v10, 0x0

    cmpg-double v10, v0, v10

    if-gez v10, :cond_7

    .line 257
    const/4 v10, 0x1

    .line 259
    :goto_2
    return v10

    .line 223
    .end local v0    # "crossProduct":D
    .end local v7    # "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .end local v8    # "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .end local v9    # "p3":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    :cond_2
    aget-object v2, p1, v3

    .line 225
    .local v2, "curr":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget v10, v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v11, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 227
    move-object v5, v2

    .line 228
    move v4, v3

    .line 221
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_4
    iget v10, v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v11, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    iget v10, v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    iget v11, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 231
    move-object v5, v2

    .line 232
    move v4, v3

    goto :goto_3

    .line 242
    .end local v2    # "curr":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .restart local v7    # "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .restart local v8    # "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .restart local v9    # "p3":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    :cond_5
    add-int/lit8 v10, v6, -0x1

    if-ne v4, v10, :cond_6

    .line 243
    add-int/lit8 v10, v6, -0x2

    aget-object v7, p1, v10

    .line 244
    add-int/lit8 v10, v6, -0x1

    aget-object v8, p1, v10

    .line 245
    const/4 v10, 0x0

    aget-object v9, p1, v10

    goto :goto_1

    .line 247
    :cond_6
    if-lez v4, :cond_1

    add-int/lit8 v10, v6, -0x1

    if-ge v4, v10, :cond_1

    .line 248
    add-int/lit8 v10, v4, -0x1

    aget-object v7, p1, v10

    .line 249
    aget-object v8, p1, v4

    .line 250
    add-int/lit8 v10, v4, 0x1

    aget-object v9, p1, v10

    goto :goto_1

    .line 259
    .restart local v0    # "crossProduct":D
    :cond_7
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private signedArea()F
    .locals 7

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "sum":F
    iget-object v4, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/action/map/shapes/Point2D;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v3

    return v4

    .line 301
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 302
    .local v1, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 306
    .local v2, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget v4, v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v5, v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    mul-float/2addr v4, v5

    iget v5, v2, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v6, v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    goto :goto_0
.end method

.method private triangleArea(DDDDDD)D
    .locals 4
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "x3"    # D
    .param p11, "y3"    # D

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "areaSum":D
    sub-double v2, p11, p7

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 206
    sub-double v2, p3, p11

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    .line 207
    sub-double v2, p7, p3

    mul-double/2addr v2, p9

    add-double/2addr v0, v2

    .line 208
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v0, v2

    return-wide v2
.end method


# virtual methods
.method public findCentroid()Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .locals 11

    .prologue
    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 280
    const/4 v0, 0x0

    .local v0, "cx":F
    const/4 v1, 0x0

    .local v1, "cy":F
    const/4 v2, 0x0

    .line 281
    .local v2, "f":F
    iget-object v6, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/action/map/shapes/Point2D;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->signedArea()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v10

    div-float v6, v9, v6

    mul-float/2addr v0, v6

    .line 293
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->signedArea()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v10

    div-float v6, v9, v6

    mul-float/2addr v1, v6

    .line 294
    new-instance v6, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    invoke-direct {v6, v0, v1}, Lorg/loon/framework/android/game/action/map/shapes/Point2D;-><init>(FF)V

    return-object v6

    .line 283
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 284
    .local v4, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 287
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 288
    .local v5, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget v6, v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v7, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    mul-float/2addr v6, v7

    iget v7, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v8, v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    mul-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 289
    iget v6, v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v7, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v0, v6

    .line 290
    iget v6, v4, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    iget v7, v5, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v1, v6

    goto :goto_0
.end method

.method public getTriangles()[Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    .locals 15

    .prologue
    .line 51
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v13, "triangles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Triangle;>;"
    const/4 v8, 0x0

    .line 55
    .local v8, "finish":Z
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v14, 0x3

    if-ne v0, v14, :cond_0

    .line 57
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 58
    .local v1, "x1":F
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 59
    .local v2, "y1":F
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v3, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 60
    .local v3, "x2":F
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v4, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 61
    .local v4, "y2":F
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v5, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 62
    .local v5, "x3":F
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v6, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 64
    .local v6, "y3":F
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>(FFFFFF)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v8, 0x1

    .line 68
    .end local v1    # "x1":F
    .end local v2    # "y1":F
    .end local v3    # "x2":F
    .end local v4    # "y2":F
    .end local v5    # "x3":F
    .end local v6    # "y3":F
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    return-object v0

    .line 70
    :cond_1
    const/4 v12, 0x0

    .line 71
    .local v12, "pointIndex":I
    const/4 v7, 0x0

    .line 72
    .local v7, "earFound":Z
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->matchPoints()V

    .line 74
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v12, v0, :cond_2

    .line 81
    :goto_2
    if-nez v7, :cond_4

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v14, "Cannot triangle polygon !"

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    invoke-direct {p0, v0, v12}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->isEar(Lorg/loon/framework/android/game/action/map/shapes/Point2D;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const/4 v7, 0x1

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 85
    :cond_4
    invoke-direct {p0, v12}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getPreviousPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v9

    .line 86
    .local v9, "p0":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 87
    .local v10, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    invoke-direct {p0, v12}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getNextPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v11

    .line 89
    .local v11, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget v1, v9, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 90
    .restart local v1    # "x1":F
    iget v2, v9, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 91
    .restart local v2    # "y1":F
    iget v3, v10, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 92
    .restart local v3    # "x2":F
    iget v4, v10, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 93
    .restart local v4    # "y2":F
    iget v5, v11, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 94
    .restart local v5    # "x3":F
    iget v6, v11, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 96
    .restart local v6    # "y3":F
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>(FFFFFF)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v14, 0x3

    if-ne v0, v14, :cond_0

    .line 102
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 103
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v2, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 104
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v3, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 105
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v4, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 106
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v5, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 107
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    iget v6, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 109
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>(FFFFFF)V

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public isSide(Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;Lorg/loon/framework/android/game/action/map/shapes/Point2D;)Z
    .locals 19
    .param p1, "p1"    # Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .param p2, "p2"    # Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .param p3, "a"    # Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    .param p4, "b"    # Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .prologue
    .line 150
    const-wide/16 v13, 0x0

    .line 151
    .local v13, "dotProduct":D
    const-wide/16 v9, 0x0

    .line 152
    .local v9, "crossProduct1":D
    const-wide/16 v11, 0x0

    .line 155
    .local v11, "crossProduct2":D
    move-object/from16 v0, p4

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v1, v15

    .line 156
    .local v1, "a1":D
    move-object/from16 v0, p4

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v3, v15

    .line 157
    .local v3, "a2":D
    move-object/from16 v0, p1

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v5, v15

    .line 158
    .local v5, "b1":D
    move-object/from16 v0, p1

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v7, v15

    .line 159
    .local v7, "b2":D
    mul-double v15, v1, v7

    mul-double v17, v3, v5

    sub-double v9, v15, v17

    .line 161
    move-object/from16 v0, p4

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v1, v15

    .line 162
    move-object/from16 v0, p4

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v3, v15

    .line 163
    move-object/from16 v0, p2

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v5, v15

    .line 164
    move-object/from16 v0, p2

    iget v15, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move-object/from16 v0, p3

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v7, v15

    .line 165
    mul-double v15, v1, v7

    mul-double v17, v3, v5

    sub-double v11, v15, v17

    .line 167
    mul-double v13, v9, v11

    .line 169
    const-wide/16 v15, 0x0

    cmpl-double v15, v13, v15

    if-ltz v15, :cond_0

    .line 170
    const/4 v15, 0x1

    .line 172
    :goto_0
    return v15

    :cond_0
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public matchPoints()V
    .locals 19

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v15

    .line 179
    .local v15, "numPoints":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-lt v14, v15, :cond_0

    .line 191
    return-void

    .line 181
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getPreviousPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v16

    .line 182
    .local v16, "p1":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 183
    .local v17, "p2":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getNextPoint(I)Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    move-result-object v18

    .line 185
    .local v18, "p3":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    move-object/from16 v0, v16

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    float-to-double v2, v1

    move-object/from16 v0, v16

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    float-to-double v4, v1

    move-object/from16 v0, v17

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    float-to-double v6, v1

    move-object/from16 v0, v17

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    float-to-double v8, v1

    move-object/from16 v0, v18

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    float-to-double v10, v1

    move-object/from16 v0, v18

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    float-to-double v12, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->convex(DDDDDD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    const/4 v2, 0x1

    iput v2, v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    .line 179
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    const/4 v2, 0x2

    iput v2, v1, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    goto :goto_1
.end method
