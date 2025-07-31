.class public Lcom/jarworld/rpg/sanguocollege/SpriteX;
.super Ljava/lang/Object;
.source "SpriteX.java"


# static fields
.field public static final ANTICLOCKWISE_90:B = 0x0t

.field public static final DEASIL_90:B = 0x1t

.field public static final HORIZONTAL:B = 0x2t

.field public static ROTATE_TABLE:[[B = null

.field public static TRANSFORM_TABLE:[[B = null

.field public static final TRANS_MIRROR:B = 0x2t

.field public static final TRANS_MIRROR_ROT180:B = 0x1t

.field public static final TRANS_MIRROR_ROT270:B = 0x4t

.field public static final TRANS_MIRROR_ROT90:B = 0x7t

.field public static final TRANS_NONE:B = 0x0t

.field public static final TRANS_ROT180:B = 0x3t

.field public static final TRANS_ROT270:B = 0x6t

.field public static final TRANS_ROT90:B = 0x5t

.field public static final VERTICAL:B = 0x3t

.field public static sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;


# instance fields
.field actionData:[[[S

.field actionIndex:I

.field collideCount:[[I

.field frameData:[[[S

.field image:[Ljavax/microedition/lcdui/Image;

.field imageUsed:[S

.field sequenceIndex:I

.field spxUsed:[S

.field tileData:[[[S

.field x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x4

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 24
    const/16 v2, 0x8

    new-array v2, v2, [B

    aput-byte v8, v2, v8

    aput-byte v9, v2, v9

    aput-byte v6, v2, v6

    .line 25
    aput-byte v5, v2, v5

    const/4 v3, 0x5

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aput-byte v4, v2, v3

    .line 26
    aput-byte v7, v2, v7

    aput-object v2, v0, v1

    .line 27
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v8, v1, v2

    aput-byte v6, v1, v9

    aput-byte v9, v1, v6

    .line 28
    const/4 v2, 0x5

    aput-byte v2, v1, v5

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v7, v1, v2

    .line 29
    const/4 v2, 0x6

    aput-byte v2, v1, v7

    aput-object v1, v0, v8

    .line 30
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v9, v1, v2

    aput-byte v6, v1, v8

    aput-byte v8, v1, v6

    .line 31
    const/4 v2, 0x6

    aput-byte v2, v1, v5

    const/4 v2, 0x5

    aput-byte v7, v1, v2

    const/4 v2, 0x6

    aput-byte v5, v1, v2

    .line 32
    const/4 v2, 0x5

    aput-byte v2, v1, v7

    aput-object v1, v0, v9

    .line 33
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v6, v1, v2

    aput-byte v9, v1, v8

    aput-byte v8, v1, v9

    .line 34
    aput-byte v7, v1, v5

    const/4 v2, 0x5

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    .line 35
    aput-byte v5, v1, v7

    aput-object v1, v0, v6

    .line 36
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v2, v1, v8

    const/4 v2, 0x5

    aput-byte v2, v1, v9

    .line 37
    aput-byte v7, v1, v6

    const/4 v2, 0x5

    aput-byte v9, v1, v2

    const/4 v2, 0x6

    .line 38
    aput-byte v8, v1, v2

    aput-byte v6, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x5

    .line 39
    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    aput-byte v7, v2, v8

    aput-byte v5, v2, v9

    .line 40
    const/4 v3, 0x6

    aput-byte v3, v2, v6

    aput-byte v8, v2, v5

    const/4 v3, 0x5

    aput-byte v6, v2, v3

    .line 41
    aput-byte v9, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 42
    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput-byte v4, v2, v3

    aput-byte v5, v2, v8

    aput-byte v7, v2, v9

    .line 43
    const/4 v3, 0x5

    aput-byte v3, v2, v6

    aput-byte v9, v2, v5

    const/4 v3, 0x6

    aput-byte v6, v2, v3

    .line 44
    aput-byte v8, v2, v7

    aput-object v2, v0, v1

    .line 45
    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v7, v1, v2

    const/4 v2, 0x5

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    aput-byte v2, v1, v9

    .line 46
    aput-byte v5, v1, v6

    aput-byte v6, v1, v5

    const/4 v2, 0x5

    aput-byte v8, v1, v2

    const/4 v2, 0x6

    .line 47
    aput-byte v9, v1, v2

    aput-object v1, v0, v7

    .line 23
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->TRANSFORM_TABLE:[[B

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 50
    new-array v2, v5, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    .line 51
    new-array v1, v5, [B

    const/4 v2, 0x0

    aput-byte v7, v1, v2

    aput-byte v5, v1, v8

    aput-byte v6, v1, v9

    aput-object v1, v0, v8

    .line 52
    new-array v1, v5, [B

    const/4 v2, 0x0

    aput-byte v5, v1, v2

    aput-byte v7, v1, v8

    aput-byte v6, v1, v6

    aput-object v1, v0, v9

    .line 53
    new-array v1, v5, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    .line 54
    new-array v1, v5, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    .line 55
    new-array v2, v5, [B

    aput-byte v6, v2, v8

    aput-byte v5, v2, v9

    aput-byte v7, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 56
    new-array v2, v5, [B

    const/4 v3, 0x0

    aput-byte v6, v2, v3

    aput-byte v7, v2, v9

    aput-byte v5, v2, v6

    aput-object v2, v0, v1

    .line 57
    new-array v1, v5, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    .line 49
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->ROTATE_TABLE:[[B

    .line 73
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/SpriteX;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 9
    return-void

    .line 50
    nop

    :array_0
    .array-data 1
        0x6t
        0x5t
        0x2t
        0x1t
    .end array-data

    .line 53
    :array_1
    .array-data 1
        0x5t
        0x6t
        0x1t
        0x2t
    .end array-data

    .line 54
    :array_2
    .array-data 1
        0x1t
        0x2t
        0x5t
        0x6t
    .end array-data

    .line 57
    :array_3
    .array-data 1
        0x2t
        0x1t
        0x6t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x190

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [[[S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    .line 60
    new-array v0, v1, [[[S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    .line 61
    new-array v0, v1, [[[S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    .line 62
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    .line 67
    new-array v0, v1, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    .line 68
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->imageUsed:[S

    .line 69
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->spxUsed:[S

    .line 9
    return-void
.end method


# virtual methods
.method public createSpriteData(Ljava/lang/String;I)V
    .locals 43
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->spxUsed:[S

    move-object/from16 v40, v0

    aget-short v41, v40, p2

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    int-to-short v0, v0

    move/from16 v41, v0

    aput-short v41, v40, p2

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    if-eqz v40, :cond_0

    .line 265
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 81
    .local v23, "in":Ljava/io/InputStream;
    new-instance v10, Ljava/io/DataInputStream;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v10, "din":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    .line 86
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    .line 88
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    .line 90
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v34

    .line 91
    .local v34, "nTileCount":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v31

    .line 93
    .local v31, "nResCount":S
    const/16 v40, 0x5

    move/from16 v0, v31

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [[S

    .line 94
    .local v32, "nResIndex":[[S
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    move-object/from16 v41, v0

    const/16 v40, 0x5

    move/from16 v0, v34

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v42, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, [[S

    aput-object v40, v41, p2

    .line 103
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v34

    if-lt v0, v1, :cond_4

    .line 112
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v30

    .line 113
    .local v30, "nFrameCount":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    move/from16 v0, v30

    new-array v0, v0, [[S

    move-object/from16 v41, v0

    aput-object v41, v40, p2

    .line 114
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v30

    if-lt v0, v1, :cond_6

    .line 220
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v26

    .line 221
    .local v26, "nActionCount":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    move/from16 v0, v26

    new-array v0, v0, [[S

    move-object/from16 v41, v0

    aput-object v41, v40, p2

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    move-object/from16 v40, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v41, v0

    aput-object v41, v40, p2

    .line 223
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_1a

    .line 256
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 257
    const/4 v10, 0x0

    .line 258
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 259
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 95
    .end local v24    # "j":I
    .end local v26    # "nActionCount":S
    .end local v30    # "nFrameCount":S
    :cond_1
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_5
    const/16 v40, 0x5

    move/from16 v0, v24

    move/from16 v1, v40

    if-lt v0, v1, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    move-object/from16 v40, v0

    aget-object v41, v32, v22

    const/16 v42, 0x0

    aget-short v41, v41, v42

    aget-object v40, v40, v41

    if-nez v40, :cond_2

    .line 99
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "/s/"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v41, v32, v22

    const/16 v42, 0x0

    aget-short v41, v41, v42

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ".png"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v40

    aget-object v41, v32, v22

    const/16 v42, 0x0

    aget-short v41, v41, v42

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->setImage(Ljavax/microedition/lcdui/Image;I)V

    .line 94
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 96
    :cond_3
    aget-object v40, v32, v22

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v24

    .line 95
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 104
    .end local v24    # "j":I
    :cond_4
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_6
    const/16 v40, 0x5

    move/from16 v0, v24

    move/from16 v1, v40

    if-lt v0, v1, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->imageUsed:[S

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    move-object/from16 v41, v0

    aget-object v41, v41, p2

    aget-object v41, v41, v22

    const/16 v42, 0x0

    aget-short v41, v41, v42

    aget-short v42, v40, v41

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    int-to-short v0, v0

    move/from16 v42, v0

    aput-short v42, v40, v41

    .line 103
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 106
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v24

    .line 104
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 115
    .end local v24    # "j":I
    .restart local v30    # "nFrameCount":S
    :cond_6
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v14

    .line 116
    .local v14, "fTileCount":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    .line 117
    .local v12, "fCollisionCount":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    .line 119
    .local v13, "fReferencePointCount":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    .line 120
    .local v21, "frameTop":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v17

    .line 121
    .local v17, "frameBottom":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    .line 122
    .local v19, "frameLeft":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    .line 124
    .local v20, "frameRight":S
    const/16 v40, 0x4

    move/from16 v0, v40

    filled-new-array {v14, v0}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[S

    .line 125
    .local v15, "fTileData":[[S
    const/16 v24, 0x0

    .restart local v24    # "j":I
    :goto_7
    move/from16 v0, v24

    if-lt v0, v14, :cond_7

    .line 136
    const/16 v40, 0x4

    move/from16 v0, v40

    filled-new-array {v12, v0}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[S

    .line 137
    .local v8, "collision":[[S
    const/16 v24, 0x0

    :goto_8
    move/from16 v0, v24

    if-lt v0, v12, :cond_8

    .line 144
    const/16 v40, 0x2

    move/from16 v0, v40

    filled-new-array {v13, v0}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [[S

    .line 145
    .local v38, "reference":[[S
    const/16 v24, 0x0

    :goto_9
    move/from16 v0, v24

    if-lt v0, v13, :cond_a

    .line 153
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v33

    .line 154
    .local v33, "nSportsCount":S
    const/16 v40, 0x4

    move/from16 v0, v33

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [[S

    .line 155
    .local v39, "sports":[[S
    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_c

    .line 163
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v28

    .line 164
    .local v28, "nAttackCount":S
    const/16 v40, 0x4

    move/from16 v0, v28

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    .line 165
    .local v6, "attack":[[S
    const/16 v24, 0x0

    :goto_b
    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    .line 173
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v29

    .line 174
    .local v29, "nBodyCount":S
    const/16 v40, 0x4

    move/from16 v0, v29

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    .line 175
    .local v7, "body":[[S
    const/16 v24, 0x0

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v29

    if-lt v0, v1, :cond_10

    .line 183
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v27

    .line 184
    .local v27, "nActivateCount":S
    const/16 v40, 0x4

    move/from16 v0, v27

    move/from16 v1, v40

    filled-new-array {v0, v1}, [I

    move-result-object v40

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 185
    .local v5, "activate":[[S
    const/16 v24, 0x0

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_12

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    mul-int/lit8 v41, v14, 0x4

    add-int/lit8 v41, v41, 0x7

    mul-int/lit8 v42, v28, 0x4

    add-int v41, v41, v42

    mul-int/lit8 v42, v29, 0x4

    add-int v41, v41, v42

    move/from16 v0, v41

    new-array v0, v0, [S

    move-object/from16 v41, v0

    aput-object v41, v40, v22

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x0

    aput-short v14, v40, v41

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x1

    aput-short v28, v40, v41

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x2

    aput-short v29, v40, v41

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x3

    aput-short v21, v40, v41

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x4

    aput-short v17, v40, v41

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x5

    aput-short v19, v40, v41

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    const/16 v41, 0x6

    aput-short v20, v40, v41

    .line 199
    const/16 v35, 0x7

    .line 200
    .local v35, "offset":I
    const/16 v24, 0x0

    :goto_e
    move/from16 v0, v24

    if-lt v0, v14, :cond_14

    .line 206
    const/16 v24, 0x0

    :goto_f
    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 212
    const/16 v24, 0x0

    :goto_10
    move/from16 v0, v24

    move/from16 v1, v29

    if-lt v0, v1, :cond_18

    .line 114
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 127
    .end local v5    # "activate":[[S
    .end local v6    # "attack":[[S
    .end local v7    # "body":[[S
    .end local v8    # "collision":[[S
    .end local v27    # "nActivateCount":S
    .end local v28    # "nAttackCount":S
    .end local v29    # "nBodyCount":S
    .end local v33    # "nSportsCount":S
    .end local v35    # "offset":I
    .end local v38    # "reference":[[S
    .end local v39    # "sports":[[S
    :cond_7
    aget-object v40, v15, v24

    const/16 v41, 0x0

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v42

    aput-short v42, v40, v41

    .line 129
    aget-object v40, v15, v24

    const/16 v41, 0x1

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v42

    aput-short v42, v40, v41

    .line 131
    aget-object v40, v15, v24

    const/16 v41, 0x2

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v42

    aput-short v42, v40, v41

    .line 133
    aget-object v40, v15, v24

    const/16 v41, 0x3

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v42

    aput-short v42, v40, v41

    .line 125
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7

    .line 138
    .restart local v8    # "collision":[[S
    :cond_8
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_11
    const/16 v40, 0x4

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_9

    .line 137
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_8

    .line 140
    :cond_9
    aget-object v40, v8, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 138
    add-int/lit8 v25, v25, 0x1

    goto :goto_11

    .line 146
    .end local v25    # "k":I
    .restart local v38    # "reference":[[S
    :cond_a
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_12
    const/16 v40, 0x2

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_b

    .line 145
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 148
    :cond_b
    aget-object v40, v38, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 146
    add-int/lit8 v25, v25, 0x1

    goto :goto_12

    .line 156
    .end local v25    # "k":I
    .restart local v33    # "nSportsCount":S
    .restart local v39    # "sports":[[S
    :cond_c
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_13
    const/16 v40, 0x4

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_d

    .line 155
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_a

    .line 158
    :cond_d
    aget-object v40, v39, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 156
    add-int/lit8 v25, v25, 0x1

    goto :goto_13

    .line 166
    .end local v25    # "k":I
    .restart local v6    # "attack":[[S
    .restart local v28    # "nAttackCount":S
    :cond_e
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_14
    const/16 v40, 0x4

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_f

    .line 165
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_b

    .line 168
    :cond_f
    aget-object v40, v6, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 166
    add-int/lit8 v25, v25, 0x1

    goto :goto_14

    .line 176
    .end local v25    # "k":I
    .restart local v7    # "body":[[S
    .restart local v29    # "nBodyCount":S
    :cond_10
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_15
    const/16 v40, 0x4

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_11

    .line 175
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_c

    .line 178
    :cond_11
    aget-object v40, v7, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 176
    add-int/lit8 v25, v25, 0x1

    goto :goto_15

    .line 186
    .end local v25    # "k":I
    .restart local v5    # "activate":[[S
    .restart local v27    # "nActivateCount":S
    :cond_12
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_16
    const/16 v40, 0x4

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_13

    .line 185
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d

    .line 188
    :cond_13
    aget-object v40, v5, v24

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v41

    aput-short v41, v40, v25

    .line 186
    add-int/lit8 v25, v25, 0x1

    goto :goto_16

    .line 201
    .end local v25    # "k":I
    .restart local v35    # "offset":I
    :cond_14
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_17
    const/16 v40, 0x0

    aget-object v40, v15, v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_15

    .line 204
    add-int/lit8 v35, v35, 0x4

    .line 200
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_e

    .line 202
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    add-int v41, v35, v25

    aget-object v42, v15, v24

    aget-short v42, v42, v25

    aput-short v42, v40, v41

    .line 201
    add-int/lit8 v25, v25, 0x1

    goto :goto_17

    .line 207
    .end local v25    # "k":I
    :cond_16
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_18
    const/16 v40, 0x0

    aget-object v40, v6, v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_17

    .line 210
    add-int/lit8 v35, v35, 0x4

    .line 206
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f

    .line 208
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    add-int v41, v35, v25

    aget-object v42, v6, v24

    aget-short v42, v42, v25

    aput-short v42, v40, v41

    .line 207
    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    .line 213
    .end local v25    # "k":I
    :cond_18
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_19
    const/16 v40, 0x0

    aget-object v40, v7, v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v25

    move/from16 v1, v40

    if-lt v0, v1, :cond_19

    .line 216
    add-int/lit8 v35, v35, 0x4

    .line 212
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_10

    .line 214
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v22

    add-int v41, v35, v25

    aget-object v42, v7, v24

    aget-short v42, v42, v25

    aput-short v42, v40, v41

    .line 213
    add-int/lit8 v25, v25, 0x1

    goto :goto_19

    .line 224
    .end local v5    # "activate":[[S
    .end local v6    # "attack":[[S
    .end local v7    # "body":[[S
    .end local v8    # "collision":[[S
    .end local v12    # "fCollisionCount":S
    .end local v13    # "fReferencePointCount":S
    .end local v14    # "fTileCount":S
    .end local v15    # "fTileData":[[S
    .end local v17    # "frameBottom":S
    .end local v19    # "frameLeft":S
    .end local v20    # "frameRight":S
    .end local v21    # "frameTop":S
    .end local v25    # "k":I
    .end local v27    # "nActivateCount":S
    .end local v28    # "nAttackCount":S
    .end local v29    # "nBodyCount":S
    .end local v33    # "nSportsCount":S
    .end local v35    # "offset":I
    .end local v38    # "reference":[[S
    .end local v39    # "sports":[[S
    .restart local v26    # "nActionCount":S
    :cond_1a
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v36

    .line 225
    .local v36, "offsetx":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v37

    .line 226
    .local v37, "offsety":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 227
    .local v3, "aFrameCount":S
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 228
    .local v16, "flag":B
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 229
    .local v4, "aTransform":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    add-int/lit8 v41, v16, 0x1

    mul-int v41, v41, v3

    add-int/lit8 v41, v41, 0x5

    move/from16 v0, v41

    new-array v0, v0, [S

    move-object/from16 v41, v0

    aput-object v41, v40, v24

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    const/16 v41, 0x0

    aput-short v36, v40, v41

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    const/16 v41, 0x1

    aput-short v37, v40, v41

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    const/16 v41, 0x2

    aput-short v3, v40, v41

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    const/16 v41, 0x3

    aput-short v4, v40, v41

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    const/16 v41, 0x4

    aput-short v16, v40, v41

    .line 236
    new-array v0, v3, [S

    move-object/from16 v18, v0

    .line 237
    .local v18, "frameIndex":[S
    const/4 v9, 0x0

    .line 238
    .local v9, "delay":S
    const/16 v35, 0x5

    .line 239
    .restart local v35    # "offset":I
    const/16 v25, 0x0

    .restart local v25    # "k":I
    :goto_1a
    move/from16 v0, v25

    if-lt v0, v3, :cond_1b

    .line 223
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 241
    :cond_1b
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v40

    aput-short v40, v18, v25

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-short v41, v18, v25

    aget-object v40, v40, v41

    const/16 v41, 0x1

    aget-short v40, v40, v41

    if-lez v40, :cond_1c

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget v41, v40, v24

    add-int/lit8 v41, v41, 0x1

    aput v41, v40, v24

    .line 247
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    aget-short v41, v18, v25

    aput-short v41, v40, v35

    .line 249
    const/16 v40, 0x1

    move/from16 v0, v16

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d

    .line 250
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    move-object/from16 v40, v0

    aget-object v40, v40, p2

    aget-object v40, v40, v24

    add-int/lit8 v41, v35, 0x1

    aput-short v9, v40, v41
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_1d
    add-int/lit8 v40, v16, 0x1

    add-int v35, v35, v40

    .line 239
    add-int/lit8 v25, v25, 0x1

    goto :goto_1a

    .line 260
    .end local v3    # "aFrameCount":S
    .end local v4    # "aTransform":B
    .end local v9    # "delay":S
    .end local v16    # "flag":B
    .end local v18    # "frameIndex":[S
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v25    # "k":I
    .end local v26    # "nActionCount":S
    .end local v30    # "nFrameCount":S
    .end local v31    # "nResCount":S
    .end local v32    # "nResIndex":[[S
    .end local v34    # "nTileCount":S
    .end local v35    # "offset":I
    .end local v36    # "offsetx":S
    .end local v37    # "offsety":S
    :catch_0
    move-exception v11

    .line 261
    .local v11, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 262
    const/16 v23, 0x0

    .line 263
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public deleteResource(I)V
    .locals 5
    .param p1, "spriteIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 268
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->spxUsed:[S

    aget-short v2, v2, p1

    if-lez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->spxUsed:[S

    aget-short v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    aput-short v3, v2, p1

    .line 271
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->spxUsed:[S

    aget-short v2, v2, p1

    if-nez v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aput-object v4, v2, p1

    .line 273
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aput-object v4, v2, p1

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p1

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aput-object v4, v2, p1

    .line 286
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 276
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-short v1, v2, v3

    .line 277
    .local v1, "imageUse":I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->imageUsed:[S

    aget-short v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 278
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->imageUsed:[S

    aget-short v2, v2, v1

    if-nez v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    aput-object v4, v2, v1

    .line 275
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawSpriteX(IIIIIZ)I
    .locals 5
    .param p1, "drawX"    # I
    .param p2, "drawY"    # I
    .param p3, "spriteIndex"    # I
    .param p4, "actionIndex"    # I
    .param p5, "frameIndex"    # I
    .param p6, "isMirror"    # Z

    .prologue
    .line 322
    invoke-virtual {p0, p4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->setActionWithoutChangeFrame(I)V

    .line 323
    invoke-virtual {p0, p3, p4, p5}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->setFrame(III)V

    .line 324
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 325
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    neg-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    neg-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x2

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 326
    if-eqz p6, :cond_0

    .line 327
    invoke-virtual {p0, p3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->horizontalMirror(I)V

    .line 328
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v0, p3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->paint(Ljavax/microedition/lcdui/Graphics;I)V

    .line 329
    invoke-virtual {p0, p3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->horizontalMirror(I)V

    .line 333
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    neg-int v1, p1

    neg-int v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 334
    invoke-virtual {p0, p3, p4, p5}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->nextFrame(III)I

    move-result v0

    return v0

    .line 331
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v0, p3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->paint(Ljavax/microedition/lcdui/Graphics;I)V

    goto :goto_0
.end method

.method public getAttack(III)[S
    .locals 7
    .param p1, "sprite"    # I
    .param p2, "action"    # I
    .param p3, "frame"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 468
    const/4 v1, 0x0

    check-cast v1, [S

    .line 469
    .local v1, "result":[S
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    const/4 v4, 0x4

    aget-short v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x5

    aget-short v0, v2, v3

    .line 470
    .local v0, "realFrame":I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    aget-short v2, v2, v6

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    aget-short v2, v2, v6

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [S

    .line 472
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    .line 473
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    aget-short v3, v3, v5

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x7

    .line 474
    array-length v4, v1

    .line 472
    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_0
    return-object v1
.end method

.method public getBody(III)[S
    .locals 7
    .param p1, "sprite"    # I
    .param p2, "action"    # I
    .param p3, "frame"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 456
    const/4 v1, 0x0

    check-cast v1, [S

    .line 457
    .local v1, "result":[S
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    const/4 v4, 0x4

    aget-short v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x5

    aget-short v0, v2, v3

    .line 458
    .local v0, "realFrame":I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    aget-short v2, v2, v5

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    aget-short v2, v2, v5

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [S

    .line 460
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    .line 461
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    aget-short v3, v3, v6

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x7

    .line 462
    array-length v4, v1

    .line 460
    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    :cond_0
    return-object v1
.end method

.method public getSequenceLength(II)I
    .locals 2
    .param p1, "spriteIndex"    # I
    .param p2, "actionIndex"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const/4 v1, 0x2

    aget-short v0, v0, v1

    return v0
.end method

.method horizontalMirror(I)V
    .locals 5
    .param p1, "spriteIndex"    # I

    .prologue
    const/4 v4, 0x3

    .line 309
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v1, v1, p1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v1, v1, v2

    aget-short v0, v1, v4

    .line 310
    .local v0, "transform":I
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v1, v1, p1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->ROTATE_TABLE:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    aput-short v2, v1, v4

    .line 311
    return-void
.end method

.method public nextFrame(III)I
    .locals 1
    .param p1, "spriteIndex"    # I
    .param p2, "actionIndex"    # I
    .param p3, "frameIndex"    # I

    .prologue
    .line 314
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v0

    rem-int v0, p3, v0

    return v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 22
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "spriteIndex"    # I

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 339
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-short v12, v2, v3

    .line 343
    .local v12, "actionTransform":I
    if-nez v12, :cond_3

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget-short v13, v2, v3

    .line 361
    .local v13, "actionflag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sequenceIndex:I

    add-int/lit8 v11, v13, 0x1

    mul-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x5

    aget-short v16, v2, v3

    .line 362
    .local v16, "frameIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    const/4 v3, 0x0

    aget-short v20, v2, v3

    .line 364
    .local v20, "tileCount":I
    const/16 v19, 0x7

    .line 365
    .local v19, "offset":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 453
    :cond_1
    return-void

    .line 366
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    aget-short v21, v2, v19

    .line 367
    .local v21, "tileIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x1

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    add-int v9, v2, v3

    .line 368
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x2

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    add-int v10, v2, v3

    .line 369
    .local v10, "dy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x3

    aget-short v8, v2, v3

    .line 370
    .local v8, "transform":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget-short v18, v2, v3

    .line 371
    .local v18, "imageIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x1

    aget-short v4, v2, v3

    .line 372
    .local v4, "tx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x2

    aget-short v5, v2, v3

    .line 373
    .local v5, "ty":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x3

    aget-short v6, v2, v3

    .line 374
    .local v6, "tw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x4

    aget-short v7, v2, v3

    .line 375
    .local v7, "th":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v2, v18

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 376
    add-int/lit8 v19, v19, 0x4

    .line 365
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 398
    .end local v4    # "tx":I
    .end local v5    # "ty":I
    .end local v6    # "tw":I
    .end local v7    # "th":I
    .end local v8    # "transform":I
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v13    # "actionflag":I
    .end local v16    # "frameIndex":I
    .end local v17    # "i":I
    .end local v18    # "imageIndex":I
    .end local v19    # "offset":I
    .end local v20    # "tileCount":I
    .end local v21    # "tileIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget-short v13, v2, v3

    .line 399
    .restart local v13    # "actionflag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    aget-object v2, v2, p2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sequenceIndex:I

    add-int/lit8 v11, v13, 0x1

    mul-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x5

    aget-short v16, v2, v3

    .line 400
    .restart local v16    # "frameIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    const/4 v3, 0x0

    aget-short v20, v2, v3

    .line 402
    .restart local v20    # "tileCount":I
    const/16 v19, 0x7

    .line 403
    .restart local v19    # "offset":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    aget-short v21, v2, v19

    .line 405
    .restart local v21    # "tileIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x1

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    add-int v9, v2, v3

    .line 406
    .restart local v9    # "dx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x2

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    add-int v10, v2, v3

    .line 407
    .restart local v10    # "dy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v16

    add-int/lit8 v3, v19, 0x3

    aget-short v8, v2, v3

    .line 408
    .restart local v8    # "transform":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget-short v18, v2, v3

    .line 409
    .restart local v18    # "imageIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x1

    aget-short v4, v2, v3

    .line 410
    .restart local v4    # "tx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x2

    aget-short v5, v2, v3

    .line 411
    .restart local v5    # "ty":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x3

    aget-short v6, v2, v3

    .line 412
    .restart local v6    # "tw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->tileData:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v21

    const/4 v3, 0x4

    aget-short v7, v2, v3

    .line 413
    .restart local v7    # "th":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v14, v2, v9

    .line 414
    .local v14, "cx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v15, v2, v10

    .line 416
    .local v15, "cy":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->TRANSFORM_TABLE:[[B

    aget-object v2, v2, v8

    aget-byte v8, v2, v12

    .line 418
    packed-switch v12, :pswitch_data_0

    .line 449
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v2, v18

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 450
    add-int/lit8 v19, v19, 0x4

    .line 403
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 423
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v3, v7, v15

    sub-int v9, v2, v3

    .line 424
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v10, v2, v14

    .line 425
    goto :goto_2

    .line 427
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v3, v6, v14

    sub-int v9, v2, v3

    .line 428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v3, v7, v15

    sub-int v10, v2, v3

    .line 429
    goto :goto_2

    .line 431
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v9, v2, v15

    .line 432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v3, v6, v14

    sub-int v10, v2, v3

    .line 433
    goto :goto_2

    .line 435
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    const/4 v2, 0x4

    if-lt v8, v2, :cond_4

    sub-int v2, v7, v14

    :goto_3
    sub-int v9, v3, v2

    .line 436
    goto :goto_2

    .line 435
    :cond_4
    sub-int v2, v6, v14

    goto :goto_3

    .line 438
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v3, v7, v15

    sub-int v9, v2, v3

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v3, v6, v14

    sub-int v10, v2, v3

    .line 440
    goto :goto_2

    .line 442
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v3, v7, v15

    sub-int v10, v2, v3

    .line 443
    goto :goto_2

    .line 445
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->x:I

    sub-int v9, v2, v15

    .line 446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->y:I

    sub-int v10, v2, v14

    goto :goto_2

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setActionWithoutChangeFrame(I)V
    .locals 0
    .param p1, "actionIndex"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionIndex:I

    .line 296
    return-void
.end method

.method public setFrame(III)V
    .locals 1
    .param p1, "spriteIndex"    # I
    .param p2, "actionIndex"    # I
    .param p3, "sequenceIndex"    # I

    .prologue
    .line 299
    if-ltz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 300
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(I)V

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(I)V

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(I)V

    .line 303
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 305
    :cond_1
    iput p3, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sequenceIndex:I

    .line 306
    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;I)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "index"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->image:[Ljavax/microedition/lcdui/Image;

    aput-object p1, v0, p2

    .line 292
    :cond_0
    return-void
.end method
