.class public Lorg/loon/framework/android/game/Android2DHandler;
.super Ljava/lang/Object;
.source "Android2DHandler.java"

# interfaces
.implements Lorg/loon/framework/android/game/IAndroid2DHandler;


# instance fields
.field private activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private asm:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

.field private context:Landroid/content/Context;

.field private currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

.field private height:I

.field private maxHeight:I

.field private maxWidth:I

.field private final screens:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/Screen;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;

.field private width:I

.field private window:Landroid/view/Window;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameAndroid2DView;ZLorg/loon/framework/android/game/Mode;)V
    .locals 5
    .param p1, "activity"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p2, "view"    # Lorg/loon/framework/android/game/LGameAndroid2DView;
    .param p3, "landscape"    # Z
    .param p4, "mode"    # Lorg/loon/framework/android/game/Mode;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/loon/framework/android/game/Android2DHandler;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 71
    if-eqz p3, :cond_1

    .line 73
    invoke-virtual {p1, v4}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setRequestedOrientation(I)V

    .line 79
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    .line 81
    invoke-virtual {p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->windowManager:Landroid/view/WindowManager;

    .line 82
    iput-object p2, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    .line 83
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    .line 85
    invoke-virtual {p0}, Lorg/loon/framework/android/game/Android2DHandler;->getScreenDimension()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    move-result-object v0

    .line 87
    .local v0, "d":Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    sput-boolean p3, Lorg/loon/framework/android/game/core/LSystem;->SCREEN_LANDSCAPE:Z

    .line 89
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    .line 90
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    .line 92
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 93
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    .line 94
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    .line 106
    :cond_0
    :goto_1
    if-eqz p3, :cond_5

    .line 112
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    .line 113
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    .line 124
    :goto_2
    sget-object v1, Lorg/loon/framework/android/game/Mode;->Fill:Lorg/loon/framework/android/game/Mode;

    if-ne p4, v1, :cond_6

    .line 125
    iget v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    .line 126
    iget v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    int-to-float v1, v1

    iget v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    .line 132
    :goto_3
    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    iget v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    iget v3, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    invoke-direct {v1, v4, v4, v2, v3}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;-><init>(IIII)V

    sput-object v1, Lorg/loon/framework/android/game/core/LSystem;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 134
    const-string v1, "Android2DSize"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 76
    .end local v0    # "d":Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 95
    .restart local v0    # "d":Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 96
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    .line 97
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    goto :goto_1

    .line 98
    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 99
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    .line 100
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    goto/16 :goto_1

    .line 101
    :cond_4
    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 102
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    .line 103
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    goto/16 :goto_1

    .line 120
    :cond_5
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    .line 121
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    iput v1, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    goto/16 :goto_2

    .line 128
    :cond_6
    sput v3, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    .line 129
    sput v3, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    goto/16 :goto_3
.end method


# virtual methods
.method public addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 2
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create a [Screen] instance !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->destroy()V

    .line 392
    :cond_0
    return-void
.end method

.method public getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->asm:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;->getInstance()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->asm:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->asm:Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentScreen()Lorg/loon/framework/android/game/core/graphics/Screen;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->height:I

    return v0
.end method

.method public getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->maxWidth:I

    return v0
.end method

.method public getScreenBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    return-object v0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getScreenDimension()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    .locals 6

    .prologue
    .line 164
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/loon/framework/android/game/Android2DHandler;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v3, v3

    .line 167
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;-><init>(IIII)V

    return-object v1
.end method

.method public getScreens()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->width:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public initScreen()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 178
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->window:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isScale()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 143
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget v0, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 398
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 367
    :goto_0
    return v0

    .line 364
    :catch_0
    move-exception v0

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/Screen;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 376
    :goto_0
    return v0

    .line 373
    :catch_0
    move-exception v0

    .line 376
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 433
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->onPause()V

    .line 410
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/Screen;->onResume()V

    .line 416
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 404
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 358
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->onTrackballEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 385
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runFirstScreen()V
    .locals 3

    .prologue
    .line 186
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 187
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 188
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eq v0, v2, :cond_0

    .line 190
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/Screen;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public runIndexScreen(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 234
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 235
    .local v1, "size":I
    if-lez v1, :cond_0

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    if-ge p1, v1, :cond_0

    .line 236
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eq v2, v0, :cond_0

    .line 238
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/Screen;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    .line 241
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public runLastScreen()V
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 197
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 198
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eq v0, v2, :cond_0

    .line 200
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/Screen;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public runNextScreen()V
    .locals 4

    .prologue
    .line 220
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 221
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 231
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 223
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    iget-object v3, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 224
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_2

    .line 225
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/Screen;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    goto :goto_1

    .line 222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public runPreviousScreen()V
    .locals 4

    .prologue
    .line 206
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 207
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 217
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 209
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    iget-object v3, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 210
    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 211
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/loon/framework/android/game/core/graphics/Screen;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    goto :goto_1

    .line 208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/Android2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V

    .line 260
    return-void
.end method

.method public setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;Z)V
    .locals 7
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;
    .param p2, "put"    # Z

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Cannot create a [Screen] instance !"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/loon/framework/android/game/core/graphics/Screen;->setOnLoadState(Z)V

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-nez v5, :cond_3

    .line 269
    sput-object p1, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    .line 270
    iput-object p1, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    .line 280
    :goto_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :try_start_1
    instance-of v5, p1, Lorg/loon/framework/android/game/core/EmulatorListener;

    if-eqz v5, :cond_5

    .line 282
    iget-object v5, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    instance-of v5, v5, Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v5, :cond_1

    .line 283
    iget-object v2, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    check-cast v2, Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 284
    .local v2, "l2d":Lorg/loon/framework/android/game/LGameAndroid2DView;
    invoke-virtual {v2}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update()V

    .line 285
    move-object v0, p1

    check-cast v0, Lorg/loon/framework/android/game/core/EmulatorListener;

    move-object v5, v0

    invoke-virtual {v2, v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 292
    .end local v2    # "l2d":Lorg/loon/framework/android/game/LGameAndroid2DView;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 294
    .local v3, "load":Ljava/lang/Thread;
    :try_start_2
    new-instance v4, Lorg/loon/framework/android/game/Android2DHandler$1;

    invoke-direct {v4, p0, p1}, Lorg/loon/framework/android/game/Android2DHandler$1;-><init>(Lorg/loon/framework/android/game/Android2DHandler;Lorg/loon/framework/android/game/core/graphics/Screen;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 306
    .end local v3    # "load":Ljava/lang/Thread;
    .local v4, "load":Ljava/lang/Thread;
    const/4 v5, 0x4

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 307
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 311
    const/4 v3, 0x0

    .line 313
    .end local v4    # "load":Ljava/lang/Thread;
    .restart local v3    # "load":Ljava/lang/Thread;
    :goto_2
    if-eqz p2, :cond_2

    .line 314
    :try_start_4
    iget-object v5, p0, Lorg/loon/framework/android/game/Android2DHandler;->screens:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 267
    :try_start_5
    monitor-exit p0

    .line 318
    return-void

    .line 272
    .end local v3    # "load":Ljava/lang/Thread;
    :cond_3
    sget-object v6, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    :try_start_6
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    if-eqz v5, :cond_4

    .line 274
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/Screen;->destroy()V

    .line 275
    sput-object p1, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    .line 276
    iput-object p1, p0, Lorg/loon/framework/android/game/Android2DHandler;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    .line 272
    :cond_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5

    .line 267
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 288
    :cond_5
    :try_start_8
    iget-object v5, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    instance-of v5, v5, Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lorg/loon/framework/android/game/Android2DHandler;->view:Landroid/view/View;

    check-cast v5, Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V

    goto :goto_1

    .line 280
    :catchall_2
    move-exception v5

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 308
    .restart local v3    # "load":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/Screen;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " onLoad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 311
    const/4 v3, 0x0

    goto :goto_2

    .line 310
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    .line 311
    :goto_4
    const/4 v3, 0x0

    .line 312
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 310
    .end local v3    # "load":Ljava/lang/Thread;
    .restart local v4    # "load":Ljava/lang/Thread;
    :catchall_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "load":Ljava/lang/Thread;
    .restart local v3    # "load":Ljava/lang/Thread;
    goto :goto_4

    .line 308
    .end local v3    # "load":Ljava/lang/Thread;
    .restart local v4    # "load":Ljava/lang/Thread;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "load":Ljava/lang/Thread;
    .restart local v3    # "load":Ljava/lang/Thread;
    goto :goto_3
.end method
