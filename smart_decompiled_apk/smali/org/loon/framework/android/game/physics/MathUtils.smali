.class public Lorg/loon/framework/android/game/physics/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final abs(F)F
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 31
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static final clamp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 23
    invoke-static {p0, p2}, Lorg/loon/framework/android/game/physics/MathUtils;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/physics/MathUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final clamp(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p0, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "low"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "high"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 27
    invoke-static {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->min(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->max(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public static final degToRad(F)F
    .locals 4
    .param p0, "degree"    # F

    .prologue
    .line 55
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 59
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 14
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static final min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 18
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static final nextPowerOfTwo(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 42
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 43
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 44
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 45
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 46
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 47
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static final radToDeg(F)F
    .locals 4
    .param p0, "rad"    # F

    .prologue
    .line 51
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
