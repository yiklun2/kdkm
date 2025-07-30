.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$2;
.super Ljava/lang/Object;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setupAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$2;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$2;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v0, v0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->adObject:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 224
    return-void
.end method
