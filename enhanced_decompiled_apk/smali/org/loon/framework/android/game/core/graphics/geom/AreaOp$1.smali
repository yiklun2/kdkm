.class Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$1;
.super Ljava/lang/Object;
.source "AreaOp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v0

    .line 176
    .local v0, "c1":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    check-cast p2, Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v1

    .line 178
    .local v1, "c2":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v2

    .local v2, "v1":D
    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getYTop()D

    move-result-wide v4

    .local v4, "v2":D
    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 179
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXTop()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getXTop()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 180
    const/4 v6, 0x0

    .line 186
    :goto_0
    return v6

    .line 183
    :cond_0
    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    .line 184
    const/4 v6, -0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method
