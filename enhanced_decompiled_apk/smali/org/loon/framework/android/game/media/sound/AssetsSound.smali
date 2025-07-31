.class public Lorg/loon/framework/android/game/media/sound/AssetsSound;
.super Ljava/lang/Object;
.source "AssetsSound.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# static fields
.field public static final EXIT:I = 0x3

.field public static final PAUSE:I = 0x2

.field public static final PLAYING:I = 0x1

.field public static final PREPARED:I


# instance fields
.field private buffer:I

.field private context:Landroid/content/Context;

.field private done:Z

.field private fileName:Ljava/lang/String;

.field private lock:Ljava/lang/Object;

.field private loop:Z

.field private paused:Z

.field private player:Landroid/media/MediaPlayer;

.field private soundThread:Ljava/lang/Thread;

.field private started:Z

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    .line 67
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->context:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 316
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 319
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 316
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_0
    return-void

    .line 316
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopLoop()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 228
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 229
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->exit()V

    .line 386
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    return-void
.end method

.method public getBuffer()I
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->buffer:I

    monitor-exit v1

    return v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    monitor-exit v1

    .line 381
    :goto_0
    return v0

    .line 376
    :cond_0
    monitor-exit v1

    .line 381
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    monitor-exit v1

    .line 372
    :goto_0
    return v0

    .line 367
    :cond_0
    monitor-exit v1

    .line 372
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    monitor-exit v1

    .line 342
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    monitor-exit v1

    .line 351
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stopLoop()V

    .line 187
    iget v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eq v0, v2, :cond_0

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->paused:Z

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 191
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    .line 192
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 185
    :cond_0
    monitor-exit v1

    .line 198
    :goto_0
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 415
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iput p2, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->buffer:I

    .line 415
    monitor-exit v1

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 400
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 402
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 400
    monitor-exit v1

    .line 404
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 407
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 409
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 407
    monitor-exit v1

    .line 411
    const/4 v0, 0x0

    return v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 241
    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->paused:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 246
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->paused:Z

    .line 247
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 239
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stopLoop()V

    .line 167
    iget v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eq v0, v2, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->paused:Z

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 171
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    :cond_0
    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 205
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stopLoop()V

    .line 207
    iget v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eq v0, v2, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->paused:Z

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 211
    iput-object p1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    :cond_0
    monitor-exit v1

    .line 219
    :goto_0
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 266
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 267
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 268
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    :cond_0
    monitor-exit v1

    .line 271
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V

    .line 257
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 71
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    .line 71
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 78
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 79
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 81
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 83
    iget v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eq v3, v7, :cond_3

    .line 81
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :try_start_3
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 88
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    const/4 v3, 0x3

    :try_start_4
    iput v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 88
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 95
    :goto_1
    :try_start_5
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 96
    :goto_2
    :try_start_6
    iget v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eqz v3, :cond_5

    .line 95
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "currentStatus":I
    :try_start_7
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 103
    :try_start_8
    iget v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 102
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 106
    if-ne v0, v7, :cond_2

    .line 107
    :try_start_9
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 110
    :cond_2
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 111
    const/4 v3, 0x1

    :try_start_a
    iput-boolean v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    .line 113
    :goto_3
    iget v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    if-eq v3, v7, :cond_6

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    .line 110
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 128
    :try_start_b
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 129
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 130
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 131
    const/4 v3, 0x0

    :try_start_c
    iput-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    .line 130
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 136
    .end local v0    # "currentStatus":I
    :goto_4
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 137
    const/4 v3, 0x3

    :try_start_d
    iput v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 136
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 139
    invoke-virtual {p0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->callback()V

    .line 141
    return-void

    .line 71
    :catchall_0
    move-exception v3

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v3

    .line 84
    :cond_3
    :try_start_f
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 81
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 134
    :catch_0
    move-exception v3

    goto :goto_4

    .line 88
    :catchall_2
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v3

    .line 92
    :cond_4
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->fileName:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    invoke-virtual {p0, v3, v4}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->setDataSource(Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_1

    .line 97
    :cond_5
    :try_start_13
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 95
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 102
    .restart local v0    # "currentStatus":I
    :catchall_4
    move-exception v3

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 114
    :cond_6
    :try_start_17
    iget-boolean v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->done:Z

    if-nez v3, :cond_7

    .line 115
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 116
    .local v1, "duration":I
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 117
    .local v2, "position":I
    if-lez v1, :cond_7

    add-int/lit16 v3, v2, 0x2710

    if-le v3, v1, :cond_7

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->done:Z

    .line 119
    invoke-virtual {p0, v1, v2}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->schedule(II)V

    .line 122
    .end local v1    # "duration":I
    .end local v2    # "position":I
    :cond_7
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_3

    .line 110
    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 130
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 136
    .end local v0    # "currentStatus":I
    :catchall_7
    move-exception v3

    :try_start_1b
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    throw v3
.end method

.method public schedule(II)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "position"    # I

    .prologue
    .line 151
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->setDataSource(Ljava/lang/String;Z)V

    .line 291
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "looping"    # Z

    .prologue
    .line 300
    iget-object v6, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 302
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 305
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 302
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 306
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 307
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v6

    .line 313
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "isLooping"    # Z

    .prologue
    .line 328
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 330
    iput-boolean p1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 331
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 332
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    :cond_0
    monitor-exit v1

    .line 335
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolume(I)V
    .locals 5
    .param p1, "vol"    # I

    .prologue
    .line 356
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->started:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->player:Landroid/media/MediaPlayer;

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 359
    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 358
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 360
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 356
    :cond_0
    monitor-exit v1

    .line 364
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop:Z

    .line 279
    const/4 v0, 0x3

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->status:I

    .line 280
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSound;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit v1

    .line 282
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
