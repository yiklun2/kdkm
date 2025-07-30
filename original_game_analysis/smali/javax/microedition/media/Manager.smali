.class public Ljavax/microedition/media/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Ljavax/microedition/media/Player;

    invoke-direct {v0, p0}, Ljavax/microedition/media/Player;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
