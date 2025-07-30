.class public final Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
.super Ljava/lang/Object;
.source "ActorNode.java"


# instance fields
.field private actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field private mark:Z

.field private next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

.field private node:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

.field private prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;)V
    .locals 2
    .param p1, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p2, "node"    # Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 38
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->node:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    .line 39
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->getNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    move-result-object v0

    .line 40
    .local v0, "first":Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    .line 41
    invoke-static {p1, p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->setNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;)V

    .line 42
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    iput-object p0, v1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    .line 46
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark:Z

    .line 47
    return-void
.end method


# virtual methods
.method public checkMark()Z
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark:Z

    .line 59
    .local v0, "markVal":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark:Z

    .line 60
    return v0
.end method

.method public clearMark()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark:Z

    .line 51
    return-void
.end method

.method public getActor()Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method public getBSPNode()Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->node:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    return-object v0
.end method

.method public getNext()Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    return-object v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->mark:Z

    .line 55
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->removed()V

    .line 77
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->node:Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionNode;->actorRemoved(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 78
    return-void
.end method

.method public removed()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/BSPCollisionChecker;->setNodeForActor(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    .line 89
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorNode;

    goto :goto_0
.end method
