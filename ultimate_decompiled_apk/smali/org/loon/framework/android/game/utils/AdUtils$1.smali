.class Lorg/loon/framework/android/game/utils/AdUtils$1;
.super Ljava/lang/Object;
.source "AdUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/utils/AdUtils;->createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;ILcom/google/ads/AdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$keywords:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/google/ads/AdListener;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lcom/google/ads/AdListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$context:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iput-object p2, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$listener:Lcom/google/ads/AdListener;

    iput-object p3, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$keywords:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->isEmulator()Z

    .line 97
    new-instance v0, Lcom/google/ads/AdView;

    iget-object v2, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$context:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14f0660827ec95"

    invoke-direct {v0, v2, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 98
    .local v0, "adview":Lcom/google/ads/AdView;
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$listener:Lcom/google/ads/AdListener;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$listener:Lcom/google/ads/AdListener;

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 105
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setGravity(I)V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/AdUtils$1;->val$context:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, v2, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/AdUtils;->access$0(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "adview":Lcom/google/ads/AdView;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "AD"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
