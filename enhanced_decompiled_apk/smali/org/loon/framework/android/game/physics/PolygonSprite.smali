.class public Lorg/loon/framework/android/game/physics/PolygonSprite;
.super Ljava/lang/Object;
.source "PolygonSprite.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alpha:F

.field private finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field private height:I

.field private imageBuffer:Landroid/graphics/Bitmap;

.field private layer:I

.field private location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private lockUpdate:Z

.field private movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

.field private oldAngle:I

.field private physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

.field private pixels:[I

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private rotateThread:Ljava/lang/Thread;

.field private showImage:Z

.field private showPolygon:Z

.field private spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

.field private visible:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->visible:Z

    .line 80
    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    .line 82
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 83
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p2

    int-to-double v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 84
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    .line 85
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->height:I

    .line 86
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    .line 87
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 88
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getPixels(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->pixels:[I

    .line 89
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->makePolygon()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;-><init>(Ljava/lang/String;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/physics/PolygonSprite;-><init>(Landroid/graphics/Bitmap;II)V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/physics/PolygonSprite;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/physics/PolygonSprite;)Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    return-object v0
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/physics/PolygonSprite;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    return v0
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/physics/PolygonSprite;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lorg/loon/framework/android/game/physics/PolygonSprite;[I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->pixels:[I

    return-void
.end method

.method static synthetic access$5(Lorg/loon/framework/android/game/physics/PolygonSprite;)[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->pixels:[I

    return-object v0
.end method

.method static synthetic access$6(Lorg/loon/framework/android/game/physics/PolygonSprite;Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    return-void
.end method

.method static synthetic access$7(Lorg/loon/framework/android/game/physics/PolygonSprite;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->makePolygon()V

    return-void
.end method

.method static synthetic access$8(Lorg/loon/framework/android/game/physics/PolygonSprite;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rotateThread:Ljava/lang/Thread;

    return-void
.end method

.method private makePolygon()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->lockUpdate:Z

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->pixels:[I

    .line 130
    iget v6, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    iget v7, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->height:I

    move v3, v2

    move v4, v2

    move v5, v2

    .line 129
    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    iput v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 133
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 134
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 133
    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->xpoints:[I

    .line 135
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, v1, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 136
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->finalPolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget v2, v2, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->npoints:I

    .line 135
    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->ypoints:[I

    .line 137
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Polygon;->translate(II)V

    .line 138
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    if-nez v0, :cond_2

    .line 139
    new-instance v0, Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->setPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    goto :goto_0
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->visible:Z

    if-eqz v0, :cond_2

    .line 156
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->alpha:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 157
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 158
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 162
    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    .line 161
    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->drawPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    .line 169
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 184
    :cond_2
    :goto_0
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_3
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 173
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 174
    :try_start_2
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 175
    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    .line 174
    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 173
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :cond_4
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->movePolygon:Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->drawPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    goto :goto_0

    .line 173
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    .line 211
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->alpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 227
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->x()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    return v0
.end method

.method public getImage()Ljavax/microedition/lcdui/Image;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->imageBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->layer:I

    return v0
.end method

.method public getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    return-object v0
.end method

.method public getPhysicsPolygon()Lorg/loon/framework/android/game/physics/PhysicsPolygon;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    return-object v0
.end method

.method public getPolygon()Lorg/loon/framework/android/game/core/graphics/geom/Polygon;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getPolygon()Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public getPolygonInterval()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getMakePolygonInterval()I

    move-result v0

    return v0
.end method

.method public getPolygonShape()Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getPolygonShape()Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    return-object v0
.end method

.method public getVertex(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getVertex(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->width:I

    return v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public isLockUpdate()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->lockUpdate:Z

    return v0
.end method

.method public isShowImage()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    return v0
.end method

.method public isShowPolygon()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->visible:Z

    return v0
.end method

.method public rotate(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 93
    iget v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->oldAngle:I

    if-ne v1, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rotateThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;

    invoke-direct {v0, p0, p1}, Lorg/loon/framework/android/game/physics/PolygonSprite$1;-><init>(Lorg/loon/framework/android/game/physics/PolygonSprite;I)V

    .line 122
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rotateThread:Ljava/lang/Thread;

    .line 123
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->rotateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 214
    iput p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->alpha:F

    .line 215
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 292
    iput p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->layer:I

    .line 293
    return-void
.end method

.method public setLocation(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setLocation(DD)V

    .line 280
    invoke-direct {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->makePolygon()V

    .line 281
    return-void
.end method

.method public setLockUpdate(Z)V
    .locals 1
    .param p1, "lockUpdate"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->lockUpdate:Z

    .line 325
    if-eqz p1, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    .line 328
    :cond_0
    return-void
.end method

.method public setPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
    .locals 1
    .param p1, "polygon"    # Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->setPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    .line 204
    return-void
.end method

.method public setPolygon([I[II)V
    .locals 1
    .param p1, "xpoints"    # [I
    .param p2, "ypoints"    # [I
    .param p3, "npoints"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->physicsPolygon:Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    invoke-virtual {v0, p1, p2, p3}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->setPolygon([I[II)V

    .line 200
    return-void
.end method

.method public setPolygonInterval(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->spriteImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setMakePolygonInterval(I)V

    .line 148
    return-void
.end method

.method public setShowImage(Z)V
    .locals 0
    .param p1, "showImage"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showImage:Z

    .line 256
    return-void
.end method

.method public setShowPolygon(Z)V
    .locals 1
    .param p1, "showPolygon"    # Z

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->lockUpdate:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 p1, 0x0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->showPolygon:Z

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->visible:Z

    .line 244
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->y()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->setLocation(II)V

    .line 285
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->x()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PolygonSprite;->setLocation(II)V

    .line 289
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "elapsedTime"    # J

    .prologue
    .line 248
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v0

    return v0
.end method
