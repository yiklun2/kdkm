.class public Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;
.super Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
.source "Layer.java"


# static fields
.field private static final matrix:Landroid/graphics/Matrix;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected actorDrag:Z

.field private dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field private factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

.field private isTouchClick:Z

.field protected pressed:Z

.field private timer:Lorg/loon/framework/android/game/core/timer/LTimer;

.field protected visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;-><init>(IIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 66
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;-><init>(IIIIZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bounded"    # Z

    .prologue
    .line 70
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;-><init>(IIIIZI)V

    .line 71
    return-void
.end method

.method public constructor <init>(IIIIZI)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "bounded"    # Z
    .param p6, "size"    # I

    .prologue
    const/4 v7, 0x1

    .line 74
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;-><init>(IIIIIZ)V

    .line 51
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 75
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setLocation(DD)V

    .line 76
    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->actorDrag:Z

    .line 77
    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->visible:Z

    .line 78
    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->customRendering:Z

    .line 79
    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isTouchClick:Z

    .line 80
    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isLimitMove:Z

    .line 81
    invoke-static {}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->getInstance()Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    .line 82
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setElastic(Z)V

    .line 83
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setLocked(Z)V

    .line 84
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setLayer(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "bounded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 62
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;-><init>(IIIIZ)V

    .line 63
    return-void
.end method


# virtual methods
.method public action(J)V
    .locals 0
    .param p1, "elapsedTime"    # J

    .prologue
    .line 127
    return-void
.end method

.method public bottomOn(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v1

    .line 248
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 247
    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 249
    return-void
.end method

.method public centerOn(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v1

    .line 230
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 229
    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 231
    return-void
.end method

.method public createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->visible:Z

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    add-int v4, p2, p4

    add-int v5, p3, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->paintObjects(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 143
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 147
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 148
    neg-int v0, p2

    neg-int v1, p3

    invoke-interface {p1, v0, v1}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto :goto_0
.end method

.method public downClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 88
    return-void
.end method

.method public downKey()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public drag(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 100
    return-void
.end method

.method public getClickActor()Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerTouchX()I
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLayerTouchY()I
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenY()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScroll(Lorg/loon/framework/android/game/action/map/shapes/RectBox;II)I
    .locals 6
    .param p1, "visibleRect"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .param p2, "orientation"    # I
    .param p3, "direction"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getCellSize()I

    move-result v0

    .line 312
    .local v0, "cellSize":I
    const-wide/16 v2, 0x0

    .line 313
    .local v2, "scrollPos":D
    if-nez p2, :cond_3

    .line 314
    if-gez p3, :cond_2

    .line 315
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinX()I

    move-result v4

    int-to-double v2, v4

    .line 324
    :cond_0
    :goto_0
    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 325
    .local v1, "increment":I
    if-nez v1, :cond_1

    .line 326
    move v1, v0

    .line 328
    :cond_1
    return v1

    .line 316
    .end local v1    # "increment":I
    :cond_2
    if-lez p3, :cond_0

    .line 317
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxX()I

    move-result v4

    int-to-double v2, v4

    goto :goto_0

    .line 319
    :cond_3
    if-gez p3, :cond_4

    .line 320
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMinY()I

    move-result v4

    int-to-double v2, v4

    goto :goto_0

    .line 321
    :cond_4
    if-lez p3, :cond_0

    .line 322
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getMaxY()I

    move-result v4

    int-to-double v2, v4

    goto :goto_0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string v0, "Layer"

    return-object v0
.end method

.method public isActorDrag()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->actorDrag:Z

    return v0
.end method

.method public isLimitMove()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isLimitMove:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->locked:Z

    return v0
.end method

.method public isTouchClick()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isTouchClick:Z

    return v0
.end method

.method public isTouchPressed()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->pressed:Z

    return v0
.end method

.method public leftOn(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 239
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 154
    return-void
.end method

.method public paintObjects(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 24
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "minX"    # I
    .param p3, "minY"    # I
    .param p4, "maxX"    # I
    .param p5, "maxY"    # I

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-nez v2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 161
    const/16 v18, 0x0

    .line 162
    .local v18, "paintSeq":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 163
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/16 v22, 0x0

    .local v22, "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    move/from16 v19, v18

    .line 164
    .end local v18    # "paintSeq":I
    .local v19, "paintSeq":I
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :catchall_0
    move-exception v2

    move/from16 v18, v19

    .end local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v19    # "paintSeq":I
    .restart local v18    # "paintSeq":I
    :goto_2
    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 165
    .end local v18    # "paintSeq":I
    .restart local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v19    # "paintSeq":I
    .restart local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :cond_2
    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    check-cast v22, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 166
    .restart local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->elapsedTime:J

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->update(J)V

    .line 170
    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v20

    .line 171
    .local v20, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    add-int v4, p2, v2

    .line 172
    .local v4, "actorX":I
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    add-int v5, p3, v2

    .line 173
    .local v5, "actorY":I
    invoke-virtual/range {v20 .. v20}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v10

    .line 174
    .local v10, "actorWidth":I
    invoke-virtual/range {v20 .. v20}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v8

    .line 175
    .local v8, "actorHeight":I
    add-int v2, v4, v10

    move/from16 v0, p2

    if-lt v2, v0, :cond_1

    move/from16 v0, p4

    if-gt v4, v0, :cond_1

    .line 176
    add-int v2, v5, v8

    move/from16 v0, p3

    if-lt v2, v0, :cond_1

    move/from16 v0, p5

    if-gt v5, v0, :cond_1

    .line 179
    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v9

    .line 180
    .local v9, "actorImage":Ljavax/microedition/lcdui/Image;
    if-eqz v9, :cond_b

    .line 181
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    const/4 v14, 0x1

    .line 182
    .local v14, "isBitmapFilter":Z
    :goto_3
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "paintSeq":I
    .restart local v18    # "paintSeq":I
    :try_start_4
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLastPaintSeqNum(I)V

    .line 183
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 184
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->factory:Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;

    move-object/from16 v0, v22

    iget v3, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I

    invoke-virtual {v2, v11, v3}, Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterFactory;->doFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 187
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRotation()I

    move-result v21

    .line 188
    .local v21, "rotation":I
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    float-to-double v2, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4

    .line 189
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 191
    :cond_4
    if-eqz v21, :cond_9

    .line 192
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    if-eqz v2, :cond_8

    .line 193
    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    move/from16 v0, v21

    int-to-double v6, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->draw2(Ljavax/microedition/lcdui/Graphics;IID)V

    .line 209
    :goto_4
    move-object/from16 v0, v22

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    float-to-double v2, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_5

    .line 210
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 212
    :cond_5
    if-eqz v14, :cond_6

    .line 213
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "isBitmapFilter":Z
    .end local v21    # "rotation":I
    :cond_6
    :goto_5
    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 218
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->draw(Ljavax/microedition/lcdui/Graphics;)V

    move/from16 v19, v18

    .end local v18    # "paintSeq":I
    .restart local v19    # "paintSeq":I
    goto/16 :goto_1

    .line 181
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 195
    .end local v19    # "paintSeq":I
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "isBitmapFilter":Z
    .restart local v18    # "paintSeq":I
    .restart local v21    # "rotation":I
    :cond_8
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v13, v2

    .line 196
    .local v13, "halfWidth":F
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v12, v2

    .line 197
    .local v12, "halfHeight":F
    int-to-float v2, v4

    add-float v17, v2, v13

    .line 198
    .local v17, "newWidth":F
    int-to-float v2, v5

    add-float v16, v2, v12

    .line 199
    .local v16, "newHeight":F
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 200
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 201
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 202
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    move/from16 v0, v17

    neg-float v3, v0

    move/from16 v0, v16

    neg-float v6, v0

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 203
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    int-to-float v3, v4

    int-to-float v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 204
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->matrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V

    goto :goto_4

    .line 160
    .end local v4    # "actorX":I
    .end local v5    # "actorY":I
    .end local v8    # "actorHeight":I
    .end local v9    # "actorImage":Ljavax/microedition/lcdui/Image;
    .end local v10    # "actorWidth":I
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "halfHeight":F
    .end local v13    # "halfWidth":F
    .end local v14    # "isBitmapFilter":Z
    .end local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "newHeight":F
    .end local v17    # "newWidth":F
    .end local v20    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v21    # "rotation":I
    .end local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :catchall_1
    move-exception v2

    goto/16 :goto_2

    .line 207
    .restart local v4    # "actorX":I
    .restart local v5    # "actorY":I
    .restart local v8    # "actorHeight":I
    .restart local v9    # "actorImage":Ljavax/microedition/lcdui/Image;
    .restart local v10    # "actorWidth":I
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "isBitmapFilter":Z
    .restart local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v20    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v21    # "rotation":I
    .restart local v22    # "thing":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    :cond_9
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_4

    .line 220
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "isBitmapFilter":Z
    .end local v21    # "rotation":I
    :cond_a
    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 221
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 222
    neg-int v2, v4

    neg-int v3, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v19, v18

    .end local v18    # "paintSeq":I
    .restart local v19    # "paintSeq":I
    goto/16 :goto_1

    :cond_b
    move/from16 v18, v19

    .end local v19    # "paintSeq":I
    .restart local v18    # "paintSeq":I
    goto :goto_5
.end method

.method protected processKeyPressed()V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->downKey()V

    .line 382
    :cond_0
    return-void
.end method

.method protected processKeyReleased()V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->upKey()V

    .line 388
    :cond_0
    return-void
.end method

.method protected processTouchDragged()V
    .locals 12

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "dropX":I
    const/4 v1, 0x0

    .line 393
    .local v1, "dropY":I
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->locked:Z

    if-nez v6, :cond_7

    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "moveActor":Z
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->actorDrag:Z

    if-eqz v6, :cond_3

    .line 396
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v7

    .line 397
    :try_start_0
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenX()I

    move-result v8

    sub-int v0, v6, v8

    .line 398
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenY()I

    move-result v8

    sub-int v1, v6, v8

    .line 399
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v6, :cond_0

    .line 400
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getSynchronizedObject(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v6

    iput-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 402
    :cond_0
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isDrag()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 404
    :try_start_1
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 405
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v5

    .line 406
    .local v5, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v6, v5, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v0, v6

    .line 407
    .local v2, "dx":I
    iget v6, v5, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v1, v6

    .line 408
    .local v3, "dy":I
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 409
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 410
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag(II)V

    .line 412
    :cond_1
    const/4 v4, 0x1

    .line 403
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v5    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    :cond_3
    if-nez v4, :cond_4

    .line 418
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    monitor-enter v7

    .line 419
    :try_start_3
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v0

    .line 420
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v1

    .line 421
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->x()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->y()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {p0, v6, v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isNotMoveInScreen(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 422
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 455
    .end local v4    # "moveActor":Z
    :cond_4
    :goto_0
    return-void

    .line 403
    .restart local v4    # "moveActor":Z
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6

    .line 396
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 424
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 425
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 427
    :cond_6
    int-to-double v8, v0

    int-to-double v10, v1

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->move(DD)V

    .line 428
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->drag(II)V

    .line 418
    monitor-exit v7

    goto :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 432
    .end local v4    # "moveActor":Z
    :cond_7
    iget-boolean v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->actorDrag:Z

    if-eqz v6, :cond_4

    .line 435
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v7

    .line 436
    :try_start_7
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenX()I

    move-result v8

    sub-int v0, v6, v8

    .line 437
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v6}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenY()I

    move-result v8

    sub-int v1, v6, v8

    .line 438
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-nez v6, :cond_8

    .line 439
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getSynchronizedObject(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v6

    iput-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 441
    :cond_8
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isDrag()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 442
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 443
    :try_start_8
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v9}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 444
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v5

    .line 445
    .restart local v5    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v6, v5, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v0, v6

    .line 446
    .restart local v2    # "dx":I
    iget v6, v5, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v1, v6

    .line 447
    .restart local v3    # "dy":I
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 448
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 449
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v6, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag(II)V

    .line 442
    :cond_9
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 435
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v5    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_a
    :try_start_9
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6

    .line 442
    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
.end method

.method protected processTouchEntered()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->pressed:Z

    .line 372
    return-void
.end method

.method protected processTouchExited()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->pressed:Z

    .line 376
    return-void
.end method

.method protected processTouchPressed()V
    .locals 4

    .prologue
    .line 336
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isTouchClick:Z

    if-nez v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenX()I

    move-result v3

    sub-int v0, v2, v3

    .line 341
    .local v0, "dx":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenY()I

    move-result v3

    sub-int v1, v2, v3

    .line 342
    .local v1, "dy":I
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getSynchronizedObject(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 343
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isClick()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->downClick(II)V

    .line 348
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->downClick(II)V

    goto :goto_0
.end method

.method protected processTouchReleased()V
    .locals 4

    .prologue
    .line 353
    iget-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isTouchClick:Z

    if-nez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchX()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenX()I

    move-result v3

    sub-int v0, v2, v3

    .line 358
    .local v0, "dx":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getScreenY()I

    move-result v3

    sub-int v1, v2, v3

    .line 359
    .local v1, "dy":I
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getSynchronizedObject(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 360
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isClick()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v2, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->upClick(II)V

    .line 365
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->upClick(II)V

    .line 366
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->dragActor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    goto :goto_0
.end method

.method public rightOn(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 243
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 242
    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 244
    return-void
.end method

.method public setActorDrag(Z)V
    .locals 0
    .param p1, "actorDrag"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->actorDrag:Z

    .line 467
    return-void
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 108
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->setDelay(J)V

    .line 109
    return-void
.end method

.method public setField2DBackground(Lorg/loon/framework/android/game/action/map/Field2D;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "pathMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setField2DBackground(Lorg/loon/framework/android/game/action/map/Field2D;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setField2DBackground(Lorg/loon/framework/android/game/action/map/Field2D;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/Field2D;",
            "Ljava/util/HashMap",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "pathMap":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setField2D(Lorg/loon/framework/android/game/action/map/Field2D;)V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "background":Ljavax/microedition/lcdui/Image;
    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {p0, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setTileBackground(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getBackground()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    .line 266
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getWidth()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 281
    invoke-interface {v1}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 282
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 283
    return-void

    .line 263
    .end local v1    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0

    .line 267
    .restart local v1    # "g":Ljavax/microedition/lcdui/Graphics;
    .restart local v2    # "i":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getHeight()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p1, v4, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->getType(II)I

    move-result v3

    .line 269
    .local v3, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 270
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 271
    instance-of v6, v5, Ljavax/microedition/lcdui/Image;

    if-eqz v6, :cond_4

    .line 272
    check-cast v5, Ljavax/microedition/lcdui/Image;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToWidthPixels(I)I

    move-result v6

    .line 273
    invoke-virtual {p1, v4}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToHeightPixels(I)I

    move-result v7

    .line 272
    invoke-interface {v1, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 267
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 274
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v6, v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    if-eqz v6, :cond_3

    .line 275
    check-cast v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToWidthPixels(I)I

    move-result v6

    .line 276
    invoke-virtual {p1, v4}, Lorg/loon/framework/android/game/action/map/Field2D;->tilesToHeightPixels(I)I

    move-result v7

    .line 275
    invoke-virtual {p0, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V

    goto :goto_3
.end method

.method public setLimitMove(Z)V
    .locals 0
    .param p1, "isLimitMove"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isLimitMove:Z

    .line 475
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->locked:Z

    .line 483
    return-void
.end method

.method public setTileBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setTileBackground(Ljavax/microedition/lcdui/Image;)V

    .line 287
    return-void
.end method

.method public setTileBackground(Ljavax/microedition/lcdui/Image;)V
    .locals 9
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v3

    .line 294
    .local v3, "layerWidth":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getHeight()I

    move-result v2

    .line 295
    .local v2, "layerHeight":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    .line 296
    .local v5, "tileWidth":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    .line 298
    .local v4, "tileHeight":I
    const/4 v8, 0x0

    invoke-static {v3, v2, v8}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 299
    .local v0, "background":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    .line 300
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-lt v6, v3, :cond_1

    .line 305
    invoke-interface {v1}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 307
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->setBackground(Ljavax/microedition/lcdui/Image;)V

    goto :goto_0

    .line 301
    :cond_1
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_2
    if-lt v7, v2, :cond_2

    .line 300
    add-int/2addr v6, v5

    goto :goto_1

    .line 302
    :cond_2
    invoke-interface {v1, p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 301
    add-int/2addr v7, v4

    goto :goto_2
.end method

.method public setTouchClick(Z)V
    .locals 0
    .param p1, "isTouchClick"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->isTouchClick:Z

    .line 491
    return-void
.end method

.method public topOn(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 235
    return-void
.end method

.method public upClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 91
    return-void
.end method

.method public upKey()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->visible:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->update(J)V

    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->elapsedTime:J

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;->action(J)V

    .line 136
    :cond_0
    return-void
.end method

.method protected validateSize()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->validateSize()V

    .line 503
    return-void
.end method
