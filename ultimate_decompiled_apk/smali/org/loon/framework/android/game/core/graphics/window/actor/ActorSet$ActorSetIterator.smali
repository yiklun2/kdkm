.class Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;
.super Ljava/lang/Object;
.source "ActorSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActorSetIterator"
.end annotation


# instance fields
.field currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-static {v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 220
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ActorSetIterator;->currentNode:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->access$1(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V

    .line 225
    return-void
.end method
