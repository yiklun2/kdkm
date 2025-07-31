.class Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;
.super Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
.source "UIConfig.java"


# instance fields
.field private name:Ljava/lang/String;

.field private ui:[Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;-><init>()V

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;->ui:[Ljavax/microedition/lcdui/Image;

    .line 193
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;->name:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p5, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 213
    return-void
.end method

.method public createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;->ui:[Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getUIDescription()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Empty Component"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 209
    return-void
.end method
