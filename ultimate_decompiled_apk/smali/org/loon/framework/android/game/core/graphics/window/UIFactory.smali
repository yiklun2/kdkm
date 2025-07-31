.class public abstract Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
.super Ljava/lang/Object;
.source "UIFactory.java"


# instance fields
.field public immutable:Z

.field private final uiResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->immutable:Z

    .line 46
    return-void
.end method


# virtual methods
.method public abstract createUI(Ljavax/microedition/lcdui/Graphics;IILorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
.end method

.method public abstract createUI(Lorg/loon/framework/android/game/core/graphics/LComponent;II)[Ljavax/microedition/lcdui/Image;
.end method

.method public get(Ljava/lang/String;Lorg/loon/framework/android/game/core/graphics/LComponent;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "component"    # Lorg/loon/framework/android/game/core/graphics/LComponent;

    .prologue
    .line 101
    if-nez p2, :cond_0

    .line 102
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getUIResource()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/graphics/LComponent;->getUIResource()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getUIDescription()[Ljava/lang/String;
.end method

.method public abstract getUIName()Ljava/lang/String;
.end method

.method public final getUIResource()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 135
    .local v1, "temp":[Ljava/lang/String;
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 136
    .local v0, "keys":[Ljava/lang/String;
    return-object v0
.end method

.method public abstract processUI(Lorg/loon/framework/android/game/core/graphics/LComponent;[Ljavax/microedition/lcdui/Image;)V
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method protected final remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->uiResource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
