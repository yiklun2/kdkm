.class Lorg/loon/framework/android/game/utils/AdUtils$2;
.super Ljava/lang/Object;
.source "AdUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/utils/AdUtils;->hideAd()V
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
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/AdUtils$2;->val$ad:Lcom/google/ads/AdView;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/AdUtils$2;->val$ad:Lcom/google/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 133
    return-void
.end method
