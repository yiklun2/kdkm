.class Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;
.super Ljava/lang/Object;
.source "ActorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListNode"
.end annotation


# instance fields
.field actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

.field next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

.field final synthetic this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 174
    iput-object p0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V
    .locals 1
    .param p2, "actor"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "listTail"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->this$0:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->actor:Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .line 179
    iget-object v0, p3, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 180
    iput-object p3, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 181
    iput-object p0, p3, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 182
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object p0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 200
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prev:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->next:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 201
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 202
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v1, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 203
    return-void
.end method

.method public setHashListHead(Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;)V
    .locals 1
    .param p1, "oldHead"    # Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iput-object p0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 188
    iput-object p0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 191
    iget-object v0, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 192
    iput-object p0, p1, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    .line 193
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->prevHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    iput-object p0, v0, Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;->nextHash:Lorg/loon/framework/android/game/core/graphics/window/actor/ActorSet$ListNode;

    goto :goto_0
.end method
