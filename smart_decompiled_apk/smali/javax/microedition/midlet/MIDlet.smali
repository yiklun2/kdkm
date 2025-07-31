.class public Ljavax/microedition/midlet/MIDlet;
.super Lorg/loon/framework/android/game/LGameAndroid2DActivity;
.source "MIDlet.java"


# static fields
.field protected static midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;-><init>()V

    return-void
.end method

.method public static getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ljavax/microedition/midlet/MIDlet;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method


# virtual methods
.method protected destroyApp(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public getMode()Lorg/loon/framework/android/game/Mode;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/loon/framework/android/game/Mode;->Defalut:Lorg/loon/framework/android/game/Mode;

    return-object v0
.end method

.method public isLandscape()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDestroyed()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->exit()V

    .line 32
    return-void
.end method

.method protected notifyPaused()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->isLandscape()Z

    move-result v1

    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->getMode()Lorg/loon/framework/android/game/Mode;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavax/microedition/midlet/MIDlet;->initialization(ZLorg/loon/framework/android/game/Mode;)V

    .line 69
    const-wide/16 v1, 0x19

    invoke-virtual {p0, v1, v2}, Ljavax/microedition/midlet/MIDlet;->setFPS(J)V

    .line 70
    invoke-virtual {p0, v3}, Ljavax/microedition/midlet/MIDlet;->setShowLogo(Z)V

    .line 71
    invoke-virtual {p0, v3}, Ljavax/microedition/midlet/MIDlet;->setShowFPS(Z)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/microedition/midlet/MIDlet;->setBackLocked(Z)V

    .line 73
    sput-object p0, Ljavax/microedition/midlet/MIDlet;->midlet:Ljavax/microedition/midlet/MIDlet;

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->startApp()V
    :try_end_0
    .catch Ljavax/microedition/midlet/MIDletStateChangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-static {}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/microedition/midlet/MIDlet;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 80
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->showScreen()V

    .line 81
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljavax/microedition/midlet/MIDletStateChangeException;
    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDletStateChangeException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->onPause()V

    .line 20
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->pauseApp()V

    .line 21
    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->notifyPaused()V

    .line 22
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->onResume()V

    .line 27
    invoke-static {}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->shownotify()V

    .line 28
    return-void
.end method

.method protected pauseApp()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->hidenotify()V

    .line 41
    return-void
.end method

.method protected startApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method
