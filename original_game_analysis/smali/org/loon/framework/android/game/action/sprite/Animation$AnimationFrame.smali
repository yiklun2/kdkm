.class Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/sprite/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationFrame"
.end annotation


# instance fields
.field endTimer:J

.field image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

.field final synthetic this$0:Lorg/loon/framework/android/game/action/sprite/Animation;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/Animation;Lorg/loon/framework/android/game/action/sprite/SpriteImage;J)V
    .locals 0
    .param p2, "image"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p3, "endTimer"    # J

    .prologue
    .line 286
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->this$0:Lorg/loon/framework/android/game/action/sprite/Animation;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->image:Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    .line 285
    iput-wide p3, p0, Lorg/loon/framework/android/game/action/sprite/Animation$AnimationFrame;->endTimer:J

    return-void
.end method
