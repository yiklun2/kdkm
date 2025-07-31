.class public Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;
.super Ljava/lang/Object;
.source "TMXTiledMap.java"


# instance fields
.field private defHeight:I

.field private defWidth:I

.field protected height:I

.field protected layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;",
            ">;"
        }
    .end annotation
.end field

.field private loadTileSets:Z

.field protected objectGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

.field private screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field protected tileHeight:I

.field protected tileSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected tileWidth:I

.field protected tilesLocation:Ljava/lang/String;

.field protected width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    .line 88
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "tileSetsLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    .line 93
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;-><init>(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tileSetsLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    .line 84
    invoke-static {p1}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loadTileSets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    .line 76
    iput-boolean p2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    .line 77
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->load(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 27
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "tileSetsLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/loon/framework/android/game/IHandler;->getScreenBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    .line 229
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tilesLocation:Ljava/lang/String;

    .line 233
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 234
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 235
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 236
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v24, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap$1;-><init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 245
    .local v5, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 247
    .local v6, "docElement":Lorg/w3c/dom/Element;
    const-string v24, "orientation"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 248
    .local v16, "orient":Ljava/lang/String;
    const-string v24, "orthogonal"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 249
    new-instance v24, Ljava/lang/RuntimeException;

    .line 250
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Only orthogonal maps supported, found "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 249
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "docElement":Lorg/w3c/dom/Element;
    .end local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "orient":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 320
    .local v7, "e":Ljava/lang/Exception;
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Failed to parse map"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 253
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "docElement":Lorg/w3c/dom/Element;
    .restart local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "orient":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v24, "width"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->width:I

    .line 254
    const-string v24, "height"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->height:I

    .line 255
    const-string v24, "tilewidth"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileWidth:I

    .line 257
    const-string v24, "tileheight"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 256
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileHeight:I

    .line 260
    const-string v24, "properties"

    .line 259
    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 260
    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 259
    check-cast v20, Lorg/w3c/dom/Element;

    .line 261
    .local v20, "propsElement":Lorg/w3c/dom/Element;
    if-eqz v20, :cond_1

    .line 263
    const-string v24, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 264
    .local v19, "properties":Lorg/w3c/dom/NodeList;
    if-eqz v19, :cond_1

    .line 265
    new-instance v24, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-direct/range {v24 .. v24}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    .line 266
    const/16 v17, 0x0

    .local v17, "p":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 276
    .end local v17    # "p":I
    .end local v19    # "properties":Lorg/w3c/dom/NodeList;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->loadTileSets:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 277
    const/16 v22, 0x0

    .line 278
    .local v22, "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    const/4 v10, 0x0

    .line 280
    .local v10, "lastSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    const-string v24, "tileset"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 281
    .local v21, "setNodes":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_4

    .line 296
    .end local v9    # "i":I
    .end local v10    # "lastSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .end local v21    # "setNodes":Lorg/w3c/dom/NodeList;
    .end local v22    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    :cond_2
    const-string v24, "layer"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 297
    .local v12, "layerNodes":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_6

    .line 306
    const-string v24, "objectgroup"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 308
    .local v15, "objectGroupNodes":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_7

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileWidth:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defWidth:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/loon/framework/android/game/action/map/shapes/RectBox;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileHeight:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defHeight:I

    .line 322
    return-void

    .line 267
    .end local v9    # "i":I
    .end local v12    # "layerNodes":Lorg/w3c/dom/NodeList;
    .end local v15    # "objectGroupNodes":Lorg/w3c/dom/NodeList;
    .restart local v17    # "p":I
    .restart local v19    # "properties":Lorg/w3c/dom/NodeList;
    :cond_3
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 269
    .local v18, "propElement":Lorg/w3c/dom/Element;
    const-string v24, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "name":Ljava/lang/String;
    const-string v24, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 271
    .local v23, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 282
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "p":I
    .end local v18    # "propElement":Lorg/w3c/dom/Element;
    .end local v19    # "properties":Lorg/w3c/dom/NodeList;
    .end local v23    # "value":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "lastSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .restart local v21    # "setNodes":Lorg/w3c/dom/NodeList;
    .restart local v22    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    :cond_4
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 284
    .local v4, "current":Lorg/w3c/dom/Element;
    new-instance v22, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    .end local v22    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;-><init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;Lorg/w3c/dom/Element;Z)V

    .line 285
    .restart local v22    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    move-object/from16 v0, v22

    iput v9, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->index:I

    .line 287
    if-eqz v10, :cond_5

    .line 288
    move-object/from16 v0, v22

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->setLimit(I)V

    .line 290
    :cond_5
    move-object/from16 v10, v22

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 298
    .end local v4    # "current":Lorg/w3c/dom/Element;
    .end local v10    # "lastSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .end local v21    # "setNodes":Lorg/w3c/dom/NodeList;
    .end local v22    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .restart local v12    # "layerNodes":Lorg/w3c/dom/NodeList;
    :cond_6
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 299
    .restart local v4    # "current":Lorg/w3c/dom/Element;
    new-instance v11, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;-><init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;Lorg/w3c/dom/Element;)V

    .line 300
    .local v11, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    iput v9, v11, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->index:I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 309
    .end local v4    # "current":Lorg/w3c/dom/Element;
    .end local v11    # "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    .restart local v15    # "objectGroupNodes":Lorg/w3c/dom/NodeList;
    :cond_7
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 310
    .restart local v4    # "current":Lorg/w3c/dom/Element;
    new-instance v14, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    invoke-direct {v14, v4}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;-><init>(Lorg/w3c/dom/Element;)V

    .line 311
    .local v14, "objectGroup":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    iput v9, v14, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->index:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "tx"    # I
    .param p3, "ty"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    .line 185
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "layer"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v8, p4

    move v9, v4

    invoke-virtual/range {v0 .. v9}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->draw(Ljavax/microedition/lcdui/Graphics;IIIIIIIZ)V

    .line 193
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tx"    # I
    .param p5, "ty"    # I

    .prologue
    .line 188
    iget v6, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defWidth:I

    iget v7, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defHeight:I

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZ)V

    .line 189
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 197
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZ)V

    .line 198
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIIIIZ)V
    .locals 12
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "l"    # I
    .param p9, "lineByLine"    # Z

    .prologue
    .line 202
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 203
    .local v1, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    const/4 v8, 0x0

    .local v8, "ty":I
    :goto_0
    move/from16 v0, p7

    if-lt v8, v0, :cond_0

    .line 207
    return-void

    .line 204
    :cond_0
    iget v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileWidth:I

    .line 205
    iget v11, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileHeight:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p9

    .line 204
    invoke-virtual/range {v1 .. v11}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZII)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZ)V
    .locals 13
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "lineByLine"    # Z

    .prologue
    .line 211
    const/4 v8, 0x0

    .local v8, "ty":I
    :goto_0
    move/from16 v0, p7

    if-lt v8, v0, :cond_0

    .line 218
    return-void

    .line 212
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_1

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 214
    .local v1, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    iget v10, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileWidth:I

    .line 215
    iget v11, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileHeight:I

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    .line 214
    invoke-virtual/range {v1 .. v11}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZII)V

    .line 212
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method public findTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .locals 3
    .param p1, "gid"    # I

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 360
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 353
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    .line 355
    .local v1, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->height:I

    return v0
.end method

.method public getLayerCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayerIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 110
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 103
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 105
    .local v1, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLayerProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "layerIndex"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 164
    .local v0, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    if-nez v1, :cond_1

    .line 166
    .end local p3    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "def":Ljava/lang/String;
    :cond_1
    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-virtual {v1, p2, p3}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getMapProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    if-nez v0, :cond_0

    .line 158
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getObjectCount(I)I
    .locals 2
    .param p1, "groupID"    # I

    .prologue
    .line 371
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 372
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 373
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    iget-object v1, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 375
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getObjectGroupCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getObjectHeight(II)I
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 434
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 435
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 436
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 437
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 438
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->height:I

    .line 441
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getObjectImage(II)Ljava/lang/String;
    .locals 4
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    if-ltz p1, :cond_0

    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 446
    iget-object v3, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 447
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v3, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 448
    iget-object v3, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 450
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    if-nez v1, :cond_1

    .line 458
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :cond_0
    :goto_0
    return-object v2

    .line 454
    .restart local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .restart local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :cond_1
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->image:Ljava/lang/String;

    goto :goto_0
.end method

.method public getObjectName(II)Ljava/lang/String;
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 379
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 380
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 381
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 382
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 383
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->name:Ljava/lang/String;

    .line 386
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getObjectProperty(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "def"    # Ljava/lang/String;

    .prologue
    .line 463
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 464
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 465
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 466
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 468
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    if-nez v1, :cond_1

    .line 478
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    .end local p4    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p4

    .line 471
    .restart local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .restart local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    .restart local p4    # "def":Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-virtual {v2, p3, p4}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method

.method public getObjectType(II)Ljava/lang/String;
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 390
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 392
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 393
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 394
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget-object v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->type:Ljava/lang/String;

    .line 397
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getObjectWidth(II)I
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 423
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 425
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 426
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 427
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->width:I

    .line 430
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getObjectX(II)I
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 401
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 402
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 403
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 404
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 405
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->x:I

    .line 408
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getObjectY(II)I
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "objectID"    # I

    .prologue
    .line 412
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 413
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->objectGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;

    .line 414
    .local v0, "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 415
    iget-object v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;

    .line 416
    .local v1, "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    iget v2, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTile;->y:I

    .line 419
    .end local v0    # "grp":Lorg/loon/framework/android/game/action/map/tmx/TMXTileGroup;
    .end local v1    # "object":Lorg/loon/framework/android/game/action/map/tmx/TMXTile;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->defWidth:I

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileHeight:I

    return v0
.end method

.method public getTileId(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layerIndex"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 147
    .local v0, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->getTileID(II)I

    move-result v1

    return v1
.end method

.method public getTileImage(III)Ljavax/microedition/lcdui/Image;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layerIndex"    # I

    .prologue
    const/4 v7, 0x1

    .line 114
    iget-object v5, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 116
    .local v0, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    iget-object v5, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    const/4 v6, 0x0

    aget v4, v5, v6

    .line 117
    .local v4, "tileSetIndex":I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 118
    iget-object v5, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    .line 120
    .local v3, "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    iget-object v5, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    aget v5, v5, v7

    invoke-virtual {v3, v5}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->getTileX(I)I

    move-result v1

    .line 121
    .local v1, "sheetX":I
    iget-object v5, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    aget v5, v5, v7

    invoke-virtual {v3, v5}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->getTileY(I)I

    move-result v2

    .line 123
    .local v2, "sheetY":I
    iget-object v5, v3, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    invoke-virtual {v5, v1, v2}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->getSubImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v5

    .line 126
    .end local v1    # "sheetX":I
    .end local v2    # "sheetY":I
    .end local v3    # "tileSet":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getTileProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tileID"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 180
    .end local p3    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 174
    .restart local p3    # "def":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->findTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    move-result-object v1

    .line 176
    .local v1, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->getProperties(I)Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    move-result-object v0

    .line 177
    .local v0, "props":Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p2, p3}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    return-object v0
.end method

.method public getTileSetByGID(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .locals 3
    .param p1, "gid"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 348
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 342
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    .line 343
    .local v1, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    invoke-virtual {v1, p1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTileSetCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tileWidth:I

    return v0
.end method

.method public getTilesLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->tilesLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->width:I

    return v0
.end method

.method protected rendered(III)V
    .locals 0
    .param p1, "visualY"    # I
    .param p2, "mapY"    # I
    .param p3, "layer"    # I

    .prologue
    .line 364
    return-void
.end method

.method public setTileId(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layerIndex"    # I
    .param p4, "tileid"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;

    .line 152
    .local v0, "layer":Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
    invoke-virtual {v0, p1, p2, p4}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->setTileID(III)V

    .line 153
    return-void
.end method
