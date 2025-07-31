.class final Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;
.super Ljava/lang/Thread;
.source "LGameAndroid2DView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/LGameAndroid2DView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasThread"
.end annotation


# instance fields
.field private before:J

.field private currTimeMicros:J

.field private elapsedTime:J

.field private elapsedTimeMicros:J

.field private frameCount:J

.field private frames:J

.field private goalTimeMicros:J

.field private lastTimeMicros:J

.field private remainderMicros:J

.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DView;)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 566
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 567
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$0(Lorg/loon/framework/android/game/LGameAndroid2DView;Z)V

    .line 568
    const-string v0, "CanvasThread"

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private innerClock()J
    .locals 6

    .prologue
    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 642
    .local v0, "now":J
    iget-wide v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->before:J

    sub-long v2, v0, v4

    .line 643
    .local v2, "ret":J
    iput-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->before:J

    .line 644
    return-wide v2
.end method

.method private final pause(J)V
    .locals 1
    .param p1, "sleep"    # J

    .prologue
    .line 782
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showLogo()V
    .locals 15

    .prologue
    .line 575
    const/4 v8, 0x0

    .line 578
    .local v8, "number":I
    const/4 v1, 0x0

    .local v1, "cx":I
    const/4 v2, 0x0

    .line 581
    .local v2, "cy":I
    :try_start_0
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    if-nez v9, :cond_0

    .line 582
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 583
    const-string v10, "system/images/logo.png"

    const/4 v11, 0x1

    .line 582
    invoke-static {v10, v11}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadNotCacheImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$2(Lorg/loon/framework/android/game/LGameAndroid2DView;Ljavax/microedition/lcdui/Image;)V

    .line 585
    :cond_0
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 586
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 585
    sub-int v1, v9, v10

    .line 587
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 588
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    sub-int v2, v9, v10

    .line 592
    :goto_0
    const/4 v0, 0x0

    .line 593
    .local v0, "alpha":F
    const/4 v7, 0x1

    .line 594
    .local v7, "firstTime":Z
    :try_start_1
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->innerClock()J

    move-result-wide v5

    .line 595
    .local v5, "elapsed":J
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V

    .line 596
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v0, v9

    if-ltz v9, :cond_1

    .line 611
    :goto_2
    const/16 v9, 0xbb8

    if-lt v8, v9, :cond_4

    .line 615
    const/high16 v0, 0x3f800000    # 1.0f

    .line 616
    :goto_3
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-gtz v9, :cond_5

    .line 628
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v9, v10}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 629
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    sget-object v10, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v9, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 630
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 634
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$2(Lorg/loon/framework/android/game/LGameAndroid2DView;Ljavax/microedition/lcdui/Image;)V

    .line 635
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$3(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Canvas;)V

    .line 636
    const/4 v9, 0x0

    sput-boolean v9, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    .line 638
    .end local v0    # "alpha":F
    .end local v5    # "elapsed":J
    .end local v7    # "firstTime":Z
    :goto_4
    return-void

    .line 597
    .restart local v0    # "alpha":F
    .restart local v5    # "elapsed":J
    .restart local v7    # "firstTime":Z
    :cond_1
    :try_start_2
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/lcdui/Graphics;->drawClear()V

    .line 598
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    invoke-interface {v9, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 599
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-interface {v9, v10, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 600
    if-eqz v7, :cond_2

    .line 601
    const/4 v7, 0x0

    .line 603
    :cond_2
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->innerClock()J

    move-result-wide v5

    .line 604
    const-wide v9, 0x3f454c985f06f694L    # 6.5E-4

    long-to-double v11, v5

    mul-double v3, v9, v11

    .line 605
    .local v3, "delay":D
    const-wide v9, 0x3fcc28f5c28f5c29L    # 0.22

    cmpl-double v9, v3, v9

    if-lez v9, :cond_3

    .line 606
    const-wide v9, 0x3fcc28f5c28f5c29L    # 0.22

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    div-double v11, v3, v11

    add-double v3, v9, v11

    .line 608
    :cond_3
    float-to-double v9, v0

    add-double/2addr v9, v3

    double-to-float v0, v9

    .line 609
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 631
    .end local v0    # "alpha":F
    .end local v3    # "delay":D
    .end local v5    # "elapsed":J
    .end local v7    # "firstTime":Z
    :catch_0
    move-exception v9

    .line 633
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 634
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$2(Lorg/loon/framework/android/game/LGameAndroid2DView;Ljavax/microedition/lcdui/Image;)V

    .line 635
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$3(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Canvas;)V

    .line 636
    const/4 v9, 0x0

    sput-boolean v9, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    goto :goto_4

    .line 612
    .restart local v0    # "alpha":F
    .restart local v5    # "elapsed":J
    .restart local v7    # "firstTime":Z
    :cond_4
    int-to-long v9, v8

    :try_start_3
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->innerClock()J

    move-result-wide v11

    add-long/2addr v9, v11

    long-to-int v8, v9

    .line 613
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 632
    .end local v0    # "alpha":F
    .end local v5    # "elapsed":J
    .end local v7    # "firstTime":Z
    :catchall_0
    move-exception v9

    .line 633
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 634
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$2(Lorg/loon/framework/android/game/LGameAndroid2DView;Ljavax/microedition/lcdui/Image;)V

    .line 635
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$3(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Canvas;)V

    .line 636
    const/4 v10, 0x0

    sput-boolean v10, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    .line 637
    throw v9

    .line 617
    .restart local v0    # "alpha":F
    .restart local v5    # "elapsed":J
    .restart local v7    # "firstTime":Z
    :cond_5
    :try_start_4
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/lcdui/Graphics;->drawClear()V

    .line 618
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    invoke-interface {v9, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 619
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v9

    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$1(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    invoke-interface {v9, v10, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 620
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->innerClock()J

    move-result-wide v5

    .line 621
    const-wide v9, 0x3f4205bc01a36e2fL    # 5.5E-4

    long-to-double v11, v5

    mul-double v3, v9, v11

    .line 622
    .restart local v3    # "delay":D
    const-wide v9, 0x3fc3333333333333L    # 0.15

    cmpl-double v9, v3, v9

    if-lez v9, :cond_6

    .line 623
    const-wide v9, 0x3fc3333333333333L    # 0.15

    const-wide v11, 0x3fa47ae147ae147bL    # 0.04

    sub-double v11, v3, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double v3, v9, v11

    .line 625
    :cond_6
    float-to-double v9, v0

    sub-double/2addr v9, v3

    double-to-float v0, v9

    .line 626
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->update()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 589
    .end local v0    # "alpha":F
    .end local v3    # "delay":D
    .end local v5    # "elapsed":J
    .end local v7    # "firstTime":Z
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method private tickFrames()V
    .locals 7

    .prologue
    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 789
    .local v0, "time":J
    iget-wide v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frameCount:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 790
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    iget-object v3, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$9(Lorg/loon/framework/android/game/LGameAndroid2DView;)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frames:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$21(Lorg/loon/framework/android/game/LGameAndroid2DView;J)V

    .line 791
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frames:J

    .line 792
    iput-wide v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frameCount:J

    .line 794
    :cond_0
    iget-wide v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frames:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->frames:J

    .line 795
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 651
    sget-boolean v5, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    if-eqz v5, :cond_0

    .line 652
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->showLogo()V

    .line 654
    :cond_0
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$5(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/IAndroid2DHandler;

    move-result-object v5

    invoke-interface {v5}, Lorg/loon/framework/android/game/IAndroid2DHandler;->isScale()Z

    move-result v2

    .line 655
    .local v2, "isScale":Z
    if-eqz v2, :cond_2

    .line 656
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$6(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Paint;

    move-result-object v5

    if-nez v5, :cond_1

    .line 657
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v5, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$7(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Paint;)V

    .line 660
    :cond_1
    invoke-static {}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$8()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 661
    invoke-static {}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$8()Landroid/graphics/Matrix;

    move-result-object v5

    sget v6, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    sget v7, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 663
    :cond_2
    new-instance v4, Lorg/loon/framework/android/game/core/timer/LTimerContext;

    invoke-direct {v4}, Lorg/loon/framework/android/game/core/timer/LTimerContext;-><init>()V

    .line 664
    .local v4, "timerContext":Lorg/loon/framework/android/game/core/timer/LTimerContext;
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemTimer()Lorg/loon/framework/android/game/core/timer/SystemTimer;

    move-result-object v3

    .line 665
    .local v3, "timer":Lorg/loon/framework/android/game/core/timer/SystemTimer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 674
    .local v0, "currentThread":Ljava/lang/Thread;
    :cond_3
    :try_start_0
    sget-boolean v5, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_7

    .line 675
    :cond_4
    const-wide/16 v5, 0x1f4

    invoke-direct {p0, v5, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->pause(J)V

    .line 676
    invoke-virtual {v3}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->lastTimeMicros:J

    .line 677
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTime:J

    .line 678
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->remainderMicros:J

    .line 771
    :cond_5
    :goto_0
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$19(Lorg/loon/framework/android/game/LGameAndroid2DView;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$20(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    if-eq v5, v0, :cond_3

    .line 775
    :cond_6
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->destroyView()V

    .line 778
    :goto_1
    return-void

    .line 681
    :cond_7
    :try_start_1
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/core/graphics/Screen;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 684
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/loon/framework/android/game/core/graphics/Screen;->callEvents(Z)V

    .line 686
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->lastTimeMicros:J

    const-wide/32 v7, 0xf4240

    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$9(Lorg/loon/framework/android/game/LGameAndroid2DView;)J

    move-result-wide v9

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->goalTimeMicros:J

    .line 687
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->goalTimeMicros:J

    invoke-virtual {v3, v5, v6}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->sleepTimeMicros(J)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->currTimeMicros:J

    .line 688
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->currTimeMicros:J

    iget-wide v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->lastTimeMicros:J

    sub-long/2addr v5, v7

    .line 689
    iget-wide v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->remainderMicros:J

    add-long/2addr v5, v7

    .line 688
    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTimeMicros:J

    .line 690
    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTimeMicros:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTime:J

    .line 691
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTimeMicros:J

    iget-wide v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTime:J

    mul-long/2addr v7, v12

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->remainderMicros:J

    .line 692
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->currTimeMicros:J

    iput-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->lastTimeMicros:J

    .line 693
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->remainderMicros:J

    iput-wide v5, v4, Lorg/loon/framework/android/game/core/timer/LTimerContext;->millisSleepTime:J

    .line 694
    iget-wide v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->elapsedTime:J

    iput-wide v5, v4, Lorg/loon/framework/android/game/core/timer/LTimerContext;->timeSinceLastUpdate:J

    .line 696
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v5, v4}, Lorg/loon/framework/android/game/core/graphics/Screen;->runTimer(Lorg/loon/framework/android/game/core/timer/LTimerContext;)V

    .line 698
    sget-boolean v5, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    if-eqz v5, :cond_5

    .line 699
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$10(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$3(Lorg/loon/framework/android/game/LGameAndroid2DView;Landroid/graphics/Canvas;)V

    .line 700
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$6(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 701
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$6(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 702
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;

    move-result-object v5

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    iget-object v6, v6, Lorg/loon/framework/android/game/LGameAndroid2DView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 704
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 707
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$10(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/view/SurfaceHolder;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    if-eqz v2, :cond_b

    .line 709
    :try_start_2
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    invoke-interface {v5}, Ljavax/microedition/lcdui/Graphics;->resetFont()V

    .line 716
    :goto_2
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    invoke-interface {v5}, Ljavax/microedition/lcdui/Graphics;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 717
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    invoke-interface {v5}, Ljavax/microedition/lcdui/Graphics;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFlags(I)V

    .line 718
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    sget-object v7, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->getRepaintMode()I

    move-result v7

    invoke-static {v5, v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$12(Lorg/loon/framework/android/game/LGameAndroid2DView;I)V

    .line 719
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 730
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    sget-object v7, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 731
    iget-object v8, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v8}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 733
    sget-object v9, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    .line 734
    iget-object v10, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v10}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 731
    sub-int/2addr v8, v9

    .line 735
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 737
    sget-object v10, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    .line 738
    iget-object v11, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v11}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$13(Lorg/loon/framework/android/game/LGameAndroid2DView;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 735
    sub-int/2addr v9, v10

    .line 730
    invoke-interface {v5, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 741
    :goto_3
    :pswitch_0
    sget-object v5, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->createUI(Ljavax/microedition/lcdui/Graphics;)V

    .line 742
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$14(Lorg/loon/framework/android/game/LGameAndroid2DView;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 743
    invoke-direct {p0}, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->tickFrames()V

    .line 744
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    invoke-static {}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$15()Ljavax/microedition/lcdui/Font;

    move-result-object v7

    invoke-interface {v5, v7}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 745
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    sget-object v7, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {v5, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 746
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FPS:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v8}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$16(Lorg/loon/framework/android/game/LGameAndroid2DView;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const/16 v9, 0x14

    invoke-interface {v5, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 748
    :cond_8
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$17(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/core/EmulatorButtons;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 749
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$17(Lorg/loon/framework/android/game/LGameAndroid2DView;)Lorg/loon/framework/android/game/core/EmulatorButtons;

    move-result-object v5

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/loon/framework/android/game/core/EmulatorButtons;->draw(Ljavax/microedition/lcdui/Graphics;)V

    .line 752
    :cond_9
    if-eqz v2, :cond_a

    .line 759
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;

    move-result-object v5

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$18(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$8()Landroid/graphics/Matrix;

    move-result-object v8

    .line 760
    iget-object v9, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v9}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$6(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Paint;

    move-result-object v9

    .line 759
    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 707
    :cond_a
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    :try_start_3
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$10(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/view/SurfaceHolder;

    move-result-object v5

    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "Android2DView"

    const-string v6, "LGame 2D View Error :"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 775
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->destroyView()V

    goto/16 :goto_1

    .line 711
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_b
    :try_start_5
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    iget-object v7, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v7}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$11(Lorg/loon/framework/android/game/LGameAndroid2DView;)Landroid/graphics/Canvas;

    move-result-object v7

    invoke-interface {v5, v7}, Ljavax/microedition/lcdui/Graphics;->update(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 707
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 774
    :catchall_1
    move-exception v5

    .line 775
    iget-object v6, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-virtual {v6}, Lorg/loon/framework/android/game/LGameAndroid2DView;->destroyView()V

    .line 776
    throw v5

    .line 721
    :pswitch_1
    :try_start_7
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    sget-object v7, Lorg/loon/framework/android/game/LGameAndroid2DView;->currentControl:Lorg/loon/framework/android/game/core/graphics/Screen;

    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/graphics/Screen;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 722
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 721
    invoke-interface {v5, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_3

    .line 725
    :pswitch_2
    iget-object v5, p0, Lorg/loon/framework/android/game/LGameAndroid2DView$CanvasThread;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DView;

    invoke-static {v5}, Lorg/loon/framework/android/game/LGameAndroid2DView;->access$4(Lorg/loon/framework/android/game/LGameAndroid2DView;)Ljavax/microedition/lcdui/Graphics;

    move-result-object v5

    invoke-interface {v5}, Ljavax/microedition/lcdui/Graphics;->drawClear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 719
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
