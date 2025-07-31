.class public abstract Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;
.super Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
.source "ActorSpeed.java"


# instance fields
.field private speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

.field protected x:D

.field protected y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>()V

    .line 26
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;)V
    .locals 1
    .param p1, "speed"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>()V

    .line 26
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .line 36
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .line 37
    return-void
.end method


# virtual methods
.method public getSpeed()Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    return-object v0
.end method

.method public increaseSpeed(Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;)V
    .locals 1
    .param p1, "s"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->add(Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;)V

    .line 71
    return-void
.end method

.method public move()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 40
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    .line 41
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->speed:Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Speed;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    .line 42
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 43
    iput-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    .line 45
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    .line 48
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 49
    iput-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    .line 51
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    .line 54
    :cond_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->setLocation(DD)V

    .line 55
    return-void
.end method

.method public setLocation(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 58
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    .line 59
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    .line 60
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-super {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 61
    return-void
.end method

.method public setLocation(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    int-to-double v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->x:D

    .line 65
    int-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSpeed;->y:D

    .line 66
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 67
    return-void
.end method
