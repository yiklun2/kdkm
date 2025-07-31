.class public Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;
.super Ljava/lang/Object;
.source "PetalKernel.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/effect/IKernel;


# instance fields
.field private exist:Z

.field private height:D

.field private offsetX:D

.field private offsetY:D

.field private sakura:Ljavax/microedition/lcdui/Image;

.field private sakuraHeight:D

.field private sakuraWidth:D

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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "system/images/sakura_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakura:Ljavax/microedition/lcdui/Image;

    .line 42
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakura:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraWidth:D

    .line 43
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakura:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraHeight:D

    .line 44
    int-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->width:D

    .line 45
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->height:D

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    .line 47
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

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetY:D

    .line 48
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    .line 49
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->exist:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakura:Ljavax/microedition/lcdui/Image;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->x:D

    double-to-int v1, v1

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    double-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 91
    :cond_0
    return-void
.end method

.method public getSakuraHeight()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraHeight:D

    return-wide v0
.end method

.method public getSakuraWidth()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraWidth:D

    return-wide v0
.end method

.method public getSnow()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakura:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public make()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->exist:Z

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->width:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->x:D

    .line 54
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraHeight:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    .line 55
    return-void
.end method

.method public move()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v8, -0x4008000000000000L    # -1.5

    const-wide v6, -0x4036666666666666L    # -0.2

    .line 58
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->exist:Z

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->make()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->x:D

    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    .line 65
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    .line 66
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    .line 67
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    cmpl-double v0, v0, v12

    if-ltz v0, :cond_2

    .line 68
    iput-wide v12, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    .line 70
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_3

    .line 71
    iput-wide v8, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->offsetX:D

    .line 73
    :cond_3
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_4

    .line 74
    iput-wide v10, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    .line 76
    :cond_4
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_5

    .line 77
    iput-wide v6, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->speed:D

    .line 79
    :cond_5
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->height:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 80
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-double v0, v0

    .line 81
    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->sakuraHeight:D

    sub-double/2addr v0, v2

    .line 80
    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->y:D

    .line 82
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->width:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;->x:D

    goto :goto_0
.end method
