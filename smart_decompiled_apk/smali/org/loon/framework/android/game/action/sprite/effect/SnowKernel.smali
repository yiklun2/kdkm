.class public Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;
.super Ljava/lang/Object;
.source "SnowKernel.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/effect/IKernel;


# instance fields
.field private exist:Z

.field private height:D

.field private offsetX:D

.field private offsetY:D

.field private snow:Ljavax/microedition/lcdui/Image;

.field private snowHeight:D

.field private snowWidth:D

.field private speed:D

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .param p1, "n"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "system/images/snow_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snow:Ljavax/microedition/lcdui/Image;

    .line 40
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snow:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowWidth:D

    .line 41
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snow:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowHeight:D

    .line 42
    int-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->width:D

    .line 43
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->height:D

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    .line 45
    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    const-wide v2, 0x3ffe666666666666L    # 1.9

    add-double/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetY:D

    .line 46
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->exist:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snow:Ljavax/microedition/lcdui/Image;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->x:D

    double-to-int v1, v1

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    double-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 88
    :cond_0
    return-void
.end method

.method public getSnow()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snow:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getSnowHeight()D
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowHeight:D

    return-wide v0
.end method

.method public getSnowWidth()D
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowWidth:D

    return-wide v0
.end method

.method public make()V
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->exist:Z

    .line 51
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->width:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->x:D

    .line 52
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowHeight:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    .line 53
    return-void
.end method

.method public move()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v8, -0x4008000000000000L    # -1.5

    const-wide v6, -0x4036666666666666L    # -0.2

    .line 56
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->exist:Z

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->make()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->x:D

    .line 62
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    .line 63
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    .line 65
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    cmpl-double v0, v0, v12

    if-ltz v0, :cond_2

    .line 66
    iput-wide v12, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    .line 68
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_3

    .line 69
    iput-wide v8, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->offsetX:D

    .line 71
    :cond_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_4

    .line 72
    iput-wide v10, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    .line 74
    :cond_4
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_5

    .line 75
    iput-wide v6, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->speed:D

    .line 77
    :cond_5
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->height:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->snowHeight:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->y:D

    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->width:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;->x:D

    goto :goto_0
.end method
