.class Lorg/loon/framework/android/game/utils/AdUtils$3;
.super Ljava/lang/Object;
.source "AdUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/utils/AdUtils;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ad:Lcom/google/ads/AdView;


# direct methods
.method constructor <init>(Lcom/google/ads/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/AdUtils$3;->val$ad:Lcom/google/ads/AdView;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/AdUtils$3;->val$ad:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 148
    return-void
.end method
