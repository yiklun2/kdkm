.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;
.super Ljava/lang/Object;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$TextListener;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;->val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;

    iput-object p3, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;->val$input:Landroid/widget/EditText;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;->val$listener:Lorg/loon/framework/android/game/core/LInput$TextListener;

    iget-object v1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/LInput$TextListener;->input(Ljava/lang/String;)V

    .line 507
    return-void
.end method
