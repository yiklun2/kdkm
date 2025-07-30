.class public abstract Lorg/loon/framework/android/game/core/graphics/ThreadScreen;
.super Lorg/loon/framework/android/game/core/graphics/Screen;
.source "ThreadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_BUFFER_FPS:I = 0x5


# instance fields
.field private ascent:I

.field private bench:I

.field private benchcount:I

.field private benchtime:J

.field private centerX:I

.field private centerY:I

.field private centralizando:Z

.field private draw:Lorg/loon/framework/android/game/core/graphics/Draw;

.field private drawGraphics:Ljavax/microedition/lcdui/Graphics;

.field private extHeight:I

.field private extWidth:I

.field private firstLayer:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<",
            "Ljavax/microedition/lcdui/Image;",
            ">;"
        }
    .end annotation
.end field

.field private firstLayerOpacity:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private firstLayerPts:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Point;",
            ">;"
        }
    .end annotation
.end field

.field private focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private gameThread:Ljava/lang/Thread;

.field private goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

.field private mapHeight:I

.field private mapWidth:I

.field private match:Z

.field private max_fps:I

.field private origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

.field private runPriority:I

.field private running:Z

.field private screen:Ljavax/microedition/lcdui/Image;

.field private screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

.field private sleepTime:J

.field private speed:J

.field private synchro:Z

.field private time:J

.field private time1:J

.field private time2:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 86
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->init(II)V

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->init(II)V

    .line 91
    return-void
.end method

.method private InitializeVars()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 119
    new-array v0, v1, [Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    .line 120
    new-array v0, v1, [Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    .line 121
    new-array v0, v1, [Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerOpacity:[Ljava/util/LinkedList;

    .line 122
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 123
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 124
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 125
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->inicializaLayer()V

    .line 126
    return-void
.end method

.method private init(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 94
    sput-boolean v2, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 95
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->setRepaintMode(I)V

    .line 96
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z

    .line 97
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->match:Z

    .line 98
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->setFPS(J)V

    .line 99
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->setSynchroFPS(I)V

    .line 100
    invoke-static {p1, p2, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 102
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getAscent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->ascent:I

    .line 103
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    .line 104
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    .line 105
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 106
    return-void
.end method

.method private synchro()V
    .locals 6

    .prologue
    .line 464
    :try_start_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time1:J

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time2:J

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time1:J

    .line 466
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->speed:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time1:J

    iget-wide v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time2:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time:J

    .line 467
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 468
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->time:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private task()V
    .locals 4

    .prologue
    .line 454
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchtime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchtime:J

    .line 456
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchcount:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->bench:I

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchcount:I

    .line 459
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->benchcount:I

    .line 460
    return-void
.end method


# virtual methods
.method public addLayer(Ljavax/microedition/lcdui/Image;IIIF)V
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "layer"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "opacity"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, p3, p4, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    aget-object v0, v0, p2

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v1, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerOpacity:[Ljava/util/LinkedList;

    aget-object v0, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    return-void
.end method

.method public centerScreenAt(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    .line 144
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setLocation(II)V

    .line 145
    return-void
.end method

.method public centerScreenAt(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 139
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 138
    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setLocation(II)V

    .line 140
    return-void
.end method

.method public clearBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 149
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Ljavax/microedition/lcdui/Graphics;->clearRect(IIII)V

    .line 150
    return-void
.end method

.method public color(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v1, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 405
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z

    .line 438
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->draw:Lorg/loon/framework/android/game/core/graphics/Draw;

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->draw:Lorg/loon/framework/android/game/core/graphics/Draw;

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    .line 444
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 513
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 401
    return-void
.end method

.method public drawScreen(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 517
    return-void
.end method

.method public fill(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 413
    return-void
.end method

.method public abstract gameLoop()V
.end method

.method public getBenchCount()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->bench:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    return v0
.end method

.method public declared-synchronized getDraw()Lorg/loon/framework/android/game/core/graphics/Draw;
    .locals 1

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->draw:Lorg/loon/framework/android/game/core/graphics/Draw;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/Draw;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/core/graphics/Draw;-><init>(Lorg/loon/framework/android/game/core/graphics/ThreadScreen;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->draw:Lorg/loon/framework/android/game/core/graphics/Draw;

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->draw:Lorg/loon/framework/android/game/core/graphics/Draw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtHeight()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extHeight:I

    return v0
.end method

.method public getExtWidth()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extWidth:I

    return v0
.end method

.method public getFocusedArea()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getGoal()Lorg/loon/framework/android/game/core/graphics/geom/Point;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    return-object v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getLGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->mapHeight:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->mapWidth:I

    return v0
.end method

.method public getOrigin()Lorg/loon/framework/android/game/core/graphics/geom/Point;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    return-object v0
.end method

.method public getRunPriority()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->runPriority:I

    return v0
.end method

.method public getSleepTime()J
    .locals 2

    .prologue
    .line 482
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->sleepTime:J

    return-wide v0
.end method

.method public getSynchroFPS()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->max_fps:I

    return v0
.end method

.method public inicializaLayer()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    .line 131
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    .line 132
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerOpacity:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract initialize()V
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z

    return v0
.end method

.method public isSynchro()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->synchro:Z

    return v0
.end method

.method public loadSound(Ljava/lang/String;)Lorg/loon/framework/android/game/media/sound/AssetsSound;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 432
    new-instance v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public moveCenterScreenAt(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 279
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v2

    .line 280
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    .line 279
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 281
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centralizando:Z

    .line 283
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iput p1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 284
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iput p2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 285
    return-void
.end method

.method public moveCenterScreenAt(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centralizando:Z

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    .line 269
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    .line 270
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    .line 268
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 271
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centralizando:Z

    .line 273
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .line 276
    :cond_0
    return-void
.end method

.method public final onLoad()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 110
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->InitializeVars()V

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->runPriority:I

    .line 113
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->runPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 114
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public putFillPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 6
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    const/4 v4, 0x4

    .line 288
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRectangle2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v0, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>([I[II)V

    .line 293
    .local v0, "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 297
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 301
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 302
    iget-object v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillPolygon([I[II)V

    .line 305
    .end local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .end local v1    # "c":I
    :cond_0
    return-void

    .line 294
    .restart local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .restart local v1    # "c":I
    :cond_1
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public putFillPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;F)V
    .locals 6
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .param p2, "t"    # F

    .prologue
    const/4 v4, 0x4

    .line 308
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRectangle2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v0, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>([I[II)V

    .line 312
    .local v0, "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v2, p2}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 315
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 319
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 323
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 324
    iget-object v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillPolygon([I[II)V

    .line 326
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 329
    .end local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .end local v1    # "c":I
    :cond_0
    return-void

    .line 316
    .restart local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .restart local v1    # "c":I
    :cond_1
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public putFillRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p1, v1

    .line 334
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p2, v2

    .line 333
    invoke-interface {v0, v1, v2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 337
    :cond_0
    return-void
.end method

.method public putImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p2, v1

    .line 161
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p3, v2

    .line 160
    invoke-interface {v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 162
    return-void
.end method

.method public putImage(Ljavax/microedition/lcdui/Image;IIF)V
    .locals 4
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "t"    # F

    .prologue
    .line 202
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    float-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p4}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 205
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p2, v1

    .line 206
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p3, v2

    .line 205
    invoke-interface {v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 207
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->putImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0
.end method

.method public putLayer(I)V
    .locals 5
    .param p1, "layer"    # I

    .prologue
    const/4 v4, 0x0

    .line 187
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    .line 190
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 191
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 192
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerOpacity:[Ljava/util/LinkedList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 189
    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->putImage(Ljavax/microedition/lcdui/Image;IIF)V

    .line 194
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayer:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerPts:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->firstLayerOpacity:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putLine(IIII)V
    .locals 7
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 215
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    .line 216
    .local v0, "p1":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-direct {v1, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    .line 217
    .local v1, "p2":Lorg/loon/framework/android/game/core/graphics/geom/Point;
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Float;

    invoke-direct {v2, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Float;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Point2D;Lorg/loon/framework/android/game/core/graphics/geom/Point2D;)V

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRectangle2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Line2D$Float;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v3

    sub-int v3, p1, v3

    .line 219
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v4

    sub-int v4, p2, v4

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v5

    sub-int v5, p3, v5

    .line 220
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v6

    sub-int v6, p4, v6

    .line 218
    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    .line 223
    :cond_0
    return-void
.end method

.method public putOval(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p1, v1

    .line 228
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p2, v2

    .line 227
    invoke-interface {v0, v1, v2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawOval(IIII)V

    .line 231
    :cond_0
    return-void
.end method

.method public putPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 6
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    const/4 v4, 0x4

    .line 234
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRectangle2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v0, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>([I[II)V

    .line 239
    .local v0, "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 243
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 247
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 248
    iget-object v3, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawPolygon([I[II)V

    .line 251
    .end local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .end local v1    # "c":I
    :cond_0
    return-void

    .line 240
    .restart local v0    # "aux":Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .restart local v1    # "c":I
    :cond_1
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public putRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p1, v1

    .line 256
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p2, v2

    .line 255
    invoke-interface {v0, v1, v2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 259
    :cond_0
    return-void
.end method

.method public putText(Ljava/lang/String;II)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v1

    sub-int v1, p2, v1

    .line 263
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v2

    sub-int v2, p3, v2

    .line 262
    invoke-interface {v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 264
    return-void
.end method

.method public rect(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 409
    return-void
.end method

.method public declared-synchronized repaint()V
    .locals 3

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 529
    :goto_0
    monitor-exit p0

    return-void

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 524
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->match:Z

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/LSystem;->repaintLocation(Ljavax/microedition/lcdui/Image;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 527
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extWidth:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extHeight:I

    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/core/LSystem;->repaintFull(Ljavax/microedition/lcdui/Image;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resizeScreen(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 416
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extWidth:I

    .line 417
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extHeight:I

    .line 418
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extWidth:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extHeight:I

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    .line 419
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 418
    :goto_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->match:Z

    .line 420
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->match:Z

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    .line 422
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->extHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    .line 423
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_2

    .line 424
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 429
    :cond_0
    :goto_1
    return-void

    .line 419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->initialize()V

    .line 552
    :cond_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->synchro:Z

    if-eqz v0, :cond_1

    .line 553
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->task()V

    .line 555
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameLoop()V

    .line 556
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->synchro:Z

    if-eqz v0, :cond_2

    .line 557
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->synchro()V

    .line 559
    :cond_2
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->repaint()V

    .line 560
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z

    .line 551
    if-nez v0, :cond_0

    .line 561
    return-void
.end method

.method public scrollToGoal(I)V
    .locals 4
    .param p1, "frames"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 341
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v3, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 342
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    sub-int/2addr v1, v2

    .line 341
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 340
    :goto_0
    div-int v0, v1, p1

    .line 344
    .local v0, "speed":I
    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 348
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    if-ge v1, v2, :cond_6

    .line 349
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v3, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_5

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 350
    add-int/2addr v1, v0

    .line 349
    :goto_1
    iput v1, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 358
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    if-ge v1, v2, :cond_9

    .line 359
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v3, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_8

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 360
    add-int/2addr v1, v0

    .line 359
    :goto_3
    iput v1, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 368
    :cond_2
    :goto_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/geom/Point;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerScreenAt(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V

    .line 369
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    if-ne v1, v2, :cond_3

    .line 370
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    if-ne v1, v2, :cond_3

    .line 371
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centralizando:Z

    .line 374
    :cond_3
    return-void

    .line 342
    .end local v0    # "speed":I
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->origin:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0

    .line 351
    .restart local v0    # "speed":I
    :cond_5
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    goto :goto_1

    .line 352
    :cond_6
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    if-le v1, v2, :cond_1

    .line 353
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v3, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_7

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    .line 354
    sub-int/2addr v1, v0

    .line 353
    :goto_5
    iput v1, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    goto :goto_2

    .line 355
    :cond_7
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    goto :goto_5

    .line 361
    :cond_8
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    goto :goto_3

    .line 362
    :cond_9
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    if-le v1, v2, :cond_2

    .line 363
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v3, v3, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_a

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screenCenter:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    .line 364
    sub-int/2addr v1, v0

    .line 363
    :goto_6
    iput v1, v2, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    goto/16 :goto_4

    .line 365
    :cond_a
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->goal:Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    goto :goto_6
.end method

.method public setCenterX(I)V
    .locals 1
    .param p1, "centerX"    # I

    .prologue
    .line 575
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerX:I

    .line 576
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setX(I)V

    .line 579
    :cond_0
    return-void
.end method

.method public setCenterY(I)V
    .locals 1
    .param p1, "centerY"    # I

    .prologue
    .line 568
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->centerY:I

    .line 569
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setY(I)V

    .line 572
    :cond_0
    return-void
.end method

.method public setFocusedArea(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setX(I)V

    .line 603
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setY(I)V

    .line 604
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setWidth(I)V

    .line 605
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v0, p4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setHeight(I)V

    .line 606
    return-void
.end method

.method public setFocusedArea(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 0
    .param p1, "r"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 598
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 599
    return-void
.end method

.method public setGraphics2DPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 609
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/Graphics;->setPaint(Landroid/graphics/Paint;)V

    .line 610
    return-void
.end method

.method public setGraphicsColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 613
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 614
    return-void
.end method

.method public setMapSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 617
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->mapWidth:I

    .line 618
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->mapHeight:I

    .line 619
    return-void
.end method

.method public setRunPriority(I)V
    .locals 1
    .param p1, "runPriority"    # I

    .prologue
    .line 652
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 653
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->runPriority:I

    .line 654
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->running:Z

    .line 543
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    .line 626
    :cond_0
    invoke-static {p1, p2, v1}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    .line 627
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    .line 628
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v0, v1, v1, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->focus:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 629
    return-void
.end method

.method public setSynchro(Z)V
    .locals 0
    .param p1, "synchro"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->synchro:Z

    .line 539
    return-void
.end method

.method public setSynchroFPS(I)V
    .locals 2
    .param p1, "fps"    # I

    .prologue
    .line 490
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->max_fps:I

    .line 491
    const/16 v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->speed:J

    .line 492
    return-void
.end method

.method public sleep(J)V
    .locals 4
    .param p1, "i"    # J

    .prologue
    .line 475
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->sleepTime:J

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->sleepTime:J

    .line 479
    return-void
.end method

.method public text(IILjava/lang/String;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0, v0, v0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->color(III)V

    .line 382
    add-int v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->text(Ljava/lang/String;II)V

    .line 383
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p3, p1, v0}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->text(Ljava/lang/String;II)V

    .line 384
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p3, v0, p2}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->text(Ljava/lang/String;II)V

    .line 385
    invoke-virtual {p0, v2, v2, v2}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->color(III)V

    .line 386
    invoke-virtual {p0, p3, p1, p2}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->text(Ljava/lang/String;II)V

    .line 387
    return-void
.end method

.method public text(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "y"    # I

    .prologue
    .line 391
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v3}, Ljavax/microedition/lcdui/Graphics;->getLFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 392
    .local v1, "fontmetrics":Ljavax/microedition/lcdui/Font;
    invoke-virtual {v1, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    .line 393
    .local v0, "f":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->screen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 394
    .local v2, "x":I
    invoke-virtual {p0, v2, p2, p1}, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->text(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "f":I
    .end local v1    # "fontmetrics":Ljavax/microedition/lcdui/Font;
    .end local v2    # "x":I
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public text(Ljava/lang/String;II)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->drawGraphics:Ljavax/microedition/lcdui/Graphics;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/ThreadScreen;->ascent:I

    add-int/2addr v1, p3

    invoke-interface {v0, p1, p2, v1}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 378
    return-void
.end method
