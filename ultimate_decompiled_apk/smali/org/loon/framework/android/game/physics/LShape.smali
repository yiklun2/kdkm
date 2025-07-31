.class public interface abstract Lorg/loon/framework/android/game/physics/LShape;
.super Ljava/lang/Object;
.source "LShape.java"


# virtual methods
.method public abstract createInBody(Lorg/loon/framework/android/game/physics/LBody;)V
.end method

.method public abstract getBox2DFixtures()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/FixtureDef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLBody()Lorg/loon/framework/android/game/physics/LBody;
.end method

.method public abstract setDensity(F)V
.end method

.method public abstract setFriction(F)V
.end method

.method public abstract setRestitution(F)V
.end method
