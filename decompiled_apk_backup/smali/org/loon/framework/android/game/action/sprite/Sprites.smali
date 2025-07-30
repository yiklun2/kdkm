.class public Lorg/loon/framework/android/game/action/sprite/Sprites;
.super Ljava/lang/Object;
.source "Sprites.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x67886f73d32d2cdeL


# instance fields
.field private capacity:I

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private isViewWindowSet:Z

.field private size:I

.field private sprListerner:Lorg/loon/framework/android/game/action/sprite/SpriteListener;

.field private sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

.field private viewX:I

.field private viewY:I

.field private visible:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Sprites$1;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites$1;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->comparator:Ljava/util/Comparator;

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->capacity:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->visible:Z

    .line 71
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    .line 72
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    .line 73
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->capacity:I

    new-array v0, v0, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->comparator:Ljava/util/Comparator;

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->capacity:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->visible:Z

    .line 64
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    .line 65
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    .line 66
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->capacity:I

    new-array v0, v0, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 67
    return-void
.end method

.method private compressCapacity(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 151
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 152
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 153
    .local v0, "newArray":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 156
    .end local v0    # "newArray":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :cond_0
    return-void
.end method

.method private expandCapacity(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 139
    new-array v0, p1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 140
    .local v0, "bagArray":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 143
    .end local v0    # "bagArray":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(ILorg/loon/framework/android/game/action/sprite/ISprite;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    if-nez p2, :cond_1

    .line 201
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 188
    :cond_1
    :try_start_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-le p1, v1, :cond_2

    .line 189
    iget p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .line 191
    :cond_2
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-ne p1, v1, :cond_4

    .line 192
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 201
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v3, p1, 0x1

    .line 195
    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    sub-int/2addr v4, p1

    .line 194
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aput-object p2, v1, p1

    .line 197
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 198
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->expandCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z
    .locals 4
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v0, 0x0

    .line 265
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->contains(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 268
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 269
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->expandCapacity(I)V

    .line 271
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    aput-object p1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 282
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 418
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 421
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized contains(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z
    .locals 3
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v1, 0x0

    .line 291
    monitor-enter p0

    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 294
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    if-eqz v2, :cond_0

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-ge v0, v2, :cond_0

    .line 298
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->createUI(Ljavax/microedition/lcdui/Graphics;II)V

    .line 449
    return-void
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 21
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->visible:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v7

    .line 462
    .local v7, "clipX":I
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v8

    .line 463
    .local v8, "clipY":I
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v6

    .line 464
    .local v6, "clipWidth":I
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v5

    .line 465
    .local v5, "clipHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->isViewWindowSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewX:I

    move/from16 v16, v0

    .line 468
    .local v16, "minX":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    move/from16 v19, v0

    add-int v14, v16, v19

    .line 469
    .local v14, "maxX":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewY:I

    move/from16 v17, v0

    .line 470
    .local v17, "minY":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    move/from16 v19, v0

    add-int v15, v17, v19

    .line 477
    .local v15, "maxY":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewX:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewY:I

    move/from16 v20, v0

    sub-int v20, p3, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 478
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_3

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewX:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewY:I

    move/from16 v20, v0

    sub-int v20, p3, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->isViewWindowSet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 495
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8, v6, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 472
    .end local v9    # "i":I
    .end local v14    # "maxX":I
    .end local v15    # "maxY":I
    .end local v16    # "minX":I
    .end local v17    # "minY":I
    :cond_2
    move/from16 v16, p2

    .line 473
    .restart local v16    # "minX":I
    add-int v14, p2, v6

    .line 474
    .restart local v14    # "maxX":I
    move/from16 v17, p3

    .line 475
    .restart local v17    # "minY":I
    add-int v15, p3, v5

    .restart local v15    # "maxY":I
    goto :goto_1

    .line 479
    .restart local v9    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    move-object/from16 v19, v0

    aget-object v18, v19, v9

    .line 480
    .local v18, "spr":Lorg/loon/framework/android/game/action/sprite/ISprite;
    invoke-interface/range {v18 .. v18}, Lorg/loon/framework/android/game/action/sprite/ISprite;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 481
    invoke-interface/range {v18 .. v18}, Lorg/loon/framework/android/game/action/sprite/ISprite;->x()I

    move-result v12

    .line 482
    .local v12, "layerX":I
    invoke-interface/range {v18 .. v18}, Lorg/loon/framework/android/game/action/sprite/ISprite;->y()I

    move-result v13

    .line 483
    .local v13, "layerY":I
    invoke-interface/range {v18 .. v18}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getWidth()I

    move-result v11

    .line 484
    .local v11, "layerWidth":I
    invoke-interface/range {v18 .. v18}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getHeight()I

    move-result v10

    .line 485
    .local v10, "layerHeight":I
    add-int v19, v12, v11

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_4

    if-gt v12, v14, :cond_4

    .line 486
    add-int v19, v13, v10

    move/from16 v0, v19

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    if-le v13, v15, :cond_5

    .line 478
    .end local v10    # "layerHeight":I
    .end local v11    # "layerWidth":I
    .end local v12    # "layerX":I
    .end local v13    # "layerY":I
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 489
    .restart local v10    # "layerHeight":I
    .restart local v11    # "layerWidth":I
    .restart local v12    # "layerX":I
    .restart local v13    # "layerY":I
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_3
.end method

.method public declared-synchronized find(II)Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 167
    .local v3, "snapshot":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 174
    const/4 v0, 0x0

    :cond_0
    monitor-exit p0

    return-object v0

    .line 168
    :cond_1
    :try_start_1
    aget-object v0, v3, v1

    .line 169
    .local v0, "child":Lorg/loon/framework/android/game/action/sprite/ISprite;
    invoke-interface {v0}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 170
    .local v2, "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->contains(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    .end local v0    # "child":Lorg/loon/framework/android/game/action/sprite/ISprite;
    .end local v1    # "i":I
    .end local v2    # "rect":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .end local v3    # "snapshot":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getBottomSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-lez v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    return v0
.end method

.method public getSprListerner()Lorg/loon/framework/android/game/action/sprite/SpriteListener;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprListerner:Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    return-object v0
.end method

.method public declared-synchronized getSprite(I)Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 205
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSprites(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 6
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
    .line 243
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 255
    :cond_0
    monitor-exit p0

    return-object v2

    .line 246
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 248
    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v4, v5

    .line 249
    .local v3, "sprite":Lorg/loon/framework/android/game/action/sprite/ISprite;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 250
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    .end local v3    # "sprite":Lorg/loon/framework/android/game/action/sprite/ISprite;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getSprites()[Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    return-object v0
.end method

.method public declared-synchronized getTopSprite()Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->visible:Z

    return v0
.end method

.method public declared-synchronized remove(I)Lorg/loon/framework/android/game/action/sprite/ISprite;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v0, v2, p1

    .line 313
    .local v0, "removed":Lorg/loon/framework/android/game/action/sprite/ISprite;
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 314
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 316
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 320
    if-nez v1, :cond_1

    .line 321
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/loon/framework/android/game/action/sprite/Sprite;

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_1
    monitor-exit p0

    return-object v0

    .line 312
    .end local v0    # "removed":Lorg/loon/framework/android/game/action/sprite/ISprite;
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(II)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    sub-int v1, v2, p2

    .line 402
    .local v1, "numMoved":I
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v2, p2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    sub-int v3, p2, p1

    sub-int v0, v2, v3

    .line 405
    .local v0, "newSize":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-ne v2, v0, :cond_1

    .line 408
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-nez v2, :cond_0

    .line 409
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/loon/framework/android/game/action/sprite/Sprite;

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    .end local v0    # "newSize":I
    .end local v1    # "numMoved":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)V
    .locals 7
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
    .line 342
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 360
    :cond_0
    monitor-exit p0

    return-void

    .line 345
    :cond_1
    :try_start_0
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 346
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v4, v1, -0x1

    aget-object v2, v3, v4

    .line 347
    .local v2, "sprite":Lorg/loon/framework/android/game/action/sprite/ISprite;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 348
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    :cond_2
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .line 351
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 352
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 353
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-nez v3, :cond_4

    .line 354
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/loon/framework/android/game/action/sprite/Sprite;

    iput-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 345
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 356
    :cond_4
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/loon/framework/android/game/action/sprite/Sprites;->compressCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 342
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/action/sprite/ISprite;>;"
    .end local v1    # "i":I
    .end local v2    # "sprite":Lorg/loon/framework/android/game/action/sprite/ISprite;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z
    .locals 6
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v1, 0x0

    .line 369
    monitor-enter p0

    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 372
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    if-eqz v2, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, "removed":Z
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_0

    .line 378
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    const/4 v1, 0x1

    .line 380
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    .line 381
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 382
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 383
    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-nez v2, :cond_2

    .line 384
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/loon/framework/android/game/action/sprite/Sprite;

    iput-object v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    .end local v1    # "removed":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 386
    .restart local v0    # "i":I
    .restart local v1    # "removed":Z
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/action/sprite/Sprites;->compressCapacity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public declared-synchronized removeAll()V
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->clear()V

    .line 332
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/loon/framework/android/game/action/sprite/Sprite;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendToBack(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 4
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v3, 0x1

    .line 106
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_0

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 114
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 115
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v1, v3, v3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 117
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 118
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->sortSprites()V

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendToFront(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 4
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 90
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 91
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    invoke-static {v1, v3, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/action/sprite/ISprite;

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    .line 93
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aput-object p1, v1, v2

    .line 94
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->sortSprites()V

    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setLocation(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->isViewWindowSet:Z

    .line 523
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewX:I

    .line 524
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewY:I

    .line 525
    return-void
.end method

.method public setSprListerner(Lorg/loon/framework/android/game/action/sprite/SpriteListener;)V
    .locals 0
    .param p1, "sprListerner"    # Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    .prologue
    .line 556
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprListerner:Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    .line 557
    return-void
.end method

.method public setViewWindow(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->isViewWindowSet:Z

    .line 509
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewX:I

    .line 510
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->viewY:I

    .line 511
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->width:I

    .line 512
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->height:I

    .line 513
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 548
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->visible:Z

    .line 549
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    return v0
.end method

.method public sortSprites()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 130
    return-void
.end method

.method public update(J)V
    .locals 4
    .param p1, "elapsedTime"    # J

    .prologue
    .line 430
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprListerner:Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 431
    .local v2, "listerner":Z
    :goto_0
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->size:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 440
    return-void

    .line 430
    .end local v1    # "i":I
    .end local v2    # "listerner":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 432
    .restart local v1    # "i":I
    .restart local v2    # "listerner":Z
    :cond_1
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprites:[Lorg/loon/framework/android/game/action/sprite/ISprite;

    aget-object v0, v3, v1

    .line 433
    .local v0, "child":Lorg/loon/framework/android/game/action/sprite/ISprite;
    invoke-interface {v0}, Lorg/loon/framework/android/game/action/sprite/ISprite;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/ISprite;->update(J)V

    .line 435
    if-eqz v2, :cond_2

    .line 436
    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/Sprites;->sprListerner:Lorg/loon/framework/android/game/action/sprite/SpriteListener;

    invoke-interface {v3, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteListener;->update(Lorg/loon/framework/android/game/action/sprite/ISprite;)V

    .line 431
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
