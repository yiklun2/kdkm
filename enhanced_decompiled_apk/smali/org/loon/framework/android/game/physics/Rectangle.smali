.class public Lorg/loon/framework/android/game/physics/Rectangle;
.super Lorg/loon/framework/android/game/physics/PolygonBasedShape;
.source "Rectangle.java"


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 30
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/Rectangle;-><init>(FFFFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "density"    # F

    .prologue
    const/4 v4, 0x0

    .line 34
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/Rectangle;-><init>(FFFFF)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "density"    # F
    .param p4, "resitution"    # F

    .prologue
    .line 38
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/Rectangle;-><init>(FFFFF)V

    .line 39
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "density"    # F
    .param p4, "restitution"    # F
    .param p5, "friction"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/PolygonBasedShape;-><init>()V

    .line 43
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    div-float v1, p1, v2

    div-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/physics/PolygonDef;->setAsBox(FF)V

    .line 44
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p3, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->density:F

    .line 45
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p4, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->restitution:F

    .line 46
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p5, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    .line 47
    iput p1, p0, Lorg/loon/framework/android/game/physics/Rectangle;->width:F

    .line 48
    iput p2, p0, Lorg/loon/framework/android/game/physics/Rectangle;->height:F

    .line 49
    return-void
.end method


# virtual methods
.method protected applyOffset(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 60
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/Rectangle;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lorg/loon/framework/android/game/physics/Rectangle;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/physics/PolygonDef;->setAsBox(FF)V

    .line 61
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/loon/framework/android/game/physics/Rectangle;->width:F

    return v0
.end method
