.class public Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "FrictionJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 25
    return-void
.end method

.method private native jniGetMaxForce(J)F
.end method

.method private native jniGetMaxTorque(J)F
.end method

.method private native jniSetMaxForce(JF)V
.end method

.method private native jniSetMaxTorque(JF)V
.end method


# virtual methods
.method public getMaxForce()F
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniGetMaxForce(J)F

    move-result v0

    return v0
.end method

.method public getMaxTorque()F
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniGetMaxTorque(J)F

    move-result v0

    return v0
.end method

.method public setMaxForce(F)V
    .locals 2
    .param p1, "force"    # F

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniSetMaxForce(JF)V

    .line 32
    return-void
.end method

.method public setMaxTorque(F)V
    .locals 2
    .param p1, "torque"    # F

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;->jniSetMaxTorque(JF)V

    .line 50
    return-void
.end method
