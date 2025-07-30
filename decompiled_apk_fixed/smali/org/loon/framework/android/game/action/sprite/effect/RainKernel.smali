.class public Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;
.super Ljava/lang/Object;
.source "RainKernel.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/effect/IKernel;


# instance fields
.field private exist:Z

.field private height:D

.field private offsetX:D

.field private offsetY:D

.field private rain:Ljavax/microedition/lcdui/Image;

.field private rainHeight:D

.field private rainWidth:D

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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "system/images/rain_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rain:Ljavax/microedition/lcdui/Image;

    .line 41
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rain:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainWidth:D

    .line 42
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rain:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainHeight:D

    .line 43
    int-to-double v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->width:D

    .line 44
    int-to-double v0, p3

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->height:D

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->offsetX:D

    .line 46
    rsub-int/lit8 v0, p1, 0x5

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x4b

    int-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->offsetY:D

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->exist:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rain:Ljavax/microedition/lcdui/Image;

    iget-wide v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->x:D

    double-to-int v1, v1

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    double-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 73
    :cond_0
    return-void
.end method

.method public getRain()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rain:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getRainHeight()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainHeight:D

    return-wide v0
.end method

.method public getRainWidth()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainWidth:D

    return-wide v0
.end method

.method public make()V
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->exist:Z

    .line 51
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->width:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->x:D

    .line 52
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainHeight:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    .line 53
    return-void
.end method

.method public move()V
    .locals 4

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->exist:Z

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->make()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->x:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->offsetX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->x:D

    .line 61
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->offsetY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    .line 62
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->height:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->width:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->x:D

    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->rainHeight:D

    neg-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;->y:D

    goto :goto_0
.end method
