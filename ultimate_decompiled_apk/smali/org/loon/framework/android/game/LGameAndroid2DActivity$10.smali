.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;
.super Ljava/lang/Object;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidSelect(Lorg/loon/framework/android/game/core/LInput$SelectListener;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$listener:Lorg/loon/framework/android/game/core/LInput$SelectListener;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$SelectListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;->val$listener:Lorg/loon/framework/android/game/core/LInput$SelectListener;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 599
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$10;->val$listener:Lorg/loon/framework/android/game/core/LInput$SelectListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput$SelectListener;->cancled()V

    .line 600
    return-void
.end method
