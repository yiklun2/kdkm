.class public Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;
.super Ljava/lang/Object;
.source "AssetsSoundManager.java"


# static fields
.field private static assetsSoundManager:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;


# instance fields
.field private asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

.field private clipCount:I

.field private paused:Z

.field private sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    .line 49
    return-void
.end method

.method public static final getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->assetsSoundManager:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    invoke-direct {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->assetsSoundManager:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->assetsSoundManager:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized pause(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSound(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vol"    # I

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 57
    .local v0, "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    invoke-virtual {v0, p2}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->setVolume(I)V

    .line 58
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 60
    :cond_1
    :try_start_2
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    .line 61
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 62
    .local v2, "idx":I
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v3, v4, v2

    check-cast v3, Ljava/lang/String;

    .line 63
    .local v3, "k":Ljava/lang/String;
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 64
    .local v1, "clip":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V

    .line 65
    const/4 v1, 0x0

    .line 66
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    .line 68
    .end local v1    # "clip":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    .end local v2    # "idx":I
    .end local v3    # "k":Ljava/lang/String;
    :cond_2
    new-instance v4, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-direct {v4, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 69
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->play()V

    .line 70
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4, p2}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->setVolume(I)V

    .line 71
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget-object v5, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4, p1, v5}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 99
    .local v0, "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 102
    .restart local v0    # "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->play()V

    goto :goto_0

    .line 105
    .end local v0    # "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :cond_2
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_3

    .line 106
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 107
    .local v2, "idx":I
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v3, v4, v2

    check-cast v3, Ljava/lang/String;

    .line 108
    .local v3, "k":Ljava/lang/String;
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 109
    .local v1, "clip":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    invoke-virtual {v1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V

    .line 110
    const/4 v1, 0x0

    .line 111
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    .line 113
    .end local v1    # "clip":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    .end local v2    # "idx":I
    .end local v3    # "k":Ljava/lang/String;
    :cond_3
    new-instance v4, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-direct {v4, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 114
    if-eqz p2, :cond_4

    .line 115
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->loop()V

    .line 119
    :goto_1
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget-object v5, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4, p1, v5}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->clipCount:I

    goto :goto_0

    .line 117
    :cond_4
    iget-object v4, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSound()V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSoundVolume(I)V
    .locals 1
    .param p1, "vol"    # I

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->setVolume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSound()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->asound:Lorg/loon/framework/android/game/media/sound/AssetsSound;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSound(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 78
    .local v0, "sound":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "sound":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 89
    .local v0, "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "ass":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopSoundAll()V
    .locals 4

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->sounds:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 136
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 127
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, "sound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/media/sound/AssetsSound;

    .line 130
    .local v0, "as":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSound;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "as":Lorg/loon/framework/android/game/media/sound/AssetsSound;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "sound":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
