.class public abstract Lorg/loon/framework/android/game/core/graphics/Screen;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/LInput;


# static fields
.field private static final ACCEL_OFFEST:F = 3.0f

.field private static final LANDSCAPE_OFFSET:D = 0.2

.field public static final SCREEN_BITMAP_REPAINT:I = -0x1

.field public static final SCREEN_CANVAS_REPAINT:I = -0x2

.field public static final SCREEN_NOT_REPAINT:I

.field private static final keyDown:[Z

.field private static final keyPressed:[I

.field private static final keyReleased:[I

.field private static final touchDown:[Z

.field private static final touchPressed:[I

.field private static final touchReleased:[I


# instance fields
.field private accelX:F

.field private accelY:F

.field private accelZ:F

.field private baseInput:Lorg/loon/framework/android/game/core/LInput;

.field private currentScreen:Landroid/graphics/Bitmap;

.field private desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

.field private direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field protected elapsedTime:J

.field private halfHeight:I

.field private halfWidth:I

.field private handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

.field private height:I

.field isGravityToKey:Z

.field private isLoad:Z

.field isMoving:Z

.field isNext:Z

.field private landscapeUpdate:D

.field private lastTouchX:I

.field private lastTouchY:I

.field private lastUpdate:J

.field private mode:I

.field private offsetMoveX:F

.field private offsetMoveY:F

.field private offsetTouchX:F

.field private offsetTouchY:F

.field private pressedKey:I

.field private pressedTouch:I

.field private releasedKey:I

.field private releasedTouch:I

.field private final runnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private sensorInclination:D

.field private sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

.field private touch:Landroid/graphics/Point;

.field private touchDX:I

.field private touchDY:I

.field private touchDirection:I

.field private final touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

.field private touchX:I

.field private touchY:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0xf

    .line 124
    new-array v0, v2, [Z

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    .line 125
    new-array v0, v2, [I

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyReleased:[I

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyPressed:[I

    .line 126
    new-array v0, v1, [Z

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    .line 127
    new-array v0, v1, [I

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    .line 108
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->NONE:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .line 117
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/Touch;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touch:Landroid/graphics/Point;

    .line 131
    sput-boolean v5, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 132
    const/4 v0, -0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->mode:I

    .line 133
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getMaxFPS()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->setFPS(J)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    .line 135
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/IAndroid2DHandler;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    .line 136
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->width:I

    .line 137
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->height:I

    .line 138
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    .line 139
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    .line 140
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->width:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->height:I

    .line 141
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    .line 142
    iput-object p0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    .line 143
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    .line 144
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Sprites;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->height:I

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/Sprites;-><init>(II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    .line 145
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->height:I

    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/Desktop;-><init>(Lorg/loon/framework/android/game/core/LInput;II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 146
    iput-boolean v5, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isNext:Z

    .line 147
    iput-boolean v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 148
    return-void
.end method

.method private gravityToKey(Lorg/loon/framework/android/game/core/graphics/SensorDirection;)V
    .locals 5
    .param p1, "d"    # Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0x15

    const/16 v2, 0x14

    const/16 v1, 0x13

    .line 1396
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyUp(I)V

    .line 1397
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyUp(I)V

    .line 1398
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyUp(I)V

    .line 1399
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyUp(I)V

    .line 1401
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    if-ne p1, v0, :cond_1

    .line 1402
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyDown(I)V

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    if-ne p1, v0, :cond_2

    .line 1404
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyDown(I)V

    goto :goto_0

    .line 1405
    :cond_2
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->UP:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    if-ne p1, v0, :cond_3

    .line 1406
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyDown(I)V

    goto :goto_0

    .line 1407
    :cond_3
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->DOWN:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    if-ne p1, v0, :cond_0

    .line 1408
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Screen;->setKeyDown(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    .line 683
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 686
    :cond_0
    return-void
.end method

.method public add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 1
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 694
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 697
    :cond_0
    return-void
.end method

.method public addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 228
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;)V

    .line 329
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "location"    # Lorg/loon/framework/android/game/Location;

    .prologue
    .line 361
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V

    .line 364
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Lorg/loon/framework/android/game/Location;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "location"    # Lorg/loon/framework/android/game/Location;

    .prologue
    .line 349
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;Lorg/loon/framework/android/game/Location;)V

    .line 352
    :cond_0
    return-void
.end method

.method public alter(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V
    .locals 0
    .param p1, "timer"    # Lorg/loon/framework/android/game/core/timer/LTimerContext;

    .prologue
    .line 959
    return-void
.end method

.method public bottomOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->bottomOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 790
    return-void
.end method

.method public final callEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 814
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    monitor-exit v1

    .line 817
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final callEventInterrupt()V
    .locals 6

    .prologue
    .line 841
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    monitor-enter v4

    .line 842
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 841
    monitor-exit v4

    .line 852
    return-void

    .line 843
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 844
    .local v2, "running":Ljava/lang/Object;
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 845
    :try_start_1
    instance-of v3, v2, Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 846
    move-object v0, v2

    check-cast v0, Ljava/lang/Thread;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 847
    move-object v0, v2

    check-cast v0, Ljava/lang/Thread;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 844
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 841
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v2    # "running":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public final callEventWait(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 825
    monitor-enter p1

    .line 826
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 827
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 825
    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 834
    return-void

    .line 826
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 825
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 831
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final callEvents()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->callEvents(Z)V

    .line 860
    return-void
.end method

.method public final callEvents(Z)V
    .locals 7
    .param p1, "execute"    # Z

    .prologue
    .line 868
    if-nez p1, :cond_1

    .line 869
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    monitor-enter v6

    .line 870
    :try_start_0
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 869
    monitor-exit v6

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 869
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 874
    :cond_1
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 878
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    monitor-enter v6

    .line 879
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 880
    .local v2, "runnableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->runnables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 878
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 882
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 900
    const/4 v2, 0x0

    .line 901
    goto :goto_0

    .line 878
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .end local v2    # "runnableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 883
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    .restart local v2    # "runnableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 884
    .local v3, "running":Ljava/lang/Object;
    monitor-enter v3

    .line 886
    :try_start_3
    instance-of v5, v3, Ljava/lang/Thread;

    if-eqz v5, :cond_4

    .line 887
    move-object v0, v3

    check-cast v0, Ljava/lang/Thread;

    move-object v4, v0

    .line 888
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 889
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 897
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 884
    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 893
    :cond_4
    :try_start_5
    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 895
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public centerOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 773
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->centerOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 774
    return-void
.end method

.method public declared-synchronized createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 922
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->createUI(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :cond_1
    monitor-exit p0

    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->callEvents(Z)V

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isNext:Z

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    .line 570
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->dispose()V

    .line 564
    monitor-exit p0

    .line 572
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public abstract draw(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public emulatorButtonsVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 310
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v1

    .line 313
    invoke-interface {v1}, Lorg/loon/framework/android/game/Android2DSurface;->getEmulatorButtons()Lorg/loon/framework/android/game/core/EmulatorButtons;

    move-result-object v0

    .line 314
    .local v0, "es":Lorg/loon/framework/android/game/core/EmulatorButtons;
    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "es":Lorg/loon/framework/android/game/core/EmulatorButtons;
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAccelX()F
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    return v0
.end method

.method public getAccelY()F
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    return v0
.end method

.method public getAccelZ()F
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    return v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBottomComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getBottomComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getBottomLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getBottomSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponents(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getComponents(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesktop()Lorg/loon/framework/android/game/core/graphics/Desktop;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    return-object v0
.end method

.method public getEmulatorButtons()Lorg/loon/framework/android/game/core/EmulatorButtons;
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/Android2DSurface;->getEmulatorButtons()Lorg/loon/framework/android/game/core/EmulatorButtons;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFPS()J
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getFPS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHalfHeight()I
    .locals 1

    .prologue
    .line 1501
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    return v0
.end method

.method public getHalfWidth()I
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->height:I

    return v0
.end method

.method public getImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "transparency"    # Z

    .prologue
    .line 908
    invoke-static {p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getKeyDown(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/LInput;->isKeyDown(I)Z

    move-result v0

    return v0
.end method

.method public getKeyDown()[Z
    .locals 1

    .prologue
    .line 1123
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    return-object v0
.end method

.method public getKeyPressed()I
    .locals 2

    .prologue
    .line 1097
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyPressed:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getKeyPressed(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/core/LInput;->isKeyPressed(I)Z

    move-result v0

    return v0
.end method

.method public getKeyReleased()I
    .locals 2

    .prologue
    .line 1110
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyReleased:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxFPS()J
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getMaxFPS()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepaintMode()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->mode:I

    return v0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getScreenCount()I

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreens()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getScreens()Ljava/util/LinkedList;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSensorDirection()Lorg/loon/framework/android/game/core/graphics/SensorDirection;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    return-object v0
.end method

.method public getSensorInclination()D
    .locals 2

    .prologue
    .line 1513
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sensorInclination:D

    return-wide v0
.end method

.method public getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "transparency"    # Z

    .prologue
    .line 913
    invoke-virtual {p0, p1, p4}, Lorg/loon/framework/android/game/core/graphics/Screen;->getImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/Screen;->getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 917
    invoke-static {p1, p2, p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljavax/microedition/lcdui/Image;II)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getSprListerner()Lorg/loon/framework/android/game/action/sprite/SpriteListener;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getSprListerner()Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getSprites(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/action/sprite/ISprite;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/sprite/ISprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getSprites(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSprites()Lorg/loon/framework/android/game/action/sprite/Sprites;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    return-object v0
.end method

.method public getTopComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getTopComponent()Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getTopLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/Layer;

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getTopSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouch()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touch:Landroid/graphics/Point;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1006
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touch:Landroid/graphics/Point;

    return-object v0
.end method

.method public getTouchDX()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    return v0
.end method

.method public getTouchDY()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    return v0
.end method

.method public getTouchDirection()I
    .locals 1

    .prologue
    .line 1505
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    return v0
.end method

.method public getTouchDown()[Z
    .locals 1

    .prologue
    .line 1089
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    return-object v0
.end method

.method public getTouchPressed()I
    .locals 2

    .prologue
    .line 1026
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    .line 1027
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTouchReleased()I
    .locals 2

    .prologue
    .line 1031
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    if-lez v0, :cond_0

    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    .line 1032
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTouchX()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    return v0
.end method

.method public getTouchY()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    return v0
.end method

.method public getWebImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "transparency"    # Z

    .prologue
    .line 904
    invoke-static {p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadWebImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->width:I

    return v0
.end method

.method public isClick()Z
    .locals 2

    .prologue
    .line 1014
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isGravityToKey()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isGravityToKey:Z

    return v0
.end method

.method public isKeyDown(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1127
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    if-lt v0, v1, :cond_0

    .line 1106
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1102
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyPressed:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1103
    const/4 v1, 0x1

    goto :goto_1

    .line 1101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isKeyReleased(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    if-lt v0, v1, :cond_0

    .line 1119
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1115
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyReleased:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1116
    const/4 v1, 0x1

    goto :goto_1

    .line 1114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1493
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    return v0
.end method

.method public isOnLoadComplete()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isLoad:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1010
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    return v0
.end method

.method public isTouchClick()Z
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->isTouchPressed(I)Z

    move-result v0

    return v0
.end method

.method public isTouchClickUp()Z
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->baseInput:Lorg/loon/framework/android/game/core/LInput;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput;->isTouchPressed(I)Z

    move-result v0

    return v0
.end method

.method public isTouchDown(I)Z
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 1093
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isTouchPressed(I)Z
    .locals 6
    .param p1, "button"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1036
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->isTouchReleased(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v2

    .line 1040
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    if-lt v1, v4, :cond_2

    .line 1045
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_0

    move v2, v3

    goto :goto_0

    .line 1041
    :cond_2
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    aget v4, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_3

    move v2, v3

    .line 1042
    goto :goto_0

    .line 1040
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isTouchReleased(I)Z
    .locals 6
    .param p1, "button"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1053
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    if-lt v1, v4, :cond_1

    .line 1058
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_2

    .line 1060
    :cond_0
    :goto_1
    return v2

    .line 1054
    :cond_1
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    aget v4, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, p1, :cond_0

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1058
    goto :goto_1

    .line 1059
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 1060
    goto :goto_1
.end method

.method public leftOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->leftOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 782
    return-void
.end method

.method public move(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 1488
    double-to-int v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    .line 1489
    double-to-int v0, p3

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    .line 1490
    return-void
.end method

.method public next()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isNext:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1485
    return-void
.end method

.method public onClick(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z
    .locals 4
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v1, 0x0

    .line 739
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v1

    .line 742
    :cond_1
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 744
    .local v0, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 745
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z
    .locals 4
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    const/4 v1, 0x0

    .line 759
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v1

    .line 762
    :cond_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 764
    .local v0, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 765
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1376
    const/4 v0, 0x0

    return v0
.end method

.method public onDirection(Lorg/loon/framework/android/game/core/graphics/SensorDirection;FFF)V
    .locals 0
    .param p1, "direction"    # Lorg/loon/framework/android/game/core/graphics/SensorDirection;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 1481
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 1147
    const/4 v0, 0x1

    return v0
.end method

.method public final onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 1136
    :try_start_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 1137
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyPressed:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    aput p1, v1, v2

    .line 1138
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    .line 1141
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on Key Down !"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 1172
    const/4 v0, 0x1

    return v0
.end method

.method public final onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 1161
    :try_start_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 1162
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyReleased:[I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    aput p1, v1, v2

    .line 1163
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "ex":Ljava/lang/Exception;
    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    .line 1166
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on Key Up !"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1380
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1385
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1389
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1414
    :try_start_0
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    .line 1415
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    .line 1416
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    .line 1417
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    mul-float/2addr v7, v8

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    .line 1418
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    mul-float/2addr v8, v9

    .line 1417
    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 1419
    .local v5, "speed":D
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    float-to-double v7, v7

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    neg-double v7, v7

    iput-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sensorInclination:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1424
    .local v0, "curTime":J
    sget-boolean v7, Lorg/loon/framework/android/game/core/LSystem;->SCREEN_LANDSCAPE:Z

    if-eqz v7, :cond_6

    .line 1426
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastUpdate:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 1427
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastUpdate:J

    .line 1428
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 1430
    .local v3, "move":D
    const-wide v7, -0x4036666666666666L    # -0.2

    cmpg-double v7, v3, v7

    if-gtz v7, :cond_3

    .line 1431
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    const-wide v9, -0x4036666666666666L    # -0.2

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 1432
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .line 1446
    :cond_0
    :goto_0
    iput-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    .line 1472
    .end local v3    # "move":D
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isGravityToKey:Z

    if-eqz v7, :cond_2

    .line 1473
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    invoke-direct {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->gravityToKey(Lorg/loon/framework/android/game/core/graphics/SensorDirection;)V

    .line 1475
    :cond_2
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    iget v10, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelZ:F

    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/loon/framework/android/game/core/graphics/Screen;->onDirection(Lorg/loon/framework/android/game/core/graphics/SensorDirection;FFF)V

    .line 1477
    .end local v0    # "curTime":J
    .end local v5    # "speed":D
    :goto_2
    return-void

    .line 1420
    :catch_0
    move-exception v2

    .line 1421
    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 1434
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "curTime":J
    .restart local v3    # "move":D
    .restart local v5    # "speed":D
    :cond_3
    const-wide v7, 0x3fc999999999999aL    # 0.2

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_4

    .line 1435
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 1436
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto :goto_0

    .line 1439
    :cond_4
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    const-wide v9, -0x4036666666666666L    # -0.2

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_5

    .line 1440
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto :goto_0

    .line 1441
    :cond_5
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->landscapeUpdate:D

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    .line 1442
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto :goto_0

    .line 1450
    .end local v3    # "move":D
    :cond_6
    iget-wide v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastUpdate:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x96

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 1451
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastUpdate:J

    .line 1453
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 1454
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto :goto_1

    .line 1455
    :cond_7
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 1456
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    const/high16 v8, -0x3fc00000    # -3.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 1457
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .line 1459
    :cond_8
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelX:F

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 1460
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto/16 :goto_1

    .line 1463
    :cond_9
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    const/high16 v8, -0x3fc00000    # -3.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    .line 1464
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->DOWN:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .line 1466
    :cond_a
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->accelY:F

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 1467
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->UP:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    iput-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->direction:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    goto/16 :goto_1
.end method

.method public abstract onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1186
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1187
    .local v0, "code":I
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1188
    .local v4, "pointerCount":I
    if-le v4, v5, :cond_0

    .line 1348
    .end local v0    # "code":I
    .end local v4    # "pointerCount":I
    :goto_0
    return v5

    .line 1191
    .restart local v0    # "code":I
    .restart local v4    # "pointerCount":I
    :cond_0
    invoke-static {}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch()Z

    move-result v7

    if-eqz v7, :cond_8

    if-le v4, v5, :cond_8

    .line 1192
    const/4 v2, 0x0

    .line 1193
    .local v2, "id":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    if-lt v3, v4, :cond_2

    .end local v0    # "code":I
    .end local v2    # "id":I
    .end local v3    # "idx":I
    .end local v4    # "pointerCount":I
    :cond_1
    :goto_2
    move v5, v6

    .line 1348
    goto :goto_0

    .line 1194
    .restart local v0    # "code":I
    .restart local v2    # "id":I
    .restart local v3    # "idx":I
    .restart local v4    # "pointerCount":I
    :cond_2
    invoke-static {p1, v3}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1195
    invoke-static {p1, v2}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1196
    sget v8, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    div-float/2addr v7, v8

    .line 1195
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    .line 1197
    invoke-static {p1, v2}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1198
    sget v8, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    div-float/2addr v7, v8

    .line 1197
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    .line 1199
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v8, v8

    iput v8, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->x:F

    .line 1200
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v8, v8

    iput v8, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->y:F

    .line 1201
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iput v0, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->action:I

    .line 1202
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iput v4, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->pointerCount:I

    .line 1203
    sparse-switch v0, :sswitch_data_0

    .line 1193
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1205
    :sswitch_0
    if-nez v3, :cond_3

    .line 1206
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1207
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchX:F

    .line 1208
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchY:F

    .line 1209
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 1210
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    aput v0, v7, v8

    .line 1211
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 1212
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    .line 1213
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    .line 1214
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-ge v7, v8, :cond_4

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-ge v7, v8, :cond_4

    .line 1215
    const/4 v7, 0x0

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    .line 1225
    :goto_3
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1343
    .end local v0    # "code":I
    .end local v2    # "id":I
    .end local v3    # "idx":I
    .end local v4    # "pointerCount":I
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "ex":Ljava/lang/Exception;
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    .line 1345
    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    .line 1346
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "on Touch !"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1216
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v2    # "id":I
    .restart local v3    # "idx":I
    .restart local v4    # "pointerCount":I
    :cond_4
    :try_start_1
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-lt v7, v8, :cond_5

    .line 1217
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-ge v7, v8, :cond_5

    .line 1218
    const/4 v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_3

    .line 1219
    :cond_5
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-ge v7, v8, :cond_6

    .line 1220
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-lt v7, v8, :cond_6

    .line 1221
    const/4 v7, 0x2

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_3

    .line 1223
    :cond_6
    const/4 v7, 0x3

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_3

    .line 1232
    :sswitch_1
    if-nez v3, :cond_3

    .line 1233
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1234
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v0

    .line 1235
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    aput v0, v7, v8

    .line 1236
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 1237
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    .line 1238
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    .line 1239
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1244
    :sswitch_2
    if-nez v3, :cond_3

    .line 1245
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveX:F

    .line 1246
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveY:F

    .line 1247
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchX:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_7

    .line 1248
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchY:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 1249
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1250
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1256
    :sswitch_3
    if-nez v3, :cond_3

    .line 1257
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1262
    :sswitch_4
    if-nez v3, :cond_3

    .line 1263
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1268
    :sswitch_5
    if-ne v3, v5, :cond_3

    .line 1269
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1274
    :sswitch_6
    if-ne v3, v5, :cond_3

    .line 1275
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1280
    :sswitch_7
    if-ne v3, v10, :cond_3

    .line 1281
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1286
    :sswitch_8
    if-ne v3, v10, :cond_3

    .line 1287
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1294
    .end local v2    # "id":I
    .end local v3    # "idx":I
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sget v8, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    .line 1295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sget v8, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    .line 1296
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v8, v8

    iput v8, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->x:F

    .line 1297
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v8, v8

    iput v8, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->y:F

    .line 1298
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    iput v0, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->action:I

    .line 1299
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    const/4 v8, 0x0

    iput v8, v7, Lorg/loon/framework/android/game/core/graphics/Touch;->pointerCount:I

    .line 1300
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1302
    :pswitch_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1303
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchX:F

    .line 1304
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchY:F

    .line 1305
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 1306
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchPressed:[I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    aput v0, v7, v8

    .line 1307
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 1308
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    .line 1309
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    .line 1310
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-ge v7, v8, :cond_9

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-ge v7, v8, :cond_9

    .line 1311
    const/4 v7, 0x0

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    .line 1319
    :goto_4
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1312
    :cond_9
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-lt v7, v8, :cond_a

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-ge v7, v8, :cond_a

    .line 1313
    const/4 v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_4

    .line 1314
    :cond_a
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfWidth:I

    if-ge v7, v8, :cond_b

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->halfHeight:I

    if-lt v7, v8, :cond_b

    .line 1315
    const/4 v7, 0x2

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_4

    .line 1317
    :cond_b
    const/4 v7, 0x3

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDirection:I

    goto :goto_4

    .line 1324
    :pswitch_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1325
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v0

    .line 1326
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/Screen;->touchReleased:[I

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    aput v0, v7, v8

    .line 1327
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 1328
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    .line 1329
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    .line 1330
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    goto/16 :goto_0

    .line 1333
    :pswitch_2
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveX:F

    .line 1334
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    int-to-float v7, v7

    iput v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveY:F

    .line 1335
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchX:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_c

    .line 1336
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetTouchY:F

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->offsetMoveY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    .line 1337
    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isMoving:Z

    .line 1338
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchEvent:Lorg/loon/framework/android/game/core/graphics/Touch;

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x105 -> :sswitch_5
        0x106 -> :sswitch_6
        0x205 -> :sswitch_7
        0x206 -> :sswitch_8
    .end sparse-switch

    .line 1300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onTouchMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public abstract onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1131
    const/4 v0, 0x0

    return v0
.end method

.method public pause(J)V
    .locals 3
    .param p1, "timeMillis"    # J

    .prologue
    .line 998
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted in pause !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public playtAssetsMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    .line 427
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->playSound(Ljava/lang/String;Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 982
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 985
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 986
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 989
    return-void

    .line 983
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDown:[Z

    aput-boolean v2, v1, v0

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    :cond_1
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    aput-boolean v2, v1, v0

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    .line 700
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 703
    :cond_0
    return-void
.end method

.method public remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 1
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 712
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    .line 715
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->removeAll()V

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getContentPane()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->clear()V

    .line 730
    :cond_1
    return-void
.end method

.method public removeComponent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->remove(Ljava/lang/Class;)I

    .line 721
    :cond_0
    return-void
.end method

.method public removeSprite(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/action/sprite/ISprite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Ljava/lang/Class;)V

    .line 709
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->removeView(Landroid/view/View;)V

    .line 340
    :cond_0
    return-void
.end method

.method public resetAssetsMusic()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->resetSound()V

    .line 451
    :cond_0
    return-void
.end method

.method public resetAssetsMusic(I)V
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->setSoundVolume(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public rightOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 785
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->rightOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 786
    return-void
.end method

.method public runFirstScreen()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runFirstScreen()V

    .line 179
    :cond_0
    return-void
.end method

.method public runIndexScreen(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runIndexScreen(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public runLastScreen()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runLastScreen()V

    .line 188
    :cond_0
    return-void
.end method

.method public runNextScreen()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runNextScreen()V

    .line 217
    :cond_0
    return-void
.end method

.method public runPreviousScreen()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runPreviousScreen()V

    .line 208
    :cond_0
    return-void
.end method

.method public runTimer(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V
    .locals 3
    .param p1, "timer"    # Lorg/loon/framework/android/game/core/timer/LTimerContext;

    .prologue
    .line 933
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/timer/LTimerContext;->getTimeSinceLastUpdate()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->elapsedTime:J

    .line 934
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->elapsedTime:J

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/Sprites;->update(J)V

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getContentPane()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 939
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-wide v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->elapsedTime:J

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->update(J)V

    .line 941
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedTouch:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedTouch:I

    .line 942
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDX:I

    .line 943
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchDY:I

    .line 944
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchX:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchX:I

    .line 945
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->touchY:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->lastTouchY:I

    .line 946
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->alter(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V

    .line 947
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "screen"    # Landroid/graphics/Bitmap;

    .prologue
    .line 477
    if-eqz p1, :cond_2

    .line 478
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/Screen;->setRepaintMode(I)V

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v1

    .line 482
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v2

    .line 481
    invoke-static {p1, v1, v2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 484
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    .line 485
    .local v0, "tmp":Landroid/graphics/Bitmap;
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    .line 486
    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    .end local v0    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 517
    return-void
.end method

.method public setBackground(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "transparency"    # Z

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->getImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 508
    return-void
.end method

.method public setBackground(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "screen"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 500
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->setBackground(Landroid/graphics/Bitmap;)V

    .line 501
    return-void
.end method

.method public setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 3
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 556
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/Screen;->setRepaintMode(I)V

    .line 557
    new-instance v1, Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->currentScreen:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    .local v1, "image":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 559
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/Graphics;->setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 560
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 561
    return-void
.end method

.method public setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    .locals 1
    .param p1, "emulator"    # Lorg/loon/framework/android/game/core/EmulatorListener;

    .prologue
    .line 287
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/Android2DSurface;->setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setFPS(J)V
    .locals 0
    .param p1, "fps"    # J

    .prologue
    .line 534
    invoke-static {p1, p2}, Lorg/loon/framework/android/game/core/LSystem;->setFPS(J)V

    .line 535
    return-void
.end method

.method public setGravityToKey(Z)V
    .locals 0
    .param p1, "isGravityToKey"    # Z

    .prologue
    .line 1533
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isGravityToKey:Z

    .line 1534
    return-void
.end method

.method public setKeyDown(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 1152
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1153
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyPressed:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    aput p1, v0, v1

    .line 1154
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->pressedKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setKeyUp(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 1177
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyDown:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1178
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/Screen;->keyReleased:[I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    aput p1, v0, v1

    .line 1179
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->releasedKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNext(Z)V
    .locals 0
    .param p1, "next"    # Z

    .prologue
    .line 954
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isNext:Z

    .line 955
    return-void
.end method

.method public setOnLoadState(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->isLoad:Z

    .line 162
    return-void
.end method

.method public setRepaintMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 805
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->mode:I

    .line 806
    return-void
.end method

.method public setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 965
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 968
    :cond_0
    return-void
.end method

.method public setSprListerner(Lorg/loon/framework/android/game/action/sprite/SpriteListener;)V
    .locals 1
    .param p1, "sprListerner"    # Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->setSprListerner(Lorg/loon/framework/android/game/action/sprite/SpriteListener;)V

    goto :goto_0
.end method

.method public showAndroidAlert(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$ClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidAlert(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method public showAndroidOpenHTML(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$ClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidOpenHTML(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public showAndroidSelect(Lorg/loon/framework/android/game/core/LInput$SelectListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$SelectListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # [Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidSelect(Lorg/loon/framework/android/game/core/LInput$SelectListener;Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method

.method public showAndroidTextInput(Lorg/loon/framework/android/game/core/LInput$TextListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$TextListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidTextInput(Lorg/loon/framework/android/game/core/LInput$TextListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public stopAssetsMusic()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSound()V

    .line 460
    :cond_0
    return-void
.end method

.method public stopAssetsMusic(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/Screen;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSound(I)V

    .line 469
    :cond_0
    return-void
.end method

.method public topOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 777
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->topOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 778
    return-void
.end method
