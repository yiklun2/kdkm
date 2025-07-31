.class public Lorg/loon/framework/android/game/action/avg/AVGScript;
.super Lorg/loon/framework/android/game/action/avg/AVGScreen;
.source "AVGScript.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "initscript"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "initscript"    # Ljava/lang/String;
    .param p2, "initdialog"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/action/avg/AVGScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "initscript"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/action/avg/AVGScreen;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 50
    return-void
.end method


# virtual methods
.method public drawScreen(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 65
    return-void
.end method

.method public initCommandConfig(Lorg/loon/framework/android/game/action/avg/command/Command;)V
    .locals 0
    .param p1, "command"    # Lorg/loon/framework/android/game/action/avg/command/Command;

    .prologue
    .line 72
    return-void
.end method

.method public initMessageConfig(Lorg/loon/framework/android/game/core/graphics/window/LMessage;)V
    .locals 0
    .param p1, "message"    # Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    .prologue
    .line 79
    return-void
.end method

.method public initSelectConfig(Lorg/loon/framework/android/game/core/graphics/window/LSelect;)V
    .locals 0
    .param p1, "select"    # Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    .prologue
    .line 86
    return-void
.end method

.method public nextScript(Ljava/lang/String;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onSelect(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 100
    return-void
.end method
