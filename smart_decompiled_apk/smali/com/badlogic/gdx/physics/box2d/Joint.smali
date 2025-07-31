.class public abstract Lcom/badlogic/gdx/physics/box2d/Joint;
.super Ljava/lang/Object;
.source "Joint.java"


# instance fields
.field protected addr:J

.field private final anchorA:Lcom/badlogic/gdx/math/Vector2;

.field private final anchorB:Lcom/badlogic/gdx/math/Vector2;

.field protected jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

.field protected jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

.field private final reactionForce:Lcom/badlogic/gdx/math/Vector2;

.field private final tmp:[F

.field private final world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    .line 70
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->reactionForce:Lcom/badlogic/gdx/math/Vector2;

    .line 29
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 30
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    .line 31
    return-void
.end method

.method private native jniGetAnchorA(J[F)V
.end method

.method private native jniGetAnchorB(J[F)V
.end method

.method private native jniGetBodyA(J)J
.end method

.method private native jniGetBodyB(J)J
.end method

.method private native jniGetReactionForce(JF[F)V
.end method

.method private native jniGetReactionTorque(JF)F
.end method

.method private native jniGetType(J)I
.end method

.method private native jniIsActive(J)Z
.end method


# virtual methods
.method public getAnchorA()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetAnchorA(J[F)V

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorA:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorA:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorA:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getAnchorB()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetAnchorB(J[F)V

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorB:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorB:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->anchorB:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getBodyA()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetBodyA(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getBodyB()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetBodyB(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getReactionForce(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "inv_dt"    # F

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetReactionForce(JF[F)V

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->reactionForce:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->reactionForce:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->tmp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->reactionForce:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getReactionTorque(F)F
    .locals 2
    .param p1, "inv_dt"    # F

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetReactionTorque(JF)F

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 4

    .prologue
    .line 38
    iget-wide v2, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniGetType(J)I

    move-result v1

    .line 39
    .local v1, "type":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->values()[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 42
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    :goto_1
    return-object v2

    .line 40
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->values()[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 41
    invoke-static {}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->values()[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v2

    aget-object v2, v2, v0

    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Joint;->jniIsActive(J)Z

    move-result v0

    return v0
.end method
