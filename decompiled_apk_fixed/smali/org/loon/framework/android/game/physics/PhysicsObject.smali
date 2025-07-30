.class public Lorg/loon/framework/android/game/physics/PhysicsObject;
.super Ljava/lang/Object;
.source "PhysicsObject.java"

# interfaces
.implements Lorg/loon/framework/android/game/physics/PolygonType;
.implements Lorg/loon/framework/android/game/action/sprite/ISprite;


# static fields
.field public static final DEG:F = 57.29578f

.field public static final RAD:F = 0.017453292f

.field private static final initLocation:Lcom/badlogic/gdx/math/Vector2;

.field private static lazySheets:Ljava/util/HashMap; = null
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

.field private static final lazyTriangles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/loon/framework/android/game/action/map/shapes/Triangle;",
            ">;"
        }
    .end annotation
.end field

.field protected static final matrix:Landroid/graphics/Matrix;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public active:Z

.field public allowSleep:Z

.field public alpha:F

.field public angularDamping:F

.field public angularVelocity:F

.field public awake:Z

.field private bitmapFilter:Z

.field protected body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

.field public bullet:Z

.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field public density:F

.field public filter:Lcom/badlogic/gdx/physics/box2d/Filter;

.field public fixedRotation:Z

.field public friction:F

.field private halfHeight:I

.field private halfWidth:I

.field private height:I

.field public inertiaScale:F

.field protected isSensor:Z

.field private layer:I

.field public linearDamping:F

.field public lockRotate:Z

.field public maxRotateCache:I

.field private physicsListener:Lorg/loon/framework/android/game/physics/PhysicsListener;

.field private polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

.field private polyType:I

.field private rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field public restitution:F

.field private rotation:F

.field private screenHeight:I

.field private screenWidth:I

.field private sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

.field private spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

.field private supportRotateSheet:Z

.field private supportSheet:Z

.field private tag:Ljava/lang/Object;

.field private type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

.field protected useImage:Z

.field protected useInster:Z

.field protected useMake:Z

.field protected visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->initLocation:Lcom/badlogic/gdx/math/Vector2;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazyTriangles:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazySheets:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method constructor <init>(IILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V
    .locals 9
    .param p1, "polyType"    # I
    .param p2, "polyInterval"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 174
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 175
    return-void
.end method

.method constructor <init>(ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V
    .locals 9
    .param p1, "polyType"    # I
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    iput v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 178
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 179
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 9
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "polyInterval"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 166
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 5
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 186
    iput-object p2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 187
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;-><init>(Landroid/graphics/Bitmap;IIF)V

    .line 187
    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 189
    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 190
    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 191
    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 192
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->blue:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 193
    iput v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 194
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 195
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 196
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 197
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 198
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 199
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    .line 200
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    .line 201
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    .line 202
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    .line 203
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useInster:Z

    .line 204
    iput-boolean v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->visible:Z

    .line 205
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 9
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    iput v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 170
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "polyInterval"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 153
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljavax/microedition/lcdui/Image;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 154
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/badlogic/gdx/physics/box2d/Body;

    .prologue
    .line 182
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Ljavax/microedition/lcdui/Image;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 150
    return-void
.end method

.method constructor <init>(Ljavax/microedition/lcdui/Image;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "polyInterval"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 157
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 158
    return-void
.end method

.method constructor <init>(Ljavax/microedition/lcdui/Image;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 161
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/physics/PhysicsObject;-><init>(Landroid/graphics/Bitmap;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;II)V

    .line 162
    return-void
.end method

.method constructor <init>(Lorg/loon/framework/android/game/action/sprite/ISprite;ILcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V
    .locals 9
    .param p1, "spr"    # Lorg/loon/framework/android/game/action/sprite/ISprite;
    .param p2, "polyInterval"    # I
    .param p3, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 144
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->x()I

    move-result v5

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->y()I

    move-result v6

    .line 145
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getWidth()I

    move-result v7

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getHeight()I

    move-result v8

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    .line 144
    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 146
    return-void
.end method

.method constructor <init>(Lorg/loon/framework/android/game/action/sprite/ISprite;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V
    .locals 9
    .param p1, "spr"    # Lorg/loon/framework/android/game/action/sprite/ISprite;
    .param p2, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    .line 89
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    .line 91
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    .line 93
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    .line 95
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    .line 97
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    .line 101
    const/16 v0, 0x5a

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->maxRotateCache:I

    .line 105
    iput v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 107
    iput-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 120
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 130
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    .line 132
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/loon/framework/android/game/IHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    .line 139
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->x()I

    move-result v5

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->y()I

    move-result v6

    .line 140
    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getWidth()I

    move-result v7

    invoke-interface {p1}, Lorg/loon/framework/android/game/action/sprite/ISprite;->getHeight()I

    move-result v8

    move-object v0, p0

    move-object v4, p2

    .line 139
    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V

    .line 141
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/physics/PhysicsObject;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    return v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/physics/PhysicsObject;Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    return-void
.end method

.method static synthetic access$2()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazySheets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/physics/PhysicsObject;)Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    return-object v0
.end method

.method static synthetic access$4(Lorg/loon/framework/android/game/physics/PhysicsObject;Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z

    return-void
.end method

.method private createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 1
    .param p1, "bodyDef"    # Lcom/badlogic/gdx/physics/box2d/BodyDef;
    .param p2, "fixture"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 769
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 770
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 771
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 772
    return-void
.end method

.method private createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 775
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 776
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 777
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 778
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 779
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 780
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularVelocity:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    .line 781
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->linearDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 782
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    .line 783
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 784
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 785
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    .line 786
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    .line 787
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    .line 788
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    .line 789
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 790
    return-void
.end method

.method private createDynamicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 853
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 854
    .local v0, "boxPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 855
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 856
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 857
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 858
    return-void
.end method

.method private createDynamicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 2
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 829
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 830
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 831
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 832
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 833
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 834
    return-void
.end method

.method private createDynamicTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 5
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 877
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 878
    .local v1, "tPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 879
    .local v0, "t":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(II)V

    .line 880
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->getVertexs()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 881
    iput-object v1, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 882
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 883
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v2, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 884
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 885
    return-void
.end method

.method private createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 811
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 812
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 813
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 814
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 815
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 816
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularVelocity:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    .line 817
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->linearDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 818
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    .line 819
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 820
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 821
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    .line 822
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    .line 823
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    .line 824
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    .line 825
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 826
    return-void
.end method

.method private createKinematicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 869
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 870
    .local v0, "boxPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 871
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 872
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 873
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 874
    return-void
.end method

.method private createKinematicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 2
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 845
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 846
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 847
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 848
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 849
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 850
    return-void
.end method

.method private createKinematicTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 5
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 899
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 900
    .local v1, "tPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 901
    .local v0, "t":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(II)V

    .line 902
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->getVertexs()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 903
    iput-object v1, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 904
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 905
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 906
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 907
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v2, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 908
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 909
    return-void
.end method

.method private createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixture"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 793
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 794
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 795
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 796
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 797
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 798
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularVelocity:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    .line 799
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->linearDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 800
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularDamping:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    .line 801
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 802
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 803
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    .line 804
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    .line 805
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    .line 806
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    .line 807
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 808
    return-void
.end method

.method private createStaticBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 861
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 862
    .local v0, "boxPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 863
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 864
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 865
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 866
    return-void
.end method

.method private createStaticCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 2
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 837
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 838
    .local v0, "circle":Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 839
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 840
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 841
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 842
    return-void
.end method

.method private createStaticTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 5
    .param p1, "fixtureDef"    # Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .prologue
    .line 888
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 889
    .local v1, "tPoly":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 890
    .local v0, "t":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(II)V

    .line 891
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->getVertexs()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 892
    iput-object v1, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 893
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rotation:F

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 894
    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p0, v2, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 895
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 896
    return-void
.end method

.method private init(IILandroid/graphics/Bitmap;Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;IIII)V
    .locals 6
    .param p1, "polyType"    # I
    .param p2, "polyInterval"    # I
    .param p3, "img"    # Landroid/graphics/Bitmap;
    .param p4, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .prologue
    .line 209
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->visible:Z

    .line 210
    iput p5, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 211
    iput p6, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 212
    iput p7, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    .line 213
    iput p8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    .line 214
    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    if-gez v3, :cond_0

    .line 215
    const/4 v3, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    .line 217
    :cond_0
    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    if-gez v3, :cond_1

    .line 218
    const/4 v3, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    .line 220
    :cond_1
    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    .line 221
    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    .line 222
    iput-object p4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 223
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/LColor;->blue:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 224
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v3}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 225
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v3}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 226
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iput-object p4, v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 227
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p5

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 228
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p6

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 229
    if-nez p3, :cond_2

    .line 230
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 231
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    .line 247
    :goto_0
    return-void

    .line 233
    :cond_2
    new-instance v2, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v2, p3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v2, "spriteImage":Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    invoke-virtual {v2, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->setMakePolygonInterval(I)V

    .line 235
    invoke-static {p3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->hashBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 236
    .local v0, "index":I
    sget-object v3, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazyTriangles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .line 237
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    if-nez v3, :cond_3

    .line 238
    new-instance v1, Lorg/loon/framework/android/game/physics/PhysicsPolygon;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;-><init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;II)V

    .line 239
    .local v1, "ppolygon":Lorg/loon/framework/android/game/physics/PhysicsPolygon;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/physics/PhysicsPolygon;->getPolygon2D()Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/map/shapes/Polygon2D;->getTriangles()[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    .line 240
    sget-object v3, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazyTriangles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v1    # "ppolygon":Lorg/loon/framework/android/game/physics/PhysicsPolygon;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 243
    const/4 v3, 0x3

    iput v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    goto :goto_0
.end method

.method private setRotateSheet(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 412
    iget-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    if-nez v3, :cond_0

    .line 437
    :goto_0
    return-void

    .line 415
    :cond_0
    sget-object v4, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazySheets:Ljava/util/HashMap;

    monitor-enter v4

    .line 416
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->suited(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->hashBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 418
    .local v0, "index":Ljava/lang/Integer;
    sget-object v3, Lorg/loon/framework/android/game/physics/PhysicsObject;->lazySheets:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iput-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    .line 419
    iget-object v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    if-nez v3, :cond_1

    .line 420
    new-instance v1, Lorg/loon/framework/android/game/physics/PhysicsObject$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject$1;-><init>(Lorg/loon/framework/android/game/physics/PhysicsObject;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V

    .line 428
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 429
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 415
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

    .line 431
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z

    goto :goto_1

    .line 434
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public applyforce(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "force"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 744
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v1, Lorg/loon/framework/android/game/physics/PhysicsObject;->initLocation:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->applyForce(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 469
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useMake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->visible:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 474
    :cond_1
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    if-eqz v0, :cond_a

    .line 475
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    .line 477
    .local v11, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    float-to-double v4, v0

    .line 479
    .local v4, "rotation":D
    iget v0, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 480
    iget v0, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 482
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    if-gez v0, :cond_2

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 485
    :cond_2
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    if-gez v0, :cond_3

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 488
    :cond_3
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    if-le v0, v1, :cond_4

    .line 489
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 491
    :cond_4
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    if-le v0, v1, :cond_5

    .line 492
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 495
    :cond_5
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    if-eqz v0, :cond_8

    .line 496
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    if-nez v0, :cond_6

    .line 497
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_6
    :goto_1
    :pswitch_1
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 510
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 511
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 512
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    goto/16 :goto_0

    .line 500
    :pswitch_2
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 501
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    goto :goto_1

    .line 514
    :cond_7
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 518
    :cond_8
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    .line 519
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 520
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->draw(Ljavax/microedition/lcdui/Graphics;IID)V

    .line 521
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 525
    :goto_2
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    if-nez v0, :cond_0

    .line 526
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 529
    :pswitch_3
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 530
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    goto/16 :goto_0

    .line 523
    :cond_9
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->sheet:Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotateSheet;->draw(Ljavax/microedition/lcdui/Graphics;IID)V

    goto :goto_2

    .line 541
    .end local v4    # "rotation":D
    .end local v11    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_a
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v11

    .line 543
    .restart local v11    # "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    float-to-int v4, v0

    .line 545
    .local v4, "rotation":I
    iget v0, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 546
    iget v0, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 548
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    if-nez v0, :cond_b

    .line 549
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    packed-switch v0, :pswitch_data_2

    .line 562
    :cond_b
    :goto_3
    :pswitch_4
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    if-gez v0, :cond_c

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 565
    :cond_c
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    if-gez v0, :cond_d

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 569
    :cond_d
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 571
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    .line 572
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    .line 574
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    if-le v0, v1, :cond_e

    .line 575
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenWidth:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 577
    :cond_e
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    if-le v0, v1, :cond_f

    .line 578
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->screenHeight:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    .line 581
    :cond_f
    if-eqz v4, :cond_10

    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->lockRotate:Z

    if-eqz v0, :cond_12

    .line 582
    :cond_10
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    .line 583
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 584
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    invoke-interface {p1, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 585
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    goto/16 :goto_0

    .line 552
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_5
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    .line 553
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    goto :goto_3

    .line 587
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_11
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    invoke-interface {p1, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_0

    .line 592
    :cond_12
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    .line 593
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 594
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    int-to-float v9, v0

    .line 595
    .local v9, "offsetX":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    int-to-float v10, v0

    .line 596
    .local v10, "offsetY":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 597
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 598
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    sub-int/2addr v0, v1

    int-to-float v10, v0

    .line 600
    :cond_13
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v0, v0

    add-float v8, v9, v0

    .line 601
    .local v8, "newWidth":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    int-to-float v0, v0

    add-float v7, v10, v0

    .line 602
    .local v7, "newHeight":F
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 603
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 604
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 605
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    neg-float v1, v8

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 606
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 607
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    if-eqz v0, :cond_14

    .line 608
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-interface {p1, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V

    .line 612
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    goto/16 :goto_0

    .line 610
    :cond_14
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-interface {p1, v6, v0}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    goto :goto_4

    .line 614
    .end local v7    # "newHeight":F
    .end local v8    # "newWidth":F
    .end local v9    # "offsetX":F
    .end local v10    # "offsetY":F
    :cond_15
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    int-to-float v9, v0

    .line 615
    .restart local v9    # "offsetX":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    int-to-float v10, v0

    .line 616
    .restart local v10    # "offsetY":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 617
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 618
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    sub-int/2addr v0, v1

    int-to-float v10, v0

    .line 620
    :cond_16
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfWidth:I

    int-to-float v0, v0

    add-float v8, v9, v0

    .line 621
    .restart local v8    # "newWidth":F
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->halfHeight:I

    int-to-float v0, v0

    add-float v7, v10, v0

    .line 622
    .restart local v7    # "newHeight":F
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 623
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 624
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 625
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    neg-float v1, v8

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 626
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 627
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    if-eqz v0, :cond_17

    .line 628
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-interface {p1, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V

    goto/16 :goto_0

    .line 630
    :cond_17
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->matrix:Landroid/graphics/Matrix;

    invoke-interface {p1, v6, v0}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 549
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PhysicsScreen;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 752
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 755
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useMake:Z

    .line 756
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 729
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    goto :goto_0
.end method

.method public getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 5

    .prologue
    .line 974
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 979
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0

    .line 977
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->rect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->density:F

    return v0
.end method

.method public getDirection()F
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getFilter()Lcom/badlogic/gdx/physics/box2d/Filter;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    return-object v0
.end method

.method public getFriction()F
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    return v0
.end method

.method public getIsSensor()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->isSensor:Z

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->layer:I

    return v0
.end method

.method public getPhysicsListener()Lorg/loon/framework/android/game/physics/PhysicsListener;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->physicsListener:Lorg/loon/framework/android/game/physics/PhysicsListener;

    return-object v0
.end method

.method public getPolyType()I
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    return v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 682
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    goto :goto_0
.end method

.method public getRestitution()F
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->restitution:F

    return v0
.end method

.method public getSpeed()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 675
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpriteRotate()Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    return v0
.end method

.method public getX()D
    .locals 3

    .prologue
    .line 995
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 996
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v1, v1

    return-wide v1
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 1000
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1001
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v1, v1

    return-wide v1
.end method

.method public isBitmapFilter()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    return v0
.end method

.method public isSupportRotateSheet()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1009
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->visible:Z

    return v0
.end method

.method public make()V
    .locals 12

    .prologue
    .line 274
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularVelocity:F

    iput v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    .line 277
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->linearDamping:F

    iput v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 278
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->angularDamping:F

    iput v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    .line 279
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->allowSleep:Z

    iput-boolean v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 280
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->awake:Z

    iput-boolean v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 281
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->fixedRotation:Z

    iput-boolean v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    .line 282
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bullet:Z

    iput-boolean v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    .line 283
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-boolean v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->active:Z

    iput-boolean v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    .line 284
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->inertiaScale:F

    iput v9, v8, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    .line 285
    iget-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useInster:Z

    if-eqz v8, :cond_0

    .line 286
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v8, p0}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 287
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useMake:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :try_start_1
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setRotateSheet(Landroid/graphics/Bitmap;)V

    .line 288
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :goto_0
    return-void

    .line 290
    :cond_0
    :try_start_2
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v8, :cond_1

    .line 291
    sget-object v8, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 292
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 294
    :cond_1
    iget-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    if-eqz v8, :cond_4

    .line 295
    sget-object v8, Lorg/loon/framework/android/game/physics/PhysicsScreen;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v8

    iput-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 296
    const/4 v8, 0x6

    new-array v7, v8, [F

    .line 297
    .local v7, "triangle":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    array-length v8, v8

    if-lt v3, v8, :cond_3

    .line 400
    .end local v3    # "i":I
    .end local v7    # "triangle":[F
    :cond_2
    :goto_2
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v8, p0}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 401
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useMake:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 406
    :try_start_3
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v8}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setRotateSheet(Landroid/graphics/Bitmap;)V

    .line 274
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 299
    .restart local v3    # "i":I
    .restart local v7    # "triangle":[F
    :cond_3
    :try_start_4
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 300
    .local v1, "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    new-instance v5, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 302
    .local v5, "polyShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 303
    const/4 v8, 0x1

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 304
    const/4 v8, 0x2

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 305
    const/4 v8, 0x3

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 306
    const/4 v8, 0x4

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->xpoints:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    .line 307
    const/4 v8, 0x5

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyTriangles:[Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    aget-object v9, v9, v3

    iget-object v9, v9, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->ypoints:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    .line 308
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([F)V

    .line 310
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->density:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 311
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 312
    iget-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->isSensor:Z

    iput-boolean v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 313
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->restitution:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 314
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 315
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 316
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 317
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 318
    iput-object v5, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 320
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 321
    invoke-virtual {v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 324
    .end local v1    # "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .end local v3    # "i":I
    .end local v5    # "polyShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v7    # "triangle":[F
    :cond_4
    const/4 v4, 0x0

    .line 325
    .local v4, "image":Ljavax/microedition/lcdui/Image;
    const/4 v2, 0x0

    .line 326
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 327
    .restart local v1    # "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->density:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 328
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 329
    iget-boolean v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->isSensor:Z

    iput-boolean v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->isSensor:Z

    .line 330
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->restitution:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 331
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 332
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 333
    iget-object v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-short v9, v9, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iput-short v9, v8, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 334
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    iput v8, v1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 335
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    packed-switch v8, :pswitch_data_0

    .line 393
    :cond_5
    :goto_3
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v8, :cond_6

    if-eqz v4, :cond_6

    .line 394
    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setDrawImage(Landroid/graphics/Bitmap;)V

    .line 396
    :cond_6
    if-eqz v2, :cond_2

    .line 397
    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 402
    .end local v1    # "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .end local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v4    # "image":Ljavax/microedition/lcdui/Image;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PhysicsObject make "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 403
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 406
    :try_start_6
    iget-object v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->finalBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setRotateSheet(Landroid/graphics/Bitmap;)V

    .line 407
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    .restart local v1    # "fixtureDef":Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    .restart local v2    # "g":Ljavax/microedition/lcdui/Graphics;
    .restart local v4    # "image":Ljavax/microedition/lcdui/Image;
    :pswitch_0
    :try_start_7
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_8

    .line 338
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createStaticBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 344
    :cond_7
    :goto_4
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v8, :cond_5

    .line 345
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 347
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 348
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v2, v8, v9, v10, v11}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 349
    sget-object v8, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 350
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v2, v8, v9, v10, v11}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_3

    .line 339
    :cond_8
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_9

    .line 340
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createDynamicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    goto :goto_4

    .line 341
    :cond_9
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_7

    .line 342
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createKinematicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    goto :goto_4

    .line 354
    :pswitch_1
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_b

    .line 355
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createStaticCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 361
    :cond_a
    :goto_5
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v8, :cond_5

    .line 362
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    .line 363
    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 364
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 365
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v2, v8, v9, v10, v11}, Ljavax/microedition/lcdui/Graphics;->fillOval(IIII)V

    .line 366
    sget-object v8, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 367
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v2, v8, v9, v10, v11}, Ljavax/microedition/lcdui/Graphics;->drawOval(IIII)V

    goto/16 :goto_3

    .line 356
    :cond_b
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_c

    .line 357
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createDynamicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    goto :goto_5

    .line 358
    :cond_c
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_a

    .line 359
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createKinematicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    goto :goto_5

    .line 371
    :pswitch_2
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_e

    .line 372
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createStaticTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 378
    :cond_d
    :goto_6
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v8, :cond_5

    .line 379
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 382
    new-instance v6, Lorg/loon/framework/android/game/action/map/shapes/Triangle;

    invoke-direct {v6}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;-><init>()V

    .line 383
    .local v6, "t":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    iget v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    iget v9, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->width:I

    invoke-virtual {v6, v8, v9}, Lorg/loon/framework/android/game/action/map/shapes/Triangle;->set(II)V

    .line 384
    sget-object v8, Lorg/loon/framework/android/game/core/graphics/LColor;->blue:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 385
    invoke-interface {v2, v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V

    .line 386
    sget-object v8, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v2, v8}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 387
    invoke-interface {v2, v6}, Ljavax/microedition/lcdui/Graphics;->drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V

    goto/16 :goto_3

    .line 373
    .end local v6    # "t":Lorg/loon/framework/android/game/action/map/shapes/Triangle;
    :cond_e
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_f

    .line 374
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createDynamicTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    goto :goto_6

    .line 375
    :cond_f
    iget-object v8, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_d

    .line 376
    invoke-direct {p0, v1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->createKinematicTriangle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public move(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 1027
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V

    .line 1028
    return-void
.end method

.method public move(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 5
    .param p1, "vector2"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 1031
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1032
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v4

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 1033
    .local v1, "x":F
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 1034
    .local v2, "y":F
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 1035
    return-void
.end method

.method public move_45D_down()V
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_45D_down(I)V

    .line 1071
    return-void
.end method

.method public move_45D_down(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1074
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1075
    return-void
.end method

.method public move_45D_left()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_45D_left(I)V

    .line 1055
    return-void
.end method

.method public move_45D_left(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1059
    return-void
.end method

.method public move_45D_right()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_45D_right(I)V

    .line 1063
    return-void
.end method

.method public move_45D_right(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1067
    return-void
.end method

.method public move_45D_up()V
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_45D_up(I)V

    .line 1047
    return-void
.end method

.method public move_45D_up(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1050
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1051
    return-void
.end method

.method public move_down()V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_down(I)V

    .line 1103
    return-void
.end method

.method public move_down(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1106
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1107
    return-void
.end method

.method public move_left()V
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_left(I)V

    .line 1087
    return-void
.end method

.method public move_left(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1090
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1091
    return-void
.end method

.method public move_multiples(II)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "multiples"    # I

    .prologue
    .line 1038
    if-gtz p2, :cond_0

    .line 1039
    const/4 p2, 0x1

    .line 1041
    :cond_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/map/Field2D;->getDirection(I)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    move-result-object v0

    .line 1042
    .local v0, "v":Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    mul-int/2addr v1, p2

    int-to-double v1, v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v3

    mul-int/2addr v3, p2

    int-to-double v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move(DD)V

    .line 1043
    return-void
.end method

.method public move_right()V
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_right(I)V

    .line 1095
    return-void
.end method

.method public move_right(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1098
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1099
    return-void
.end method

.method public move_up()V
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_up(I)V

    .line 1079
    return-void
.end method

.method public move_up(I)V
    .locals 1
    .param p1, "multiples"    # I

    .prologue
    .line 1082
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/physics/PhysicsObject;->move_multiples(II)V

    .line 1083
    return-void
.end method

.method public onCollision()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->physicsListener:Lorg/loon/framework/android/game/physics/PhysicsListener;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->physicsListener:Lorg/loon/framework/android/game/physics/PhysicsListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/physics/PhysicsListener;->onCollision()V

    .line 955
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lorg/loon/framework/android/game/physics/PhysicsObject;->initLocation:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 734
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 970
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->alpha:F

    .line 971
    return-void
.end method

.method public setAngle(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 460
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    const v2, 0x3c8efa35

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 461
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->clone()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 463
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v2, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 464
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v2, Lorg/loon/framework/android/game/physics/PhysicsObject;->initLocation:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 466
    .end local v0    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 1
    .param p1, "vel"    # F

    .prologue
    .line 707
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setAngularVelocity(F)V

    goto :goto_0
.end method

.method public setBitmapFilter(Z)V
    .locals 0
    .param p1, "bitmapFilter"    # Z

    .prologue
    .line 1130
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bitmapFilter:Z

    .line 1131
    return-void
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 940
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 941
    return-void
.end method

.method public setDamping(F)V
    .locals 1
    .param p1, "damping"    # F

    .prologue
    .line 686
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iput p1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    .line 687
    return-void
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 916
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->density:F

    .line 917
    return-void
.end method

.method public setDrawImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 639
    iget-boolean v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->useImage:Z

    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Set is not allowed !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    if-eqz p1, :cond_1

    .line 643
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    if-nez v0, :cond_2

    .line 644
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;-><init>(Landroid/graphics/Bitmap;IIF)V

    .line 644
    iput-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 647
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->spriteRotate:Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->set(Landroid/graphics/Bitmap;IIF)V

    goto :goto_0
.end method

.method public setDrawImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setDrawImage(Landroid/graphics/Bitmap;)V

    .line 658
    return-void
.end method

.method public setDrawImage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 653
    invoke-static {p1, p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setDrawImage(Landroid/graphics/Bitmap;)V

    .line 654
    return-void
.end method

.method public setFilter(Lcom/badlogic/gdx/physics/box2d/Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/badlogic/gdx/physics/box2d/Filter;

    .prologue
    .line 948
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 949
    return-void
.end method

.method public setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 924
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->friction:F

    .line 925
    return-void
.end method

.method public setIsSensor(Z)V
    .locals 0
    .param p1, "isSensor"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->isSensor:Z

    .line 963
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 1013
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->layer:I

    .line 1014
    return-void
.end method

.method public setPhysicsListener(Lorg/loon/framework/android/game/physics/PhysicsListener;)V
    .locals 0
    .param p1, "physicsListener"    # Lorg/loon/framework/android/game/physics/PhysicsListener;

    .prologue
    .line 1114
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->physicsListener:Lorg/loon/framework/android/game/physics/PhysicsListener;

    .line 1115
    return-void
.end method

.method public setPolyType(I)V
    .locals 0
    .param p1, "polyType"    # I

    .prologue
    .line 1142
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->polyType:I

    .line 1143
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 714
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 715
    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 718
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 722
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    sget-object v1, Lorg/loon/framework/android/game/physics/PhysicsObject;->initLocation:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public setRestitution(F)V
    .locals 0
    .param p1, "restitution"    # F

    .prologue
    .line 932
    iput p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->restitution:F

    .line 933
    return-void
.end method

.method public setRotation(F)V
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 690
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(Lcom/badlogic/gdx/math/Vector2;F)V

    goto :goto_0
.end method

.method public setSpeed(FF)V
    .locals 1
    .param p1, "gx"    # F
    .param p2, "gy"    # F

    .prologue
    .line 661
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->setSpeed(Lcom/badlogic/gdx/math/Vector2;)V

    .line 662
    return-void
.end method

.method public setSpeed(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "speed"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 665
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public setSupportRotateSheet(Z)V
    .locals 0
    .param p1, "supporRotateSheet"    # Z

    .prologue
    .line 1150
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportRotateSheet:Z

    .line 1151
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->supportSheet:Z

    .line 1152
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1122
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->tag:Ljava/lang/Object;

    .line 1123
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V
    .locals 1
    .param p1, "type"    # Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 443
    :cond_0
    return-void
.end method

.method public setVelocity(FF)V
    .locals 2
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F

    .prologue
    .line 697
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-nez v1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 701
    .local v0, "vel":Lcom/badlogic/gdx/math/Vector2;
    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 702
    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 703
    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1005
    iput-boolean p1, p0, Lorg/loon/framework/android/game/physics/PhysicsObject;->visible:Z

    .line 1006
    return-void
.end method

.method public update(J)V
    .locals 0
    .param p1, "elapsedTime"    # J

    .prologue
    .line 267
    return-void
.end method

.method public x()I
    .locals 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1018
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    return v1
.end method

.method public y()I
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lorg/loon/framework/android/game/physics/PhysicsObject;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1023
    .local v0, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    return v1
.end method
