.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;
.super Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CAGOp"
.end annotation


# instance fields
.field inLeft:Z

.field inResult:Z

.field inRight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;)V

    return-void
.end method


# virtual methods
.method public classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I
    .locals 5
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Edge;->getCurveTag()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inLeft:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inLeft:Z

    .line 50
    :goto_1
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inLeft:Z

    iget-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inRight:Z

    invoke-virtual {p0, v1, v4}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->newClassification(ZZ)Z

    move-result v0

    .line 51
    .local v0, "newClass":Z
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inResult:Z

    if-ne v1, v0, :cond_3

    .line 55
    :goto_2
    return v2

    .end local v0    # "newClass":Z
    :cond_0
    move v1, v3

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inRight:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inRight:Z

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_3

    .line 54
    .restart local v0    # "newClass":Z
    :cond_3
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inResult:Z

    .line 55
    if-eqz v0, :cond_4

    :goto_4
    move v2, v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    goto :goto_4
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract newClassification(ZZ)Z
.end method

.method public newRow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inLeft:Z

    .line 40
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inRight:Z

    .line 41
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$CAGOp;->inResult:Z

    .line 42
    return-void
.end method
