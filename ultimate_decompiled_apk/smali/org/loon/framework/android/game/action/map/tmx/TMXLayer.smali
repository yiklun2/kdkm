.class public Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;
.super Ljava/lang/Object;
.source "TMXLayer.java"


# static fields
.field private static base64:[B


# instance fields
.field public data:[[[I

.field public height:I

.field public index:I

.field private final map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

.field public name:Ljava/lang/String;

.field public props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 36
    new-array v1, v3, [B

    sput-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 42
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 45
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 48
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 51
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 52
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 34
    return-void

    .line 40
    :cond_0
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_3
    sget-object v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;Lorg/w3c/dom/Element;)V
    .locals 23
    .param p1, "map"    # Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    .line 80
    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->name:Ljava/lang/String;

    .line 81
    const-string v20, "width"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->width:I

    .line 82
    const-string v20, "height"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->height:I

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->height:I

    move/from16 v21, v0

    const/16 v22, 0x3

    filled-new-array/range {v20 .. v22}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[[I

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    .line 87
    const-string v20, "properties"

    .line 86
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 87
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 86
    check-cast v14, Lorg/w3c/dom/Element;

    .line 88
    .local v14, "propsElement":Lorg/w3c/dom/Element;
    if-eqz v14, :cond_0

    .line 89
    const-string v20, "property"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 90
    .local v13, "properties":Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_0

    .line 91
    new-instance v20, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    invoke-direct/range {v20 .. v20}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    .line 92
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-lt v11, v0, :cond_1

    .line 102
    .end local v11    # "p":I
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string v20, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 103
    const/16 v21, 0x0

    .line 102
    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 104
    .local v4, "dataNode":Lorg/w3c/dom/Element;
    const-string v20, "encoding"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "encoding":Ljava/lang/String;
    const-string v20, "compression"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "compression":Ljava/lang/String;
    const-string v20, "base64"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v20, "gzip"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 110
    :try_start_0
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 111
    .local v2, "cdata":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 112
    .local v7, "enc":[C
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->decodeBase64([C)[B

    move-result-object v5

    .line 113
    .local v5, "dec":[B
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    .line 114
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v9, "is":Ljava/util/zip/GZIPInputStream;
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->height:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 146
    return-void

    .line 93
    .end local v2    # "cdata":Lorg/w3c/dom/Node;
    .end local v3    # "compression":Ljava/lang/String;
    .end local v4    # "dataNode":Lorg/w3c/dom/Element;
    .end local v5    # "dec":[B
    .end local v7    # "enc":[C
    .end local v8    # "encoding":Ljava/lang/String;
    .end local v9    # "is":Ljava/util/zip/GZIPInputStream;
    .end local v19    # "y":I
    .restart local v11    # "p":I
    .restart local v13    # "properties":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 95
    .local v12, "propElement":Lorg/w3c/dom/Element;
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "name":Ljava/lang/String;
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->props:Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 117
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "p":I
    .end local v12    # "propElement":Lorg/w3c/dom/Element;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v2    # "cdata":Lorg/w3c/dom/Node;
    .restart local v3    # "compression":Ljava/lang/String;
    .restart local v4    # "dataNode":Lorg/w3c/dom/Element;
    .restart local v5    # "dec":[B
    .restart local v7    # "enc":[C
    .restart local v8    # "encoding":Ljava/lang/String;
    .restart local v9    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "y":I
    :cond_2
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->width:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 116
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 118
    :cond_3
    const/16 v16, 0x0

    .line 119
    .local v16, "tileId":I
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v20

    or-int v16, v16, v20

    .line 120
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    or-int v16, v16, v20

    .line 121
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v20

    shl-int/lit8 v20, v20, 0x10

    or-int v16, v16, v20

    .line 122
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v20

    shl-int/lit8 v20, v20, 0x18

    or-int v16, v16, v20

    .line 124
    if-nez v16, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x0

    const/16 v22, -0x1

    aput v22, v20, v21

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x2

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 117
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 129
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->findTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    move-result-object v15

    .line 131
    .local v15, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    if-eqz v15, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x0

    iget v0, v15, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->index:I

    move/from16 v22, v0

    aput v22, v20, v21

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x1

    iget v0, v15, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    aput v22, v20, v21

    .line 135
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    aget-object v20, v20, v19

    const/16 v21, 0x2

    aput v16, v20, v21
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 139
    .end local v2    # "cdata":Lorg/w3c/dom/Node;
    .end local v5    # "dec":[B
    .end local v7    # "enc":[C
    .end local v9    # "is":Ljava/util/zip/GZIPInputStream;
    .end local v15    # "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    .end local v16    # "tileId":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/io/IOException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Unable to decode base64 !"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 143
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Unsupport tiled map type "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 144
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " only gzip base64 Support !"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 143
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
.end method

.method private decodeBase64([C)[B
    .locals 12
    .param p1, "data"    # [C

    .prologue
    const/16 v11, 0xff

    .line 249
    array-length v7, p1

    .line 250
    .local v7, "temp":I
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    array-length v9, p1

    if-lt v3, v9, :cond_2

    .line 256
    div-int/lit8 v9, v7, 0x4

    mul-int/lit8 v4, v9, 0x3

    .line 257
    .local v4, "len":I
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 258
    add-int/lit8 v4, v4, 0x2

    .line 260
    :cond_0
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 263
    :cond_1
    new-array v5, v4, [B

    .line 265
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 266
    .local v6, "shift":I
    const/4 v0, 0x0

    .line 267
    .local v0, "accum":I
    const/4 v1, 0x0

    .line 269
    .local v1, "index":I
    const/4 v3, 0x0

    :goto_1
    array-length v9, p1

    if-lt v3, v9, :cond_5

    .line 283
    array-length v9, v5

    if-eq v1, v9, :cond_8

    .line 284
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "index != "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 251
    .end local v0    # "accum":I
    .end local v1    # "index":I
    .end local v4    # "len":I
    .end local v5    # "out":[B
    .end local v6    # "shift":I
    :cond_2
    aget-char v9, p1, v3

    if-gt v9, v11, :cond_3

    sget-object v9, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    aget-char v10, p1, v3

    aget-byte v9, v9, v10

    if-gez v9, :cond_4

    .line 252
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 250
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .restart local v0    # "accum":I
    .restart local v1    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "out":[B
    .restart local v6    # "shift":I
    :cond_5
    aget-char v9, p1, v3

    if-le v9, v11, :cond_7

    const/4 v8, -0x1

    .line 272
    .local v8, "value":I
    :goto_2
    if-ltz v8, :cond_6

    .line 273
    shl-int/lit8 v0, v0, 0x6

    .line 274
    add-int/lit8 v6, v6, 0x6

    .line 275
    or-int/2addr v0, v8

    .line 276
    const/16 v9, 0x8

    if-lt v6, v9, :cond_6

    .line 277
    add-int/lit8 v6, v6, -0x8

    .line 278
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    shr-int v9, v0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    move v1, v2

    .line 269
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    .end local v8    # "value":I
    :cond_7
    sget-object v9, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->base64:[B

    aget-char v10, p1, v3

    aget-byte v8, v9, v10

    goto :goto_2

    .line 287
    :cond_8
    return-object v5
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIIIIIZII)V
    .locals 14
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sx"    # I
    .param p5, "sy"    # I
    .param p6, "width"    # I
    .param p7, "ty"    # I
    .param p8, "isLine"    # Z
    .param p9, "mapTileWidth"    # I
    .param p10, "mapTileHeight"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getTileSetCount()I

    move-result v10

    .line 201
    .local v10, "tileCount":I
    const/4 v12, 0x0

    .local v12, "tileset":I
    :goto_0
    if-lt v12, v10, :cond_0

    .line 240
    return-void

    .line 203
    :cond_0
    const/4 v9, 0x0

    .line 205
    .local v9, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    const/4 v13, 0x0

    .local v13, "tx":I
    :goto_1
    move/from16 v0, p6

    if-lt v13, v0, :cond_3

    .line 233
    if-eqz p8, :cond_2

    .line 234
    if-eqz v9, :cond_1

    .line 235
    const/4 v9, 0x0

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    add-int v2, p7, p5

    iget v3, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->index:I

    move/from16 v0, p7

    invoke-virtual {v1, v0, v2, v3}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->rendered(III)V

    .line 201
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 207
    :cond_3
    add-int v7, p4, v13

    .line 208
    .local v7, "nx":I
    add-int v8, p5, p7

    .line 210
    .local v8, "ny":I
    if-ltz v7, :cond_4

    if-gez v8, :cond_5

    .line 205
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 213
    :cond_5
    iget v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->width:I

    if-ge v7, v1, :cond_4

    iget v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->height:I

    if-ge v8, v1, :cond_4

    .line 217
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v12, :cond_4

    .line 218
    if-nez v9, :cond_6

    .line 219
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    invoke-virtual {v1, v12}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->getTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    move-result-object v9

    .line 222
    :cond_6
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v9, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->getTileX(I)I

    move-result v5

    .line 223
    .local v5, "sheetX":I
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v9, v1}, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->getTileY(I)I

    move-result v6

    .line 225
    .local v6, "sheetY":I
    iget v1, v9, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tileHeight:I

    sub-int v11, v1, p10

    .line 227
    .local v11, "tileOffsetY":I
    iget-object v1, v9, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->tiles:Lorg/loon/framework/android/game/action/sprite/SpriteSheet;

    mul-int v2, v13, p9

    add-int v3, p2, v2

    .line 228
    mul-int v2, p7, p10

    add-int v2, v2, p3

    sub-int v4, v2, v11

    move-object v2, p1

    .line 227
    invoke-virtual/range {v1 .. v6}, Lorg/loon/framework/android/game/action/sprite/SpriteSheet;->draw(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto :goto_2
.end method

.method public getTileID(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setTileID(III)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tile"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    if-nez p3, :cond_0

    .line 168
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    const/4 v2, -0x1

    aput v2, v1, v3

    .line 169
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aput v3, v1, v4

    .line 170
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aput v3, v1, v5

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->map:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    invoke-virtual {v1, p3}, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->findTileSet(I)Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;

    move-result-object v0

    .line 174
    .local v0, "set":Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    iget v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->index:I

    aput v2, v1, v3

    .line 175
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    iget v2, v0, Lorg/loon/framework/android/game/action/map/tmx/TMXTileSet;->firstGID:I

    sub-int v2, p3, v2

    aput v2, v1, v4

    .line 176
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXLayer;->data:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aput p3, v1, v5

    goto :goto_0
.end method
