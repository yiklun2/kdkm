.class public Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
.super Ljava/lang/Object;
.source "TMXTileSet.java"


# instance fields
.field public firstGID:I

.field public index:I

.field public lastGID:I

.field private final map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

.field public name:Ljava/lang/String;

.field private props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;",
            ">;"
        }
    .end annotation
.end field

.field public tileHeight:I

.field protected tileMargin:I

.field protected tileSpacing:I

.field public tileWidth:I

.field public tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

.field public tilesAcross:I

.field public tilesDown:I


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;Lorg/w3c/dom/Element;Z)V
    .locals 31
    .param p1, "map"    # Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "loadImage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v28, 0x7fffffff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->lastGID:I

    .line 59
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->props:Ljava/util/HashMap;

    .line 61
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileSpacing:I

    .line 63
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileMargin:I

    .line 67
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    .line 68
    const-string v28, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->name:Ljava/lang/String;

    .line 69
    const-string v28, "firstgid"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    .line 70
    const-string v28, "source"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 72
    .local v21, "source":Ljava/lang/String;
    if-eqz v21, :cond_0

    const-string v28, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 74
    :try_start_0
    new-instance v28, Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getTilesLocation()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 74
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 77
    .local v12, "in":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v28

    .line 78
    invoke-virtual/range {v28 .. v28}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 79
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 80
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 81
    .local v5, "docElement":Lorg/w3c/dom/Element;
    move-object/from16 p2, v5

    .line 88
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "docElement":Lorg/w3c/dom/Element;
    .end local v12    # "in":Ljava/io/InputStream;
    :cond_0
    const-string v28, "tilewidth"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 89
    .local v26, "tileWidthString":Ljava/lang/String;
    const-string v28, "tileheight"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 90
    .local v24, "tileHeightString":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_2

    .line 91
    :cond_1
    new-instance v28, Ljava/lang/RuntimeException;

    .line 92
    const-string v29, "tileWidthString.length == 0 || tileHeightString.length == 0"

    .line 91
    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 83
    .end local v24    # "tileHeightString":Ljava/lang/String;
    .end local v26    # "tileWidthString":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tilesLocation:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 85
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 84
    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 94
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v24    # "tileHeightString":Ljava/lang/String;
    .restart local v26    # "tileWidthString":Ljava/lang/String;
    :cond_2
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileWidth:I

    .line 95
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileHeight:I

    .line 97
    const-string v28, "spacing"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 98
    .local v22, "sv":Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 99
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileSpacing:I

    .line 102
    :cond_3
    const-string v28, "margin"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 103
    .local v14, "mv":Ljava/lang/String;
    if-eqz v14, :cond_4

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 104
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileMargin:I

    .line 107
    :cond_4
    const-string v28, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 108
    .local v13, "list":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 109
    .local v11, "imageNode":Lorg/w3c/dom/Element;
    const-string v28, "source"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "fileName":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 112
    new-instance v10, Ljavax/microedition/lcdui/Image;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getTilesLocation()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Ljavax/microedition/lcdui/Image;-><init>(Ljava/lang/String;)V

    .line 113
    .local v10, "image":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->setTileSetImage(Ljavax/microedition/lcdui/Image;)V

    .line 116
    .end local v10    # "image":Ljavax/microedition/lcdui/Image;
    :cond_5
    const-string v28, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 117
    .local v17, "pElements":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-lt v8, v0, :cond_6

    .line 138
    return-void

    .line 118
    :cond_6
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/Element;

    .line 120
    .local v23, "tileElement":Lorg/w3c/dom/Element;
    const-string v28, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 121
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    move/from16 v28, v0

    add-int v9, v9, v28

    .line 122
    new-instance v25, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-direct/range {v25 .. v25}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;-><init>()V

    .line 125
    .local v25, "tileProps":Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;
    const-string v28, "properties"

    .line 124
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 125
    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 124
    check-cast v20, Lorg/w3c/dom/Element;

    .line 126
    .local v20, "propsElement":Lorg/w3c/dom/Element;
    const-string v28, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 127
    .local v19, "properties":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->props:Ljava/util/HashMap;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    :cond_7
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 130
    .local v18, "propElement":Lorg/w3c/dom/Element;
    const-string v28, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 131
    .local v15, "name":Ljava/lang/String;
    const-string v28, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 133
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v16, v16, 0x1

    goto :goto_1
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 189
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->lastGID:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperties(I)Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;
    .locals 2
    .param p1, "globalID"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->props:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    return-object v0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileHeight:I

    return v0
.end method

.method public getTileMargin()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileMargin:I

    return v0
.end method

.method public getTileSpacing()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileSpacing:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileWidth:I

    return v0
.end method

.method public getTileX(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 177
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    rem-int v0, p1, v0

    return v0
.end method

.method public getTileY(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 181
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    div-int v0, p1, v0

    return v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 185
    iput p1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->lastGID:I

    .line 186
    return-void
.end method

.method public setTileSetImage(Ljavax/microedition/lcdui/Image;)V
    .locals 7
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v6, 0x1

    .line 157
    new-instance v0, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    iget v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileWidth:I

    iget v3, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileHeight:I

    iget v4, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileSpacing:I

    .line 158
    iget v5, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileMargin:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 157
    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    .line 159
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getHorizontalCount()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getVerticalCount()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesDown:I

    .line 162
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    if-gtz v0, :cond_0

    .line 163
    iput v6, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    .line 165
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesDown:I

    if-gtz v0, :cond_1

    .line 166
    iput v6, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesDown:I

    .line 169
    :cond_1
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesAcross:I

    iget v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tilesDown:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->lastGID:I

    .line 170
    return-void
.end method
