.class public abstract Lorg/loon/framework/android/game/LGameAndroid2DActivity;
.super Landroid/app/Activity;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public adObject:Lcom/google/ads/AdView;

.field public frameLayout:Landroid/widget/FrameLayout;

.field private gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

.field private gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

.field private isBackLocked:Z

.field private isDestroy:Z

.field private isLandscape:Z

.field private keyTimeMillis:J

.field private keyboardOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private orientation:I

.field private sensorAccelerometer:Landroid/hardware/Sensor;

.field private sensorMagnetic:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private setupSensors:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initSensors()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 237
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 236
    iput-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorAccelerometer:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 242
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 241
    iput-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorAccelerometer:Landroid/hardware/Sensor;

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorMagnetic:Landroid/hardware/Sensor;

    if-nez v1, :cond_2

    .line 247
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 248
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 247
    iput-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorMagnetic:Landroid/hardware/Sensor;

    .line 252
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 253
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    .line 252
    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 256
    .local v0, "accelSupported":Z
    if-nez v0, :cond_3

    .line 257
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 260
    :cond_3
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorMagnetic:Landroid/hardware/Sensor;

    .line 261
    const/4 v3, 0x1

    .line 260
    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "accelSupported":Z
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stopSensors()V
    .locals 1

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 444
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 447
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 639
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 640
    return-void
.end method

.method public addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "location"    # Lorg/loon/framework/android/game/Location;

    .prologue
    .line 625
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 628
    .local v1, "viewLayout":Landroid/widget/RelativeLayout;
    invoke-static {p4, p2, p3}, Lorg/loon/framework/android/game/core/LSystem;->createRelativeLayout(Lorg/loon/framework/android/game/Location;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 629
    .local v0, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;)V

    .line 631
    return-void
.end method

.method public addView(Landroid/view/View;Lorg/loon/framework/android/game/Location;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "location"    # Lorg/loon/framework/android/game/Location;

    .prologue
    const/4 v0, -0x2

    .line 614
    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V

    .line 616
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 819
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->finish()V

    .line 820
    return-void
.end method

.method public createAdView()V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v3, "a14f0660827ec95"

    invoke-direct {v0, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 128
    .local v0, "adView":Lcom/google/ads/AdView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 129
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 130
    sget-object v2, Lorg/loon/framework/android/game/Location;->LEFT:Lorg/loon/framework/android/game/Location;

    invoke-virtual {p0, v0, v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;Lorg/loon/framework/android/game/Location;)V

    .line 152
    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "adView":Lcom/google/ads/AdView;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "AD"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity$1;

    invoke-direct {v1, p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$1;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 208
    :cond_0
    return-void
.end method

.method public gameView()Lorg/loon/framework/android/game/LGameAndroid2DView;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    return-object v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->orientation:I

    return v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 706
    :try_start_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "packName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 711
    .end local v0    # "packName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 708
    :catch_0
    move-exception v1

    .line 711
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getScreenCount()I

    move-result v0

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 466
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getScreens()Ljava/util/LinkedList;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 2

    .prologue
    .line 733
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 734
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 735
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 737
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 721
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 722
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 724
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialization(Z)V
    .locals 1
    .param p1, "landscape"    # Z

    .prologue
    .line 286
    sget-object v0, Lorg/loon/framework/android/game/Mode;->Defalut:Lorg/loon/framework/android/game/Mode;

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->initialization(ZLorg/loon/framework/android/game/Mode;)V

    .line 287
    return-void
.end method

.method public initialization(ZLorg/loon/framework/android/game/Mode;)V
    .locals 5
    .param p1, "landscape"    # Z
    .param p2, "mode"    # Lorg/loon/framework/android/game/Mode;

    .prologue
    const/4 v3, -0x1

    .line 297
    if-nez p1, :cond_0

    .line 298
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    sget v2, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    if-le v1, v2, :cond_0

    .line 299
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    .line 300
    .local v0, "tmp_height":I
    sget v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    sput v1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    .line 301
    sput v0, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    .line 305
    .end local v0    # "tmp_height":I
    :cond_0
    new-instance v1, Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 306
    invoke-direct {v1, p0, p1, p2}, Lorg/loon/framework/android/game/LGameAndroid2DView;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;ZLorg/loon/framework/android/game/Mode;)V

    .line 305
    iput-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 309
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getGameHandler()Lorg/loon/framework/android/game/IAndroid2DHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    .line 311
    sget-object v1, Lorg/loon/framework/android/game/Mode;->Defalut:Lorg/loon/framework/android/game/Mode;

    if-ne p2, v1, :cond_3

    .line 313
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v2}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    .line 314
    invoke-interface {v3}, Lorg/loon/framework/android/game/IAndroid2DHandler;->getHeight()I

    move-result v3

    sget-object v4, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    .line 313
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V

    .line 323
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setupSensors:Z

    if-eqz v1, :cond_2

    .line 325
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->initSensors()V

    .line 328
    :cond_2
    new-instance v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;

    invoke-direct {v1, p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setHandler(Landroid/os/Handler;)V

    .line 372
    return-void

    .line 315
    :cond_3
    sget-object v1, Lorg/loon/framework/android/game/Mode;->Fill:Lorg/loon/framework/android/game/Mode;

    if-ne p2, v1, :cond_1

    .line 317
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 320
    sget-object v2, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    .line 317
    invoke-virtual {p0, v1, v3, v3, v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;IILorg/loon/framework/android/game/Location;)V

    goto :goto_0
.end method

.method public isBackLocked()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isBackLocked:Z

    return v0
.end method

.method public isDestroy()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isDestroy:Z

    return v0
.end method

.method public isKeyboardOpen()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->keyboardOpen:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isLandscape:Z

    return v0
.end method

.method public isShowLogo()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->isShowLogo()Z

    move-result v0

    .line 769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxScreen(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 674
    sput p1, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    .line 675
    sput p2, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    .line 676
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1, p2}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 1006
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 742
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->orientation:I

    .line 743
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->keyboardOpen:Z

    .line 744
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isLandscape:Z

    .line 745
    return-void

    :cond_0
    move v0, v2

    .line 743
    goto :goto_0

    :cond_1
    move v1, v2

    .line 744
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 95
    const-string v0, "Android2DActivity"

    const-string v1, "LGame 2D Engine Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isBackLocked:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isDestroy:Z

    .line 102
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->onMain()V

    .line 114
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->createAdView()V

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 976
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 977
    .local v0, "result":Z
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v1, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const/4 v0, 0x1

    .line 982
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 948
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setRunning(Z)V

    .line 950
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 953
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 955
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isDestroy:Z

    if-eqz v0, :cond_1

    .line 956
    const-string v0, "Android2DActivity"

    const-string v1, "LGame 2D Engine Shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_1
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 871
    .local v0, "curTime":J
    iget-wide v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->keyTimeMillis:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 872
    iput-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->keyTimeMillis:J

    .line 873
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v3, :cond_0

    .line 874
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    monitor-enter v3

    .line 875
    :try_start_0
    iget-boolean v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isBackLocked:Z

    if-nez v4, :cond_1

    .line 876
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 877
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->exit()V

    .line 878
    monitor-exit v3

    .line 898
    :cond_0
    :goto_0
    return v2

    .line 881
    :cond_1
    const/16 v4, 0x52

    if-eq p1, v4, :cond_2

    .line 882
    const/16 v4, 0x19

    if-eq p1, v4, :cond_2

    .line 883
    const/16 v4, 0x18

    if-ne p1, v4, :cond_3

    .line 884
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 874
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 886
    :cond_3
    :try_start_1
    iget-object v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v4, p1, p2}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 887
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 891
    :cond_4
    const-wide/16 v4, 0x10

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 894
    :goto_1
    :try_start_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 902
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    monitor-enter v1

    .line 904
    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    .line 905
    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    .line 906
    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    .line 907
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1

    .line 915
    :cond_1
    :goto_0
    return v0

    .line 909
    :cond_2
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v2, p1, p2}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 910
    monitor-exit v1

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 912
    :cond_3
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public abstract onMain()V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 986
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 987
    .local v0, "result":Z
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v1, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    const/4 v0, 0x1

    .line 992
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 996
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 997
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1000
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onPause()V

    .line 922
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setPaused(Z)V

    .line 925
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 926
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setupSensors:Z

    if-eqz v0, :cond_2

    .line 928
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->stopSensors()V

    .line 930
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onResume()V

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setPaused(Z)V

    .line 939
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 940
    iget-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setupSensors:Z

    if-eqz v0, :cond_2

    .line 942
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->initSensors()V

    .line 944
    :cond_2
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 1012
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 966
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setPaused(Z)V

    .line 969
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-nez v0, :cond_0

    .line 827
    :goto_0
    return v1

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 831
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    monitor-exit v1

    .line 836
    :goto_0
    return v0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 836
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 648
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 649
    return-void
.end method

.method public runFirstScreen()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runFirstScreen()V

    .line 398
    :cond_0
    return-void
.end method

.method public runIndexScreen(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runIndexScreen(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public runLastScreen()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runLastScreen()V

    .line 407
    :cond_0
    return-void
.end method

.method public runNextScreen()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runNextScreen()V

    .line 436
    :cond_0
    return-void
.end method

.method public runPreviousScreen()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0}, Lorg/loon/framework/android/game/IAndroid2DHandler;->runPreviousScreen()V

    .line 427
    :cond_0
    return-void
.end method

.method public sendSve(II)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "pos"    # I

    .prologue
    .line 375
    const-string v2, ""

    .line 377
    .local v2, "str":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "text"

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "viz"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 382
    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public setAD(Ljava/lang/String;)I
    .locals 4
    .param p1, "ad"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v2, 0x0

    .line 660
    .local v2, "result":I
    :try_start_0
    const-class v0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 661
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/loon/framework/android/game/LGameAndroid2DActivity;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 662
    .local v1, "field":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 663
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/loon/framework/android/game/LGameAndroid2DActivity;>;"
    .end local v1    # "field":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    return v3

    .line 665
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setBackLocked(Z)V
    .locals 0
    .param p1, "isBackLocked"    # Z

    .prologue
    .line 865
    iput-boolean p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isBackLocked:Z

    .line 866
    return-void
.end method

.method public setDestroy(Z)V
    .locals 1
    .param p1, "isDestroy"    # Z

    .prologue
    .line 849
    iput-boolean p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isDestroy:Z

    .line 850
    if-nez p1, :cond_0

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isBackLocked:Z

    .line 853
    :cond_0
    return-void
.end method

.method public setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V
    .locals 1
    .param p1, "emulator"    # Lorg/loon/framework/android/game/core/EmulatorListener;

    .prologue
    .line 760
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setEmulatorListener(Lorg/loon/framework/android/game/core/EmulatorListener;)V

    .line 763
    :cond_0
    return-void
.end method

.method public setFPS(J)V
    .locals 1
    .param p1, "frames"    # J

    .prologue
    .line 754
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setFPS(J)V

    .line 757
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 387
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->mHandler:Landroid/os/Handler;

    .line 388
    return-void
.end method

.method public setLogo(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 779
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setLogo(Ljavax/microedition/lcdui/Image;)V

    .line 782
    :cond_0
    return-void
.end method

.method public setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
    .locals 1
    .param p1, "screen"    # Lorg/loon/framework/android/game/core/graphics/Screen;

    .prologue
    .line 455
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameHandler:Lorg/loon/framework/android/game/IAndroid2DHandler;

    invoke-interface {v0, p1}, Lorg/loon/framework/android/game/IAndroid2DHandler;->setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V

    .line 458
    :cond_0
    return-void
.end method

.method public setShowFPS(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 748
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setShowFPS(Z)V

    .line 751
    :cond_0
    return-void
.end method

.method public setShowLogo(Z)V
    .locals 1
    .param p1, "showLogo"    # Z

    .prologue
    .line 773
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->gameView:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setShowLogo(Z)V

    .line 776
    :cond_0
    return-void
.end method

.method public setupAds()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity$2;

    invoke-direct {v1, p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$2;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setupGravity()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setupSensors:Z

    .line 231
    return-void
.end method

.method public showAndroidAlert(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$ClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 529
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 530
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 531
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 533
    const-string v1, "OK"

    .line 534
    new-instance v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;

    invoke-direct {v2, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$ClickListener;)V

    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 540
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showAndroidOpenHTML(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$ClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v1, Lorg/loon/framework/android/game/LGameWeb;

    invoke-direct {v1, p0, p3}, Lorg/loon/framework/android/game/LGameWeb;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Ljava/lang/String;)V

    .line 552
    .local v1, "web":Lorg/loon/framework/android/game/LGameWeb;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 557
    const-string v2, "Ok"

    .line 558
    new-instance v3, Lorg/loon/framework/android/game/LGameAndroid2DActivity$7;

    invoke-direct {v3, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$7;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$ClickListener;)V

    .line 557
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 563
    const-string v3, "Cancel"

    .line 564
    new-instance v4, Lorg/loon/framework/android/game/LGameAndroid2DActivity$8;

    invoke-direct {v4, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$8;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$ClickListener;)V

    .line 563
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 571
    return-void
.end method

.method public showAndroidSelect(Lorg/loon/framework/android/game/core/LInput$SelectListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$SelectListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # [Ljava/lang/String;

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 590
    new-instance v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity$9;

    invoke-direct {v2, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$9;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$SelectListener;)V

    .line 589
    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 597
    new-instance v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;

    invoke-direct {v2, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$SelectListener;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 603
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showAndroidTextInput(Lorg/loon/framework/android/game/core/LInput$TextListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/LInput$TextListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 497
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 501
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 502
    const-string v2, "Ok"

    .line 503
    new-instance v3, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;

    invoke-direct {v3, p0, p1, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$TextListener;Landroid/widget/EditText;)V

    .line 502
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    new-instance v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;

    invoke-direct {v2, p0, p1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$TextListener;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showScreen()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setContentView(Landroid/view/View;)V

    .line 684
    :try_start_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    goto :goto_0
.end method
