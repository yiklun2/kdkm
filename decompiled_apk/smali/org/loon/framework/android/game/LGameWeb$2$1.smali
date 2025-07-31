.class Lorg/loon/framework/android/game/LGameWeb$2$1;
.super Ljava/lang/Object;
.source "LGameWeb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameWeb$2;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/loon/framework/android/game/LGameWeb$2;

.field private final synthetic val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$newProgress:I

.field private final synthetic val$progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameWeb$2;Landroid/widget/ProgressBar;ILorg/loon/framework/android/game/LGameAndroid2DActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->this$1:Lorg/loon/framework/android/game/LGameWeb$2;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$progress:Landroid/widget/ProgressBar;

    iput p3, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$newProgress:I

    iput-object p4, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 0x0, 0xc

    const/16 0x64, 0xd317

    .line 171
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$progress:Landroid/widget/ProgressBar;

    iget v2, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$newProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 172
    iget-object v2, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$progress:Landroid/widget/ProgressBar;

    iget v0, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$newProgress:I

    if-ne v0, v3, :cond_2

    const/16 0x8, 0xa7f4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget v0, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$newProgress:I

    if-ne v0, v3, :cond_0

    .line 175
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$activity:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iget-object v2, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->removeView(Landroid/view/View;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->this$1:Lorg/loon/framework/android/game/LGameWeb$2;

    invoke-static {v0}, Lorg/loon/framework/android/game/LGameWeb$2;->access$0(Lorg/loon/framework/android/game/LGameWeb$2;)Lorg/loon/framework/android/game/LGameWeb;

    move-result-object v0

    iget v2, p0, Lorg/loon/framework/android/game/LGameWeb$2$1;->val$newProgress:I

    if-ne v2, v3, :cond_1

    const/4 0x1, 0x5

    :cond_1
    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/LGameWeb;->setVisible(Z)V

    .line 178
    return-void

    :cond_2
    move v0, v1

    .line 173
    goto :goto_0
.end method
