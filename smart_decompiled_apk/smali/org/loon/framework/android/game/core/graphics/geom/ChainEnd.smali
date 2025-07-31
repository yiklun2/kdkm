.class public Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
.super Ljava/lang/Object;
.source "ChainEnd.java"


# instance fields
.field etag:I

.field head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

.field partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

.field tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)V
    .locals 1
    .param p1, "first"    # Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .param p2, "partner"    # Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 17
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 18
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 19
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getEdgeTag()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    .line 20
    return-void
.end method


# virtual methods
.method public addLink(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V
    .locals 2
    .param p1, "newlink"    # Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .prologue
    .line 80
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->setNext(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 82
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->setNext(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 85
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    goto :goto_0
.end method

.method public getChain()Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    return-object v0
.end method

.method public getPartner()Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getXBot()D

    move-result-wide v0

    .line 93
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getXBot()D

    move-result-wide v0

    goto :goto_0
.end method

.method public linkTo(Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;
    .locals 8
    .param p1, "that"    # Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .prologue
    const/4 v6, 0x0

    .line 39
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    if-eqz v4, :cond_0

    iget v4, p1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    if-nez v4, :cond_1

    .line 40
    :cond_0
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "ChainEnd linked more than once!"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_1
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    iget v5, p1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    if-ne v4, v5, :cond_2

    .line 43
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Linking chains of the same type!"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_2
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 48
    move-object v0, p0

    .line 49
    .local v0, "enter":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    move-object v1, p1

    .line 55
    .local v1, "exit":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    :goto_0
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    .line 56
    iput v6, p1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->etag:I

    .line 58
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iget-object v5, v1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->setNext(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 59
    iget-object v4, v1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iput-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 60
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    if-ne v4, p1, :cond_4

    .line 62
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 76
    :goto_1
    return-object v4

    .line 51
    .end local v0    # "enter":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    .end local v1    # "exit":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    :cond_3
    move-object v0, p1

    .line 52
    .restart local v0    # "enter":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    move-object v1, p0

    .restart local v1    # "exit":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, v1, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 66
    .local v2, "otherenter":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    iget-object v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 67
    .local v3, "otherexit":Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;
    iput-object v3, v2, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 68
    iput-object v2, v3, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 69
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getYTop()D

    move-result-wide v4

    iget-object v6, v2, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->getYTop()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    .line 70
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iget-object v5, v2, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->setNext(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 71
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iput-object v4, v2, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    .line 76
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 73
    :cond_5
    iget-object v4, v3, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iget-object v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->head:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    invoke-virtual {v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;->setNext(Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;)V

    .line 74
    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    iput-object v4, v3, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->tail:Lorg/loon/framework/android/game/core/graphics/geom/CurveLink;

    goto :goto_2
.end method

.method public setOtherEnd(Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;)V
    .locals 0
    .param p1, "partner"    # Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;->partner:Lorg/loon/framework/android/game/core/graphics/geom/ChainEnd;

    .line 28
    return-void
.end method
