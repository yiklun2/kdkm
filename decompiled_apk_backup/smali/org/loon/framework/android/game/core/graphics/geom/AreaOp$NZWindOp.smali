.class public Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;
.super Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NZWindOp"
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;)V

    return-void
.end method


# virtual methods
.method public classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I
    .locals 3
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .prologue
    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;->count:I

    .line 101
    .local v0, "newCount":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 102
    .local v1, "type":I
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurve()Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->getDirection()I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;->count:I

    .line 104
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .end local v1    # "type":I
    :cond_0
    return v1

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;->count:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newRow()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$NZWindOp;->count:I

    .line 95
    return-void
.end method
