.class public Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field private layers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/action/sprite/j2me/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private viewH:I

.field private viewW:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewY:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewX:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewH:I

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewW:I

    .line 39
    return-void
.end method


# virtual methods
.method public append(Lorg/loon/framework/android/game/action/sprite/j2me/Layer;)V
    .locals 1
    .param p1, "layer"    # Lorg/loon/framework/android/game/action/sprite/j2me/Layer;

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    if-nez p1, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    return-void
.end method

.method public getLayerAt(I)Lorg/loon/framework/android/game/action/sprite/j2me/Layer;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public insert(Lorg/loon/framework/android/game/action/sprite/j2me/Layer;I)V
    .locals 1
    .param p1, "layer"    # Lorg/loon/framework/android/game/action/sprite/j2me/Layer;
    .param p2, "i"    # I

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    if-nez p1, :cond_0

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 58
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    if-nez p1, :cond_0

    .line 87
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 85
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 89
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v2

    .line 90
    .local v2, "clipX":I
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v3

    .line 91
    .local v3, "clipY":I
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v1

    .line 92
    .local v1, "clipW":I
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v0

    .line 93
    .local v0, "clipH":I
    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewX:I

    sub-int v6, p2, v6

    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewY:I

    sub-int v7, p3, v7

    invoke-interface {p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 94
    iget v6, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewX:I

    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewY:I

    iget v8, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewW:I

    iget v9, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewH:I

    invoke-interface {p1, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 95
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->getSize()I

    move-result v5

    .local v5, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 101
    neg-int v6, p2

    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewX:I

    add-int/2addr v6, v7

    neg-int v7, p3

    iget v8, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewY:I

    add-int/2addr v7, v8

    invoke-interface {p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 102
    invoke-interface {p1, v2, v3, v1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 85
    monitor-exit p0

    .line 104
    return-void

    .line 96
    :cond_2
    invoke-virtual {p0, v5}, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->getLayerAt(I)Lorg/loon/framework/android/game/action/sprite/j2me/Layer;

    move-result-object v4

    .line 97
    .local v4, "comp":Lorg/loon/framework/android/game/action/sprite/j2me/Layer;
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {v4, p1}, Lorg/loon/framework/android/game/action/sprite/j2me/Layer;->paint(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public remove(Lorg/loon/framework/android/game/action/sprite/j2me/Layer;)V
    .locals 1
    .param p1, "layer"    # Lorg/loon/framework/android/game/action/sprite/j2me/Layer;

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 66
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    return-void
.end method

.method public setViewWindow(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 76
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_1
    :try_start_1
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewX:I

    .line 78
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewY:I

    .line 79
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewW:I

    .line 80
    iput p4, p0, Lorg/loon/framework/android/game/action/sprite/j2me/LayerManager;->viewH:I

    .line 74
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    return-void
.end method
