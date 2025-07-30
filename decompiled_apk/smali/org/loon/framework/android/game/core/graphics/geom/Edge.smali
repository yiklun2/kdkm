.class final Lorg/loon/framework/android/game/core/graphics/geom/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# static fields
.field static final GROW_PARTS:I = 0xa

.field static final INIT_PARTS:I = 0x4


# instance fields
.field activey:D

.field ctag:I

.field curve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

.field equivalence:I

.field etag:I

.field private lastEdge:Lorg/loon/framework/android/game/core/graphics/geom/Edge;

.field private lastLimit:D

.field private lastResult:I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Curve;I)V
    .locals 1
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .param p2, "ctag"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Curve;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Curve;II)V
    .locals 0
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .param p2, "ctag"    # I
    .param p3, "etag"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->curve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 43
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->ctag:I

    .line 44
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->etag:I

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lorg/loon/framework/android/game/core/graphics/geom/Edge;[D)I
    .locals 7
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/geom/Edge;
    .param p2, "yrange"    # [D

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastEdge:Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    if-ne p1, v1, :cond_1

    aget-wide v1, p2, v6

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 77
    aget-wide v1, p2, v5

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 78
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    aput-wide v1, p2, v5

    .line 80
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastResult:I

    .line 94
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastEdge:Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    if-ne p0, v1, :cond_3

    aget-wide v1, p2, v6

    iget-wide v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 83
    aget-wide v1, p2, v5

    iget-wide v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 84
    iget-wide v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    aput-wide v1, p2, v5

    .line 86
    :cond_2
    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastResult:I

    rsub-int/lit8 v0, v1, 0x0

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->curve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->curve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    invoke-virtual {v1, v2, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->compareTo(Lorg/loon/framework/android/game/core/graphics/geom/Curve;[D)I

    move-result v0

    .line 91
    .local v0, "ret":I
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastEdge:Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .line 92
    aget-wide v1, p2, v5

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastLimit:D

    .line 93
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->lastResult:I

    goto :goto_0
.end method

.method public getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->curve:Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    return-object v0
.end method

.method public getCurveTag()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->ctag:I

    return v0
.end method

.method public getEdgeTag()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->etag:I

    return v0
.end method

.method public getEquivalence()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->equivalence:I

    return v0
.end method

.method public isActiveFor(DI)Z
    .locals 2
    .param p1, "y"    # D
    .param p3, "etag"    # I

    .prologue
    .line 103
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->etag:I

    if-ne v0, p3, :cond_0

    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->activey:D

    cmpl-double v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public record(DI)V
    .locals 0
    .param p1, "yend"    # D
    .param p3, "etag"    # I

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->activey:D

    .line 99
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->etag:I

    .line 100
    return-void
.end method

.method public setEdgeTag(I)V
    .locals 0
    .param p1, "etag"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->etag:I

    .line 61
    return-void
.end method

.method public setEquivalence(I)V
    .locals 0
    .param p1, "eq"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->equivalence:I

    .line 69
    return-void
.end method
