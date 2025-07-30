.class public Lcom/jarworld/rpg/sanguocollege/AndroidMusic;
.super Ljava/lang/Object;
.source "AndroidMusic.java"


# instance fields
.field private isPrepared:Z

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    .line 20
    iput-object p1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 21
    return-void
.end method

.method public static newMusic(Ljava/lang/String;)Lcom/jarworld/rpg/sanguocollege/AndroidMusic;
    .locals 9
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 26
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 27
    .local v6, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 28
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 29
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 30
    new-instance v8, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-direct {v8, v0}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;-><init>(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v8

    .line 32
    :catch_0
    move-exception v7

    .line 33
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "AndroidMusic"

    const-string v2, "error while disposing AndroidMusic instance, non-fatal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 47
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 48
    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 49
    throw v1
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 69
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "isLooping"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 96
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 103
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->isPrepared:Z

    .line 104
    return-void
.end method
