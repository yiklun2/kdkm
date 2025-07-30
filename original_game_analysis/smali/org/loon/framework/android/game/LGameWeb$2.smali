.class Lorg/loon/framework/android/game/LGameWeb$2;
.super Landroid/webkit/WebChromeClient;
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

.field private final synthetic val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameWeb;Landroid/widget/ProgressBar;Lorg/loon/framework/android/game/LGameAndroid2DActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameWeb$2;->this$0:Lorg/loon/framework/android/game/LGameWeb;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameWeb$2;->val$progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lorg/loon/framework/android/game/LGameWeb$2;->val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 166
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/LGameWeb$2;)Lorg/loon/framework/android/game/LGameWeb;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$2;->this$0:Lorg/loon/framework/android/game/LGameWeb;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 169
    new-instance v0, Lorg/loon/framework/android/game/LGameWeb$2$1;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameWeb$2;->val$progress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameWeb$2;->val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    invoke-direct {v0, p0, v1, p2, v2}, Lorg/loon/framework/android/game/LGameWeb$2$1;-><init>(Lorg/loon/framework/android/game/LGameWeb$2;Landroid/widget/ProgressBar;ILorg/loon/framework/android/game/LGameAndroid2DActivity;)V

    invoke-static {v0}, Lorg/loon/framework/android/game/core/LSystem;->post(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
