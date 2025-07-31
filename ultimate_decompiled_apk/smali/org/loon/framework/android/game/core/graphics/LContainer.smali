.class public abstract Lorg/loon/framework/android/game/core/graphics/LContainer;
.super Lorg/loon/framework/android/game/core/graphics/LComponent;
.source "LContainer.java"


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


# instance fields
.field private childCount:I

.field private childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

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

.field private latestInserted:Lorg/loon/framework/android/game/core/graphics/LComponent;

.field protected locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LContainer$1;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer$1;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/LContainer;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    .line 32
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/LComponent;-><init>(IIII)V

    .line 42
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LContainer;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->comparator:Ljava/util/Comparator;

    .line 44
    new-array v0, v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 46
    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->latestInserted:Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 52
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->setFocusable(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 3
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->contains(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 66
    :cond_1
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 67
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    const/4 v1, 0x1

    .line 68
    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 69
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 70
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 72
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sortComponents()V

    .line 73
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->latestInserted:Lorg/loon/framework/android/game/core/graphics/LComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Lorg/loon/framework/android/game/core/graphics/LComponent;I)V
    .locals 6
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "index"    # I

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    const-string v5, " already reside in another container!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 81
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 82
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 83
    .local v2, "newChilds":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "ctr":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v1, v3, :cond_1

    .line 91
    iput-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 92
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aput-object p1, v3, p2

    .line 93
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v3, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setDesktop(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 94
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sortComponents()V

    .line 95
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->latestInserted:Lorg/loon/framework/android/game/core/graphics/LComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    if-eq v1, p2, :cond_2

    .line 87
    :try_start_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v3, v3, v0

    aput-object v3, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->clearComponentsStat([Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v1, :cond_0

    .line 159
    new-array v1, v3, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 160
    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    .line 161
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized contains(Lorg/loon/framework/android/game/core/graphics/LComponent;)Z
    .locals 3
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 102
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    if-eqz v2, :cond_0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-ge v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createUI(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-super {p0, p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 215
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getClip()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->oldClip:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getScreenX()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getScreenY()I

    move-result v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getWidth()I

    move-result v2

    .line 218
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getHeight()I

    move-result v3

    .line 217
    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    .line 220
    :cond_2
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->renderComponents(Ljavax/microedition/lcdui/Graphics;)V

    .line 221
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->oldClip:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public findComponent(II)Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 3
    .param p1, "x1"    # I
    .param p2, "y1"    # I

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->intersects(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v1, v2, :cond_1

    move-object v0, p0

    .line 358
    goto :goto_0

    .line 352
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->intersects(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isContainer()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v0, v2, v1

    .line 355
    .local v0, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :goto_2
    goto :goto_0

    .line 354
    .end local v0    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :cond_2
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v1

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/LContainer;

    invoke-virtual {v2, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->findComponent(II)Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v0

    goto :goto_2

    .line 351
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get()Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->latestInserted:Lorg/loon/framework/android/game/core/graphics/LComponent;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    return v0
.end method

.method public getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public isElastic()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    return v0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 313
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v2, :cond_1

    .line 319
    const/4 v1, 0x0

    .line 322
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 315
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/loon/framework/android/game/core/graphics/LComponent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 125
    const/4 v2, -0x1

    .line 138
    :cond_0
    monitor-exit p0

    return v2

    .line 127
    :cond_1
    const/4 v2, 0x0

    .line 128
    .local v2, "count":I
    :try_start_0
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 129
    add-int/lit8 v4, v3, -0x1

    .line 130
    .local v4, "index":I
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v5, v4

    .line 131
    .local v1, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    :cond_2
    invoke-virtual {p0, v4}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(I)Lorg/loon/framework/android/game/core/graphics/LComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 128
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 124
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/loon/framework/android/game/core/graphics/LComponent;>;"
    .end local v1    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I
    .locals 2
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 120
    const/4 v0, -0x1

    .end local v0    # "i":I
    :goto_1
    monitor-exit p0

    return v0

    .line 115
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(I)Lorg/loon/framework/android/game/core/graphics/LComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized remove(I)Lorg/loon/framework/android/game/core/graphics/LComponent;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v0, v1, p1

    .line 144
    .local v0, "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->setComponentStat(Lorg/loon/framework/android/game/core/graphics/LComponent;Z)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->setContainer(Lorg/loon/framework/android/game/core/graphics/LContainer;)V

    .line 147
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-static {v1, p1}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 148
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-object v0

    .line 142
    .end local v0    # "comp":Lorg/loon/framework/android/game/core/graphics/LComponent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected renderComponents(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 227
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 230
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 227
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized replace(Lorg/loon/framework/android/game/core/graphics/LComponent;Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 2
    .param p1, "oldComp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "newComp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/LContainer;->remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    move-result v0

    .line 165
    .local v0, "index":I
    invoke-virtual {p0, p2, v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendToBack(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 4
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    const/4 v3, 0x1

    .line 253
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-ge v0, v1, :cond_0

    .line 260
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 262
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 261
    check-cast v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 264
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 263
    invoke-static {v1, v3, v3}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 265
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 266
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sortComponents()V

    goto :goto_0

    .line 259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 4
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_0

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-ge v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 242
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    invoke-static {v1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->cut(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 241
    check-cast v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 244
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 243
    invoke-static {v1, v3, v2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/loon/framework/android/game/core/graphics/LComponent;

    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    .line 245
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aput-object p1, v1, v2

    .line 246
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sortComponents()V

    goto :goto_0

    .line 239
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Comparator can not null !"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->comparator:Ljava/util/Comparator;

    .line 344
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sortComponents()V

    .line 345
    return-void
.end method

.method public setElastic(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    .line 332
    return-void
.end method

.method public sortComponents()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 274
    return-void
.end method

.method protected transferFocus(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 3
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v2, :cond_1

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 278
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_4

    .line 279
    move v1, v0

    .line 281
    .local v1, "j":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    .line 282
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    add-int/lit8 v0, v2, -0x1

    .line 284
    :cond_3
    if-eq v0, v1, :cond_0

    .line 287
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->requestFocus()Z

    move-result v2

    .line 280
    if-eqz v2, :cond_2

    goto :goto_1

    .line 277
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected transferFocusBackward(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 3
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v2, :cond_1

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 296
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_4

    .line 297
    move v1, v0

    .line 299
    .local v1, "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v2, :cond_3

    .line 300
    const/4 v0, 0x0

    .line 302
    :cond_3
    if-eq v0, v1, :cond_0

    .line 305
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->requestFocus()Z

    move-result v2

    .line 298
    if-eqz v2, :cond_2

    goto :goto_1

    .line 295
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(J)V
    .locals 3
    .param p1, "timer"    # J

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->update(J)V

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v0, v2, v1

    .line 176
    .local v0, "component":Lorg/loon/framework/android/game/core/graphics/LComponent;
    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->update(J)V

    .line 174
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public validatePosition()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 183
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v1, :cond_1

    .line 189
    iget-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    if-nez v1, :cond_0

    .line 190
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v1, :cond_2

    .line 200
    :cond_0
    :goto_2
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validatePosition()V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getWidth()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_3

    .line 192
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getHeight()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_3

    .line 193
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getWidth()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    cmpg-double v1, v1, v5

    if-ltz v1, :cond_3

    .line 194
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getY()D

    move-result-wide v1

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getHeight()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    cmpg-double v1, v1, v5

    if-gez v1, :cond_4

    .line 195
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->elastic:Z

    goto :goto_2

    .line 190
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected validateSize()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validateSize()V

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childCount:I

    if-lt v0, v1, :cond_0

    .line 208
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/LContainer;->childs:[Lorg/loon/framework/android/game/core/graphics/LComponent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/LComponent;->validateSize()V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
