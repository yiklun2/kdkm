.class public Lcom/jarworld/rpg/sanguocollege/GameAppBase;
.super Ljavax/microedition/midlet/MIDlet;
.source "GameAppBase.java"


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field protected layout:Landroid/widget/LinearLayout;

.field public m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

.field public xs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->xs:Z

    .line 39
    return-void
.end method


# virtual methods
.method public destroy1()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->xs:Z

    .line 69
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->destroy()V

    .line 70
    return-void
.end method

.method protected destroyApp(Z)V
    .locals 1
    .param p1, "arg0"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .line 43
    return-void
.end method

.method public getMode()Lorg/loon/framework/android/game/Mode;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/loon/framework/android/game/Mode;->Fill:Lorg/loon/framework/android/game/Mode;

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 87
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040003

    new-instance v2, Lcom/jarworld/rpg/sanguocollege/GameAppBase$1;

    invoke-direct {v2, p0}, Lcom/jarworld/rpg/sanguocollege/GameAppBase$1;-><init>(Lcom/jarworld/rpg/sanguocollege/GameAppBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    const v1, 0x7f040004

    new-instance v2, Lcom/jarworld/rpg/sanguocollege/GameAppBase$2;

    invoke-direct {v2, p0}, Lcom/jarworld/rpg/sanguocollege/GameAppBase$2;-><init>(Lcom/jarworld/rpg/sanguocollege/GameAppBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Ljavax/microedition/midlet/MIDlet;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->hideNotify()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Ljavax/microedition/midlet/MIDlet;->onResume()V

    .line 80
    return-void
.end method

.method protected pauseApp()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setupAds1()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->xs:Z

    .line 63
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->setupAds()V

    .line 64
    return-void
.end method

.method protected startApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-direct {v0, p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;-><init>(Lcom/jarworld/rpg/sanguocollege/GameAppBase;)V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .line 51
    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 52
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->m_GameViewBase:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->startFlip()V

    .line 54
    const-string v0, "a14f0660827ec95"

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/AdUtils;->setInterstitialPublisherId(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/loon/framework/android/game/Location;->LEFT:Lorg/loon/framework/android/game/Location;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/loon/framework/android/game/utils/AdUtils;->createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;I)V

    .line 57
    return-void
.end method
