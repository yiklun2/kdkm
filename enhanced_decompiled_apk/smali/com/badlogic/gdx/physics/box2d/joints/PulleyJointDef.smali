.class public Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "PulleyJointDef.java"


# static fields
.field private static final minPulleyLength:F = 2.0f


# instance fields
.field public final groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public lengthA:F

.field public lengthB:F

.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public maxLengthA:F

.field public maxLengthB:F

.field public ratio:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 75
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    .line 80
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthA:F

    .line 85
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    .line 90
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthB:F

    .line 95
    iput v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    .line 28
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->collideConnected:Z

    .line 30
    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 4
    .param p1, "bodyA"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p2, "bodyB"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p3, "groundAnchorA"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "groundAnchorB"    # Lcom/badlogic/gdx/math/Vector2;
    .param p5, "anchorA"    # Lcom/badlogic/gdx/math/Vector2;
    .param p6, "anchorB"    # Lcom/badlogic/gdx/math/Vector2;
    .param p7, "ratio"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 38
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 41
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p6}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 43
    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    .line 44
    invoke-virtual {p6, p4}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    .line 45
    iput p7, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    .line 46
    iget v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    iget v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    mul-float/2addr v2, p7

    add-float v0, v1, v2

    .line 47
    .local v0, "C":F
    mul-float v1, p7, v3

    sub-float v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthA:F

    .line 48
    sub-float v1, v0, v3

    div-float/2addr v1, p7

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthB:F

    .line 50
    return-void
.end method
