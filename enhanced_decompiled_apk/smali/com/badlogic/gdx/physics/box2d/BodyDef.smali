.class public Lcom/badlogic/gdx/physics/box2d/BodyDef;
.super Ljava/lang/Object;
.source "BodyDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    }
.end annotation


# instance fields
.field public active:Z

.field public allowSleep:Z

.field public angle:F

.field public angularDamping:F

.field public angularVelocity:F

.field public awake:Z

.field public bullet:Z

.field public fixedRotation:Z

.field public inertiaScale:F

.field public linearDamping:F

.field public final linearVelocity:Lcom/badlogic/gdx/math/Vector2;

.field public final position:Lcom/badlogic/gdx/math/Vector2;

.field public type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 48
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    .line 54
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    .line 59
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 64
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    .line 68
    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 71
    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->awake:Z

    .line 74
    iput-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    .line 80
    iput-boolean v3, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    .line 83
    iput-boolean v2, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    .line 12
    return-void
.end method
