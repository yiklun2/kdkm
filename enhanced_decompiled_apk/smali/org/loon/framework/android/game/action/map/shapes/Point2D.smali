.class public Lorg/loon/framework/android/game/action/map/shapes/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# static fields
.field public static final POINT_CONCAVE:I = 0x2

.field public static final POINT_CONVEX:I = 0x1


# instance fields
.field public type:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    .line 35
    iput p2, p0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;

    .line 41
    .local v0, "p":Lorg/loon/framework/android/game/action/map/shapes/Point2D;
    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    iget v2, p0, Lorg/loon/framework/android/game/action/map/shapes/Point2D;->type:I

    if-ne v1, v2, :cond_0

    .line 43
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
