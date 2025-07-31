.class final Lorg/loon/framework/android/game/action/Actions$ActionElement;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionElement"
.end annotation


# instance fields
.field private actionIndex:I

.field private actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private currentAction:Lorg/loon/framework/android/game/action/ActionEvent;

.field private key:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field private paused:Z


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V
    .locals 2
    .param p1, "k"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "v"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->actions:Ljava/util/ArrayList;

    .line 201
    iput-object p1, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->key:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 202
    iput-boolean p2, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->paused:Z

    .line 203
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->key:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->actionIndex:I

    return v0
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/action/Actions$ActionElement;I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->actionIndex:I

    return-void
.end method

.method static synthetic access$4(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->paused:Z

    return v0
.end method

.method static synthetic access$5(Lorg/loon/framework/android/game/action/Actions$ActionElement;Lorg/loon/framework/android/game/action/ActionEvent;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->currentAction:Lorg/loon/framework/android/game/action/ActionEvent;

    return-void
.end method

.method static synthetic access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->currentAction:Lorg/loon/framework/android/game/action/ActionEvent;

    return-object v0
.end method

.method static synthetic access$7(Lorg/loon/framework/android/game/action/Actions$ActionElement;Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/Actions$ActionElement;->paused:Z

    return-void
.end method
