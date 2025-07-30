.class public Lorg/loon/framework/android/game/action/sprite/Mask;
.super Ljava/lang/Object;
.source "Mask.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3be7c0040edf3465L


# instance fields
.field private data:[[Z

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->width:I

    .line 40
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->height:I

    .line 41
    return-void
.end method

.method public constructor <init>([[ZII)V
    .locals 0
    .param p1, "data"    # [[Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->data:[[Z

    .line 45
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->width:I

    .line 46
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->height:I

    .line 47
    return-void
.end method


# virtual methods
.method public getData()[[Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->data:[[Z

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->height:I

    return v0
.end method

.method public getPixel(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 54
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->width:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->height:I

    if-lt p2, v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->data:[[Z

    aget-object v0, v0, p2

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->width:I

    return v0
.end method

.method public setData([[Z)V
    .locals 0
    .param p1, "data"    # [[Z

    .prologue
    .line 61
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Mask;->data:[[Z

    .line 62
    return-void
.end method
