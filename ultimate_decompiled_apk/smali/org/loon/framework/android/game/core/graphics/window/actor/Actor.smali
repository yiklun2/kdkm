.class public Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
.super Ljava/lang/Object;
.source "Actor.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/filter/ImageFilterType;


# static fields
.field private static lazySheets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;",
            ">;"
        }
    .end annotation
.end field

.field private static sequenceNumber:I


# instance fields
.field protected alpha:F

.field private animation:Lorg/loon/framework/android/game/action/sprite/Animation;

.field private boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private click:Z

.field private data:Ljava/lang/Object;

.field private drag:Z

.field filterType:I

.field private gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

.field private image:Ljavax/microedition/lcdui/Image;

.field private isAnimation:Z

.field private lastPaintSequenceNumber:I

.field private maxRotateCache:I

.field private noSequenceNumber:I

.field private oldScale:Ljavax/microedition/lcdui/Image;

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private rotation:I

.field private scale:F

.field sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

.field supportRotateSheet:Z

.field private tag:Ljava/lang/Object;

.field private timer:Lorg/loon/framework/android/game/core/timer/LTimer;

.field private visible:Z

.field protected x:I

.field private xs:[I

.field protected y:I

.field private ys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sequenceNumber:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Ljavax/microedition/lcdui/Image;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Ljava/lang/String;II)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 131
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 3
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    .line 69
    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->visible:Z

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag:Z

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->click:Z

    .line 79
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    .line 81
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    .line 83
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I

    .line 95
    const/16 v0, 0x3c

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->maxRotateCache:I

    .line 120
    sget v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sequenceNumber:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->noSequenceNumber:I

    .line 121
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    .line 122
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    .line 123
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/Animation;)V
    .locals 1
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;-><init>(Lorg/loon/framework/android/game/action/sprite/Animation;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/Animation;II)V
    .locals 4
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    .line 69
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->visible:Z

    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag:Z

    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->click:Z

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    .line 83
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I

    .line 95
    const/16 v0, 0x3c

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->maxRotateCache:I

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Animation is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    sget v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sequenceNumber:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->noSequenceNumber:I

    .line 108
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 109
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    .line 110
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    .line 111
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    .line 112
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 113
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->maxRotateCache:I

    return v0
.end method

.method static synthetic access$1()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    return-object v0
.end method

.method private calcBounds()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v8

    .line 751
    .local v8, "layer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    if-eqz v8, :cond_0

    .line 754
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCellSize()I

    move-result v6

    .line 755
    .local v6, "cellSize":I
    const/4 v9, 0x0

    .line 756
    .local v9, "minY":I
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_2

    .line 757
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    mul-int/2addr v0, v6

    add-int v10, v0, v6

    .line 758
    .local v10, "width":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    mul-int/2addr v0, v6

    add-int v7, v0, v6

    .line 759
    .local v7, "height":I
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-direct {v0, v10, v7, v1, v1}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 760
    const/4 v9, 0x0

    :goto_0
    const/4 v0, 0x4

    if-lt v9, v0, :cond_1

    .line 770
    .end local v6    # "cellSize":I
    .end local v7    # "height":I
    .end local v9    # "minY":I
    .end local v10    # "width":I
    :cond_0
    :goto_1
    return-void

    .line 761
    .restart local v6    # "cellSize":I
    .restart local v7    # "height":I
    .restart local v9    # "minY":I
    .restart local v10    # "width":I
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    aput v10, v0, v9

    .line 762
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    aput v7, v0, v9

    .line 760
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 766
    .end local v7    # "height":I
    .end local v10    # "width":I
    :cond_2
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    .line 767
    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    int-to-double v4, v4

    .line 766
    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->getNewBounds(IIIID)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 765
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    goto :goto_1
.end method

.method private static checkOutside([I[I[I[I)Z
    .locals 12
    .param p0, "myX"    # [I
    .param p1, "myY"    # [I
    .param p2, "otherX"    # [I
    .param p3, "otherY"    # [I

    .prologue
    const/4 v11, 0x4

    .line 837
    const/4 v6, 0x0

    .local v6, "v":I
    :goto_0
    if-lt v6, v11, :cond_0

    .line 854
    const/4 v8, 0x0

    :goto_1
    return v8

    .line 838
    :cond_0
    add-int/lit8 v8, v6, 0x1

    and-int/lit8 v7, v8, 0x3

    .line 839
    .local v7, "v1":I
    aget v8, p0, v6

    aget v9, p0, v7

    sub-int v1, v8, v9

    .line 840
    .local v1, "edgeX":I
    aget v8, p1, v6

    aget v9, p1, v7

    sub-int v2, v8, v9

    .line 841
    .local v2, "edgeY":I
    neg-int v3, v2

    .line 842
    .local v3, "reX":I
    move v4, v1

    .line 843
    .local v4, "reY":I
    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    .line 844
    :cond_1
    const/4 v0, 0x0

    .local v0, "e":I
    :goto_2
    if-lt v0, v11, :cond_2

    .line 851
    const/4 v8, 0x1

    goto :goto_1

    .line 845
    :cond_2
    aget v8, p2, v0

    aget v9, p0, v7

    sub-int/2addr v8, v9

    mul-int/2addr v8, v3

    .line 846
    aget v9, p3, v0

    aget v10, p1, v7

    sub-int/2addr v9, v10

    mul-int/2addr v9, v4

    .line 845
    add-int v5, v8, v9

    .line 847
    .local v5, "scalar":I
    if-gez v5, :cond_3

    .line 844
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 837
    .end local v0    # "e":I
    .end local v5    # "scalar":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private failIfNotInLayer()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 831
    const-string v1, "The actor has not been inserted into a Layer so it has no location yet !"

    .line 830
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    return-void
.end method

.method private limitValue(II)I
    .locals 0
    .param p1, "v"    # I
    .param p2, "limit"    # I

    .prologue
    .line 646
    if-gez p1, :cond_0

    .line 647
    const/4 p1, 0x0

    .line 649
    :cond_0
    if-ge p2, p1, :cond_1

    .line 650
    move p1, p2

    .line 652
    :cond_1
    return p1
.end method

.method private locationChanged(II)V
    .locals 1
    .param p1, "oldX"    # I
    .param p2, "oldY"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->updateObjectLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)V

    .line 826
    :cond_0
    return-void
.end method

.method public static resetRotateAllCache()V
    .locals 6

    .prologue
    .line 410
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 411
    sget-object v5, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    monitor-enter v5

    .line 412
    :try_start_0
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 413
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 411
    monitor-exit v5

    .line 423
    :cond_1
    return-void

    .line 414
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 415
    .local v1, "key":Ljava/lang/Integer;
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 416
    .local v3, "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    if-eqz v3, :cond_0

    .line 417
    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->dispose()V

    goto :goto_0

    .line 411
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static resetRotateCache(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p0, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 431
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 432
    .local v0, "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    if-eqz v0, :cond_0

    .line 433
    monitor-enter v0

    .line 434
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    .line 435
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    const/4 v1, 0x0

    .line 433
    .end local v0    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    .local v1, "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    :try_start_1
    monitor-exit v0

    move-object v0, v1

    .line 439
    .end local v1    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    .restart local v0    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    :cond_0
    return-void

    .line 433
    :catchall_0
    move-exception v2

    move-object v1, v0

    .end local v0    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    .restart local v1    # "sheet":Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method private setLocationDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 619
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 620
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    .line 621
    .local v3, "oldX":I
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    .line 622
    .local v4, "oldY":I
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 623
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, p1, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->limitValue(II)I

    move-result v5

    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    .line 624
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v5

    .line 625
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 624
    invoke-direct {p0, p2, v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->limitValue(II)I

    move-result v5

    iput v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    .line 630
    :goto_0
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    if-ne v5, v3, :cond_0

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    if-eq v5, v4, :cond_2

    .line 631
    :cond_0
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-eqz v5, :cond_1

    .line 632
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    sub-int/2addr v5, v3

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    iget v6, v6, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    mul-int v0, v5, v6

    .line 633
    .local v0, "dx":I
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    sub-int/2addr v5, v4

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    iget v6, v6, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->cellSize:I

    mul-int v1, v5, v6

    .line 634
    .local v1, "dy":I
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setX(I)V

    .line 635
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setY(I)V

    .line 636
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x4

    if-lt v2, v5, :cond_4

    .line 641
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v3, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->locationChanged(II)V

    .line 643
    :cond_2
    return-void

    .line 627
    :cond_3
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    .line 628
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    goto :goto_0

    .line 637
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    .restart local v2    # "i":I
    :cond_4
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    aget v6, v5, v2

    add-int/2addr v6, v0

    aput v6, v5, v2

    .line 638
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    aget v6, v5, v2

    add-int/2addr v6, v1

    aput v6, v5, v2

    .line 636
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setRotateSheet(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 447
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_0

    .line 453
    sget-object v4, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    monitor-enter v4

    .line 454
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->suited2(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->hashBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 456
    .local v0, "index":Ljava/lang/Integer;
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iput-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 457
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    if-nez v3, :cond_2

    .line 458
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor$1;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V

    .line 466
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 467
    .local v2, "thread":Ljava/lang/Thread;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 468
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 453
    .end local v0    # "index":Ljava/lang/Integer;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 470
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    goto :goto_1

    .line 473
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private sizeChanged()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->updateObjectSize(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method public action(J)V
    .locals 0
    .param p1, "elapsedTime"    # J

    .prologue
    .line 390
    return-void
.end method

.method addLayer(IILorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "gameLayer"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    .prologue
    .line 700
    invoke-virtual {p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->limitValue(II)I

    move-result p1

    .line 702
    invoke-virtual {p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->limitValue(II)I

    move-result p2

    .line 704
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 705
    invoke-virtual {p0, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V

    .line 706
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 707
    return-void
.end method

.method protected addLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V
    .locals 0
    .param p1, "gameLayer"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    .prologue
    .line 660
    return-void
.end method

.method public circleTo(II)Lorg/loon/framework/android/game/action/CircleTo;
    .locals 1
    .param p1, "radius"    # I
    .param p2, "velocity"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 243
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callCircleTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/CircleTo;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(II)Z
    .locals 10
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 948
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 949
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-nez v8, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v6

    .line 952
    :cond_1
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v8, :cond_2

    .line 953
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->calcBounds()V

    .line 955
    :cond_2
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_6

    .line 956
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    const/16 v9, 0x10e

    if-eq v8, v9, :cond_6

    .line 957
    const/4 v4, 0x0

    .local v4, "v":I
    :goto_1
    const/4 v8, 0x4

    if-lt v4, v8, :cond_3

    move v6, v7

    .line 971
    goto :goto_0

    .line 958
    :cond_3
    add-int/lit8 v8, v4, 0x1

    and-int/lit8 v5, v8, 0x3

    .line 959
    .local v5, "v1":I
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    aget v9, v9, v5

    sub-int v0, v8, v9

    .line 960
    .local v0, "edgeX":I
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    aget v9, v9, v5

    sub-int v1, v8, v9

    .line 961
    .local v1, "edgeY":I
    neg-int v2, v1

    .line 962
    .local v2, "reX":I
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 963
    :cond_4
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    aget v8, v8, v5

    sub-int v8, p1, v8

    mul-int/2addr v8, v2

    .line 964
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    aget v9, v9, v5

    sub-int v9, p2, v9

    mul-int/2addr v9, v0

    .line 963
    add-int v3, v8, v9

    .line 965
    .local v3, "scalar":I
    if-gez v3, :cond_0

    .line 957
    .end local v3    # "scalar":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 973
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "reX":I
    .end local v4    # "v":I
    .end local v5    # "v1":I
    :cond_6
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getX()I

    move-result v8

    if-lt p1, v8, :cond_0

    .line 974
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getRight()I

    move-result v8

    if-ge p1, v8, :cond_0

    .line 975
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getY()I

    move-result v8

    if-lt p2, v8, :cond_0

    .line 976
    iget-object v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getTop()I

    move-result v8

    if-ge p2, v8, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public downClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 317
    return-void
.end method

.method public downKey()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public drag(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 349
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 743
    return-void
.end method

.method public fadeIn()Lorg/loon/framework/android/game/action/FadeTo;
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 187
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    const/16 v1, 0x3c

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callFadeInTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)Lorg/loon/framework/android/game/action/FadeTo;

    move-result-object v0

    return-object v0
.end method

.method public fadeOut()Lorg/loon/framework/android/game/action/FadeTo;
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    const/16 v1, 0x3c

    invoke-virtual {v0, p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callFadeOutTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;I)Lorg/loon/framework/android/game/action/FadeTo;

    move-result-object v0

    return-object v0
.end method

.method public fireTo(II)Lorg/loon/framework/android/game/action/FireTo;
    .locals 2
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 267
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->fireTo(IID)Lorg/loon/framework/android/game/action/FireTo;

    move-result-object v0

    return-object v0
.end method

.method public fireTo(IID)Lorg/loon/framework/android/game/action/FireTo;
    .locals 6
    .param p1, "endX"    # I
    .param p2, "endY"    # I
    .param p3, "speed"    # D

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 256
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callFireTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IID)Lorg/loon/framework/android/game/action/FireTo;

    move-result-object v0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1018
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    return v0
.end method

.method public getAnimation()Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    return-object v0
.end method

.method getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 731
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->calcBounds()V

    .line 733
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getCollisionObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 918
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getCollisionObjects(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionObjects(IILjava/lang/Class;)Ljava/util/List;
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 897
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 898
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCollisionObjectsAt(IILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionObjects(ILjava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p1, "radius"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 910
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 911
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getObjectsInRange(IIILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 913
    .local v0, "inRange":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 914
    return-object v0
.end method

.method public getCollisionObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 923
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v1, p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getIntersectingObjects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 924
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 925
    return-object v0
.end method

.method getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    .line 539
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public final getLastPaintSeqNum()I
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lastPaintSequenceNumber:I

    return v0
.end method

.method public getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    return-object v0
.end method

.method public getMaxRotateCache()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->maxRotateCache:I

    return v0
.end method

.method public getNeighbours(IZLjava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "distance"    # I
    .param p2, "diagonal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 892
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getNeighbours(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IZLjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyCollisionObject()Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1

    .prologue
    .line 929
    const-class v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getOnlyCollisionObject(Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyCollisionObject(IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 905
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getOnlyObjectAt(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IILjava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyCollisionObject(Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;",
            ">;)",
            "Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;>;"
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 934
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getOnlyIntersectingObject(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Ljava/lang/Class;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyCollisionObjectAt(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 938
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 939
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getOnlyCollisionObjectsAt(II)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyCollisionObjectAt(IILjava/lang/Object;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 943
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 944
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getOnlyCollisionObjectsAt(IILjava/lang/Object;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getRandLocation()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getRandomLayerLocation(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 6

    .prologue
    .line 715
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    .line 716
    .local v0, "tmp":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v1, :cond_0

    .line 717
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    iget v4, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v5, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 721
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v1

    .line 719
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    iget v4, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->width:I

    iget v5, v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    return v0
.end method

.method public final getSequenceNumber()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->noSequenceNumber:I

    return v0
.end method

.method public getSheet()Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRectBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getX()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 394
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 399
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    return v0
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Z
    .locals 11
    .param p1, "other"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 859
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-nez v9, :cond_2

    .line 860
    iget-object v9, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v9, :cond_1

    .line 861
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCellSize()I

    move-result v6

    .line 862
    .local v6, "thisBounds1":I
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    mul-int/2addr v7, v6

    .line 863
    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    mul-int/2addr v8, v6

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    .line 862
    invoke-virtual {p1, v7, v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->containsPoint(II)Z

    move-result v7

    .line 883
    .end local v6    # "thisBounds1":I
    :cond_0
    :goto_0
    return v7

    .line 865
    :cond_1
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    iget v10, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    if-ne v9, v10, :cond_0

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    iget v10, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    if-ne v9, v10, :cond_0

    move v7, v8

    goto :goto_0

    .line 867
    :cond_2
    iget-object v9, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-nez v9, :cond_3

    .line 868
    iget-object v7, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCellSize()I

    move-result v6

    .line 869
    .restart local v6    # "thisBounds1":I
    iget v7, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    mul-int/2addr v7, v6

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 870
    iget v8, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    mul-int/2addr v8, v6

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    .line 869
    invoke-virtual {p0, v7, v8}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->containsPoint(II)Z

    move-result v7

    goto :goto_0

    .line 872
    .end local v6    # "thisBounds1":I
    :cond_3
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v5

    .line 873
    .local v5, "thisBounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getBoundingRect()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v2

    .line 874
    .local v2, "otherBounds":Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    if-nez v9, :cond_4

    iget v9, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    if-nez v9, :cond_4

    .line 875
    invoke-virtual {v5, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v7

    goto :goto_0

    .line 876
    :cond_4
    invoke-virtual {v5, v2}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->intersects(Lorg/loon/framework/android/game/action/map/shapes/RectBox;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 879
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    .line 880
    .local v0, "myX":[I
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    .line 881
    .local v1, "myY":[I
    iget-object v3, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->xs:[I

    .line 882
    .local v3, "otherX":[I
    iget-object v4, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->ys:[I

    .line 883
    .local v4, "otherY":[I
    invoke-static {v0, v1, v3, v4}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->checkOutside([I[I[I[I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 884
    invoke-static {v3, v4, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->checkOutside([I[I[I[I)Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    return v0
.end method

.method public isClick()Z
    .locals 1

    .prologue
    .line 998
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->click:Z

    return v0
.end method

.method public isDrag()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag:Z

    return v0
.end method

.method public isSupportRotateSheet()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->visible:Z

    return v0
.end method

.method public jumpTo(I)Lorg/loon/framework/android/game/action/JumpTo;
    .locals 1
    .param p1, "jump"    # I

    .prologue
    .line 231
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->jumpTo(IF)Lorg/loon/framework/android/game/action/JumpTo;

    move-result-object v0

    return-object v0
.end method

.method public jumpTo(IF)Lorg/loon/framework/android/game/action/JumpTo;
    .locals 2
    .param p1, "jump"    # I
    .param p2, "g"    # F

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 221
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    neg-int v1, p1

    invoke-virtual {v0, p0, v1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callJumpTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IF)Lorg/loon/framework/android/game/action/JumpTo;

    move-result-object v0

    return-object v0
.end method

.method public move(D)V
    .locals 8
    .param p1, "distance"    # D

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getRotation()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 511
    .local v0, "angle":D
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 512
    .local v2, "x":I
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    .line 513
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocation(II)V

    .line 514
    return-void
.end method

.method public move(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 615
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocationDrag(II)V

    .line 616
    return-void
.end method

.method public moveTo(II)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;II)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public moveTo(IIZ)Lorg/loon/framework/android/game/action/MoveTo;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 167
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callMoveTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;IIZ)Lorg/loon/framework/android/game/action/MoveTo;

    move-result-object v0

    return-object v0
.end method

.method public move_45D_down()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_45D_down(I)V

    .line 568
    return-void
.end method

.method public move_45D_down(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 571
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 572
    return-void
.end method

.method public move_45D_left()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_45D_left(I)V

    .line 552
    return-void
.end method

.method public move_45D_left(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 556
    return-void
.end method

.method public move_45D_right()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_45D_right(I)V

    .line 560
    return-void
.end method

.method public move_45D_right(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 564
    return-void
.end method

.method public move_45D_up()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_45D_up(I)V

    .line 544
    return-void
.end method

.method public move_45D_up(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 547
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 548
    return-void
.end method

.method public move_down()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_down(I)V

    .line 600
    return-void
.end method

.method public move_down(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 603
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 604
    return-void
.end method

.method public move_left()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_left(I)V

    .line 584
    return-void
.end method

.method public move_left(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 587
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 588
    return-void
.end method

.method public move_multiples(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "multiples"    # I

    .prologue
    .line 607
    if-gtz p2, :cond_0

    .line 608
    const/4 p2, 0x1

    .line 610
    :cond_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getDirection(I)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v0

    .line 611
    .local v0, "v":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    mul-int/2addr v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move(II)V

    .line 612
    return-void
.end method

.method public move_right()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_right(I)V

    .line 592
    return-void
.end method

.method public move_right(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 595
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 596
    return-void
.end method

.method public move_up()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_up(I)V

    .line 576
    return-void
.end method

.method public move_up(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 579
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->move_multiples(II)V

    .line 580
    return-void
.end method

.method public removeActionEvents()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 276
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->removeActionEvents(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 277
    return-void
.end method

.method public rotateTo(F)Lorg/loon/framework/android/game/action/RotateTo;
    .locals 1
    .param p1, "rotate"    # F

    .prologue
    .line 209
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotateTo(FF)Lorg/loon/framework/android/game/action/RotateTo;

    move-result-object v0

    return-object v0
.end method

.method public rotateTo(FF)Lorg/loon/framework/android/game/action/RotateTo;
    .locals 1
    .param p1, "rotate"    # F
    .param p2, "speed"    # F

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->failIfNotInLayer()V

    .line 199
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->callRotateTo(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;FF)Lorg/loon/framework/android/game/action/RotateTo;

    move-result-object v0

    return-object v0
.end method

.method public sendToBack()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->sendToBack(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 805
    :cond_0
    return-void
.end method

.method public sendToFront()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 799
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1022
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->alpha:F

    .line 1023
    return-void
.end method

.method public setAnimation(Lorg/loon/framework/android/game/action/sprite/Animation;)V
    .locals 2
    .param p1, "animation"    # Lorg/loon/framework/android/game/action/sprite/Animation;

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Animation is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    .line 1035
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 1036
    return-void
.end method

.method public setAnimation(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    .line 1044
    return-void
.end method

.method public setClick(Z)V
    .locals 0
    .param p1, "click"    # Z

    .prologue
    .line 1002
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->click:Z

    .line 1003
    return-void
.end method

.method setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 788
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->data:Ljava/lang/Object;

    .line 789
    return-void
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 371
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->setDelay(J)V

    .line 372
    return-void
.end method

.method public setDrag(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 994
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->drag:Z

    .line 995
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .param p1, "filterType"    # I

    .prologue
    .line 1051
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->filterType:I

    .line 1052
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {p1}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 668
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;)V
    .locals 3
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 671
    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_2

    .line 672
    :cond_0
    const/4 v0, 0x1

    .line 673
    .local v0, "sizeChanged":Z
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 675
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 676
    const/4 v0, 0x0

    .line 678
    :cond_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setRotateSheet(Landroid/graphics/Bitmap;)V

    .line 679
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    .line 680
    if-eqz v0, :cond_2

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 682
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sizeChanged()V

    .line 685
    .end local v0    # "sizeChanged":Z
    :cond_2
    return-void
.end method

.method final setLastPaintSeqNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1006
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->lastPaintSequenceNumber:I

    .line 1007
    return-void
.end method

.method setLayer(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;)V
    .locals 0
    .param p1, "gameLayer"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    .prologue
    .line 696
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    .line 697
    return-void
.end method

.method public setLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocationDrag(II)V

    .line 518
    return-void
.end method

.method public setLocationInPixels(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 688
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v2, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->toCellFloor(I)I

    move-result v0

    .line 689
    .local v0, "xCell":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->gameLayer:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    invoke-virtual {v2, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->toCellFloor(I)I

    move-result v1

    .line 690
    .local v1, "yCell":I
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->x:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->y:I

    if-eq v1, v2, :cond_1

    .line 691
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocationDrag(II)V

    .line 693
    :cond_1
    return-void
.end method

.method public setMaxRotateCache(I)V
    .locals 0
    .param p1, "maxRotateCache"    # I

    .prologue
    .line 1067
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->maxRotateCache:I

    .line 1068
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 484
    const/16 v0, 0x168

    if-lt p1, v0, :cond_3

    .line 485
    const/16 v0, 0x2d0

    if-ge p1, v0, :cond_2

    .line 486
    add-int/lit16 p1, p1, -0x168

    .line 497
    :cond_0
    :goto_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    if-eq v0, p1, :cond_1

    .line 498
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->rotation:I

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->boundingRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 500
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sizeChanged()V

    .line 502
    :cond_1
    return-void

    .line 488
    :cond_2
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 490
    :cond_3
    if-gez p1, :cond_0

    .line 491
    const/16 v0, -0x168

    if-lt p1, v0, :cond_4

    .line 492
    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 494
    :cond_4
    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 p1, v0, 0x168

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 6
    .param p1, "s"    # F

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 285
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    .line 309
    .end local p1    # "s":F
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local p1    # "s":F
    :cond_1
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_0

    .line 289
    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    move p1, v2

    .end local p1    # "s":F
    :cond_2
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    .line 290
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 291
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    if-nez v2, :cond_4

    .line 295
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    .line 296
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    .line 297
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 298
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 296
    invoke-virtual {v2, v3, v4}, Ljavax/microedition/lcdui/Image;->scaledInstance(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 299
    .local v0, "newImage":Ljavax/microedition/lcdui/Image;
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    goto :goto_0

    .line 301
    .end local v0    # "newImage":Ljavax/microedition/lcdui/Image;
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    .line 302
    .local v1, "tmp":Ljavax/microedition/lcdui/Image;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    .line 303
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 304
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->oldScale:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->scale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 302
    invoke-virtual {v2, v3, v4}, Ljavax/microedition/lcdui/Image;->scaledInstance(II)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    .line 305
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 306
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    goto :goto_0
.end method

.method public setSheet(Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .prologue
    .line 1075
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 1076
    return-void
.end method

.method public setSupportRotateSheet(Z)V
    .locals 0
    .param p1, "supportRotateSheet"    # Z

    .prologue
    .line 1059
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->supportRotateSheet:Z

    .line 1060
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 780
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->tag:Ljava/lang/Object;

    .line 781
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 986
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->visible:Z

    .line 987
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getY()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocationDrag(II)V

    .line 522
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getX()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setLocationDrag(II)V

    .line 526
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    .line 144
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    .line 140
    return-void
.end method

.method public toPixel(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 808
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->getLayer()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;

    move-result-object v0

    .line 809
    .local v0, "aLayer":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;
    if-nez v0, :cond_0

    .line 810
    const/4 v1, 0x0

    .line 812
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCellSize()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorLayer;->getCellSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public upClick(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 325
    return-void
.end method

.method public upKey()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method update(J)V
    .locals 1
    .param p1, "elapsedTime"    # J

    .prologue
    .line 356
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->timer:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->isAnimation:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/sprite/Animation;->update(J)V

    .line 359
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->animation:Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getImage()Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->setImage(Ljavax/microedition/lcdui/Image;)V

    .line 361
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;->action(J)V

    .line 363
    :cond_1
    return-void
.end method
