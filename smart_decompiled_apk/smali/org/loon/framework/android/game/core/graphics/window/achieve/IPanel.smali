.class public Lorg/loon/framework/android/game/core/graphics/window/achieve/IPanel;
.super Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
.source "IPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p5, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 53
    invoke-virtual {p4}, Lorg/loon/framework/android/game/core/graphics/LComponent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    aget-object v0, p5, v0

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0
.end method

.method public createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;
    .locals 3
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 44
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, p2, p3, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIIZ)[Ljavax/microedition/lcdui/Image;

    move-result-object v0

    .line 45
    .local v0, "ui":[Ljavax/microedition/lcdui/Image;
    return-object v0
.end method

.method public getUIDescription()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Panel"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Panel"

    return-object v0
.end method

.method public processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 49
    return-void
.end method
