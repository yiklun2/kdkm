.class Lorg/loon/framework/android/game/core/graphics/window/NullFactory;
.super Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
.source "UIConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;-><init>()V

    .line 151
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
    .line 181
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-interface {p1, v0, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 182
    return-void
.end method

.method public createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 162
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, p2, p3, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIILandroid/graphics/Bitmap$Config;)[Ljavax/microedition/lcdui/Image;

    move-result-object v6

    .line 164
    .local v6, "ui":[Ljavax/microedition/lcdui/Image;
    aget-object v2, v6, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 166
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 167
    add-int/lit8 v3, p2, -0x8

    add-int/lit8 v4, p3, -0x8

    move v2, v1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->fill3DRect(IIIIZ)V

    .line 168
    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 169
    invoke-interface {v0, v7, v7, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 171
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 173
    return-object v6
.end method

.method public getUIDescription()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Invalid Component"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "Invalid Component"

    return-object v0
.end method

.method public processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 177
    return-void
.end method
