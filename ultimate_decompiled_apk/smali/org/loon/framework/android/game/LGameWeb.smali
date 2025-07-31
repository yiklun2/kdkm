.class public Lorg/loon/framework/android/game/LGameWeb;
.super Landroid/webkit/WebView;
.source "LGameWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/LGameWeb$JavaScript;,
        Lorg/loon/framework/android/game/LGameWeb$WebProcess;
    }
.end annotation


# instance fields
.field private activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private url:Ljava/lang/String;

.field private webSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/loon/framework/android/game/LGameWeb;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameWeb$WebProcess;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/loon/framework/android/game/LGameWeb$WebProcess;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "webProcess"    # Lorg/loon/framework/android/game/LGameWeb$WebProcess;

    .prologue
    .line 92
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    invoke-direct {p0, v0, p2, p1}, Lorg/loon/framework/android/game/LGameWeb;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameWeb$WebProcess;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/loon/framework/android/game/LGameWeb;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameWeb$WebProcess;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameWeb$WebProcess;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p2, "webProcess"    # Lorg/loon/framework/android/game/LGameWeb$WebProcess;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object p3, p0, Lorg/loon/framework/android/game/LGameWeb;->url:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameWeb;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 106
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/LGameWeb;->setHorizontalScrollBarEnabled(Z)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/loon/framework/android/game/LGameWeb;->clearCache(Z)V

    .line 110
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/LGameWeb;->setVisible(Z)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameWeb;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameWeb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    .line 116
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 118
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 119
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 121
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 125
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 127
    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 130
    if-eqz p2, :cond_0

    .line 131
    new-instance v1, Lorg/loon/framework/android/game/LGameWeb$1;

    invoke-direct {v1, p0, p2}, Lorg/loon/framework/android/game/LGameWeb$1;-><init>(Lorg/loon/framework/android/game/LGameWeb;Lorg/loon/framework/android/game/LGameWeb$WebProcess;)V

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameWeb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "progress":Landroid/widget/ProgressBar;
    sget-object v1, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    invoke-virtual {p1, v0, v1}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->addView(Landroid/view/View;Lorg/loon/framework/android/game/Location;)V

    .line 166
    new-instance v1, Lorg/loon/framework/android/game/LGameWeb$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/loon/framework/android/game/LGameWeb$2;-><init>(Lorg/loon/framework/android/game/LGameWeb;Landroid/widget/ProgressBar;Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameWeb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 184
    if-eqz p3, :cond_1

    .line 185
    invoke-virtual {p0, p3}, Lorg/loon/framework/android/game/LGameWeb;->loadUrl(Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void
.end method


# virtual methods
.method public addJavaScripts(Lorg/loon/framework/android/game/LGameWeb$JavaScript;)V
    .locals 2
    .param p1, "sprite"    # Lorg/loon/framework/android/game/LGameWeb$JavaScript;

    .prologue
    .line 240
    invoke-interface {p1}, Lorg/loon/framework/android/game/LGameWeb$JavaScript;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/loon/framework/android/game/LGameWeb$JavaScript;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/LGameWeb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public addJavaScripts([Lorg/loon/framework/android/game/LGameWeb$JavaScript;)V
    .locals 3
    .param p1, "sprites"    # [Lorg/loon/framework/android/game/LGameWeb$JavaScript;

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 232
    return-void

    .line 229
    :cond_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/loon/framework/android/game/LGameWeb$JavaScript;->getObject()Ljava/lang/Object;

    move-result-object v1

    aget-object v2, p1, v0

    .line 230
    invoke-interface {v2}, Lorg/loon/framework/android/game/LGameWeb$JavaScript;->getName()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v1, v2}, Lorg/loon/framework/android/game/LGameWeb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public callScriptFunction(Ljava/lang/String;)V
    .locals 2
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebParams(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameWeb;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/LGameWeb;->setTag(Ljava/lang/Object;)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameWeb;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 219
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getWebSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb;->webSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p1, v0, v1}, Lorg/loon/framework/android/game/LGameWeb;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "text/html"

    invoke-super {p0, p1, v0, p2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public loadIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameWeb;->loadUrl(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const-string v2, "ftp://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 270
    .local v1, "isURL":Z
    :goto_0
    if-nez v1, :cond_2

    .line 272
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameWeb;->activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 283
    :goto_1
    return-void

    .line 269
    .end local v1    # "isURL":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 275
    .restart local v1    # "isURL":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameWeb;->setVisibility(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameWeb;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWebParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameWeb;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 199
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 200
    .restart local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/LGameWeb;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/LGameWeb;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/Hashtable;

    .restart local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method
