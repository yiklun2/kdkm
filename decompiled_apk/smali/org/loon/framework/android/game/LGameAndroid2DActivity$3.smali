.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;
.super Landroid/os/Handler;
.source "LGameAndroid2DActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameAndroid2DActivity;->initialization(ZLorg/loon/framework/android/game/Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstTime:Z

.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 328
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 329
    const/4 0x1, 0xc

    iput-boolean v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->firstTime:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 0x1, 0xb

    const/4 0x0, 0x9

    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3,, "ybt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, "vis":I
    if-nez v1, :cond_0

    .line 345
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v5}, Lcom/google/ads/AdView;->setEnabled(Z)V

    .line 355
    :goto_0
    if-nez v1, :cond_1

    .line 357
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v5}, Lcom/google/ads/AdView;->setFocusable(Z)V

    .line 359
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 0x0, 0xe

    const/high16 0x3f800000, 0xbd91    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 360
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 361
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 362
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 363
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_1
    iput-boolean v4, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->firstTime:Z

    .line 370
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    const/16 0x8, 0x1012

    invoke-virtual {v2, v3}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 351
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v4}, Lcom/google/ads/AdView;->setEnabled(Z)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$3;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    invoke-virtual {v2, v4}, Lcom/google/ads/AdView;->setFocusable(Z)V

    goto :goto_1
.end method
