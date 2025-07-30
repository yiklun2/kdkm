.class public Lorg/loon/framework/android/game/core/graphics/window/UIConfig;
.super Ljava/lang/Object;
.source "UIConfig.java"


# instance fields
.field private final EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

.field private final UIRenderers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/loon/framework/android/game/core/graphics/window/UIFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/NullFactory;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/window/NullFactory;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->UIRenderers:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->setupUI(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public createUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 86
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_2

    .line 91
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 92
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_3

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "num":I
    :goto_2
    if-nez v0, :cond_2

    array-length v5, v4

    if-lt v2, v5, :cond_4

    .line 103
    .end local v1    # "i":I
    .end local v2    # "num":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    goto :goto_0

    .line 93
    .restart local v1    # "i":I
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 92
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 98
    .restart local v2    # "num":I
    :cond_4
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->UIRenderers:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "factory":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 99
    .restart local v0    # "factory":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getInstalledUI()[Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->UIRenderers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 141
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "Null Config"

    return-object v0
.end method

.method public getUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "renderer":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_0

    .line 125
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 126
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "num":I
    :goto_1
    if-nez v2, :cond_0

    array-length v5, v4

    if-lt v1, v5, :cond_2

    .line 137
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 127
    .restart local v0    # "i":I
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    .restart local v1    # "num":I
    :cond_2
    iget-object v5, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->UIRenderers:Ljava/util/Map;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "renderer":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    check-cast v2, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .line 133
    .restart local v2    # "renderer":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setupEmptyUI(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;

    invoke-direct {v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/EmptyFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->setupUI(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)Z

    move-result v0

    return v0
.end method

.method public setupUI(Lorg/loon/framework/android/game/core/graphics/window/UIFactory;)Z
    .locals 3
    .param p1, "ui"    # Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    .prologue
    .line 57
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->EMPTY_FACTORY:Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    if-eq p1, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->getUIName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->createUIFactory(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/window/UIFactory;

    move-result-object v0

    .line 59
    .local v0, "factory":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->immutable:Z

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 65
    .end local v0    # "factory":Lorg/loon/framework/android/game/core/graphics/window/UIFactory;
    :goto_0
    return v1

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/UIConfig;->UIRenderers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/loon/framework/android/game/core/graphics/window/UIFactory;->getUIName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method
