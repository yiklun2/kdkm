.class public abstract Lorg/loon/framework/android/game/physics/PolygonBasedShape;
.super Lorg/loon/framework/android/game/physics/PrimitiveShape;
.source "PolygonBasedShape.java"


# instance fields
.field protected xoffset:F

.field protected yoffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/loon/framework/android/game/physics/PolygonDef;

    invoke-direct {v0}, Lorg/loon/framework/android/game/physics/PolygonDef;-><init>()V

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/physics/PrimitiveShape;-><init>(Lorg/loon/framework/android/game/physics/PolygonDef;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract applyOffset(FF)V
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonBasedShape;->xoffset:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonBasedShape;->yoffset:F

    return v0
.end method

.method public setOffset(FF)Lorg/loon/framework/android/game/physics/PolygonBasedShape;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 34
    iput p1, p0, Lorg/loon/framework/android/game/physics/PolygonBasedShape;->xoffset:F

    .line 35
    iput p2, p0, Lorg/loon/framework/android/game/physics/PolygonBasedShape;->yoffset:F

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/physics/PolygonBasedShape;->applyOffset(FF)V

    .line 37
    return-object p0
.end method
