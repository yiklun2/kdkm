.class public abstract Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
.super Lorg/loon/framework/android/game/core/graphics/LContainer;
.source "ActorLayer.java"


# static fields
.field private static final min_size:I = 0x30


# instance fields
.field protected cellSize:I

.field private collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

.field elapsedTime:J

.field private isBounded:Z

.field objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

.field private tmpField:Lorg/loon/framework/android/game/action/map/Field2D;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layerWidth"    # I
    .param p4, "layerHeight"    # I
    .param p5, "cellSize"    # I

    .prologue
    .line 64
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;-><init>(IIIIIZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layerWidth"    # I
    .param p4, "layerHeight"    # I
    .param p5, "cellSize"    # I
    .param p6, "bounded"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/LContainer;-><init>(IIII)V

    .line 70
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    .line 71
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    .line 72
    iput p5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    .line 73
    invoke-direct {p0, p3, p4, p5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->initialize(III)V

    .line 74
    iput-boolean p6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded:Z

    .line 75
    return-void
.end method

.method private initialize(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cellSize"    # I

    .prologue
    .line 78
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->initialize(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public abstract action(J)V
.end method

.method public addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;
    .param p2, "obj"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 108
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/ActionControl;->addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 109
    return-void
.end method

.method public addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V
    .locals 1
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;
    .param p2, "obj"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "paused"    # Z

    .prologue
    .line 98
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/action/ActionControl;->addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V

    .line 99
    return-void
.end method

.method public addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 468
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V

    .line 469
    return-void
.end method

.method public addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 453
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->add(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p1, p2, p3, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->addLayer(IILorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V

    .line 456
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->addObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 457
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->addLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V

    .line 453
    :cond_0
    monitor-exit v1

    .line 460
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callCircleTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/CircleTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "radius"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 382
    new-instance v0, Lorg/loon/framework/android/game/action/CircleTo;

    invoke-direct {v0, p2, p3}, Lorg/loon/framework/android/game/action/CircleTo;-><init>(II)V

    .line 383
    .local v0, "circle":Lorg/loon/framework/android/game/action/CircleTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 384
    return-object v0
.end method

.method public callFadeInTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)Lorg/loon/framework/android/game/action/FadeTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "speed"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callFadeTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/FadeTo;

    move-result-object v0

    return-object v0
.end method

.method public callFadeOutTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)Lorg/loon/framework/android/game/action/FadeTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "speed"    # I

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callFadeTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/FadeTo;

    move-result-object v0

    return-object v0
.end method

.method public callFadeTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/FadeTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "type"    # I
    .param p3, "speed"    # I

    .prologue
    .line 318
    new-instance v0, Lorg/loon/framework/android/game/action/FadeTo;

    invoke-direct {v0, p2, p3}, Lorg/loon/framework/android/game/action/FadeTo;-><init>(II)V

    .line 319
    .local v0, "fade":Lorg/loon/framework/android/game/action/FadeTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 320
    return-object v0
.end method

.method public callFireTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IID)Lorg/loon/framework/android/game/action/FireTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "speed"    # D

    .prologue
    .line 397
    new-instance v0, Lorg/loon/framework/android/game/action/FireTo;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/action/FireTo;-><init>(IID)V

    .line 398
    .local v0, "fire":Lorg/loon/framework/android/game/action/FireTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 399
    return-object v0
.end method

.method public callJumpTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IF)Lorg/loon/framework/android/game/action/JumpTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "j"    # I
    .param p3, "g"    # F

    .prologue
    .line 368
    new-instance v0, Lorg/loon/framework/android/game/action/JumpTo;

    invoke-direct {v0, p2, p3}, Lorg/loon/framework/android/game/action/JumpTo;-><init>(IF)V

    .line 369
    .local v0, "jump":Lorg/loon/framework/android/game/action/JumpTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 370
    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 6
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 247
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;ZII)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/action/map/Field2D;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;ZII)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 1
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;
    .param p2, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "flag"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 232
    new-instance v0, Lorg/loon/framework/android/game/action/MoveTo;

    invoke-direct {v0, p1, p4, p5, p3}, Lorg/loon/framework/android/game/action/MoveTo;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIZ)V

    .line 233
    .local v0, "move":Lorg/loon/framework/android/game/action/MoveTo;
    invoke-virtual {p0, v0, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 234
    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 6
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/16 v4, 0x20

    .line 293
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IIII)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IIII)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 7
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 281
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;ZIIII)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IIZ)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 7
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "flag"    # Z

    .prologue
    const/16 v5, 0x20

    .line 306
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;ZIIII)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;ZIIII)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 2
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "flag"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {p0, p5, p6}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->createArrayMap(II)Lorg/loon/framework/android/game/action/map/Field2D;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 265
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/action/MoveTo;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-direct {v0, v1, p3, p4, p2}, Lorg/loon/framework/android/game/action/MoveTo;-><init>(Lorg/loon/framework/android/game/action/map/Field2D;IIZ)V

    .line 266
    .local v0, "move":Lorg/loon/framework/android/game/action/MoveTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 267
    return-object v0
.end method

.method public callRotateTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;FF)Lorg/loon/framework/android/game/action/RotateTo;
    .locals 1
    .param p1, "o"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "angle"    # F
    .param p3, "speed"    # F

    .prologue
    .line 354
    new-instance v0, Lorg/loon/framework/android/game/action/RotateTo;

    invoke-direct {v0, p2, p3}, Lorg/loon/framework/android/game/action/RotateTo;-><init>(FF)V

    .line 355
    .local v0, "rotate":Lorg/loon/framework/android/game/action/RotateTo;
    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->addActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 356
    return-object v0
.end method

.method public createArrayMap(II)Lorg/loon/framework/android/game/action/map/Field2D;
    .locals 3
    .param p1, "tileWidth"    # I
    .param p2, "tileHeight"    # I

    .prologue
    .line 410
    new-instance v1, Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v2

    .line 411
    div-int/2addr v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    invoke-direct {v1, v0, p1, p2}, Lorg/loon/framework/android/game/action/map/Field2D;-><init>([[III)V

    .line 410
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    .line 412
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    return-object v0
.end method

.method public getActionEvent(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/ActionEvent;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 156
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/ActionControl;->getAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getActionEventCount()I
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl;->getCount()I

    move-result v0

    return v0
.end method

.method public getActionEventFPS()I
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl;->getFPS()I

    move-result v0

    return v0
.end method

.method getCellCenter(I)D
    .locals 8
    .param p1, "c"    # I

    .prologue
    .line 825
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    mul-int/2addr v2, p1

    int-to-double v2, v2

    .line 826
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 825
    add-double v0, v2, v4

    .line 827
    .local v0, "cellCenter":D
    return-wide v0
.end method

.method public getCellSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    return v0
.end method

.method getCollisionObjects(II)Ljava/util/Collection;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 831
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 832
    .local v3, "result":Ljava/util/ArrayList;
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 833
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 840
    return-object v3

    .line 834
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 835
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v1

    .line 836
    .local v1, "bounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-virtual {v1, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCollisionObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v2, "result":Ljava/util/ArrayList;
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 691
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 697
    return-object v2

    .line 692
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 693
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCollisionObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Ljava/util/List;
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCollisionObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionObjectsAt(IILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 709
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getObjectsAt(IILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getField2D()Lorg/loon/framework/android/game/action/map/Field2D;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    return-object v0
.end method

.method getHeightInPixels()I
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    mul-int/2addr v0, v1

    return v0
.end method

.method getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 789
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "distance"    # I
    .param p3, "d"    # Z
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 801
    if-gez p2, :cond_0

    .line 802
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "distance < 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 797
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getObjectsListInPaintO()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    return-object v0
.end method

.method public getOnlyCollisionObjectsAt(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 720
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 726
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 721
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 722
    .local v0, "a":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getOnlyCollisionObjectsAt(IILjava/lang/Object;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 737
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 743
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 738
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 739
    .local v0, "a":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_0
.end method

.method getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "cls"    # Ljava/lang/Class;

    .prologue
    .line 793
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "cls"    # Ljava/lang/Class;

    .prologue
    .line 852
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getRandomLayerLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 587
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getRandomLayerLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 588
    .local v0, "rects":[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    if-eqz v0, :cond_0

    .line 589
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 591
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRandomLayerLocation(III)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 6
    .param p1, "actorWidth"    # I
    .param p2, "actorHeight"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 564
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getRandomLayerLocation(IIIII)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method public getRandomLayerLocation(IIIII)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 23
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nw"    # I
    .param p4, "nh"    # I
    .param p5, "count"    # I

    .prologue
    .line 510
    if-gtz p5, :cond_0

    .line 511
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "count <= 0 !"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 513
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v10

    .line 514
    .local v10, "layerWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v9

    .line 515
    .local v9, "layerHeight":I
    const/16 v20, 0x30

    move/from16 v0, p3

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v4, p3

    .line 516
    .local v4, "actorWidth":I
    :goto_0
    const/16 v20, 0x30

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    move/from16 v3, p4

    .line 517
    .local v3, "actorHeight":I
    :goto_1
    div-int v18, p1, v4

    .line 518
    .local v18, "x":I
    div-int v19, p2, v3

    .line 519
    .local v19, "y":I
    div-int v14, v10, v4

    .line 520
    .local v14, "row":I
    div-int v5, v9, v3

    .line 521
    .local v5, "col":I
    move/from16 v0, p5

    new-array v13, v0, [Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 522
    .local v13, "randoms":[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    const/4 v11, 0x0

    .local v11, "oldRx":I
    const/4 v12, 0x0

    .line 523
    .local v12, "oldRy":I
    const/4 v7, 0x0

    .line 524
    .local v7, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    mul-int/lit8 v20, p5, 0x64

    move/from16 v0, v20

    if-lt v6, v0, :cond_4

    .line 551
    const/4 v13, 0x0

    .end local v13    # "randoms":[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    :cond_1
    return-object v13

    .line 515
    .end local v3    # "actorHeight":I
    .end local v4    # "actorWidth":I
    .end local v5    # "col":I
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v11    # "oldRx":I
    .end local v12    # "oldRy":I
    .end local v14    # "row":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_2
    const/16 v4, 0x30

    goto :goto_0

    .line 516
    .restart local v4    # "actorWidth":I
    :cond_3
    const/16 v3, 0x30

    goto :goto_1

    .line 525
    .restart local v3    # "actorHeight":I
    .restart local v5    # "col":I
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v11    # "oldRx":I
    .restart local v12    # "oldRy":I
    .restart local v13    # "randoms":[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v14    # "row":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_4
    move/from16 v0, p5

    if-ge v7, v0, :cond_1

    .line 528
    sget-object v20, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 529
    .local v15, "rx":I
    sget-object v20, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    .line 530
    .local v16, "ry":I
    if-eq v11, v15, :cond_5

    move/from16 v0, v16

    if-eq v12, v0, :cond_5

    move/from16 v0, v18

    if-eq v15, v0, :cond_5

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 531
    mul-int v20, v15, v4

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_5

    mul-int v20, v16, v3

    move/from16 v0, v20

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 532
    const/16 v17, 0x0

    .line 533
    .local v17, "stop":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-lt v8, v7, :cond_6

    .line 541
    :goto_4
    if-eqz v17, :cond_8

    .line 524
    .end local v8    # "j":I
    .end local v17    # "stop":Z
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 534
    .restart local v8    # "j":I
    .restart local v17    # "stop":Z
    :cond_6
    aget-object v20, v13, v8

    move-object/from16 v0, v20

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v15, :cond_7

    aget-object v20, v13, v8

    move-object/from16 v0, v20

    iget v0, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    move/from16 v0, v18

    if-eq v11, v0, :cond_7

    .line 535
    move/from16 v0, v19

    if-eq v12, v0, :cond_7

    mul-int v20, v15, v4

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_7

    .line 536
    mul-int v20, v16, v3

    move/from16 v0, v20

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 537
    const/16 v17, 0x1

    .line 538
    goto :goto_4

    .line 533
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 544
    :cond_8
    new-instance v20, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    mul-int v21, v15, v4

    mul-int v22, v16, v3

    .line 545
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    .line 544
    aput-object v20, v13, v7

    .line 546
    move v11, v15

    .line 547
    move/from16 v12, v16

    .line 548
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method public getRandomLayerLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 7
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "count"    # I

    .prologue
    .line 575
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v6

    .line 576
    .local v6, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v1, v6, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->x:I

    iget v2, v6, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->y:I

    iget v3, v6, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v4, v6, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getRandomLayerLocation(IIIII)[Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method getSynchronizedObject(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 762
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-nez v6, :cond_0

    .line 784
    :goto_0
    return-object v5

    .line 765
    :cond_0
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v7

    .line 766
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCollisionObjects(II)Ljava/util/Collection;

    move-result-object v2

    .line 767
    .local v2, "collection":Ljava/util/Collection;
    if-nez v2, :cond_1

    .line 768
    monitor-exit v7

    goto :goto_0

    .line 765
    .end local v2    # "collection":Ljava/util/Collection;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 770
    .restart local v2    # "collection":Ljava/util/Collection;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 771
    monitor-exit v7

    goto :goto_0

    .line 773
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 774
    .local v3, "iter":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 775
    .local v5, "tmp":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLastPaintSeqNum()I

    move-result v4

    .line 776
    .local v4, "seq":I
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 784
    monitor-exit v7

    goto :goto_0

    .line 777
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 778
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLastPaintSeqNum()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 779
    .local v1, "actorSeq":I
    if-le v1, v4, :cond_3

    .line 780
    move-object v5, v0

    .line 781
    move v4, v1

    goto :goto_1
.end method

.method getWidthInPixels()I
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public isBounded()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded:Z

    return v0
.end method

.method public isPauseActionEvent()Z
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl;->isPause()Z

    move-result v0

    return v0
.end method

.method public pauseActionEvent(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 174
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->setPause(Z)V

    .line 175
    return-void
.end method

.method public removeActionEvent(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 136
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/ActionControl;->removeAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 137
    return-void
.end method

.method public removeActionEvent(Lorg/loon/framework/android/game/action/ActionEvent;)V
    .locals 1
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;

    .prologue
    .line 145
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->removeAction(Lorg/loon/framework/android/game/action/ActionEvent;)V

    .line 146
    return-void
.end method

.method public removeActionEvents(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 117
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->removeAllActions(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 118
    return-void
.end method

.method public removeObject(Ljava/lang/Class;)V
    .locals 5
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 618
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    monitor-enter v4

    .line 619
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 620
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 618
    monitor-exit v4

    .line 636
    return-void

    .line 621
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 622
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 626
    .local v1, "cls":Ljava/lang/Class;
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 627
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    :cond_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v3, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->remove(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 629
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v3, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 631
    :cond_3
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->removeActionEvents(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 632
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V

    goto :goto_0

    .line 618
    .end local v0    # "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->remove(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 607
    :cond_1
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->removeActionEvents(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V

    .line 603
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeObjects(Ljava/util/Collection;)V
    .locals 3
    .param p1, "objects"    # Ljava/util/Collection;

    .prologue
    .line 644
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 645
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    return-void

    .line 646
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 647
    .local v0, "actor":Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->removeObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_2

    .line 667
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->clear()V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->clear()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    .line 676
    :cond_1
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionManager;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    .line 677
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    .line 667
    monitor-exit v1

    .line 680
    :cond_2
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public screenInput()Lorg/loon/framework/android/game/core/LInput;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->input:Lorg/loon/framework/android/game/core/LInput;

    return-object v0
.end method

.method sendToBack(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 492
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_1

    .line 493
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->sendToBack(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 493
    :cond_0
    monitor-exit v1

    .line 499
    :cond_1
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 477
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_1

    .line 478
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 478
    :cond_0
    monitor-exit v1

    .line 484
    :cond_1
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActionEventFPS(I)V
    .locals 1
    .param p1, "fps"    # I

    .prologue
    .line 201
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->setFPS(I)V

    .line 202
    return-void
.end method

.method public setField2D(Lorg/loon/framework/android/game/action/map/Field2D;)V
    .locals 4
    .param p1, "field"    # Lorg/loon/framework/android/game/action/map/Field2D;

    .prologue
    .line 421
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getMap()[[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getMap()[[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 426
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileWidth()I

    move-result v0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 427
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileHeight()I

    move-result v0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getMap()[[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileWidth()I

    move-result v2

    .line 429
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getTileHeight()I

    move-result v3

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/map/Field2D;->set([[III)V

    goto :goto_0

    .line 432
    :cond_2
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->tmpField:Lorg/loon/framework/android/game/action/map/Field2D;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->objects:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->size()I

    move-result v0

    return v0
.end method

.method public startActionEvent(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 192
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 193
    return-void
.end method

.method public stopActionEvent()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl;->stop()V

    .line 219
    return-void
.end method

.method public stopActionEvent(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 165
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/ActionControl;->stop(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 166
    return-void
.end method

.method toCellCeil(I)I
    .locals 4
    .param p1, "pixel"    # I

    .prologue
    .line 817
    int-to-double v0, p1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method toCellFloor(I)I
    .locals 4
    .param p1, "pixel"    # I

    .prologue
    .line 821
    int-to-double v0, p1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "oldX"    # I
    .param p3, "oldY"    # I

    .prologue
    .line 844
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V

    .line 845
    return-void
.end method

.method updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 1
    .param p1, "object"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 848
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->collisionChecker:Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/CollisionChecker;->updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 849
    return-void
.end method
