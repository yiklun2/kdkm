.class public Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
.super Ljava/lang/Object;
.source "TMXTile.java"


# instance fields
.field public height:I

.field image:Ljava/lang/String;

.field public index:I

.field public name:Ljava/lang/String;

.field public props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

.field public type:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v9, "name"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->name:Ljava/lang/String;

    .line 49
    const-string v9, "type"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->type:Ljava/lang/String;

    .line 50
    const-string v9, "x"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->x:I

    .line 51
    const-string v9, "y"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->y:I

    .line 52
    const-string v9, "width"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "w":Ljava/lang/String;
    const-string v9, "height"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "h":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v8, "0"

    .end local v8    # "w":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->width:I

    .line 55
    if-eqz v0, :cond_2

    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v0, "0"

    .end local v0    # "h":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->height:I

    .line 56
    const-string v9, "image"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 57
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 56
    check-cast v1, Lorg/w3c/dom/Element;

    .line 58
    .local v1, "imageElement":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_4

    .line 59
    const-string v9, "source"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->image:Ljava/lang/String;

    .line 63
    :cond_4
    const-string v9, "properties"

    .line 62
    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 63
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 62
    check-cast v6, Lorg/w3c/dom/Element;

    .line 64
    .local v6, "propsElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_5

    .line 65
    const-string v9, "property"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 66
    .local v5, "properties":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_5

    .line 67
    new-instance v9, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-direct {v9}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;-><init>()V

    iput-object v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    .line 68
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v3, v9, :cond_6

    .line 77
    .end local v3    # "p":I
    .end local v5    # "properties":Lorg/w3c/dom/NodeList;
    :cond_5
    return-void

    .line 69
    .restart local v3    # "p":I
    .restart local v5    # "properties":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 71
    .local v4, "propElement":Lorg/w3c/dom/Element;
    const-string v9, "name"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "name":Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "value":Ljava/lang/String;
    iget-object v9, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-virtual {v9, v2, v7}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
