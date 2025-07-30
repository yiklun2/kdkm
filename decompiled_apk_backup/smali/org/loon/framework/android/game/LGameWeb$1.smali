.class Lorg/loon/framework/android/game/LGameWeb$1;
.super Landroid/webkit/WebViewClient;
.source "LGameWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameWeb;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameWeb$WebProcess;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/LGameWeb;

.field private final synthetic val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameWeb;Lorg/loon/framework/android/game/LGameWeb$WebProcess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameWeb$1;->this$0:Lorg/loon/framework/android/game/LGameWeb;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    .line 131
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    invoke-interface {v0, p2}, Lorg/loon/framework/android/game/LGameWeb$WebProcess;->onLoadResource(Ljava/lang/String;)V

    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    invoke-interface {v0, p2}, Lorg/loon/framework/android/game/LGameWeb$WebProcess;->onPageFinished(Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    invoke-interface {v0, p2, p3}, Lorg/loon/framework/android/game/LGameWeb$WebProcess;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 137
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    invoke-interface {v0, p2, p3, p4}, Lorg/loon/framework/android/game/LGameWeb$WebProcess;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$1;->val$webProcess:Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    invoke-interface {v0, p2}, Lorg/loon/framework/android/game/LGameWeb$WebProcess;->shouldOverrideUrlLoading(Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
