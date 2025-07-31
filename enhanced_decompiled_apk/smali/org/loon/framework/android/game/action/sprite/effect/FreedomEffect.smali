.class public Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
.super Ljava/lang/Object;
.source "FreedomEffect.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private count:I

.field private height:I

.field private kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

.field private layer:I

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private timer:Lorg/loon/framework/android/game/core/timer/LTimer;

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 6
    .param p2, "count"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 197
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;-><init>(Ljava/lang/Class;IIII)V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IIII)V
    .locals 8
    .param p2, "count"    # I
    .param p3, "limit"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IIII)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v6

    .line 202
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;-><init>(Ljava/lang/Class;IIIIII)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IIIIII)V
    .locals 8
    .param p2, "count"    # I
    .param p3, "limit"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IIIIII)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->visible:Z

    .line 207
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    .line 208
    iput p5, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    .line 209
    iput p6, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->width:I

    .line 210
    iput p7, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->height:I

    .line 211
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->count:I

    .line 212
    new-instance v4, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v5, 0x50

    invoke-direct {v4, v5, v6}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 213
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    iput-object v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    .line 216
    const/4 v4, 0x3

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 217
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 216
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 218
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 226
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 219
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4, p3}, Lorg/loon/framework/android/game/core/LSystem;->getRandom(II)I

    move-result v3

    .line 220
    .local v3, "no":I
    iget-object v5, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 221
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 220
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    aput-object v4, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    .end local v3    # "no":I
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPetalEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x19

    invoke-static {v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getPetalEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getPetalEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1
    .param p0, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p0, v0, v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getPetalEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getPetalEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 2
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 176
    .line 177
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v1

    .line 176
    invoke-static {p0, p1, p2, v0, v1}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getPetalEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getPetalEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 8
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 193
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    const-class v1, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;

    const/4 v3, 0x1

    move v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;-><init>(Ljava/lang/Class;IIIIII)V

    return-object v0
.end method

.method public static getRainEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getRainEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getRainEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1
    .param p0, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {p0, v0, v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getRainEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getRainEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 2
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 128
    .line 129
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v1

    .line 128
    invoke-static {p0, p1, p2, v0, v1}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getRainEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getRainEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 8
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 145
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    const-class v1, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;

    const/4 v3, 0x3

    move v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;-><init>(Ljava/lang/Class;IIIIII)V

    return-object v0
.end method

.method public static getSnowEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getSnowEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getSnowEffect(I)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 1
    .param p0, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0, v0}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getSnowEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getSnowEffect(III)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 2
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 80
    .line 81
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v1

    .line 80
    invoke-static {p0, p1, p2, v0, v1}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getSnowEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v0

    return-object v0
.end method

.method public static getSnowEffect(IIIII)Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;
    .locals 8
    .param p0, "count"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 97
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    const-class v1, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;

    const/4 v3, 0x4

    move v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;-><init>(Ljava/lang/Class;IIIIII)V

    return-object v0
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 229
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->visible:Z

    if-eqz v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->count:I

    if-lt v0, v1, :cond_1

    .line 235
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 231
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/loon/framework/android/game/action/sprite/effect/IKernel;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 315
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->height:I

    return v0
.end method

.method public getKernels()[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->layer:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->width:I

    return v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->visible:Z

    return v0
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 242
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->setDelay(J)V

    .line 243
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 266
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->height:I

    .line 267
    return-void
.end method

.method public setKernels([Lorg/loon/framework/android/game/action/sprite/effect/IKernel;)V
    .locals 0
    .param p1, "kernels"    # [Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    .line 299
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 306
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->layer:I

    .line 307
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->visible:Z

    .line 251
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->width:I

    .line 275
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 282
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    .line 283
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 290
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    .line 291
    return-void
.end method

.method public update(J)V
    .locals 2
    .param p1, "elapsedTime"    # J

    .prologue
    .line 254
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->visible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v1, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->count:I

    if-lt v0, v1, :cond_1

    .line 259
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 256
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->kernels:[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/loon/framework/android/game/action/sprite/effect/IKernel;->move()V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->y:I

    return v0
.end method
