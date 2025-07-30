.class public abstract Lorg/loon/framework/android/game/physics/PrimitiveShape;
.super Ljava/lang/Object;
.source "PrimitiveShape.java"

# interfaces
.implements Lorg/loon/framework/android/game/physics/LShape;


# instance fields
.field protected body:Lorg/loon/framework/android/game/physics/LBody;

.field protected def:Lorg/loon/framework/android/game/physics/PolygonDef;

.field protected jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

.field protected jboxFixtures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/loon/framework/android/game/physics/PolygonDef;)V
    .locals 1
    .param p1, "def"    # Lorg/loon/framework/android/game/physics/PolygonDef;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixtures:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    .line 41
    return-void
.end method


# virtual methods
.method public createInBody(Lorg/loon/framework/android/game/physics/LBody;)V
    .locals 2
    .param p1, "body"    # Lorg/loon/framework/android/game/physics/LBody;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->body:Lorg/loon/framework/android/game/physics/LBody;

    .line 45
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/LBody;->getBox2DBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->createShape(Lorg/loon/framework/android/game/physics/PolygonDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 46
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixtures:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public getBox2DFixtures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixtures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLBody()Lorg/loon/framework/android/game/physics/LBody;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->body:Lorg/loon/framework/android/game/physics/LBody;

    return-object v0
.end method

.method public setDensity(F)V
    .locals 1
    .param p1, "density"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p1, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->density:F

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p1, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->friction:F

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setFriction(F)V

    goto :goto_0
.end method

.method public setRestitution(F)V
    .locals 1
    .param p1, "rest"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->def:Lorg/loon/framework/android/game/physics/PolygonDef;

    iput p1, v0, Lorg/loon/framework/android/game/physics/PolygonDef;->restitution:F

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PrimitiveShape;->jboxFixture:Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setRestitution(F)V

    goto :goto_0
.end method
