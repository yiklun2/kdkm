.class public Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
.super Ljava/lang/Object;
.source "TMXTileGroup.java"


# instance fields
.field public height:I

.field public index:I

.field public name:Ljava/lang/String;

.field public objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/tmx/TMXTile;",
            ">;"
        }
    .end annotation
.end field

.field public props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v10, "name"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->name:Ljava/lang/String;

    .line 45
    const-string v10, "width"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->width:I

    .line 46
    const-string v10, "height"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->height:I

    .line 47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    .line 50
    const-string v10, "properties"

    .line 49
    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 50
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 49
    check-cast v8, Lorg/w3c/dom/Element;

    .line 51
    .local v8, "propsElement":Lorg/w3c/dom/Element;
    if-eqz v8, :cond_0

    .line 52
    const-string v10, "property"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 53
    .local v7, "properties":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_0

    .line 54
    new-instance v10, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-direct {v10}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;-><init>()V

    iput-object v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    .line 55
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v5, v10, :cond_1

    .line 65
    .end local v5    # "p":I
    .end local v7    # "properties":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string v10, "object"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 66
    .local v4, "objectNodes":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v0, v10, :cond_2

    .line 72
    return-void

    .line 56
    .end local v0    # "i":I
    .end local v4    # "objectNodes":Lorg/w3c/dom/NodeList;
    .restart local v5    # "p":I
    .restart local v7    # "properties":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 58
    .local v6, "propElement":Lorg/w3c/dom/Element;
    const-string v10, "name"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    const-string v10, "value"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-virtual {v10, v1, v9}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "p":I
    .end local v6    # "propElement":Lorg/w3c/dom/Element;
    .end local v7    # "properties":Lorg/w3c/dom/NodeList;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v4    # "objectNodes":Lorg/w3c/dom/NodeList;
    :cond_2
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 68
    .local v2, "objElement":Lorg/w3c/dom/Element;
    new-instance v3, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    invoke-direct {v3, v2}, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;-><init>(Lorg/w3c/dom/Element;)V

    .line 69
    .local v3, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iput v0, v3, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->index:I

    .line 70
    iget-object v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
