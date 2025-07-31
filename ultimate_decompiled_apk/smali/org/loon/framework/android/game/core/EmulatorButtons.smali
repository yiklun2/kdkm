.class public Lorg/loon/framework/android/game/core/EmulatorButtons;
.super Ljava/lang/Object;
.source "EmulatorButtons.java"


# static fields
.field protected static BUTTON_PAINT:Landroid/graphics/Paint; = null

.field private static DEFAULT_ALPHA:F = 0.0f

.field private static final offset:I = 0xa


# instance fields
.field private alpha:F

.field private final buttons:Landroid/graphics/Bitmap;

.field private cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private circle:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private down:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private final dpad:Landroid/graphics/Bitmap;

.field private emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

.field private height:I

.field private left:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private offsetX:I

.field private offsetY:I

.field private right:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private square:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private up:Lorg/loon/framework/android/game/core/EmulatorButton;

.field private visible:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x3f333333    # 0.7f

    sput v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->DEFAULT_ALPHA:F

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    .locals 2
    .param p1, "el"    # Lorg/loon/framework/android/game/core/EmulatorListener;

    .prologue
    .line 56
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    .line 57
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButtons;-><init>(Lorg/loon/framework/android/game/core/EmulatorListener;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/EmulatorListener;II)V
    .locals 11
    .param p1, "el"    # Lorg/loon/framework/android/game/core/EmulatorListener;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/16 v10, 0x44

    const/16 v7, 0x3c

    const/4 v6, 0x1

    const/16 v9, 0x30

    const/16 v2, 0x28

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    .line 63
    const-string v0, "system/images/e1.png"

    invoke-static {v0, v6}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->dpad:Landroid/graphics/Bitmap;

    .line 64
    const-string v0, "system/images/e2.png"

    invoke-static {v0, v6}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->buttons:Landroid/graphics/Bitmap;

    .line 65
    iput p2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    .line 66
    iput p3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->height:I

    .line 68
    sget v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->DEFAULT_ALPHA:F

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->setAlpha(F)V

    .line 70
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->dpad:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 71
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->dpad:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move v3, v2

    move v5, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 72
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->dpad:Landroid/graphics/Bitmap;

    const/16 v4, 0x50

    move v3, v2

    move v5, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 73
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->dpad:Landroid/graphics/Bitmap;

    const/16 v5, 0x50

    move v3, v2

    move v4, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 75
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->buttons:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move v2, v9

    move v3, v9

    move v4, v9

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 76
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->buttons:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move v2, v9

    move v3, v9

    move v5, v9

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 77
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->buttons:Landroid/graphics/Bitmap;

    const/16 v4, 0x60

    move v2, v9

    move v3, v9

    move v5, v9

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 78
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButton;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->buttons:Landroid/graphics/Bitmap;

    const/16 v5, 0x60

    move v2, v9

    move v3, v9

    move v4, v9

    move v7, v10

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/EmulatorButton;-><init>(Landroid/graphics/Bitmap;IIIIZII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    .line 80
    iput-boolean v6, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->setLocation(II)V

    .line 83
    return-void
.end method

.method private checkOn()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onUpClick()V

    .line 317
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onLeftClick()V

    .line 320
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onRightClick()V

    .line 323
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onDownClick()V

    .line 327
    :cond_5
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onTriangleClick()V

    .line 330
    :cond_6
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onSquareClick()V

    .line 333
    :cond_7
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 334
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onCircleClick()V

    .line 336
    :cond_8
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->onCancelClick()V

    goto :goto_0
.end method

.method private checkUn(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 374
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unUpClick()V

    .line 376
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 377
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unLeftClick()V

    .line 379
    :cond_3
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 380
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unRightClick()V

    .line 382
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 383
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unDownClick()V

    .line 386
    :cond_5
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 387
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unTriangleClick()V

    .line 389
    :cond_6
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 390
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unSquareClick()V

    .line 392
    :cond_7
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 393
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unCircleClick()V

    .line 395
    :cond_8
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->isClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/EmulatorButton;->getPointerId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/EmulatorListener;->unCancelClick()V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 294
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 295
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 296
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 298
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    .line 301
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 272
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 273
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 274
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 276
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 277
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 278
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 279
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 280
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    goto :goto_0
.end method

.method public getCancel()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getCircle()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getDown()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getEmulatorButtons()[Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 3

    .prologue
    .line 256
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/loon/framework/android/game/core/EmulatorButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 257
    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    aput-object v2, v0, v1

    .line 256
    return-object v0
.end method

.method public getEmulatorListener()Lorg/loon/framework/android/game/core/EmulatorListener;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    return-object v0
.end method

.method public getLeft()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getRight()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getSquare()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getTriangle()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getUp()Lorg/loon/framework/android/game/core/EmulatorButton;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hideLeft()V

    .line 129
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hideRight()V

    .line 130
    return-void
.end method

.method public hideLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 139
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 141
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 142
    return-void
.end method

.method public hideRight()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 153
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 155
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 156
    return-void
.end method

.method public hit(IFF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 342
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(III)V

    .line 343
    return-void
.end method

.method public hit(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 352
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 353
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 354
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 356
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 357
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 358
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 359
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/EmulatorButton;->hit(III)V

    .line 361
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->checkOn()V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    return v0
.end method

.method public onEmulatorButtonEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v6, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v4, 0x0

    .line 175
    .local v4, "touchX":F
    const/4 v5, 0x0

    .line 176
    .local v5, "touchY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 177
    .local v0, "code":I
    invoke-static {}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 178
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 179
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .line 180
    .local v1, "id":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 181
    invoke-static {p1, v2}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 182
    invoke-static {p1, v1}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    div-float v4, v6, v7

    .line 183
    invoke-static {p1, v1}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    div-float v5, v6, v7

    .line 184
    sparse-switch v0, :sswitch_data_0

    .line 180
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    :sswitch_0
    if-nez v2, :cond_2

    .line 187
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 191
    :sswitch_1
    if-nez v2, :cond_2

    .line 192
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->unhit(I)V

    goto :goto_2

    .line 196
    :sswitch_2
    if-nez v2, :cond_2

    .line 197
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 201
    :sswitch_3
    if-nez v2, :cond_2

    .line 202
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->unhit(I)V

    goto :goto_2

    .line 206
    :sswitch_4
    if-ne v2, v9, :cond_2

    .line 207
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 211
    :sswitch_5
    if-ne v2, v9, :cond_2

    .line 212
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 216
    :sswitch_6
    if-ne v2, v10, :cond_2

    .line 217
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 221
    :sswitch_7
    if-ne v2, v10, :cond_2

    .line 222
    invoke-virtual {p0, v1, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_2

    .line 228
    .end local v1    # "id":I
    .end local v2    # "idx":I
    .end local v3    # "pointerCount":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sget v7, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    div-float v4, v6, v7

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sget v7, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    div-float v5, v6, v7

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    invoke-virtual {p0, v8, v4, v5}, Lorg/loon/framework/android/game/core/EmulatorButtons;->hit(IFF)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0, v8}, Lorg/loon/framework/android/game/core/EmulatorButtons;->unhit(I)V

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_4
        0x106 -> :sswitch_5
        0x205 -> :sswitch_6
        0x206 -> :sswitch_7
    .end sparse-switch

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "a"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 425
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 426
    iput p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->alpha:F

    .line 427
    const/4 v0, 0x0

    sput-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    .line 440
    :goto_0
    return-void

    .line 428
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 429
    sget-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    .line 432
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    iput p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->alpha:F

    mul-float v1, v2, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 434
    :cond_2
    sget v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->DEFAULT_ALPHA:F

    iput v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->alpha:F

    .line 435
    sget-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 436
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    .line 438
    :cond_3
    sget-object v0, Lorg/loon/framework/android/game/core/EmulatorButtons;->BUTTON_PAINT:Landroid/graphics/Paint;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->alpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    .locals 0
    .param p1, "emulator"    # Lorg/loon/framework/android/game/core/EmulatorListener;

    .prologue
    .line 455
    iput-object p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    .line 456
    return-void
.end method

.method public setLocation(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 95
    :cond_0
    iput p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    .line 96
    iput p2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 97
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 98
    iget v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->height:I

    iget-object v4, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 99
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 100
    iget v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->height:I

    iget-object v4, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 102
    iget v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->height:I

    iget-object v4, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 103
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 104
    iget v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->height:I

    iget-object v4, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 106
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 108
    add-int/lit8 v1, v1, -0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    add-int/lit8 v2, v2, 0xa

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 109
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 110
    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 111
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 112
    add-int/lit8 v1, v1, -0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 114
    add-int/lit8 v1, v1, -0xa

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 113
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    goto/16 :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 117
    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x50

    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 118
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    .line 119
    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x50

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 120
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 121
    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x50

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    iget v1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 123
    iget v2, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->offsetY:I

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/EmulatorButton;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x50

    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/EmulatorButton;->setLocation(II)V

    goto/16 :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    .line 448
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->showLeft()V

    .line 134
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/EmulatorButtons;->showRight()V

    .line 135
    return-void
.end method

.method public showLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 146
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 148
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 149
    return-void
.end method

.method public showRight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 161
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 162
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/EmulatorButton;->disable(Z)V

    .line 163
    return-void
.end method

.method public unhit(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 402
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->visible:Z

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->checkUn(I)V

    .line 408
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->up:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 409
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->left:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 410
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->right:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 411
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->down:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 413
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->triangle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 414
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->square:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 415
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->circle:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    .line 416
    iget-object v0, p0, Lorg/loon/framework/android/game/core/EmulatorButtons;->cancel:Lorg/loon/framework/android/game/core/EmulatorButton;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButton;->unhit(I)V

    goto :goto_0
.end method
