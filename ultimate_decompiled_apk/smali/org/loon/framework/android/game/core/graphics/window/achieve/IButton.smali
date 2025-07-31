.class public Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;
.super Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
.source "IButton.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8b

    .line 37
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;-><init>()V

    .line 38
    const-string v0, "Background LColor"

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v0, "Background Over LColor"

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->gray:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v0, "Background Pressed LColor"

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->gray:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string v0, "Background Border LColor"

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const-string v0, "Background Disabled LColor"

    new-instance v1, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v1, v2, v2, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p5, "buttonImage"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 117
    move-object v0, p4

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/LButton;

    .line 118
    .local v0, "button":Lorg/loon/framework/android/game/core/graphics/window/LButton;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x3

    aget-object v1, p5, v1

    invoke-interface {p1, v1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isTouchPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const/4 v1, 0x2

    aget-object v1, p5, v1

    invoke-interface {p1, v1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isTouchOver()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/4 v1, 0x1

    aget-object v1, p5, v1

    invoke-interface {p1, v1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-interface {p1, v1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_0
.end method

.method public createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;
    .locals 10
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 55
    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIILandroid/graphics/Bitmap$Config;)[Ljavax/microedition/lcdui/Image;

    move-result-object v9

    .line 57
    .local v9, "ui":[Ljavax/microedition/lcdui/Image;
    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Background LColor"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "Background Over LColor"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "Background Pressed LColor"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    .line 59
    const-string v2, "Background Disabled LColor"

    aput-object v2, v7, v1

    .line 61
    .local v7, "color":[Ljava/lang/String;
    const-string v1, "Background Border LColor"

    invoke-virtual {p0, v1, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->get(Ljava/lang/String;Lorg/loon/framework/android/game/core/graphics/LComponent;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 64
    .local v6, "borderColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v8, v1, :cond_0

    .line 88
    return-object v9

    .line 65
    :cond_0
    aget-object v1, v9, v8

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    .line 66
    .local v0, "g":Ljavax/microedition/lcdui/Graphics;
    aget-object v1, v7, v8

    invoke-virtual {p0, v1, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IButton;->get(Ljava/lang/String;Lorg/loon/framework/android/game/core/graphics/LComponent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 67
    packed-switch v8, :pswitch_data_0

    .line 81
    :goto_1
    if-eqz v6, :cond_1

    .line 82
    invoke-interface {v0, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 85
    :cond_1
    invoke-interface {v0}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 69
    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->fill3DRect(IIIIZ)V

    goto :goto_1

    .line 72
    :pswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_1

    .line 75
    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->fill3DRect(IIIIZ)V

    goto :goto_1

    .line 78
    :pswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/lcdui/Graphics;->fill3DRect(IIIIZ)V

    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getUIDescription()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Button"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Button Over"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Button Pressed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 51
    const-string v2, "Button Disabled"

    aput-object v2, v0, v1

    .line 50
    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Button"

    return-object v0
.end method

.method public processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
    .locals 10
    .param p1, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;
    .param p2, "ui"    # [Ljavax/microedition/lcdui/Image;

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/LButton;

    .line 93
    .local v0, "button":Lorg/loon/framework/android/game/core/graphics/window/LButton;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getText()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 96
    .local v4, "length":I
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    .line 97
    .local v1, "font":Ljavax/microedition/lcdui/Font;
    if-lez v4, :cond_0

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x4

    if-lt v3, v6, :cond_1

    .line 113
    .end local v1    # "font":Ljavax/microedition/lcdui/Font;
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_0
    return-void

    .line 99
    .restart local v1    # "font":Ljavax/microedition/lcdui/Font;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :cond_1
    aget-object v6, p2, v3

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v2

    .line 101
    .local v2, "g":Ljavax/microedition/lcdui/Graphics;
    invoke-interface {v2, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 102
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getFontColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v6

    invoke-interface {v2, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 103
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getOffsetLeft()I

    move-result v6

    .line 104
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getWidth()I

    move-result v7

    invoke-virtual {v1, v5}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 105
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getOffsetTop()I

    move-result v7

    .line 106
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->getHeight()I

    move-result v8

    .line 107
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getLineHeight()I

    move-result v9

    .line 106
    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 105
    add-int/2addr v7, v8

    .line 108
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getLineHeight()I

    move-result v8

    .line 105
    add-int/2addr v7, v8

    .line 103
    invoke-interface {v2, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 109
    invoke-interface {v2}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
