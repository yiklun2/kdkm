.class public Lorg/loon/framework/android/game/action/sprite/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;
    }
.end annotation


# instance fields
.field private alpha:F

.field private animTime:J

.field private currentFrameIndex:I

.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

.field private totalDuration:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>(Ljava/util/List;J)V

    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/util/List;J)V
    .locals 1
    .param p2, "totalDuration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 49
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    .line 50
    iput-wide p2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning:Z

    .line 52
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/sprite/Animation;->start()V

    .line 53
    return-void
.end method

.method public static getDefaultAnimation(Ljava/lang/String;III)Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "timer"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, p2, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 67
    const/4 v1, -0x1

    .line 66
    invoke-static {v0, v1, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->getDefaultAnimation([Ljavax/microedition/lcdui/Image;II)Lorg/loon/framework/android/game/action/sprite/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAnimation(Ljava/lang/String;IIII)Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "maxFrame"    # I
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "timer"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p2, p3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getSplitImages(Ljava/lang/String;IIZ)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-static {v0, p1, p4}, Lorg/loon/framework/android/game/action/sprite/Animation;->getDefaultAnimation([Ljavax/microedition/lcdui/Image;II)Lorg/loon/framework/android/game/action/sprite/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAnimation([Ljavax/microedition/lcdui/Image;II)Lorg/loon/framework/android/game/action/sprite/Animation;
    .locals 5
    .param p0, "images"    # [Ljavax/microedition/lcdui/Image;
    .param p1, "maxFrame"    # I
    .param p2, "timer"    # I

    .prologue
    .line 98
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    invoke-direct {v0}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>()V

    .line 99
    .local v0, "animation":Lorg/loon/framework/android/game/action/sprite/Animation;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 110
    :cond_0
    return-object v0

    .line 101
    :cond_1
    new-instance v2, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    int-to-long v3, p2

    .line 101
    invoke-virtual {v0, v2, v3, v4}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 106
    new-instance v2, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    int-to-long v3, p2

    .line 106
    invoke-virtual {v0, v2, v3, v4}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 226
    if-gez p1, :cond_0

    .line 227
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    .line 231
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 229
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addFrame(Ljava/lang/String;J)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "timer"    # J

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFrame(Ljavax/microedition/lcdui/Image;J)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "timer"    # J

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;-><init>(Ljavax/microedition/lcdui/Image;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/action/sprite/Animation;->addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFrame(Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V
    .locals 4
    .param p1, "image"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p2, "timer"    # J

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    .line 128
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    new-instance v1, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;-><init>(Lorg/loon/framework/android/game/action/sprite/Animation;Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/Animation;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/action/sprite/Animation;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->alpha:F

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    return v0
.end method

.method public getSpriteImage()Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 192
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 196
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    goto :goto_0

    .line 194
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/sprite/Animation;->getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    goto :goto_1
.end method

.method public getSpriteImage(I)Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 207
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 215
    :goto_0
    return-object v0

    .line 210
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 215
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/sprite/Animation;->getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->sprImage:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    goto :goto_1
.end method

.method public getTotalFrames()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 266
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->alpha:F

    .line 267
    return-void
.end method

.method public setCurrentFrameIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 270
    iput p1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    .line 271
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "runing"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning:Z

    .line 241
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    .line 157
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(J)V
    .locals 4
    .param p1, "timer"    # J

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->isRunning:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    .line 171
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 172
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    iget-wide v2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->totalDuration:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    .line 175
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->animTime:J

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/action/sprite/Animation;->getFrame(I)Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;

    move-result-object v2

    iget-wide v2, v2, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->endTimer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 180
    :cond_1
    monitor-exit p0

    return-void

    .line 176
    :cond_2
    :try_start_1
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/Animation;->currentFrameIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
