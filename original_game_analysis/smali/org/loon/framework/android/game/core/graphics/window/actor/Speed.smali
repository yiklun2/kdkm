.class public Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;
.super Ljava/lang/Object;
.source "Speed.java"


# instance fields
.field private direction:I

.field private dx:D

.field private dy:D

.field private length:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 27
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 34
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "length"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 27
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->set(ID)V

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;)V
    .locals 6
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 55
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    iget-wide v2, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 56
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 57
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    .line 58
    return-void
.end method

.method public copy()Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;-><init>()V

    .line 78
    .local v0, "copy":Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    iput-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 79
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    iput-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 80
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 81
    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    iput-wide v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    .line 82
    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    return v0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    return-wide v0
.end method

.method public set(ID)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "length"    # D

    .prologue
    .line 41
    iput-wide p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    .line 42
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 43
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 44
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 45
    return-void
.end method

.method public setDirection(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->direction:I

    .line 49
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dx:D

    .line 50
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->length:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->dy:D

    .line 51
    return-void
.end method
