.class public abstract Lorg/loon/framework/android/game/action/avg/AVGScreen;
.super Lorg/loon/framework/android/game/core/graphics/CanvasScreen;
.source "AVGScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field protected command:Lorg/loon/framework/android/game/action/avg/command/Command;

.field private commandGo:Z

.field private delay:I

.field protected desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

.field protected dialog:Ljavax/microedition/lcdui/Image;

.field private isSelectMessage:Z

.field private locked:Z

.field protected message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

.field private running:Z

.field protected scrCG:Lorg/loon/framework/android/game/action/avg/CG;

.field private scrFlag:Z

.field private scriptName:Ljava/lang/String;

.field protected select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

.field private selectMessage:Ljava/lang/String;

.field private shakeNumber:I

.field private sleep:I

.field private sleepMax:I

.field protected sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "initscript"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->setRepaintMode(I)V

    .line 100
    const/16 v0, 0x1e

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    .line 101
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scriptName:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    .line 103
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->callEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "initscript"    # Ljava/lang/String;
    .param p2, "initdialog"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;-><init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "initscript"    # Ljava/lang/String;
    .param p2, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;-><init>()V

    .line 84
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->setRepaintMode(I)V

    .line 88
    const/16 v0, 0x1e

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    .line 89
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scriptName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    .line 92
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->callEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initAVG()V
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initDesktop()V

    .line 656
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initMessageConfig(Lorg/loon/framework/android/game/core/graphics/window/LMessage;)V

    .line 657
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initSelectConfig(Lorg/loon/framework/android/game/core/graphics/window/LSelect;)V

    .line 658
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scriptName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initCommandConfig(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private initDesktop()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 107
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v3, :cond_0

    .line 145
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentHeight()I

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lorg/loon/framework/android/game/core/graphics/Desktop;-><init>(Lorg/loon/framework/android/game/core/LInput;II)V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 111
    new-instance v3, Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/loon/framework/android/game/action/sprite/Sprites;-><init>(II)V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "flag":Z
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x28

    .line 115
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x14

    .line 114
    invoke-static {v3, v4}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    .line 116
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    .line 117
    .local v1, "g":Ljavax/microedition/lcdui/Graphics;
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v1, v3}, Ljavax/microedition/lcdui/Graphics;->setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 118
    invoke-interface {v1}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 119
    const/4 v0, 0x1

    .line 121
    .end local v1    # "g":Ljavax/microedition/lcdui/Graphics;
    :cond_1
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    invoke-direct {v3, v4, v8, v8}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;-><init>(Ljavax/microedition/lcdui/Image;II)V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v3, v9}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setAlpha(F)V

    .line 125
    :cond_2
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    sget-object v4, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v3, v4}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 126
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getMessageFont()Ljavax/microedition/lcdui/Font;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v4

    div-int v2, v3, v4

    .line 127
    .local v2, "size":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    .line 128
    add-int/lit8 v2, v2, -0x3

    .line 132
    :goto_1
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v3, v2}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setMessageLength(I)V

    .line 133
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v4

    iget-object v5, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    .line 134
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentHeight()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xa

    int-to-double v6, v6

    .line 133
    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setLocation(DD)V

    .line 135
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v3, v8}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setVisible(Z)V

    .line 136
    new-instance v3, Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    invoke-direct {v3, v4, v8, v8}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljavax/microedition/lcdui/Image;II)V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    .line 137
    if-eqz v0, :cond_3

    .line 138
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v3, v9}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setAlpha(F)V

    .line 140
    :cond_3
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->x()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->y()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setLocation(DD)V

    .line 141
    new-instance v3, Lorg/loon/framework/android/game/action/avg/CG;

    invoke-direct {v3}, Lorg/loon/framework/android/game/action/avg/CG;-><init>()V

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    .line 142
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v3, v4}, Lorg/loon/framework/android/game/core/graphics/Desktop;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 143
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v3, v4}, Lorg/loon/framework/android/game/core/graphics/Desktop;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 144
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v3, v8}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setVisible(Z)V

    goto/16 :goto_0

    .line 130
    :cond_4
    add-int/lit8 v2, v2, -0x4

    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 1
    .param p1, "s"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initDesktop()V

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 203
    return-void
.end method

.method public add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 1
    .param p1, "c"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initDesktop()V

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->add(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 195
    return-void
.end method

.method public click()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 599
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->locked:Z

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    .line 610
    .local v0, "isNext":Z
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    if-nez v1, :cond_6

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    if-gtz v1, :cond_6

    .line 611
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    if-nez v1, :cond_3

    .line 612
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 614
    :cond_3
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 615
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getTouchX()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getTouchY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->intersects(II)Z

    move-result v0

    .line 627
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    if-nez v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->nextScript()V

    goto :goto_0

    .line 617
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 619
    :cond_6
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->getResultIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 620
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->selectMessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->getResultIndex()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->onSelect(Ljava/lang/String;I)V

    .line 621
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getTouchX()I

    move-result v2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getTouchY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->intersects(II)Z

    move-result v0

    .line 622
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    invoke-virtual {v1, v4}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setVisible(Z)V

    .line 623
    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    invoke-virtual {v1, v4}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setVisible(Z)V

    .line 624
    iput-boolean v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    .line 625
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->selectMessage:Ljava/lang/String;

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;->dispose()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    .line 150
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_0

    .line 151
    iput-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_1

    .line 154
    iput-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-eqz v0, :cond_2

    .line 157
    iput-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 159
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/avg/CG;->dispose()V

    .line 161
    iput-object v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    .line 163
    :cond_3
    return-void
.end method

.method public abstract drawScreen(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public getCommand()Lorg/loon/framework/android/game/action/avg/command/Command;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    return v0
.end method

.method public getDesktop()Lorg/loon/framework/android/game/core/graphics/Desktop;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    return-object v0
.end method

.method public getDialog()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getDialogImage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getLSelect()Lorg/loon/framework/android/game/core/graphics/window/LSelect;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    return-object v0
.end method

.method public getMessage()Lorg/loon/framework/android/game/core/graphics/window/LMessage;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    return-object v0
.end method

.method public getPause()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    return v0
.end method

.method public getScrCG()Lorg/loon/framework/android/game/action/avg/CG;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    return-object v0
.end method

.method public getScriptName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scriptName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/avg/command/Command;->getSelect()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->selectMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSleep()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    return v0
.end method

.method public getSleepMax()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    return v0
.end method

.method public getSprites()Lorg/loon/framework/android/game/action/sprite/Sprites;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    return-object v0
.end method

.method public initCommandConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Command;->resetCache()V

    .line 637
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-nez v0, :cond_1

    .line 638
    new-instance v0, Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/action/avg/command/Command;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 642
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initCommandConfig(Lorg/loon/framework/android/game/action/avg/command/Command;)V

    .line 643
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->nextScript()V

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/avg/command/Command;->formatCommand(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public abstract initCommandConfig(Lorg/loon/framework/android/game/action/avg/command/Command;)V
.end method

.method public abstract initMessageConfig(Lorg/loon/framework/android/game/core/graphics/window/LMessage;)V
.end method

.method public abstract initSelectConfig(Lorg/loon/framework/android/game/core/graphics/window/LSelect;)V
.end method

.method public isCommandGo()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->commandGo:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->locked:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    return v0
.end method

.method public isScrFlag()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    return v0
.end method

.method public isSelectMessage()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    return v0
.end method

.method public keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 678
    return-void
.end method

.method public keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 682
    return-void
.end method

.method public messageConfig()Lorg/loon/framework/android/game/core/graphics/window/LMessage;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    return-object v0
.end method

.method public declared-synchronized nextScript()V
    .locals 26

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 281
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/avg/command/Command;->next()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->commandGo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v22, :cond_2

    .line 594
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 282
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/avg/command/Command;->doExecute()Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, "result":Ljava/lang/String;
    if-nez v15, :cond_3

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->nextScript()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 280
    .end local v15    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 287
    .restart local v15    # "result":Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->nextScript(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 290
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lorg/loon/framework/android/game/action/avg/command/Command;->splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 291
    .local v8, "commands":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    .line 292
    .local v18, "size":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 294
    .local v5, "cmdFlag":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "mesFlag":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "orderFlag":Ljava/lang/String;
    const/4 v11, 0x0

    .line 295
    .local v11, "lastFlag":Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 296
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "mesFlag":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 305
    .restart local v12    # "mesFlag":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v22, "wait"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 306
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    goto :goto_1

    .line 297
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 298
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "mesFlag":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 299
    .restart local v12    # "mesFlag":Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "orderFlag":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .restart local v14    # "orderFlag":Ljava/lang/String;
    goto :goto_2

    .line 300
    :cond_6
    const/16 v22, 0x4

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 301
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "mesFlag":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 302
    .restart local v12    # "mesFlag":Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "orderFlag":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 303
    .restart local v14    # "orderFlag":Ljava/lang/String;
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "lastFlag":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "lastFlag":Ljava/lang/String;
    goto :goto_2

    .line 309
    :cond_7
    const-string v22, "snow"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 310
    const-string v22, "rain"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 311
    const-string v22, "petal"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 313
    const/4 v9, 0x0

    .line 314
    .local v9, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getSprites()[Lorg/loon/framework/android/game/action/sprite/ISprite;

    move-result-object v19

    .line 315
    .local v19, "ss":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_9

    .line 322
    :goto_4
    if-nez v9, :cond_0

    .line 323
    const-string v22, "snow"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-static {}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getSnowEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto/16 :goto_0

    .line 316
    :cond_9
    aget-object v16, v19, v10

    .line 317
    .local v16, "s":Lorg/loon/framework/android/game/action/sprite/ISprite;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 318
    const/4 v9, 0x1

    .line 319
    goto :goto_4

    .line 315
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 326
    .end local v16    # "s":Lorg/loon/framework/android/game/action/sprite/ISprite;
    :cond_b
    const-string v22, "rain"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-static {}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getRainEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto/16 :goto_0

    .line 329
    :cond_c
    const-string v22, "petal"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-static {}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getPetalEffect()Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto/16 :goto_0

    .line 336
    .end local v9    # "flag":Z
    .end local v10    # "i":I
    .end local v19    # "ss":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :cond_d
    const-string v22, "snowstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 337
    const-string v22, "rainstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 338
    const-string v22, "petalstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 339
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/Sprites;->getSprites()[Lorg/loon/framework/android/game/action/sprite/ISprite;

    move-result-object v19

    .line 341
    .restart local v19    # "ss":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    .line 342
    aget-object v16, v19, v10

    .line 343
    .restart local v16    # "s":Lorg/loon/framework/android/game/action/sprite/ISprite;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 345
    const-string v22, "snowstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 346
    move-object/from16 v0, v16

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getKernels()[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/effect/SnowKernel;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 341
    :cond_f
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 350
    :cond_10
    const-string v22, "rainstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 351
    move-object/from16 v0, v16

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getKernels()[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/effect/RainKernel;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto :goto_6

    .line 355
    :cond_11
    const-string v22, "petalstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 356
    move-object/from16 v0, v16

    check-cast v0, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/effect/FreedomEffect;->getKernels()[Lorg/loon/framework/android/game/action/sprite/effect/IKernel;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/loon/framework/android/game/action/sprite/effect/PetalKernel;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto :goto_6

    .line 366
    .end local v10    # "i":I
    .end local v16    # "s":Lorg/loon/framework/android/game/action/sprite/ISprite;
    .end local v19    # "ss":[Lorg/loon/framework/android/game/action/sprite/ISprite;
    :cond_12
    const-string v22, "play"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 367
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->playtAssetsMusic(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 370
    :cond_13
    const-string v22, "playloop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 371
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->playtAssetsMusic(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 374
    :cond_14
    const-string v22, "playstop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 375
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 376
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->stopAssetsMusic(I)V

    goto/16 :goto_0

    .line 378
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->stopAssetsMusic()V

    goto/16 :goto_0

    .line 382
    :cond_16
    const-string v22, "fadeout"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 383
    const-string v22, "fadein"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 384
    :cond_17
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 385
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 386
    .local v6, "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    const-string v22, "red"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 387
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 403
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/sprite/Sprites;->removeAll()V

    .line 405
    const-string v22, "fadein"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v0, v6}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getInstance(ILorg/loon/framework/android/game/core/graphics/LColor;)Lorg/loon/framework/android/game/action/sprite/effect/Fade;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto/16 :goto_0

    .line 388
    :cond_19
    const-string v22, "yellow"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 389
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->yellow:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 390
    :cond_1a
    const-string v22, "white"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 391
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 392
    :cond_1b
    const-string v22, "black"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 393
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 394
    :cond_1c
    const-string v22, "cyan"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 395
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->cyan:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 396
    :cond_1d
    const-string v22, "green"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 397
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->green:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 398
    :cond_1e
    const-string v22, "orange"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 399
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_7

    .line 400
    :cond_1f
    const-string v22, "pink"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 401
    sget-object v6, Lorg/loon/framework/android/game/core/graphics/LColor;->pink:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto/16 :goto_7

    .line 409
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v0, v6}, Lorg/loon/framework/android/game/action/sprite/effect/Fade;->getInstance(ILorg/loon/framework/android/game/core/graphics/LColor;)Lorg/loon/framework/android/game/action/sprite/effect/Fade;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/action/sprite/Sprites;->add(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    goto/16 :goto_0

    .line 415
    .end local v6    # "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    :cond_21
    const-string v22, "selleft"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 416
    if-eqz v12, :cond_0

    .line 417
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setLeftOffset(I)V

    goto/16 :goto_0

    .line 423
    :cond_22
    const-string v22, "seltop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 424
    if-eqz v12, :cond_0

    .line 425
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setTopOffset(I)V

    goto/16 :goto_0

    .line 431
    :cond_23
    const-string v22, "meslen"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 432
    if-eqz v12, :cond_0

    .line 433
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setMessageLength(I)V

    goto/16 :goto_0

    .line 439
    :cond_24
    const-string v22, "mestop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 440
    if-eqz v12, :cond_0

    .line 441
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setTopOffset(I)V

    goto/16 :goto_0

    .line 447
    :cond_25
    const-string v22, "mesleft"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 448
    if-eqz v12, :cond_0

    .line 449
    invoke-static {v12}, Lorg/loon/framework/android/game/utils/NumberUtils;->isNan(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setLeftOffset(I)V

    goto/16 :goto_0

    .line 455
    :cond_26
    const-string v22, "mescolor"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 456
    if-eqz v12, :cond_0

    .line 457
    const-string v22, "red"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 459
    :cond_27
    const-string v22, "yellow"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->yellow:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 461
    :cond_28
    const-string v22, "white"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 463
    :cond_29
    const-string v22, "black"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 465
    :cond_2a
    const-string v22, "cyan"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->cyan:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 467
    :cond_2b
    const-string v22, "green"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->green:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 469
    :cond_2c
    const-string v22, "orange"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 471
    :cond_2d
    const-string v22, "pink"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    sget-object v23, Lorg/loon/framework/android/game/core/graphics/LColor;->pink:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0

    .line 477
    :cond_2e
    const-string v22, "mes"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setVisible(Z)V

    .line 481
    :cond_2f
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 482
    move-object v13, v12

    .line 483
    .local v13, "nMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    const-string v23, "&"

    const-string v24, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v13, v0, v1}, Lorg/loon/framework/android/game/utils/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setMessage(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setVisible(Z)V

    goto/16 :goto_1

    .line 487
    .end local v13    # "nMessage":Ljava/lang/String;
    :cond_30
    const-string v22, "messtop"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 488
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setVisible(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setVisible(Z)V

    goto/16 :goto_0

    .line 493
    :cond_31
    const-string v22, "select"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_32

    .line 494
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->selectMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :cond_32
    const-string v22, "selects"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_33

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LMessage;->setVisible(Z)V

    .line 501
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setVisible(Z)V

    .line 502
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 503
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/avg/command/Command;->getReads()[Ljava/lang/String;

    move-result-object v17

    .line 505
    .local v17, "selects":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->select:Lorg/loon/framework/android/game/core/graphics/window/LSelect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->selectMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setMessage(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 508
    .end local v17    # "selects":[Ljava/lang/String;
    :cond_34
    const-string v22, "shake"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_35

    .line 509
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    goto/16 :goto_0

    .line 512
    :cond_35
    const-string v22, "cgwait"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 513
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    goto/16 :goto_1

    .line 516
    :cond_36
    const-string v22, "sleep"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_37

    .line 517
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    .line 518
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    .line 519
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    goto/16 :goto_1

    .line 522
    :cond_37
    const-string v22, "flash"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 523
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 524
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "colors":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    move-object/from16 v22, v0

    if-nez v22, :cond_38

    if-eqz v7, :cond_38

    array-length v0, v7

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_38

    .line 526
    new-instance v22, Lorg/loon/framework/android/game/core/graphics/LColor;

    const/16 v23, 0x0

    aget-object v23, v7, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 527
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 528
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x2

    aget-object v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    .line 529
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-direct/range {v22 .. v25}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    .line 526
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 530
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    .line 532
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    goto/16 :goto_0

    .line 534
    :cond_38
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto/16 :goto_0

    .line 538
    .end local v7    # "colors":[Ljava/lang/String;
    :cond_39
    const-string v22, "gb"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3b

    .line 540
    if-eqz v12, :cond_1

    .line 543
    const-string v22, "none"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/avg/CG;->noneBackgroundCG()V

    goto/16 :goto_0

    .line 546
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/loon/framework/android/game/action/avg/CG;->setBackgroundCG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_3b
    const-string v22, "cg"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_41

    .line 552
    if-eqz v12, :cond_1

    .line 555
    const-string v22, "del"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 556
    if-eqz v14, :cond_3c

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/loon/framework/android/game/action/avg/CG;->removeImage(Ljava/lang/String;)Lorg/loon/framework/android/game/action/avg/Chara;

    goto/16 :goto_0

    .line 559
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/loon/framework/android/game/action/avg/CG;->clear()V

    goto/16 :goto_0

    .line 561
    :cond_3d
    if-eqz v11, :cond_3e

    .line 562
    const-string v22, "to"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/loon/framework/android/game/action/avg/CG;->removeImage(Ljava/lang/String;)Lorg/loon/framework/android/game/action/avg/Chara;

    move-result-object v4

    .line 564
    .local v4, "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/avg/Chara;->getX()I

    move-result v20

    .line 566
    .local v20, "x":I
    invoke-virtual {v4}, Lorg/loon/framework/android/game/action/avg/Chara;->getY()I

    move-result v21

    .line 567
    .local v21, "y":I
    new-instance v4, Lorg/loon/framework/android/game/action/avg/Chara;

    .end local v4    # "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v4, v11, v0, v1, v2}, Lorg/loon/framework/android/game/action/avg/Chara;-><init>(Ljava/lang/String;III)V

    .line 568
    .restart local v4    # "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/loon/framework/android/game/action/avg/Chara;->setMove(Z)V

    .line 569
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/loon/framework/android/game/action/avg/Chara;->setX(I)V

    .line 570
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/loon/framework/android/game/action/avg/Chara;->setY(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v4}, Lorg/loon/framework/android/game/action/avg/CG;->addChara(Ljava/lang/String;Lorg/loon/framework/android/game/action/avg/Chara;)V

    goto/16 :goto_0

    .line 574
    .end local v4    # "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_3e
    const/16 v20, 0x0

    .restart local v20    # "x":I
    const/16 v21, 0x0

    .line 575
    .restart local v21    # "y":I
    if-eqz v14, :cond_3f

    .line 576
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 578
    :cond_3f
    const/16 v22, 0x4

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_40

    .line 579
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 581
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/loon/framework/android/game/action/avg/CG;->addImage(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 585
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_41
    const-string v22, "exit"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 586
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 587
    const-wide/16 v22, 0x3c

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->setFPS(J)V

    .line 588
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    .line 589
    invoke-virtual/range {p0 .. p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->onExit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public abstract nextScript(Ljava/lang/String;)Z
.end method

.method public abstract onExit()V
.end method

.method public abstract onSelect(Ljava/lang/String;I)V
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v10, 0x0

    .line 220
    iget-boolean v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    if-nez v6, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    if-nez v6, :cond_7

    .line 224
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    if-eqz v6, :cond_0

    .line 228
    :try_start_0
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getBackgroundCG()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 229
    iget v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    if-lez v6, :cond_4

    .line 230
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getBackgroundCG()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    iget v7, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    div-int/lit8 v7, v7, 0x2

    .line 231
    sget-object v8, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    iget v9, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 232
    iget v8, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    div-int/lit8 v8, v8, 0x2

    .line 233
    sget-object v9, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    iget v10, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->shakeNumber:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 232
    sub-int/2addr v8, v9

    .line 230
    invoke-interface {p1, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 238
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 239
    .local v4, "moveCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getCharas()Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 250
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->drawScreen(Ljavax/microedition/lcdui/Graphics;)V

    .line 251
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v6, :cond_3

    .line 252
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v6, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 254
    :cond_3
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v6, :cond_0

    .line 255
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v6, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    .line 257
    .end local v3    # "i":I
    .end local v4    # "moveCount":I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 235
    :cond_4
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getBackgroundCG()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    goto :goto_1

    .line 240
    .restart local v3    # "i":I
    .restart local v4    # "moveCount":I
    :cond_5
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getCharas()Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/action/avg/Chara;

    .line 241
    .local v2, "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 242
    .local v5, "value":F
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/avg/Chara;->next()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 243
    invoke-virtual {v2}, Lorg/loon/framework/android/game/action/avg/Chara;->getNextAlpha()F

    move-result v5

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 246
    :cond_6
    invoke-interface {p1, v5}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 247
    invoke-virtual {v2, p1}, Lorg/loon/framework/android/game/action/avg/Chara;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 248
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 260
    .end local v2    # "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    .end local v3    # "i":I
    .end local v4    # "moveCount":I
    .end local v5    # "value":F
    :cond_7
    iget v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    .line 261
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    if-eqz v6, :cond_0

    .line 262
    iget v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    iget v7, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 263
    .local v0, "alpha":F
    float-to-double v6, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 264
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getBackgroundCG()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 265
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/action/avg/CG;->getBackgroundCG()Ljavax/microedition/lcdui/Image;

    move-result-object v6

    invoke-interface {p1, v6, v10, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 267
    :cond_8
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 268
    .local v1, "c":Lorg/loon/framework/android/game/core/graphics/LColor;
    iget-object v6, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/core/graphics/LColor;->getRed()I

    move-result v6

    iget-object v7, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/LColor;->getGreen()I

    move-result v7

    iget-object v8, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 269
    invoke-virtual {v8}, Lorg/loon/framework/android/game/core/graphics/LColor;->getBlue()I

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    .line 268
    invoke-interface {p1, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setColor(IIII)V

    .line 270
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentWidth()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->getCurrentHeight()I

    move-result v7

    invoke-interface {p1, v10, v10, v6, v7}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 271
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    goto/16 :goto_0
.end method

.method public pointerMove(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 685
    return-void
.end method

.method public pointerPressed(DD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 688
    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v4, :cond_0

    .line 689
    iget-object v4, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getContentPane()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/loon/framework/android/game/core/graphics/LContainer;->getComponents()[Lorg/loon/framework/android/game/core/graphics/LComponent;

    move-result-object v1

    .line 690
    .local v1, "cs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 708
    .end local v1    # "cs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->click()V

    .line 709
    return-void

    .line 691
    .restart local v1    # "cs":[Lorg/loon/framework/android/game/core/graphics/LComponent;
    .restart local v2    # "i":I
    :cond_1
    aget-object v4, v1, v2

    instance-of v4, v4, Lorg/loon/framework/android/game/core/graphics/window/LButton;

    if-eqz v4, :cond_3

    .line 692
    aget-object v0, v1, v2

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/LButton;

    .line 693
    .local v0, "btn":Lorg/loon/framework/android/game/core/graphics/window/LButton;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 694
    double-to-int v4, p1

    double-to-int v5, p3

    invoke-virtual {v0, v4, v5}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->intersects(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 695
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/LButton;->doClick()V

    .line 690
    .end local v0    # "btn":Lorg/loon/framework/android/game/core/graphics/window/LButton;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_3
    aget-object v4, v1, v2

    instance-of v4, v4, Lorg/loon/framework/android/game/core/graphics/window/LPaper;

    if-eqz v4, :cond_2

    .line 699
    aget-object v3, v1, v2

    check-cast v3, Lorg/loon/framework/android/game/core/graphics/window/LPaper;

    .line 700
    .local v3, "paper":Lorg/loon/framework/android/game/core/graphics/window/LPaper;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    double-to-int v4, p1

    double-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->intersects(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/graphics/window/LPaper;->doClick()V

    goto :goto_1
.end method

.method public pointerReleased(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 713
    return-void
.end method

.method public remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/loon/framework/android/game/action/sprite/ISprite;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/sprite/Sprites;->remove(Lorg/loon/framework/android/game/action/sprite/ISprite;)Z

    .line 208
    return-void
.end method

.method public remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)V
    .locals 1
    .param p1, "comp"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Desktop;->remove(Lorg/loon/framework/android/game/core/graphics/LComponent;)I

    .line 212
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/Sprites;->removeAll()V

    .line 216
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Desktop;->getContentPane()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->clear()V

    .line 217
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 663
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->initAVG()V

    .line 664
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    if-nez v0, :cond_1

    .line 674
    return-void

    .line 665
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->repaint()V

    .line 666
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/avg/AVGScreen;->pause(J)V

    .line 667
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->desktop:Lorg/loon/framework/android/game/core/graphics/Desktop;

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/Desktop;->update(J)V

    .line 670
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sprites:Lorg/loon/framework/android/game/action/sprite/Sprites;

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/sprite/Sprites;->update(J)V

    goto :goto_0
.end method

.method public final select(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/avg/command/Command;->select(I)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->isSelectMessage:Z

    .line 180
    :cond_0
    return-void
.end method

.method public setCommand(Lorg/loon/framework/android/game/action/avg/command/Command;)V
    .locals 0
    .param p1, "command"    # Lorg/loon/framework/android/game/action/avg/command/Command;

    .prologue
    .line 796
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->command:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 797
    return-void
.end method

.method public setCommandGo(Z)V
    .locals 0
    .param p1, "commandGo"    # Z

    .prologue
    .line 828
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->commandGo:Z

    .line 829
    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 744
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    .line 745
    return-void
.end method

.method public setDialog(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "dialog"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 756
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    .line 757
    return-void
.end method

.method public setDialogImage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "dialog"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 724
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->dialog:Ljavax/microedition/lcdui/Image;

    .line 725
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 840
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->locked:Z

    .line 841
    return-void
.end method

.method public setMessage(Lorg/loon/framework/android/game/core/graphics/window/LMessage;)V
    .locals 0
    .param p1, "message"    # Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    .prologue
    .line 764
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->message:Lorg/loon/framework/android/game/core/graphics/window/LMessage;

    .line 765
    return-void
.end method

.method public setPause(I)V
    .locals 0
    .param p1, "pause"    # I

    .prologue
    .line 736
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->delay:I

    .line 737
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 772
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->running:Z

    .line 773
    return-void
.end method

.method public setScrCG(Lorg/loon/framework/android/game/action/avg/CG;)V
    .locals 0
    .param p1, "scrCG"    # Lorg/loon/framework/android/game/action/avg/CG;

    .prologue
    .line 780
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrCG:Lorg/loon/framework/android/game/action/avg/CG;

    .line 781
    return-void
.end method

.method public setScrFlag(Z)V
    .locals 0
    .param p1, "scrFlag"    # Z

    .prologue
    .line 832
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scrFlag:Z

    .line 833
    return-void
.end method

.method public setScriptName(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptName"    # Ljava/lang/String;

    .prologue
    .line 788
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->scriptName:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setSleep(I)V
    .locals 0
    .param p1, "sleep"    # I

    .prologue
    .line 812
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleep:I

    .line 813
    return-void
.end method

.method public setSleepMax(I)V
    .locals 0
    .param p1, "sleepMax"    # I

    .prologue
    .line 820
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/AVGScreen;->sleepMax:I

    .line 821
    return-void
.end method
