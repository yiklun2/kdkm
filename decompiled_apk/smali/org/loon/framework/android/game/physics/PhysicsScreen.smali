.class public abstract Lorg/loon/framework/android/game/physics/PhysicsScreen;
.super Lorg/loon/framework/android/game/core/graphics/Screen;
.source "PhysicsScreen.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/ContactListener;
.implements Lorg/loon/framework/android/game/physics/PolygonType;
.implements Ljava/lang/Runnable;


# static fields
.field public static final POSITION_ITERATIONS_DEFAULT:I = 0xa

.field public static final TIME_ITERATIONS_DEFAULT:F = 0.5f

.field public static final VELOCITY_ITERATIONS_DEFAULT:I = 0xa

.field public static final WORLD_SCALE:I = 0xa

.field public static final WORLD_WAIT:I = 0x1f4

.field protected static scaleSize:I

.field protected static world:Lcom/badlogic/gdx/physics/box2d/World;


# instance fields
.field private gravity:Lcom/badlogic/gdx/math/Vector2;

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/physics/PhysicsObject;",
            ">;"
        }
    .end annotation
.end field

.field private physicsFPS:J

.field private physicsThread:Ljava/lang/Thread;

.field protected positionIters:I

.field private running:Z

.field protected timerIters:F

.field private useContactListener:Z

.field protected velocityIters:I

.field private worldBox:Lorg/loon/framework/android/game/physics/WorldBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xa

    sput v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 87
    const/4 v3, 0x1

    move-object v0, p0

    move v2, v1

    move v5, v4

    .line 88
    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsScreen;-><init>(FFZII)V

    .line 89
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 2
    .param p1, "gx"    # F
    .param p2, "gy"    # F
    .param p3, "doSleep"    # Z

    .prologue
    const/16 v1, 0xa

    .line 96
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 97
    invoke-direct {p0, v0, p3, v1, v1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;-><init>(Lcom/badlogic/gdx/math/Vector2;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(FFZII)V
    .locals 1
    .param p1, "gx"    # F
    .param p2, "gy"    # F
    .param p3, "doSleep"    # Z
    .param p4, "velocityIterations"    # I
    .param p5, "positionIterations"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 103
    invoke-direct {p0, v0, p3, p4, p5}, Lorg/loon/framework/android/game/physics/PhysicsScreen;-><init>(Lcom/badlogic/gdx/math/Vector2;ZII)V

    .line 104
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "velocityIterations"    # I
    .param p2, "positionIterations"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    const/4 v3, 0x1

    move-object v0, p0

    move v2, v1

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsScreen;-><init>(FFZII)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;ZII)V
    .locals 7
    .param p1, "gravity"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "doSleep"    # Z
    .param p3, "velocityIterations"    # I
    .param p4, "positionIterations"    # I

    .prologue
    const/16 v1, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    .line 66
    iput v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->velocityIters:I

    .line 68
    iput v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->positionIters:I

    .line 70
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->timerIters:F

    .line 109
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World;

    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->gravity:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, v6}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 110
    new-instance v0, Lorg/loon/framework/android/game/physics/WorldBox;

    sget-object v1, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->getWidth()I

    move-result v3

    .line 111
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/physics/WorldBox;-><init>(Lcom/badlogic/gdx/physics/box2d/World;Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 110
    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    .line 112
    iput p3, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->velocityIters:I

    .line 113
    iput p4, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->positionIters:I

    .line 114
    iput-boolean v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->running:Z

    .line 115
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsFPS:J

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsThread:Ljava/lang/Thread;

    .line 121
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void

    .line 118
    :cond_0
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsFPS:J

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/physics/PhysicsScreen;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1
    .param p0, "bodyDef"    # Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .prologue
    .line 368
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;
    .locals 1
    .param p0, "def"    # Lcom/badlogic/gdx/physics/box2d/JointDef;

    .prologue
    .line 376
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;

    move-result-object v0

    return-object v0
.end method

.method public static destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .param p0, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 372
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 373
    return-void
.end method

.method public static destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 1
    .param p0, "joint"    # Lcom/badlogic/gdx/physics/box2d/Joint;

    .prologue
    .line 380
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 381
    return-void
.end method

.method public static getWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method public static screenToWorld(F)F
    .locals 1
    .param p0, "size"    # F

    .prologue
    .line 522
    sget v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    int-to-float v0, v0

    div-float v0, p0, v0

    return v0
.end method

.method public static screenToWorld(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 514
    sget v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    div-int v0, p0, v0

    return v0
.end method

.method public static worldToScreen(F)F
    .locals 1
    .param p0, "size"    # F

    .prologue
    .line 526
    sget v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static worldToScreen(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 518
    sget v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    mul-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z
    .locals 2
    .param p1, "o"    # Lorg/loon/framework/android/game/physics/PhysicsObject;

    .prologue
    .line 277
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final alter(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V
    .locals 0
    .param p1, "t"    # Lorg/loon/framework/android/game/core/timer/LTimerContext;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->update(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V

    .line 411
    return-void
.end method

.method public beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 0
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .prologue
    .line 417
    return-void
.end method

.method public begineContactListener()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/World;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->useContactListener:Z

    .line 125
    monitor-exit v1

    .line 129
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bindTo(IILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 9
    .param p1, "polyType"    # I
    .param p2, "poly"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 259
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v8

    .line 260
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(IILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 262
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 263
    monitor-exit v8

    return-object v0

    .line 259
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 8
    .param p1, "polyType"    # I
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 269
    iget-object v7, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v7

    .line 270
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 271
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 272
    monitor-exit v7

    return-object v0

    .line 269
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Landroid/graphics/Bitmap;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 7
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "poly"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 242
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v6

    .line 243
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 244
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 245
    monitor-exit v6

    return-object v0

    .line 242
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/Body;)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 183
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 184
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 185
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 186
    monitor-exit v2

    return-object v0

    .line 183
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 250
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 251
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 252
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 253
    monitor-exit v2

    return-object v0

    .line 250
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Ljava/lang/String;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "poly"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 208
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v6

    .line 209
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 210
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 211
    monitor-exit v6

    return-object v0

    .line 208
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/Body;)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 175
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 176
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 177
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 178
    monitor-exit v2

    return-object v0

    .line 175
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 217
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 218
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 219
    monitor-exit v2

    return-object v0

    .line 216
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Ljavax/microedition/lcdui/Image;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 7
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "poly"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 225
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v6

    .line 226
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljavax/microedition/lcdui/Image;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 227
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 228
    monitor-exit v6

    return-object v0

    .line 225
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Ljavax/microedition/lcdui/Image;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 233
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 234
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljavax/microedition/lcdui/Image;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 235
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 236
    monitor-exit v2

    return-object v0

    .line 233
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Lorg/loon/framework/android/game/action/sprite/ISprite;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "spr"    # Lorg/loon/framework/android/game/action/sprite/ISprite;
    .param p2, "poly"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .prologue
    .line 191
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 192
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2, p3}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Lorg/loon/framework/android/game/action/sprite/ISprite;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 193
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 194
    monitor-exit v2

    return-object v0

    .line 191
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindTo(Lorg/loon/framework/android/game/action/sprite/ISprite;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 3
    .param p1, "spr"    # Lorg/loon/framework/android/game/action/sprite/ISprite;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .prologue
    .line 199
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v2

    .line 200
    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    invoke-direct {v0, p1, p2}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Lorg/loon/framework/android/game/action/sprite/ISprite;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 201
    .local v0, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->addObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)Z

    .line 202
    monitor-exit v2

    return-object v0

    .line 199
    .end local v0    # "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/Screen;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->running:Z

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsThread:Ljava/lang/Thread;

    .line 325
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/World;->dispose()V

    .line 327
    const/4 v0, 0x0

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 332
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 5
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 397
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 398
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->paint(Ljavax/microedition/lcdui/Graphics;)V

    .line 404
    return-void

    .line 399
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/physics/PhysicsObject;

    .line 400
    .local v1, "o":Lorg/loon/framework/android/game/physics/PhysicsObject;
    iget-wide v3, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->elapsedTime:J

    invoke-virtual {v1, v3, v4}, Lorg/loon/framework/android/game/physics/PhysicsObject;->update(J)V

    .line 401
    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 398
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 10
    .param p1, "contact"    # Lcom/badlogic/gdx/physics/box2d/Contact;

    .prologue
    .line 420
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v8

    .line 422
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v3

    .line 423
    .local v3, "fixture1":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v4

    .line 425
    .local v4, "fixture2":Lcom/badlogic/gdx/physics/box2d/Fixture;
    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 426
    .local v0, "body1":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 428
    .local v1, "body2":Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/physics/PhysicsObject;

    .line 429
    .local v5, "object1":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/loon/framework/android/game/physics/PhysicsObject;

    .line 431
    .local v6, "object2":Lorg/loon/framework/android/game/physics/PhysicsObject;
    if-eqz v5, :cond_0

    .line 432
    invoke-virtual {v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;->onCollision()V

    .line 434
    :cond_0
    if-eqz v6, :cond_1

    .line 435
    invoke-virtual {v6}, Lorg/loon/framework/android/game/physics/PhysicsObject;->onCollision()V

    .line 438
    :cond_1
    new-instance v7, Lorg/loon/framework/android/game/physics/CollisionEvent;

    invoke-direct {v7, v0, v1}, Lorg/loon/framework/android/game/physics/CollisionEvent;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)V

    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->onCollisionEvent(Lorg/loon/framework/android/game/physics/CollisionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v0    # "body1":Lcom/badlogic/gdx/physics/box2d/Body;
    .end local v1    # "body2":Lcom/badlogic/gdx/physics/box2d/Body;
    .end local v3    # "fixture1":Lcom/badlogic/gdx/physics/box2d/Fixture;
    .end local v4    # "fixture2":Lcom/badlogic/gdx/physics/box2d/Fixture;
    .end local v5    # "object1":Lorg/loon/framework/android/game/physics/PhysicsObject;
    .end local v6    # "object2":Lorg/loon/framework/android/game/physics/PhysicsObject;
    :goto_0
    :try_start_1
    monitor-exit v8

    .line 443
    return-void

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "PhysicsScreen"

    const-string v9, "Contact"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 420
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public endContactListener()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/World;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->useContactListener:Z

    .line 132
    monitor-exit v1

    .line 136
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public find(II)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v5

    .line 140
    :try_start_0
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 141
    monitor-exit v5

    move-object v0, v4

    .line 151
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 144
    .local v3, "size":I
    move v1, v3

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 151
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 145
    :cond_1
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    .line 146
    .local v0, "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 147
    .local v2, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 148
    monitor-exit v5

    goto :goto_0

    .line 139
    .end local v0    # "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    .end local v1    # "i":I
    .end local v2    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 144
    .restart local v0    # "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    .restart local v1    # "i":I
    .restart local v2    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .restart local v3    # "size":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public find(IILjava/lang/Object;)Lorg/loon/framework/android/game/physics/PhysicsObject;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v5

    .line 157
    :try_start_0
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 158
    monitor-exit v5

    move-object v0, v4

    .line 170
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 161
    .local v3, "size":I
    move v1, v3

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 170
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 162
    :cond_1
    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/physics/PhysicsObject;

    .line 163
    .local v0, "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p3, :cond_2

    .line 164
    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 165
    .local v2, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    monitor-exit v5

    goto :goto_0

    .line 156
    .end local v0    # "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    .end local v1    # "i":I
    .end local v2    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 161
    .restart local v0    # "child":Lorg/loon/framework/android/game/physics/PhysicsObject;
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getPhysicsFPS()J
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsFPS:J

    return-wide v0
.end method

.method public getPositionIterations()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->positionIters:I

    return v0
.end method

.method public getScaleSize()F
    .locals 1

    .prologue
    .line 506
    sget v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    int-to-float v0, v0

    return v0
.end method

.method public getTimerIters()F
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->timerIters:F

    return v0
.end method

.method public getVelocityIterations()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->velocityIters:I

    return v0
.end method

.method public getWorldBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/WorldBox;->getBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->running:Z

    return v0
.end method

.method public onCollisionEvent(Lorg/loon/framework/android/game/physics/CollisionEvent;)V
    .locals 0
    .param p1, "e"    # Lorg/loon/framework/android/game/physics/CollisionEvent;

    .prologue
    .line 447
    return-void
.end method

.method public abstract onDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public final onTouchDown(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 2
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 343
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsScreen$1;-><init>(Lorg/loon/framework/android/game/physics/PhysicsScreen;Lorg/loon/framework/android/game/core/graphics/Touch;)V

    .line 350
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->callEvent(Ljava/lang/Runnable;)V

    .line 351
    return-void
.end method

.method public final onTouchMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 0
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->onMove(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    .line 357
    return-void
.end method

.method public final onTouchUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V
    .locals 0
    .param p1, "e"    # Lorg/loon/framework/android/game/core/graphics/Touch;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->onUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V

    .line 363
    return-void
.end method

.method public abstract onUp(Lorg/loon/framework/android/game/core/graphics/Touch;)V
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public removeObject(Lorg/loon/framework/android/game/physics/PhysicsObject;)V
    .locals 2
    .param p1, "o"    # Lorg/loon/framework/android/game/physics/PhysicsObject;

    .prologue
    .line 283
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->dispose()V

    .line 283
    monitor-exit v1

    .line 287
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 290
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemTimer()Lorg/loon/framework/android/game/core/timer/SystemTimer;

    move-result-object v5

    .line 291
    .local v5, "timer":Lorg/loon/framework/android/game/core/timer/SystemTimer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 292
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v3

    .line 294
    .local v3, "lastTimeMicros":J
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 296
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v3

    .line 300
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->elapsedTime:J

    .line 315
    :goto_1
    iget-boolean v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->running:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsThread:Ljava/lang/Thread;

    if-eq v6, v0, :cond_0

    .line 316
    :cond_1
    return-void

    .line 303
    :cond_2
    iget-object v7, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->objects:Ljava/util/ArrayList;

    monitor-enter v7

    .line 304
    :try_start_1
    sget-object v6, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    .line 306
    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :goto_2
    :try_start_3
    monitor-exit v7

    goto :goto_1

    .line 303
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 311
    :cond_3
    :try_start_4
    sget-object v6, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->timerIters:F

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->velocityIters:I

    iget v10, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->positionIters:I

    invoke-virtual {v6, v8, v9, v10}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    .line 303
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    const-wide/32 v6, 0xf4240

    iget-wide v8, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsFPS:J

    div-long/2addr v6, v8

    add-long v1, v3, v6

    .line 314
    .local v1, "goalTimeMicros":J
    invoke-virtual {v5, v1, v2}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->sleepTimeMicros(J)J

    move-result-wide v3

    goto :goto_1

    .line 297
    .end local v1    # "goalTimeMicros":J
    :catch_0
    move-exception v6

    goto :goto_0

    .line 307
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public setGravity(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->gravity:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 389
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->gravity:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 390
    return-void
.end method

.method public setPhysicsFPS(J)V
    .locals 0
    .param p1, "physicsFPS"    # J

    .prologue
    .line 498
    iput-wide p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->physicsFPS:J

    .line 499
    return-void
.end method

.method public setPositionIterations(I)V
    .locals 0
    .param p1, "positionIterations"    # I

    .prologue
    .line 454
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->positionIters:I

    .line 455
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 486
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->running:Z

    .line 487
    return-void
.end method

.method public setScaleSize(I)V
    .locals 0
    .param p1, "scaleSize"    # I

    .prologue
    .line 510
    sput p1, Lorg/loon/framework/android/game/physics/PhysicsScreen;->scaleSize:I

    .line 511
    return-void
.end method

.method public setTimerIters(F)V
    .locals 0
    .param p1, "timerIters"    # F

    .prologue
    .line 470
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->timerIters:F

    .line 471
    return-void
.end method

.method public setVelocityIterations(I)V
    .locals 0
    .param p1, "velocityIterations"    # I

    .prologue
    .line 462
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->velocityIters:I

    .line 463
    return-void
.end method

.method public setWorldBox(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v1, v2, v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/physics/WorldBox;->setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 483
    return-void
.end method

.method public setWorldBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V
    .locals 1
    .param p1, "box"    # Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .prologue
    .line 478
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->worldBox:Lorg/loon/framework/android/game/physics/WorldBox;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/physics/WorldBox;->setBox(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)V

    .line 479
    return-void
.end method

.method public abstract update(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V
.end method

.method public useContactListener()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->useContactListener:Z

    return v0
.end method
