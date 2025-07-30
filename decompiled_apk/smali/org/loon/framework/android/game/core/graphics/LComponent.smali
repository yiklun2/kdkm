.class public abstract Lorg/loon/framework/android/game/core/graphics/LComponent;
.super Lorg/loon/framework/android/game/core/LObject;
.source "LComponent.java"


# instance fields
.field private final UI_RES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected alpha:F

.field protected background:Ljavax/microedition/lcdui/Image;

.field public customRendering:Z

.field protected desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

.field protected elastic:Z

.field protected enabled:Z

.field protected factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

.field protected focusable:Z

.field private height:I

.field private imageUI:[Ljavax/microedition/lcdui/Image;

.field protected input:Lorg/loon/framework/android/game/core/LInput;

.field protected isFull:Z

.field protected isLimitMove:Z

.field protected oldClip:Landroid/graphics/Rect;

.field private parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

.field private processUI:Z

.field private screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field protected screenX:I

.field protected screenY:I

.field protected selected:Z

.field protected tooltip:Ljava/lang/String;

.field protected ui:[Ljavax/microedition/lcdui/Image;

.field protected visible:Z

.field private width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/LObject;-><init>()V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    .line 78
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    .line 80
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    .line 83
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->focusable:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->selected:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->UI_RES:Ljava/util/HashMap;

    .line 91
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 110
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setLocation(DD)V

    .line 111
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 112
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 113
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getScreenBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 114
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    if-nez v0, :cond_0

    .line 115
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 117
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    if-nez v0, :cond_1

    .line 118
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkFocusKey()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->input:Lorg/loon/framework/android/game/core/LInput;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->isKeyDown(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->input:Lorg/loon/framework/android/game/core/LInput;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->isKeyDown(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->transferFocus()V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->transferFocusBackward()V

    goto :goto_0
.end method

.method public clearBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 623
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 624
    return-void
.end method

.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method public contains(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    if-eqz v0, :cond_0

    .line 252
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    if-lt p2, v0, :cond_0

    .line 253
    add-int v0, p1, p3

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    add-int v0, p2, p4

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 251
    goto :goto_0
.end method

.method protected createCustomUI(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 683
    return-void
.end method

.method protected createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 244
    return-void
.end method

.method protected createRenderedUI(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    invoke-virtual {v0, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    .line 676
    return-void
.end method

.method protected createUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 582
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    sget-object v3, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-ne v2, v3, :cond_0

    .line 616
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->customRendering:Z

    if-eqz v2, :cond_1

    .line 586
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createCustomUI(II)V

    .line 587
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processCustomUI()V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_6

    .line 589
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->getUIDescription()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    array-length v3, v3

    if-ne v2, v3, :cond_6

    .line 590
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 591
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 592
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid Operation! Can not change component size when using external UI size ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 593
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 599
    :cond_3
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->processUI:Z

    if-nez v2, :cond_4

    .line 600
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    goto :goto_0

    .line 602
    :cond_4
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    array-length v2, v2

    new-array v2, v2, [Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    .line 603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 610
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processExternalUI()V

    goto/16 :goto_0

    .line 604
    :cond_5
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 605
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 604
    invoke-static {v3, v4, v5}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aput-object v3, v2, v1

    .line 606
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 607
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v1

    invoke-interface {v0, v2, v6, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 608
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v1    # "i":I
    :cond_6
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createRenderedUI(II)V

    .line 614
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processRenderedUI()V

    goto/16 :goto_0
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->elastic:Z

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->oldClip:Landroid/graphics/Rect;

    .line 192
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getScreenX()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getScreenY()I

    move-result v1

    .line 193
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v3

    .line 192
    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 196
    :cond_2
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 197
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_3

    .line 199
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 200
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    move-object v0, p1

    .line 199
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    .line 202
    :cond_3
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->customRendering:Z

    if-eqz v0, :cond_4

    .line 203
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 204
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    move-object v0, p0

    move-object v1, p1

    .line 203
    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 210
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 226
    :goto_2
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->elastic:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->oldClip:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 207
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    move-object v1, p1

    move-object v4, p0

    .line 206
    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V

    goto :goto_1

    .line 213
    :cond_5
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_6

    .line 214
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 215
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    move-object v0, p1

    .line 214
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;IIII)V

    .line 217
    :cond_6
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->customRendering:Z

    if-eqz v0, :cond_7

    .line 218
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 219
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    move-object v0, p0

    move-object v1, p1

    .line 218
    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto :goto_2

    .line 221
    :cond_7
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 222
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    move-object v1, p1

    move-object v4, p0

    .line 221
    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v1, p0, v3}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V

    .line 274
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v1, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    .line 277
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Desktop;->EMPTY_DESKTOP:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 278
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->input:Lorg/loon/framework/android/game/core/LInput;

    .line 279
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 280
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_1

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 284
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    .line 286
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_2

    .line 287
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 290
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    .line 292
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 294
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    .line 296
    :cond_3
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 297
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->selected:Z

    .line 298
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    .line 299
    return-void

    .line 282
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_5
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    return v0
.end method

.method public getBackground()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 469
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    return-object v0
.end method

.method public getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    return v0
.end method

.method public getImageUI()[Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    return v0
.end method

.method public getScreenX()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    return v0
.end method

.method public getToolTipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->tooltip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUIName()Ljava/lang/String;
.end method

.method public getUIRenderer()Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    return-object v0
.end method

.method public getUIResource()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->UI_RES:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    return v0
.end method

.method public intersects(II)Z
    .locals 2
    .param p1, "x1"    # I
    .param p2, "y1"    # I

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    if-eqz v0, :cond_0

    .line 258
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 259
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 260
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 257
    goto :goto_0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z
    .locals 3
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    if-lt v0, v1, :cond_0

    .line 267
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 268
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    add-int/2addr v0, v1

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 269
    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 264
    goto :goto_0
.end method

.method public isContainer()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    :goto_0
    return v0

    .line 315
    :cond_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->focusable:Z

    return v0
.end method

.method protected isNotMoveInScreen(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 131
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->isLimitMove:Z

    if-nez v6, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v7, v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    sub-int v3, v6, v7

    .line 135
    .local v3, "width":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v7, v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    sub-int v0, v6, v7

    .line 136
    .local v0, "height":I
    add-int v1, p1, v3

    .line 137
    .local v1, "limitX":I
    add-int v2, p2, v0

    .line 138
    .local v2, "limitY":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v7, v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    if-lt v6, v7, :cond_3

    .line 139
    add-int/lit8 v6, v3, -0x1

    if-lt v1, v6, :cond_2

    move v4, v5

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    if-gt v1, v5, :cond_4

    move v4, v5

    .line 142
    goto :goto_0

    .line 145
    :cond_3
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v8

    invoke-virtual {v6, p1, p2, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(IIII)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 146
    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v7, v7, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    if-lt v6, v7, :cond_6

    .line 150
    add-int/lit8 v6, v0, -0x1

    if-lt v2, v6, :cond_5

    move v4, v5

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    if-gt v2, v5, :cond_0

    move v4, v5

    .line 153
    goto :goto_0

    .line 156
    :cond_6
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v8

    invoke-virtual {v6, p1, p2, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(IIII)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 157
    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->selected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    return v0
.end method

.method keyPressed()V
    .locals 0

    .prologue
    .line 512
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->checkFocusKey()V

    .line 513
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->processKeyPressed()V

    .line 514
    return-void
.end method

.method public move(DD)V
    .locals 3
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    const-wide/16 v1, 0x0

    .line 412
    cmpl-double v0, p1, v1

    if-nez v0, :cond_0

    cmpl-double v0, p3, v1

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/LObject;->move(DD)V

    .line 414
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 416
    :cond_1
    return-void
.end method

.method protected processCustomUI()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method protected processExternalUI()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V

    .line 690
    return-void
.end method

.method protected processKeyPressed()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method protected processKeyReleased()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected processRenderedUI()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->ui:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V

    .line 680
    return-void
.end method

.method protected processTouchClicked()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method protected processTouchDragged()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method protected processTouchEntered()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method protected processTouchExited()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method protected processTouchMoved()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method protected processTouchPressed()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method protected processTouchReleased()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->selectComponent(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 536
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->alpha:F

    .line 537
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 628
    return-void
.end method

.method public setBackground(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "t"    # Z

    .prologue
    .line 631
    invoke-static {p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 632
    return-void
.end method

.method public setBackground(Ljavax/microedition/lcdui/Image;)V
    .locals 6
    .param p1, "background"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/16 v5, 0xa

    .line 644
    if-nez p1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    .line 648
    .local v2, "oldImage":Ljavax/microedition/lcdui/Image;
    if-eqz v2, :cond_4

    .line 649
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->hashCode()I

    move-result v0

    .line 650
    .local v0, "a":I
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->hashCode()I

    move-result v1

    .line 651
    .local v1, "b":I
    if-eq v0, v1, :cond_0

    .line 654
    monitor-enter v2

    .line 655
    :try_start_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    .line 656
    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    const/4 v3, 0x0

    .line 654
    .end local v2    # "oldImage":Ljavax/microedition/lcdui/Image;
    .local v3, "oldImage":Ljavax/microedition/lcdui/Image;
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 662
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "oldImage":Ljavax/microedition/lcdui/Image;
    .restart local v2    # "oldImage":Ljavax/microedition/lcdui/Image;
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setAlpha(F)V

    .line 663
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 664
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 665
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    if-nez v4, :cond_2

    .line 666
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 668
    :cond_2
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    if-nez v4, :cond_3

    .line 669
    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 671
    :cond_3
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validateUI()V

    goto :goto_0

    .line 654
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    :catchall_0
    move-exception v4

    move-object v3, v2

    .end local v2    # "oldImage":Ljavax/microedition/lcdui/Image;
    .restart local v3    # "oldImage":Ljavax/microedition/lcdui/Image;
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 660
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "oldImage":Ljavax/microedition/lcdui/Image;
    .restart local v2    # "oldImage":Ljavax/microedition/lcdui/Image;
    :cond_4
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->background:Ljavax/microedition/lcdui/Image;

    goto :goto_1

    .line 654
    .end local v2    # "oldImage":Ljavax/microedition/lcdui/Image;
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    .restart local v3    # "oldImage":Ljavax/microedition/lcdui/Image;
    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method public setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 5
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 635
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v3

    .line 636
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 635
    invoke-static {v2, v3, v4}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 637
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 638
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/Graphics;->setColorAll(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 639
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 640
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 641
    return-void
.end method

.method public setBounds(DDII)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v0

    cmpl-double v0, v0, p3

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 387
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 389
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    if-ne v0, p5, :cond_2

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    if-eq v0, p6, :cond_5

    .line 390
    :cond_2
    iput p5, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 391
    iput p6, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 392
    if-nez p5, :cond_3

    .line 393
    const/4 p5, 0x1

    .line 395
    :cond_3
    if-nez p6, :cond_4

    .line 396
    const/4 p6, 0x1

    .line 399
    :cond_4
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 400
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validateSize()V

    .line 402
    :cond_5
    return-void
.end method

.method final setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V
    .locals 0
    .param p1, "container"    # Lorg/loon/framework/android/game/core/graphics/LContainer;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    .line 365
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 366
    return-void
.end method

.method final setDesktop(Lorg/loon/framework/android/game/core/graphics/Desktop;)V
    .locals 2
    .param p1, "desktop"    # Lorg/loon/framework/android/game/core/graphics/Desktop;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-ne v0, p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 373
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 374
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/Desktop;->input:Lorg/loon/framework/android/game/core/LInput;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->input:Lorg/loon/framework/android/game/core/LInput;

    .line 376
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    if-nez v0, :cond_1

    .line 377
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getUIConfig()Lorg/loon/framework/android/game/core/graphics/window/UIConfig;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getUIName()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->createUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 381
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    .line 323
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->enabled:Z

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->focusable:Z

    .line 356
    return-void
.end method

.method protected setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 453
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 454
    return-void
.end method

.method public setImageUI(ILjavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "imageUI"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 556
    if-eqz p2, :cond_0

    .line 557
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 558
    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    aput-object p2, v0, p1

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->processUI:Z

    .line 562
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 563
    return-void
.end method

.method public setImageUI([Ljavax/microedition/lcdui/Image;Z)V
    .locals 2
    .param p1, "imageUI"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "processUI"    # Z

    .prologue
    const/4 v1, 0x0

    .line 544
    if-eqz p1, :cond_0

    .line 545
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 546
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 549
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->imageUI:[Ljavax/microedition/lcdui/Image;

    .line 550
    iput-boolean p2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->processUI:Z

    .line 552
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 553
    return-void
.end method

.method public setLocation(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v0

    cmpl-double v0, v0, p3

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 407
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 409
    :cond_1
    return-void
.end method

.method final setSelected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->selected:Z

    .line 332
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x1

    .line 419
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    if-eq v0, p2, :cond_3

    .line 420
    :cond_0
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 421
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 422
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    if-nez v0, :cond_1

    .line 423
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 425
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    if-nez v0, :cond_2

    .line 426
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->height:I

    .line 429
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 430
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validateSize()V

    .line 432
    :cond_3
    return-void
.end method

.method public setToolTipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->tooltip:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setUIRenderer(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .prologue
    .line 574
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->factory:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 576
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 577
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    if-ne v0, p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    .line 310
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->visible:Z

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V

    goto :goto_0
.end method

.method protected setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 457
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->width:I

    .line 458
    return-void
.end method

.method public transferFocus()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->transferFocus(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 342
    :cond_0
    return-void
.end method

.method public transferFocusBackward()V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->transferFocusBackward(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 348
    :cond_0
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "timer"    # J

    .prologue
    .line 178
    return-void
.end method

.method public validatePosition()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v0

    .line 439
    :goto_0
    double-to-int v0, v0

    .line 438
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenX:I

    .line 440
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v0

    .line 441
    :goto_1
    double-to-int v0, v0

    .line 440
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->screenY:I

    .line 442
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v0

    .line 439
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getScreenX()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v0

    .line 441
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LComponent;->parent:Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getScreenY()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_1
.end method

.method protected validateSize()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public validateUI()V
    .locals 0

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI()V

    .line 694
    return-void
.end method
