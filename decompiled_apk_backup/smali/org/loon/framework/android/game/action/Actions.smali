.class public Lorg/loon/framework/android/game/action/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/action/Actions$ActionElement;
    }
.end annotation


# instance fields
.field private final actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 34
    return-void
.end method

.method private deleteElement(Lorg/loon/framework/android/game/action/Actions$ActionElement;)V
    .locals 3
    .param p1, "element"    # Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .prologue
    .line 53
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v1

    .line 54
    :try_start_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {p1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$1(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1

    .line 57
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAction(ILorg/loon/framework/android/game/action/Actions$ActionElement;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .prologue
    .line 73
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v1

    .line 74
    :try_start_0
    invoke-static {p2}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 76
    invoke-static {p2}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$3(Lorg/loon/framework/android/game/action/Actions$ActionElement;I)V

    .line 78
    :cond_0
    invoke-static {p2}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0, p2}, Lorg/loon/framework/android/game/action/Actions;->deleteElement(Lorg/loon/framework/android/game/action/Actions$ActionElement;)V

    .line 73
    :cond_1
    monitor-exit v1

    .line 82
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAction(Lorg/loon/framework/android/game/action/ActionEvent;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V
    .locals 3
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;
    .param p3, "paused"    # Z

    .prologue
    .line 41
    iget-object v2, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 43
    .local v0, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    invoke-direct {v0, p2, p3}, Lorg/loon/framework/android/game/action/Actions$ActionElement;-><init>(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;Z)V

    .line 45
    .restart local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p2, v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1, p2}, Lorg/loon/framework/android/game/action/ActionEvent;->start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V

    .line 41
    monitor-exit v2

    .line 50
    return-void

    .line 41
    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 38
    return-void
.end method

.method public getAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)Lorg/loon/framework/android/game/action/ActionEvent;
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 122
    iget-object v5, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v5

    .line 123
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 124
    .local v1, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v1, :cond_0

    .line 125
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 127
    .local v3, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 134
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :cond_0
    monitor-exit v5

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 128
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_1
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/ActionEvent;

    .line 129
    .local v0, "a":Lorg/loon/framework/android/game/action/ActionEvent;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionEvent;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 130
    monitor-exit v5

    goto :goto_1

    .line 122
    .end local v0    # "a":Lorg/loon/framework/android/game/action/ActionEvent;
    .end local v1    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 127
    .restart local v0    # "a":Lorg/loon/framework/android/game/action/ActionEvent;
    .restart local v1    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public removeAction(Ljava/lang/Object;Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 89
    iget-object v5, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v5

    .line 90
    :try_start_0
    iget-object v4, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v4, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 91
    .local v1, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v1, :cond_0

    .line 92
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 94
    .local v3, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 89
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :cond_0
    monitor-exit v5

    .line 103
    return-void

    .line 95
    .restart local v2    # "i":I
    .restart local v3    # "limit":I
    :cond_1
    invoke-static {v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/ActionEvent;

    .line 96
    .local v0, "a":Lorg/loon/framework/android/game/action/ActionEvent;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionEvent;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/ActionEvent;->getOriginal()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_2

    .line 97
    invoke-direct {p0, v2, v1}, Lorg/loon/framework/android/game/action/Actions;->removeAction(ILorg/loon/framework/android/game/action/Actions$ActionElement;)V

    .line 94
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "a":Lorg/loon/framework/android/game/action/ActionEvent;
    .end local v1    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    .end local v2    # "i":I
    .end local v3    # "limit":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeAction(Lorg/loon/framework/android/game/action/ActionEvent;)V
    .locals 5
    .param p1, "action"    # Lorg/loon/framework/android/game/action/ActionEvent;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 111
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/ActionEvent;->getOriginal()Ljava/lang/Object;

    move-result-object v4

    .line 110
    invoke-virtual {v2, v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 112
    .local v0, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 115
    invoke-direct {p0, v1, v0}, Lorg/loon/framework/android/game/action/Actions;->removeAction(ILorg/loon/framework/android/game/action/Actions$ActionElement;)V

    .line 109
    .end local v1    # "i":I
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAllActions(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 65
    .local v0, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v0, :cond_1

    .line 66
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/Actions;->deleteElement(Lorg/loon/framework/android/game/action/Actions$ActionElement;)V

    .line 63
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 179
    iget-object v2, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 181
    .local v0, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$7(Lorg/loon/framework/android/game/action/Actions$ActionElement;Z)V

    .line 179
    :cond_0
    monitor-exit v2

    .line 185
    return-void

    .line 179
    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop(Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;)V
    .locals 3
    .param p1, "actObject"    # Lorg/loon/framework/android/game/core/graphics/window/actor/Actor;

    .prologue
    .line 170
    iget-object v2, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 172
    .local v0, "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$7(Lorg/loon/framework/android/game/action/Actions$ActionElement;Z)V

    .line 170
    :cond_0
    monitor-exit v2

    .line 176
    return-void

    .line 170
    .end local v0    # "element":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(J)V
    .locals 6
    .param p1, "elapsedTime"    # J

    .prologue
    .line 139
    iget-object v4, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    monitor-enter v4

    .line 140
    :try_start_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v2

    .line 141
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-gt v1, v3, :cond_0

    .line 139
    monitor-exit v4

    .line 167
    return-void

    .line 142
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/action/Actions;->actions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v3, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/Actions$ActionElement;

    .line 143
    .local v0, "currentTarget":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$4(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$3(Lorg/loon/framework/android/game/action/Actions$ActionElement;I)V

    :goto_1
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I

    move-result v3

    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 161
    :cond_1
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/Actions;->deleteElement(Lorg/loon/framework/android/game/action/Actions$ActionElement;)V

    .line 143
    :cond_2
    monitor-exit v0

    .line 141
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$0(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Ljava/util/ArrayList;

    move-result-object v3

    .line 148
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/ActionEvent;

    .line 147
    invoke-static {v0, v3}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$5(Lorg/loon/framework/android/game/action/Actions$ActionElement;Lorg/loon/framework/android/game/action/ActionEvent;)V

    .line 149
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    iget-boolean v3, v3, Lorg/loon/framework/android/game/action/ActionEvent;->isInit:Z

    if-nez v3, :cond_4

    .line 150
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, v3, Lorg/loon/framework/android/game/action/ActionEvent;->isInit:Z

    .line 151
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/ActionEvent;->onLoad()V

    .line 153
    :cond_4
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/loon/framework/android/game/action/ActionEvent;->step(J)V

    .line 154
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/ActionEvent;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/action/ActionEvent;->stop()V

    .line 156
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$6(Lorg/loon/framework/android/game/action/Actions$ActionElement;)Lorg/loon/framework/android/game/action/ActionEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/action/Actions;->removeAction(Lorg/loon/framework/android/game/action/ActionEvent;)V

    .line 158
    :cond_5
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$5(Lorg/loon/framework/android/game/action/Actions$ActionElement;Lorg/loon/framework/android/game/action/ActionEvent;)V

    .line 146
    invoke-static {v0}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$2(Lorg/loon/framework/android/game/action/Actions$ActionElement;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lorg/loon/framework/android/game/action/Actions$ActionElement;->access$3(Lorg/loon/framework/android/game/action/Actions$ActionElement;I)V

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 139
    .end local v0    # "currentTarget":Lorg/loon/framework/android/game/action/Actions$ActionElement;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method
