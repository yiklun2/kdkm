.class public Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "GearJointDef.java"


# instance fields
.field public joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

.field public joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

.field public ratio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 36
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->ratio:F

    .line 25
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 26
    return-void
.end method
