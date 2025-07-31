.class public Ljavax/microedition/media/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field loop:Z

.field name:Ljava/lang/String;

.field private volumeControl:Ljavax/microedition/media/control/VolumeControl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljavax/microedition/media/Player;->name:Ljava/lang/String;

    .line 24
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->playSound(Ljava/lang/String;Z)V

    .line 25
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSound()V

    .line 26
    new-instance v0, Ljavax/microedition/media/control/VolumeControl;

    invoke-direct {v0}, Ljavax/microedition/media/control/VolumeControl;-><init>()V

    iput-object v0, p0, Ljavax/microedition/media/Player;->volumeControl:Ljavax/microedition/media/control/VolumeControl;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/media/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSound(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/control/VolumeControl;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Ljavax/microedition/media/Player;->volumeControl:Ljavax/microedition/media/control/VolumeControl;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public prefetch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public realize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public setLoopCount(I)V
    .locals 1
    .param p1, "loop"    # I

    .prologue
    .line 39
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljavax/microedition/media/Player;->loop:Z

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/media/Player;->name:Ljava/lang/String;

    iget-boolean v2, p0, Ljavax/microedition/media/Player;->loop:Z

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->playSound(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/media/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSound(Ljava/lang/String;)V

    .line 52
    return-void
.end method
