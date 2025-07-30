.class Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;
.super Ljava/lang/Object;
.source "LGameAndroid2DActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/LGameAndroid2DActivity;->showAndroidAlert(Lorg/loon/framework/android/game/core/LInput$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

.field private final synthetic val$listener:Lorg/loon/framework/android/game/core/LInput$ClickListener;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/core/LInput$ClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;->this$0:Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    iput-object p2, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;->val$listener:Lorg/loon/framework/android/game/core/LInput$ClickListener;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lorg/loon/framework/android/game/LGameAndroid2DActivity$6;->val$listener:Lorg/loon/framework/android/game/core/LInput$ClickListener;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput$ClickListener;->clicked()V

    .line 538
    return-void
.end method
