.class public Lorg/loon/framework/android/game/utils/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field private static adObject:Ljava/lang/Object; = null

.field private static final dealutKeywords:Ljava/lang/String; = "game play video mobile app buy love down world blog wiki"

.field private static isAdJarExist:Z

.field private static layout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    const/4 v2, 0x1

    sput-boolean v2, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z

    .line 51
    :try_start_0
    const-string v2, "com.admob.android.ads.AdView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 53
    const/4 v2, 0x0

    sput-boolean v2, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v3, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    return-void
.end method

.method public static createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;I)V
    .locals 2
    .param p0, "context"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p1, "lad"    # Lorg/loon/framework/android/game/Location;
    .param p2, "requestInterval"    # I

    .prologue
    .line 62
    const-string v0, "game play video mobile app buy love down world blog wiki"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lorg/loon/framework/android/game/utils/AdUtils;->createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;ILcom/google/ads/AdListener;)V

    .line 63
    return-void
.end method

.method public static createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;ILcom/google/ads/AdListener;)V
    .locals 1
    .param p0, "context"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p1, "lad"    # Lorg/loon/framework/android/game/Location;
    .param p2, "requestInterval"    # I
    .param p3, "listener"    # Lcom/google/ads/AdListener;

    .prologue
    .line 68
    const-string v0, "game play video mobile app buy love down world blog wiki"

    invoke-static {p0, p1, v0, p2, p3}, Lorg/loon/framework/android/game/utils/AdUtils;->createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;ILcom/google/ads/AdListener;)V

    .line 69
    return-void
.end method

.method public static createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p1, "lad"    # Lorg/loon/framework/android/game/Location;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "requestInterval"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/loon/framework/android/game/utils/AdUtils;->createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;ILcom/google/ads/AdListener;)V

    .line 74
    return-void
.end method

.method public static createAdView(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/Location;Ljava/lang/String;ILcom/google/ads/AdListener;)V
    .locals 1
    .param p0, "context"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p1, "lad"    # Lorg/loon/framework/android/game/Location;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "requestInterval"    # I
    .param p4, "listener"    # Lcom/google/ads/AdListener;

    .prologue
    .line 80
    sget-boolean v0, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/loon/framework/android/game/utils/AdUtils$1;

    invoke-direct {v0, p0, p4, p2}, Lorg/loon/framework/android/game/utils/AdUtils$1;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lcom/google/ads/AdListener;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/loon/framework/android/game/core/LSystem;->thread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getAdViewObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static hideAd()V
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/ads/AdView;

    if-eqz v1, :cond_0

    .line 128
    sget-object v0, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/AdView;

    .line 129
    .local v0, "ad":Lcom/google/ads/AdView;
    invoke-virtual {v0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lorg/loon/framework/android/game/utils/AdUtils$2;

    invoke-direct {v1, v0}, Lorg/loon/framework/android/game/utils/AdUtils$2;-><init>(Lcom/google/ads/AdView;)V

    invoke-static {v1}, Lorg/loon/framework/android/game/core/LSystem;->post(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static isAdJarExist()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z

    return v0
.end method

.method public static setAdJarExist(Z)V
    .locals 0
    .param p0, "isAdJarExist"    # Z

    .prologue
    .line 173
    sput-boolean p0, Lorg/loon/framework/android/game/utils/AdUtils;->isAdJarExist:Z

    .line 174
    return-void
.end method

.method public static setInterstitialPublisherId(Ljava/lang/String;)V
    .locals 0
    .param p0, "publisherId"    # Ljava/lang/String;

    .prologue
    .line 166
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .locals 0
    .param p0, "publisherId"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method public static showAd()V
    .locals 3

    .prologue
    .line 141
    sget-object v1, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/ads/AdView;

    if-eqz v1, :cond_0

    .line 143
    sget-object v0, Lorg/loon/framework/android/game/utils/AdUtils;->adObject:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/AdView;

    .line 144
    .local v0, "ad":Lcom/google/ads/AdView;
    invoke-virtual {v0}, Lcom/google/ads/AdView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 145
    new-instance v1, Lorg/loon/framework/android/game/utils/AdUtils$3;

    invoke-direct {v1, v0}, Lorg/loon/framework/android/game/utils/AdUtils$3;-><init>(Lcom/google/ads/AdView;)V

    invoke-static {v1}, Lorg/loon/framework/android/game/core/LSystem;->post(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    return-void
.end method
