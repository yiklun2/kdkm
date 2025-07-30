.class public Lcom/jarworld/rpg/sanguocollege/GameMapManager;
.super Ljava/lang/Object;
.source "GameMapManager.java"


# instance fields
.field a_byt_npc:[B

.field public coversArray:[[Lcom/jarworld/rpg/sanguocollege/Cover;

.field public m_byt_horNum:B

.field public m_byt_monsterID:[B

.field public m_byt_verNum:B

.field public m_mapBarrier:[Z

.field public m_sMapHeight:S

.field public m_sMapWidth:S

.field public npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

.field oneNPCBytes:S

.field searchNpc:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    .line 224
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->loadMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private initNpc(Lcom/jarworld/rpg/sanguocollege/GameNPC;BB)V
    .locals 5
    .param p1, "npc"    # Lcom/jarworld/rpg/sanguocollege/GameNPC;
    .param p2, "actIdx"    # B
    .param p3, "turn"    # B

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-byte v0, p1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    iget-byte v2, p1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    iget-byte v3, p1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget-byte v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->turn(BFF)V

    .line 256
    invoke-virtual {p1, v4, v4}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    .line 257
    invoke-virtual {p1, p2, p3}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeAction(II)V

    .line 258
    return-void
.end method

.method private searchNpc(S)V
    .locals 8
    .param p1, "npcID"    # S

    .prologue
    const/4 v7, 0x0

    .line 227
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    if-nez v3, :cond_0

    .line 228
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/bin/eventNPC.bin"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 233
    .local v2, "size":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    .line 235
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    mul-int v0, v2, v3

    .line 237
    .local v0, "byteSize":I
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    .line 238
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    .line 240
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 241
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    mul-int/2addr v4, p1

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    const/4 v6, 0x0

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    const/4 v1, 0x0

    .line 251
    .end local v0    # "byteSize":I
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "size":I
    :goto_0
    return-void

    .line 243
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    .line 246
    const/4 v1, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v3

    .line 246
    const/4 v1, 0x0

    .line 247
    throw v3

    .line 249
    .end local v1    # "dis":Ljava/io/DataInputStream;
    :cond_0
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    mul-int/2addr v4, p1

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->oneNPCBytes:S

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public loadMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 40
    const/16 v20, 0x0

    .line 41
    .local v20, "input1":Ljava/io/DataInputStream;
    new-instance v20, Ljava/io/DataInputStream;

    .end local v20    # "input1":Ljava/io/DataInputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .restart local v20    # "input1":Ljava/io/DataInputStream;
    const/16 v21, 0x0

    .line 43
    .local v21, "input2":Ljava/io/DataInputStream;
    new-instance v21, Ljava/io/DataInputStream;

    .end local v21    # "input2":Ljava/io/DataInputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    .restart local v21    # "input2":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    .line 49
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    .line 51
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    .line 53
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v27

    .line 55
    .local v27, "resCount":S
    move/from16 v0, v27

    new-array v2, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    .line 56
    move/from16 v0, v27

    new-array v2, v0, [S

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImgNum:[S

    .line 57
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 66
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    .line 67
    .local v12, "clipNum":S
    new-array v2, v12, [[S

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    .line 69
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-lt v0, v12, :cond_1

    .line 80
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v26

    .line 81
    .local v26, "objectNum":S
    move/from16 v0, v26

    new-array v2, v0, [[[S

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    .line 82
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 98
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    .line 100
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    .line 102
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    .line 104
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    mul-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    .line 106
    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    move/from16 v0, v18

    if-lt v0, v2, :cond_6

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->coversArray:[[Lcom/jarworld/rpg/sanguocollege/Cover;

    .line 114
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 116
    const/4 v2, 0x2

    new-array v2, v2, [[Lcom/jarworld/rpg/sanguocollege/Cover;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->coversArray:[[Lcom/jarworld/rpg/sanguocollege/Cover;

    .line 119
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 120
    .local v15, "coverTypeNum":B
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    if-lt v0, v15, :cond_8

    .line 130
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V

    .line 131
    const/16 v20, 0x0

    .line 135
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v3

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    .line 136
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_a

    .line 139
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    .line 140
    .local v10, "barrierNum":S
    const/16 v23, 0x0

    .end local v18    # "i":I
    .local v23, "k":I
    :goto_6
    move/from16 v0, v23

    if-lt v0, v10, :cond_b

    .line 148
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v25

    .line 149
    .local v25, "npcCount":S
    move/from16 v0, v25

    new-array v2, v0, [Lcom/jarworld/rpg/sanguocollege/GameNPC;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 150
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_c

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc:[B

    .line 214
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V

    .line 215
    const/16 v21, 0x0

    .line 221
    .end local v10    # "barrierNum":S
    .end local v12    # "clipNum":S
    .end local v15    # "coverTypeNum":B
    .end local v18    # "i":I
    .end local v23    # "k":I
    .end local v25    # "npcCount":S
    .end local v26    # "objectNum":S
    .end local v27    # "resCount":S
    :goto_8
    return-void

    .line 58
    .restart local v18    # "i":I
    .restart local v27    # "resCount":S
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImgNum:[S

    const/4 v3, -0x1

    aput-short v3, v2, v18

    .line 60
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImgNum:[S

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v18

    .line 62
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mg/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImgNum:[S

    aget-short v4, v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aput-object v3, v2, v18

    .line 57
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 71
    .restart local v12    # "clipNum":S
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    .line 72
    .local v11, "clipLen":B
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    new-array v3, v11, [S

    aput-object v3, v2, v18

    .line 74
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_9
    move/from16 v0, v22

    if-lt v0, v11, :cond_2

    .line 69
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 75
    :cond_2
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    aget-object v2, v2, v18

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v22

    .line 74
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 84
    .end local v11    # "clipLen":B
    .end local v22    # "j":I
    .restart local v26    # "objectNum":S
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v17

    .line 85
    .local v17, "frameCount":S
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    move/from16 v0, v17

    new-array v3, v0, [[S

    aput-object v3, v2, v18

    .line 86
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_a
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 82
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 88
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v24

    .line 89
    .local v24, "len":S
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    aget-object v2, v2, v18

    move/from16 v0, v24

    new-array v3, v0, [S

    aput-object v3, v2, v22

    .line 90
    const/16 v23, 0x0

    .restart local v23    # "k":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 86
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 92
    :cond_5
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    aget-object v2, v2, v18

    aget-object v2, v2, v22

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v23

    .line 90
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 107
    .end local v17    # "frameCount":S
    .end local v22    # "j":I
    .end local v23    # "k":I
    .end local v24    # "len":S
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_c
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    .line 106
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 109
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 107
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 122
    .end local v22    # "j":I
    .restart local v15    # "coverTypeNum":B
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 123
    .local v14, "coverType":B
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    .line 124
    .local v13, "coverNum":S
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->coversArray:[[Lcom/jarworld/rpg/sanguocollege/Cover;

    add-int/lit8 v3, v14, -0x1

    new-array v4, v13, [Lcom/jarworld/rpg/sanguocollege/Cover;

    aput-object v4, v2, v3

    .line 125
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_d
    move/from16 v0, v22

    if-lt v0, v13, :cond_9

    .line 120
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 126
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->coversArray:[[Lcom/jarworld/rpg/sanguocollege/Cover;

    add-int/lit8 v3, v14, -0x1

    aget-object v2, v2, v3

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/Cover;

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/Cover;-><init>(SII)V

    aput-object v3, v2, v22

    .line 125
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 137
    .end local v13    # "coverNum":S
    .end local v14    # "coverType":B
    .end local v22    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v18

    .line 136
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 141
    .end local v18    # "i":I
    .restart local v10    # "barrierNum":S
    .restart local v23    # "k":I
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 142
    .local v18, "i":B
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readByte()B

    move-result v22

    .line 143
    .local v22, "j":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int v3, v3, v18

    add-int v3, v3, v22

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 140
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 151
    .end local v22    # "j":B
    .local v18, "i":I
    .restart local v25    # "npcCount":S
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/GameNPC;-><init>()V

    aput-object v3, v2, v18

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-short v4, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornHorIdx:S

    iput-short v4, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-short v4, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornVerIdx:S

    iput-short v4, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    mul-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    mul-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->searchNpc(S)V

    .line 159
    new-instance v19, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->a_byt_npc:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->npcType:B

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionTurn:B

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_dlgBb:B

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    .line 173
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_e
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v2, v2, v3

    array-length v2, v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_f

    .line 180
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-byte v2, v2, v3

    const/4 v3, -0x2

    if-ne v2, v3, :cond_11

    .line 181
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v3

    .line 186
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    if-lez v2, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->initPatrol()V

    .line 190
    :cond_d
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v2, v2, v3

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    .line 192
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    .line 193
    const/4 v5, -0x1

    .line 194
    const/4 v6, -0x1

    .line 195
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 196
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 197
    const/4 v9, 0x1

    .line 190
    invoke-virtual/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->add(SSSBSBZ)V

    .line 199
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getMissionID()S

    move-result v2

    if-ltz v2, :cond_e

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v4, v4, v18

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getBubbleBrowID()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    const/4 v3, 0x0

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->bbFrameIndex:I

    .line 204
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v4, v4, v18

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionTurn:B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->initNpc(Lcom/jarworld/rpg/sanguocollege/GameNPC;BB)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V

    .line 206
    const/16 v19, 0x0

    .line 150
    .end local v22    # "j":I
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 174
    .restart local v22    # "j":I
    :cond_f
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v2, v2, v3

    aget-short v2, v2, v22

    const/4 v3, -0x2

    if-ne v2, v3, :cond_10

    .line 175
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v18

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v2, v2, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v22

    .line 173
    :goto_11
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_e

    .line 177
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_11

    .line 207
    .end local v22    # "j":I
    :catch_0
    move-exception v16

    .line 208
    .local v16, "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    .line 209
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_10

    .line 216
    .end local v10    # "barrierNum":S
    .end local v12    # "clipNum":S
    .end local v15    # "coverTypeNum":B
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "i":I
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v23    # "k":I
    .end local v25    # "npcCount":S
    .end local v26    # "objectNum":S
    .end local v27    # "resCount":S
    :catch_1
    move-exception v16

    .line 217
    .restart local v16    # "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    .line 218
    const/16 v21, 0x0

    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 183
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v10    # "barrierNum":S
    .restart local v12    # "clipNum":S
    .restart local v15    # "coverTypeNum":B
    .restart local v18    # "i":I
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "j":I
    .restart local v23    # "k":I
    .restart local v25    # "npcCount":S
    .restart local v26    # "objectNum":S
    .restart local v27    # "resCount":S
    :cond_11
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_f
.end method
