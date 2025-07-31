.class public Ljavax/microedition/media/control/VolumeControl;
.super Ljava/lang/Object;
.source "VolumeControl.java"


# instance fields
.field vol:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0xa

    iput v0, p0, Ljavax/microedition/media/control/VolumeControl;->vol:I

    .line 3
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Ljavax/microedition/media/control/VolumeControl;->vol:I

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public setLevel(I)I
    .locals 1
    .param p1, "volumesetting"    # I

    .prologue
    .line 13
    iput p1, p0, Ljavax/microedition/media/control/VolumeControl;->vol:I

    .line 14
    iget v0, p0, Ljavax/microedition/media/control/VolumeControl;->vol:I

    return v0
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 25
    return-void
.end method
