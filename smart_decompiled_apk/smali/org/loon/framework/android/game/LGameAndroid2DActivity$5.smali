.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;
.super Ljava/lang/Object;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidTextInput(Lorg/loon/framework/android/game/core/LInput$TextListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$TextListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;->val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$5;->val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput$TextListener;->cancled()V

    .line 513
    return-void
.end method
