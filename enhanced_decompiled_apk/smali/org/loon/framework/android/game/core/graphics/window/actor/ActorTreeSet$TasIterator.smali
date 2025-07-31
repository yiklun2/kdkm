.class Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;
.super Ljava/lang/Object;
.source "ActorTreeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TasIterator"
.end annotation


# instance fields
.field private actorIterator:Ljava/util/Iterator;

.field private currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

.field private setIterator:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;->access$0(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    .line 140
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    :goto_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 141
    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 140
    if-nez v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 142
    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 165
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    :goto_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->currentSet:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    .line 170
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->hasNext()Z

    .line 154
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorTreeSet$TasIterator;->actorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    return-void
.end method
