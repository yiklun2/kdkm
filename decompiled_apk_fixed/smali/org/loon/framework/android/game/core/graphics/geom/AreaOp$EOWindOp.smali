.class public Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;
.super Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EOWindOp"
.end annotation


# instance fields
.field private inside:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/AreaOp;)V

    return-void
.end method


# virtual methods
.method public classify(Lorg/loon/framework/android/game/core/graphics/geom/Edge;)I
    .locals 3
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/geom/Edge;

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;->inside:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 123
    .local v0, "newInside":Z
    :goto_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;->inside:Z

    .line 124
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "newInside":Z
    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    .restart local v0    # "newInside":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;->inside:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public newRow()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/AreaOp$EOWindOp;->inside:Z

    .line 117
    return-void
.end method
