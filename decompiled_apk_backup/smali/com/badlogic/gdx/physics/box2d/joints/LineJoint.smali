.class public Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "LineJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 26
    return-void
.end method

.method private native jniEnableLimit(JZ)V
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetLowerLimit(J)F
.end method

.method private native jniGetMaxMotorForce(J)F
.end method

.method private native jniGetMotorForce(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetUpperLimit(J)F
.end method

.method private native jniIsLimitEnabled(J)Z
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetLimits(JFF)V
.end method

.method private native jniSetMaxMotorForce(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniEnableLimit(JZ)V

    .line 60
    return-void
.end method

.method public enableMotor(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniEnableMotor(JZ)V

    .line 105
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetLowerLimit(J)F

    move-result v0

    return v0
.end method

.method public getMaxMotorForce()F
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMaxMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorForce()F
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getUpperLimit()F
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetUpperLimit(J)F

    move-result v0

    return v0
.end method

.method public isLimitEnabled()Z
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniIsLimitEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setLimits(FF)V
    .locals 2
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetLimits(JFF)V

    .line 87
    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 2
    .param p1, "force"    # F

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetMaxMotorForce(JF)V

    .line 132
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetMotorSpeed(JF)V

    .line 114
    return-void
.end method
