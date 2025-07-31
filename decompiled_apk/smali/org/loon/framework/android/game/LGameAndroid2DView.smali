.class public Lorg/loon/framework/android/game/LGameAndroid2DView;
.super Landroid/view/SurfaceView;
.source "LGameAndroid2DView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/loon/framework/android/game/Android2DSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;
    }
.end annotation


# static fields
.field protected static currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

.field private static final fpsFont:Ljavax/microedition/lcdui/Font;

.field private static final tmp_matrix:Landroid/graphics/Matrix;


# instance fields
.field private activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private canvas:Landroid/graphics/Canvas;

.field public canvasImage:Ljavax/microedition/lcdui/Image;

.field private curFPS:J

.field private currentScreen:Landroid/graphics/Bitmap;

.field drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private drawPriority:I

.field drawable:Landroid/graphics/drawable/Drawable;

.field private emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

.field private emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

.field private gl:Ljavax/microedition/lcdui/Graphics;

.field private handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

.field private height:I

.field private isFPS:Z

.field private isRunning:Z

.field private volatile logo:Ljavax/microedition/lcdui/Image;

.field private mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

.field private maxFrames:J

.field private repaintMode:I

.field private resizePaint:Landroid/graphics/Paint;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    .line 58
    const-string v0,, "y6YQavRvQ4"

    const/4 0x0, 0x2

    const/16 0x14, 0xa1b5

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    .line 57
    sput-object v0, Lorg/loon/framework/android/game/LGameAndroid2DView;->fpsFont:Ljavax/microedition/lcdui/Font;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;ZLorg/loon/framework/android/game/Mode;)V
    .locals 3
    .param p1, "activity"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p2, "isLandscape"    # Z
    .param p3, "mode"    # Lorg/loon/framework/android/game/Mode;

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 557
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 558
    const/4 0x0, 0x1

    const/4 0x3, 0xb

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 98
    :try_start_0
    invoke-static {p1, p0, p2, p3}, Lorg/loon/framework/android/game/core/LSystem;->setupHandler(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameAndroid2DView;ZLorg/loon/framework/android/game/Mode;)V

    .line 99
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/IAndroid2DHandler;

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    .line 100
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->initScreen()V

    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 102
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setFPS(J)V

    .line 103
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->createScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/LGameAndroid2DView;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    return-void
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->logo:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method static synthetic access$10(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$12(Lorg/loon/framework/android/game/LGameAndroid2DView;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->repaintMode:I

    return-void
.end method

.method static synthetic access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->repaintMode:I

    return v0
.end method

.method static synthetic access$14(Lorg/loon/framework/android/game/LGameAndroid2DView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isFPS:Z

    return v0
.end method

.method static synthetic access$15()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/loon/framework/android/game/LGameAndroid2DView;->fpsFont:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method static synthetic access$16(Lorg/loon/framework/android/game/LGameAndroid2DView;)J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->curFPS:J

    return-wide v0
.end method

.method static synthetic access$17(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/core/EmulatorButtons;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    return-object v0
.end method

.method static synthetic access$18(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentScreen:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$19(Lorg/loon/framework/android/game/LGameAndroid2DView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    return v0
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/LGameAndroid2DView;Ljavax/microedition/lcdui/Image;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->logo:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method static synthetic access$20(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    return-object v0
.end method

.method static synthetic access$21(Lorg/loon/framework/android/game/LGameAndroid2DView;J)V
    .locals 0

    .prologue
    .line 64
    iput-wide p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->curFPS:J

    return-void
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method static synthetic access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->gl:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method static synthetic access$5(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/IAndroid2DHandler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    return-object v0
.end method

.method static synthetic access$6(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$7(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$8()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$9(Lorg/loon/framework/android/game/LGameAndroid2DView;)J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->maxFrames:J

    return-wide v0
.end method

.method private createScreen()V
    .locals 8

    .prologue
    const/4 0x1, 0xb

    const/4 0x0, 0xc

    .line 122
    new-instance v3, Ljavax/microedition/lcdui/Image;

    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v4}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getWidth()I

    move-result v4

    iput v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    .line 123
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v5}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getHeight()I

    move-result v5

    iput v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    invoke-direct {v3, v4, v5, v6}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    .line 122
    iput-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvasImage:Ljavax/microedition/lcdui/Image;

    .line 124
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvasImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->gl:Ljavax/microedition/lcdui/Graphics;

    .line 125
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvasImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentScreen:Landroid/graphics/Bitmap;

    .line 126
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isLowerVer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 128
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    :goto_0
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setClickable(Z)V

    .line 160
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setFocusable(Z)V

    .line 161
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setFocusableInTouchMode(Z)V

    .line 162
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setKeepScreenOn(Z)V

    .line 163
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setLongClickable(Z)V

    .line 164
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->destroyDrawingCache()V

    .line 165
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setDrawingCacheBackgroundColor(I)V

    .line 166
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setDrawingCacheEnabled(Z)V

    .line 167
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isHTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setWillNotCacheDrawing(Z)V

    .line 169
    invoke-virtual {p0, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setWillNotDraw(Z)V

    .line 174
    :goto_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->requestFocus()Z

    .line 175
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->requestFocusFromTouch()Z

    .line 176
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 131
    const/4 0x0, 0x9

    .line 133
    .local v2, "mode":I
    const/4 0x1, 0x9

    .line 134
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 135
    const/4 0x1, 0x7

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 154
    const-string v3,, "5Ct6GhcA4tVJY"

    const-string v4,, "WlAW99TWbAq7gINkv5VG1OOSPMgKp3Wbhn"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_3
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 157
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 0x4, 0x6

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const/4 0x2, 0x6

    .line 139
    :try_start_1
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 140
    const/4 0x2, 0x4

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 143
    invoke-interface {v3, v6}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_2

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :pswitch_0
    const-string v3,, "pS1RBHBSuha0v"

    const-string v4,, "upd1chwNd6v6uXx4"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 151
    :pswitch_1
    const-string v3,, "hb85LkzL5XU9P"

    const-string v4,, "Gr8PJCSeRhk"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 171
    .end local v2    # "mode":I
    :cond_1
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setWillNotCacheDrawing(Z)V

    .line 172
    invoke-virtual {p0, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setWillNotDraw(Z)V

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 948
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 950
    const/4 0x0, 0x6

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 952
    :cond_0
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->stopThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 0x0, 0xc

    .line 801
    move-object v0, p0

    .line 803
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 805
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 807
    .local v4, "height":I
    move v8, p1

    .line 809
    .local v8, "newWidth":I
    move v7, p2

    .line 821
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 823
    .local v11, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 827
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 831
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 841
    const/4 0x1, 0x3

    move v2, v1

    .line 839
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 847
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private stopThread()V
    .locals 2

    .prologue
    .line 929
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    if-eqz v1, :cond_0

    .line 930
    const/4 0x1, 0x6

    .line 931
    .local v0, "result":Z
    const/4 0x0, 0x4

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setRunning(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    if-nez v0, :cond_1

    .line 944
    .end local v0    # "result":Z
    :cond_0
    :goto_1
    return-void

    .line 934
    .restart local v0    # "result":Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 935
    const/4 0x0, 0x2

    goto :goto_0

    .line 941
    .end local v0    # "result":Z
    :catch_0
    move-exception v1

    goto :goto_1

    .line 936
    .restart local v0    # "result":Z
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public destroyView()V
    .locals 1

    .prologue
    .line 243
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->stopSoundAll()V

    .line 245
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->destroy()V

    .line 246
    invoke-static {}, Lorg/loon/framework/android/game/action/ActionControl;->getInstance()Lorg/loon/framework/android/game/action/ActionControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionControl;->stopAll()V

    .line 247
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->destroy()V

    .line 248
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->releaseResources()V

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit p0

    .line 253
    :goto_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getAndroid2DBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "bit":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 233
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentScreen:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final getAndroid2DImage()Ljavax/microedition/lcdui/Image;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getAndroid2DBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getCurrentFPS()J
    .locals 2

    .prologue
    .line 879
    iget-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->curFPS:J

    return-wide v0
.end method

.method public getDrawPriority()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawPriority:I

    return v0
.end method

.method public getEmulatorButtons()Lorg/loon/framework/android/game/core/EmulatorButtons;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    return-object v0
.end method

.method public getEmulatorListener()Lorg/loon/framework/android/game/core/EmulatorListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    return-object v0
.end method

.method public getGameHandler()Lorg/loon/framework/android/game/IAndroid2DHandler;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    return-object v0
.end method

.method public getLGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->gl:Ljavax/microedition/lcdui/Graphics;

    return-object v0
.end method

.method public getLogo()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->logo:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getMainLoop()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    return-object v0
.end method

.method public getMaxFPS()J
    .locals 2

    .prologue
    .line 875
    iget-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->maxFrames:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    return v0
.end method

.method public isShowLogo()Z
    .locals 1

    .prologue
    .line 851
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 976
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->onEmulatorButtonEvent(Landroid/view/MotionEvent;)V

    .line 980
    :cond_0
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    const/4 0x1, 0xe

    return v0

    .line 981
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDrawPriority(I)V
    .locals 1
    .param p1, "drawPriority"    # I

    .prologue
    .line 963
    if-ltz p1, :cond_0

    const/16 0xa, 0x00cb

    if-gt p1, v0, :cond_0

    .line 964
    iput p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawPriority:I

    .line 965
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    if-eqz v0, :cond_0

    .line 967
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    .locals 4
    .param p1, "emulator"    # Lorg/loon/framework/android/game/core/EmulatorListener;

    .prologue
    .line 193
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    .line 194
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorListener:Lorg/loon/framework/android/game/core/EmulatorListener;

    iget v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    .line 197
    iget v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    invoke-direct {v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/EmulatorButtons;-><init>(Lorg/loon/framework/android/game/core/EmulatorListener;II)V

    .line 196
    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/EmulatorButtons;->setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 0x0, 0x1

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    goto :goto_0
.end method

.method public setFPS(J)V
    .locals 0
    .param p1, "frames"    # J

    .prologue
    .line 871
    iput-wide p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->maxFrames:J

    .line 872
    return-void
.end method

.method public setLogo(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 859
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->logo:Ljavax/microedition/lcdui/Image;

    .line 860
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 109
    sput-boolean p1, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    .line 110
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 891
    iput-boolean p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    .line 892
    return-void
.end method

.method public setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 226
    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0
    .param p1, "isFPS"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isFPS:Z

    .line 884
    return-void
.end method

.method public setShowLogo(Z)V
    .locals 0
    .param p1, "showLogo"    # Z

    .prologue
    .line 855
    sput-boolean p1, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    .line 856
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 896
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 900
    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v0, :cond_0

    .line 901
    const/4 0x1, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setRunning(Z)V

    .line 902
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DView;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    .line 904
    const/4 0x5, 0xc

    iput v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawPriority:I

    .line 905
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    iget v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawPriority:I

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->setPriority(I)V

    .line 906
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 916
    :try_start_0
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;

    if-eqz v0, :cond_0

    .line 918
    const/4 0x0, 0x2

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setRunning(Z)V

    .line 919
    const/4 0x0, 0xc

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->mainLoop:Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 261
    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 265
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 266
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    if-eqz v0, :cond_2

    .line 267
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentScreen:Landroid/graphics/Bitmap;

    const/4 0x0, 0xb

    const/4 0x0, 0xf

    const/4 0x0, 0xb

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 271
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 272
    :try_start_5
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->gl:Ljavax/microedition/lcdui/Graphics;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v2}, Ljavax/microedition/lcdui/Graphics;->update(Landroid/graphics/Canvas;)V

    .line 271
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public update(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    .line 343
    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 350
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    const/4 0x0, 0x2

    const/4 0x0, 0xf

    const/4 0x0, 0x3

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 351
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :try_start_2
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public update(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 392
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    iget v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, p3, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 395
    const/4 0x0, 0xe

    .line 394
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 393
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public update(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public updateFull(Landroid/graphics/Bitmap;II)V
    .locals 9
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 0x1, 0xe

    .line 426
    iget-boolean v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v4, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-eqz p1, :cond_0

    .line 432
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    iput-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 434
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 435
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    .line 436
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 440
    :cond_2
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 443
    .local v1, "nw":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 455
    .local v0, "nh":I
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->handler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v4}, Lorg/loon/framework/android/game/IAndroid2DHandler;->isScale()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    int-to-float v4, p2

    sget v5, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    mul-float/2addr v4, v5

    float-to-int p2, v4

    iput p2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    .line 457
    int-to-float v4, p3

    sget v5, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    mul-float/2addr v4, v5

    float-to-int p3, v4

    iput p3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    .line 460
    :cond_3
    if-ne v1, p2, :cond_5

    if-ne v0, p3, :cond_5

    .line 462
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v5

    .line 463
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    iget v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, p2, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    div-int/lit8 v7, v7, 0x2

    .line 464
    div-int/lit8 v8, p3, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 0x0, 0xc

    .line 463
    invoke-virtual {v4, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 465
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v4, :cond_4

    .line 466
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v6}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 462
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 474
    :cond_5
    int-to-float v4, p2

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 475
    .local v3, "scaleWidth":F
    int-to-float v4, p3

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 476
    .local v2, "scaleHeight":F
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 477
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 478
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, p3, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 479
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v5

    .line 480
    :try_start_2
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    const/4 0x1, 0x8

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 481
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    sget-object v6, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 482
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    const/4 0x0, 0x7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 483
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v4, :cond_6

    .line 484
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v6}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :cond_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 487
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 479
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public updateFull(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->updateFull(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public updateLocation(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 290
    :try_start_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    if-eqz p1, :cond_0

    .line 296
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 297
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 0x0, 0xb

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 298
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public updateLocation(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->updateLocation(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public updateResize(Landroid/graphics/Bitmap;II)V
    .locals 8
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 527
    iget-boolean v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->isRunning:Z

    if-nez v4, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    if-eqz p1, :cond_0

    .line 533
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    iput-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    .line 534
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_0

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 536
    .local v1, "nw":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 537
    .local v0, "nh":I
    int-to-float v4, p2

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 538
    .local v3, "scaleWidth":F
    int-to-float v4, p3

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 539
    .local v2, "scaleHeight":F
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 540
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 541
    sget-object v4, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->width:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->height:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, p3, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 542
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v5

    .line 543
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 544
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    .line 546
    :cond_2
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    const/4 0x1, 0xf

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 547
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    sget-object v6, Lorg/loon/framework/android/game/LGameAndroid2DView;->tmp_matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p1, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 548
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->resizePaint:Landroid/graphics/Paint;

    const/4 0x0, 0x4

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 549
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    if-eqz v4, :cond_3

    .line 550
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->emulatorButtons:Lorg/loon/framework/android/game/core/EmulatorButtons;

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v6}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Landroid/graphics/Canvas;)V

    .line 542
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public updateResize(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->updateResize(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method
