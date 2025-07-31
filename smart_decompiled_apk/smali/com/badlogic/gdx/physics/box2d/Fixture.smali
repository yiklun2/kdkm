.class public Lcom/badlogic/gdx/physics/box2d/Fixture;
.super Ljava/lang/Object;
.source "Fixture.java"


# instance fields
.field protected final addr:J

.field private final body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private final filter:Lcom/badlogic/gdx/physics/box2d/Filter;

.field private final tmp:[S

.field private final world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;
    .param p3, "addr"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    .line 85
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 23
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 24
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 25
    iput-wide p3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    .line 26
    return-void
.end method

.method private native jniGetDensity(J)F
.end method

.method private native jniGetFilterData(J[S)V
.end method

.method private native jniGetFriction(J)F
.end method

.method private native jniGetRestitution(J)F
.end method

.method private native jniGetType(J)I
.end method

.method private native jniIsSensor(J)Z
.end method

.method private native jniSetDensity(JF)V
.end method

.method private native jniSetFilterData(JSSS)V
.end method

.method private native jniSetFriction(JF)V
.end method

.method private native jniSetRestitution(JF)V
.end method

.method private native jniSetSensor(JZ)V
.end method

.method private native jniTestPoint(JFF)Z
.end method


# virtual methods
.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getDensity()F
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetDensity(J)F

    move-result v0

    return v0
.end method

.method public getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;
    .locals 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFilterData(J[S)V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x2

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    return-object v0
.end method

.method public getFriction()F
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFriction(J)F

    move-result v0

    return v0
.end method

.method public getRestitution()F
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetRestitution(J)F

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 3

    .prologue
    .line 34
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetType(J)I

    move-result v0

    .line 35
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 36
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    .line 38
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    goto :goto_0
.end method

.method public getWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public isSensor()Z
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniIsSensor(J)Z

    move-result v0

    return v0
.end method

.method public setDensity(F)V
    .locals 2
    .param p1, "density"    # F

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetDensity(JF)V

    .line 147
    return-void
.end method

.method public setFilterData(Lcom/badlogic/gdx/physics/box2d/Filter;)V
    .locals 6
    .param p1, "filter"    # Lcom/badlogic/gdx/physics/box2d/Filter;

    .prologue
    .line 76
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-short v3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short v4, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short v5, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFilterData(JSSS)V

    .line 77
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFriction(JF)V

    .line 177
    return-void
.end method

.method public setRestitution(F)V
    .locals 2
    .param p1, "restitution"    # F

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetRestitution(JF)V

    .line 197
    return-void
.end method

.method public setSensor(Z)V
    .locals 2
    .param p1, "sensor"    # Z

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetSensor(JZ)V

    .line 55
    return-void
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "p"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniTestPoint(JFF)Z

    move-result v0

    return v0
.end method
