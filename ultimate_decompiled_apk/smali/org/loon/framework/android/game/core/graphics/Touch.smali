.class public Lorg/loon/framework/android/game/core/graphics/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# instance fields
.field action:I

.field pointerCount:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "action"    # I
    .param p4, "pointerCount"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->x:F

    .line 44
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->y:F

    .line 45
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->action:I

    .line 46
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->pointerCount:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 39
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/MultitouchUtils;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/Touch;-><init>(FFII)V

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->action:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->pointerCount:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/Touch;->y:F

    return v0
.end method
