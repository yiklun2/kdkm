.class public Lcom/jarworld/rpg/sanguocollege/GameNPC;
.super Lcom/jarworld/rpg/sanguocollege/GameCharacter;
.source "GameNPC.java"


# static fields
.field public static final ACTION_BACK:B = 0x3t

.field public static final ACTION_CHASE:B = 0x2t

.field public static final ACTION_DAZE:B = 0x4t

.field public static final ACTION_HOLD:B = 0x0t

.field public static final ACTION_MOVE:B = 0x1t

.field public static final DOOR:B = 0x0t

.field public static final NDOOR:B = 0x1t

.field public static NPC_EXIST:[Z

.field public static NPC_MONID:[[S

.field public static NPC_MONNUM:[B

.field public static NPC_TOUCH:[Z


# instance fields
.field public m_b_isAliveInScene:Z

.field public m_byt_actionType:B

.field public m_byt_canAssault:B

.field public m_byt_dlgBb:B

.field public m_byt_patrolHeight:B

.field public m_byt_patrolWidth:B

.field public m_i_rLFrame:I

.field public m_s_aiDazeCount:S

.field public m_s_aiHoldCount:S

.field public m_s_aiStepCount:S

.field public m_s_bornHorIdx:S

.field public m_s_bornVerIdx:S

.field public m_s_maxAIHoldNum:S

.field public m_s_maxAIStepNum:S

.field public m_s_patrol_LUX:S

.field public m_s_patrol_LUY:S

.field public m_s_patrol_RDX:S

.field public m_s_patrol_RDY:S

.field public m_s_reliveTimer:S

.field public npcType:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v2

    new-array v0, v0, [Z

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    .line 7
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v2

    new-array v0, v0, [Z

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    .line 9
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v2

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    .line 11
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v2

    new-array v0, v0, [B

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    .line 76
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->characterType:B

    .line 77
    invoke-virtual {p0, v0, v0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->setSpeed(BZ)V

    .line 78
    return-void
.end method

.method private backLogic()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 328
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_lastSpeed:B

    invoke-virtual {p0, v4, v3}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->setSpeed(BZ)V

    .line 330
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiHoldCount:S

    .line 331
    const/16 v4, 0xa

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIHoldNum:S

    .line 333
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiStepCount:S

    .line 334
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_speedValue:B

    div-int/2addr v4, v5

    invoke-static {v2, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIStepNum:S

    .line 335
    invoke-static {v3, v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    int-to-byte v0, v4

    .line 336
    .local v0, "dir":B
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    aget-byte v4, v4, v0

    int-to-float v4, v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    aget-byte v5, v5, v0

    int-to-float v5, v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->turn(BFF)V

    .line 338
    invoke-static {v3, v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v4

    rem-int/lit8 v1, v4, 0x4

    .line 339
    .local v1, "r":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v3

    .line 340
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move v1, v2

    .end local v1    # "r":I
    :cond_1
    int-to-byte v2, v1

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 341
    return-void
.end method

.method private chevyLogic()V
    .locals 18

    .prologue
    .line 250
    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->setSpeed(BZ)V

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v1, v2

    .line 254
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v3, 0x0

    add-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    .line 253
    sub-float v11, v1, v2

    .line 256
    .local v11, "dx":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v1, v2

    .line 257
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v3, 0x0

    add-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    .line 256
    sub-float v12, v1, v2

    .line 258
    .local v12, "dy":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-eqz v1, :cond_14

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lAHitCheck()Z

    move-result v1

    if-nez v1, :cond_14

    .line 259
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-gez v1, :cond_3

    const/4 v9, 0x1

    .line 260
    .local v9, "drx":I
    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gez v1, :cond_4

    const/4 v10, 0x1

    .line 261
    .local v10, "dry":I
    :goto_1
    int-to-float v1, v9

    neg-int v2, v9

    int-to-float v2, v2

    mul-float/2addr v2, v11

    neg-int v3, v9

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v11

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_speedValue:B

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    .line 262
    int-to-float v1, v10

    neg-int v2, v10

    int-to-float v2, v2

    mul-float/2addr v2, v12

    neg-int v3, v10

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_speedValue:B

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    .line 264
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 266
    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeAction(II)V

    .line 278
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->hitCheck()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 280
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-eqz v1, :cond_1

    .line 282
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    .line 283
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    .line 284
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    int-to-float v1, v10

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->hitCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 303
    :cond_1
    :goto_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    add-int/lit8 v14, v1, -0x10

    .line 304
    .local v14, "mw":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    add-int/lit8 v13, v1, -0x10

    .line 305
    .local v13, "mh":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    const/4 v1, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 306
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    const/4 v1, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 308
    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDX:S

    add-int/lit8 v16, v1, -0x10

    .line 309
    .local v16, "pw":I
    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDY:S

    add-int/lit8 v15, v1, -0x10

    .line 310
    .local v15, "ph":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    int-to-float v1, v1

    :goto_7
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 311
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    int-to-float v1, v1

    :goto_8
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 313
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    move-object/from16 v0, p0

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    move-object/from16 v0, p0

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    .line 323
    .end local v9    # "drx":I
    .end local v10    # "dry":I
    .end local v13    # "mh":I
    .end local v14    # "mw":I
    .end local v15    # "ph":I
    .end local v16    # "pw":I
    :cond_2
    :goto_9
    return-void

    .line 259
    :cond_3
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 260
    .restart local v9    # "drx":I
    :cond_4
    const/4 v10, -0x1

    goto/16 :goto_1

    .line 268
    .restart local v10    # "dry":I
    :cond_5
    const/4 v1, 0x3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeAction(II)V

    goto/16 :goto_2

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    .line 272
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionTurn:B

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeAction(II)V

    goto/16 :goto_2

    .line 274
    :cond_7
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionTurn:B

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeAction(II)V

    goto/16 :goto_2

    .line 284
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    goto/16 :goto_3

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    int-to-float v1, v9

    :goto_a
    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    .line 291
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->hitCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    goto/16 :goto_4

    .line 290
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    goto :goto_a

    .line 299
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 300
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    goto/16 :goto_4

    .line 305
    .restart local v13    # "mh":I
    .restart local v14    # "mw":I
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    int-to-float v2, v14

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    int-to-float v1, v14

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    goto/16 :goto_5

    .line 306
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    int-to-float v2, v13

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    int-to-float v1, v13

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    goto/16 :goto_6

    .line 310
    .restart local v15    # "ph":I
    .restart local v16    # "pw":I
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    move/from16 v0, v16

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    move/from16 v0, v16

    int-to-float v1, v0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    goto/16 :goto_7

    .line 311
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    int-to-float v2, v15

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    int-to-float v1, v15

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    goto/16 :goto_8

    .line 315
    .end local v9    # "drx":I
    .end local v10    # "dry":I
    .end local v13    # "mh":I
    .end local v14    # "mw":I
    .end local v15    # "ph":I
    .end local v16    # "pw":I
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lAHitCheck()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_lastSpeed:B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->setSpeed(BZ)V

    .line 319
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    .line 321
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    move-object/from16 v0, p0

    iget-short v8, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-byte v7, v7, v8

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    move/from16 v17, v0

    aget-object v8, v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameScene;->gotoFight(ZZIIII[S)V

    goto/16 :goto_9
.end method

.method private dazeLogic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    .line 346
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiDazeCount:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiDazeCount:S

    .line 348
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiDazeCount:S

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 349
    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiDazeCount:S

    .line 350
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 352
    :cond_0
    return-void
.end method

.method private holdLogic()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0, v2, v1}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    .line 190
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiHoldCount:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiHoldCount:S

    .line 192
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiHoldCount:S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIHoldNum:S

    if-lt v3, v4, :cond_2

    .line 194
    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiHoldCount:S

    .line 195
    const/16 v3, 0xa

    const/16 v4, 0x28

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIHoldNum:S

    .line 197
    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v3

    rem-int/lit8 v0, v3, 0x4

    .line 198
    .local v0, "r":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 199
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    .end local v0    # "r":I
    :cond_1
    int-to-byte v1, v0

    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 201
    :cond_2
    return-void
.end method

.method private lAHitCheck()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-nez v0, :cond_1

    .line 381
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    if-eqz v0, :cond_1

    .line 382
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v3, v3}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveLogic()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lAHitCheck()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v6, v6, v7

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    add-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x4

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    if-ne v6, v7, :cond_1

    .line 208
    invoke-virtual {p0, v5, v4}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->hitCheck()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    invoke-direct {p0, v6, v7}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->patrolHitCheck(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    :cond_2
    invoke-static {v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->getRandArray(I)[I

    move-result-object v1

    .line 213
    .local v1, "directOffset":[I
    const/4 v2, 0x0

    .line 214
    .local v2, "i":I
    :goto_1
    if-lt v2, v11, :cond_7

    .line 225
    :cond_3
    if-eq v2, v11, :cond_0

    .line 230
    .end local v1    # "directOffset":[I
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0, v4, v4}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    .line 231
    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    invoke-virtual {p0, v6, v7}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->baseMove(FF)V

    .line 232
    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiStepCount:S

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    iput-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiStepCount:S

    .line 234
    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiStepCount:S

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIStepNum:S

    if-lt v6, v7, :cond_0

    .line 236
    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_aiStepCount:S

    .line 237
    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_speedValue:B

    div-int/2addr v6, v7

    invoke-static {v4, v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIStepNum:S

    .line 238
    invoke-static {v5, v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 239
    .local v0, "dir":B
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    aget-byte v6, v6, v0

    int-to-float v6, v6

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    aget-byte v7, v7, v0

    int-to-float v7, v7

    invoke-virtual {p0, v0, v6, v7}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->turn(BFF)V

    .line 241
    invoke-static {v5, v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v6

    rem-int/lit8 v3, v6, 0x4

    .line 242
    .local v3, "r":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    move v3, v5

    .line 243
    :cond_5
    if-ne v3, v11, :cond_6

    move v3, v4

    .end local v3    # "r":I
    :cond_6
    int-to-byte v4, v3

    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    goto :goto_0

    .line 215
    .end local v0    # "dir":B
    .restart local v1    # "directOffset":[I
    .restart local v2    # "i":I
    :cond_7
    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget v7, v1, v2

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    iget-byte v8, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget v9, v1, v2

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    int-to-float v7, v7

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    iget-byte v9, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget v10, v1, v2

    add-int/2addr v9, v10

    rem-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-float v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->turn(BFF)V

    .line 216
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lAHitCheck()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v6, v6, v7

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    add-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x4

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    if-ne v6, v7, :cond_8

    .line 218
    invoke-virtual {p0, v5, v4}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->changeRoleState(BZ)V

    goto/16 :goto_0

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->hitCheck()Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    invoke-direct {p0, v6, v7}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->patrolHitCheck(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private patrolHitCheck(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 362
    add-float v0, p1, v2

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    add-float/2addr v0, v1

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDX:S

    add-int/lit8 v1, v1, -0x10

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 364
    add-float v0, p1, v2

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedX:F

    add-float/2addr v0, v1

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 366
    add-float v0, p2, v2

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    add-float/2addr v0, v1

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDY:S

    add-int/lit8 v1, v1, -0x10

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 368
    add-float v0, p2, v2

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_speedY:F

    add-float/2addr v0, v1

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public act()V
    .locals 9

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-ne v2, v5, :cond_3

    .line 126
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 127
    new-array v0, v6, [F

    .line 129
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    add-float/2addr v2, v7

    add-float/2addr v2, v8

    aput v2, v0, v4

    .line 131
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    add-float/2addr v2, v7

    add-float/2addr v2, v8

    aput v2, v0, v5

    .line 133
    .local v0, "a":[F
    new-array v1, v6, [I

    .line 135
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v1, v4

    .line 137
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 140
    .local v1, "b":[I
    aget v2, v0, v4

    aget v3, v1, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 142
    aget v2, v0, v5

    aget v3, v1, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 144
    sget-boolean v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-nez v2, :cond_1

    .line 146
    iput-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 164
    .end local v0    # "a":[F
    .end local v1    # "b":[I
    :cond_0
    :goto_0
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    packed-switch v2, :pswitch_data_0

    .line 185
    :goto_1
    return-void

    .line 149
    .restart local v0    # "a":[F
    .restart local v1    # "b":[I
    :cond_1
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    if-ne v2, v6, :cond_0

    .line 150
    const/4 v2, 0x3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    goto :goto_0

    .line 155
    :cond_2
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    if-ne v2, v6, :cond_0

    .line 156
    const/4 v2, 0x3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    goto :goto_0

    .line 160
    .end local v0    # "a":[F
    .end local v1    # "b":[I
    :cond_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    if-ne p0, v2, :cond_0

    .line 162
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->holdLogic()V

    goto :goto_1

    .line 170
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->moveLogic()V

    goto :goto_1

    .line 174
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->chevyLogic()V

    goto :goto_1

    .line 178
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->backLogic()V

    goto :goto_1

    .line 182
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->dazeLogic()V

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public beAttacked(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 0
    .param p1, "enemy"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 463
    return-void
.end method

.method public draw()V
    .locals 8

    .prologue
    const/16 v3, 0x189

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 428
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-nez v0, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 429
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-ne v0, v6, :cond_6

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    if-eqz v0, :cond_6

    .line 431
    :cond_1
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lastActionIndex:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    if-eq v0, v1, :cond_2

    .line 432
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lastActionIndex:S

    .line 433
    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    .line 436
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionTurn:B

    if-ne v0, v6, :cond_5

    .line 437
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    float-to-int v2, v2

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    .line 442
    :goto_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    if-lez v0, :cond_3

    .line 443
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    if-nez v0, :cond_3

    .line 444
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    .line 448
    :cond_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->drawBubble(B)V

    .line 459
    :cond_4
    :goto_1
    return-void

    .line 439
    :cond_5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    float-to-int v2, v2

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    goto :goto_0

    .line 449
    :cond_6
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-ne v0, v6, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x17

    aget-short v1, v1, v2

    if-lt v0, v1, :cond_4

    .line 450
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-virtual {v1, v3, v7}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 451
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    .line 452
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    float-to-int v2, v2

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v4, v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x8

    .line 453
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    move v4, v7

    move v6, v7

    .line 451
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 455
    :cond_7
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    if-nez v0, :cond_4

    .line 456
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    goto :goto_1
.end method

.method public drawAttack()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public drawEffect()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public initPatrol()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornVerIdx:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    .line 87
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornHorIdx:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    .line 88
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUX:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDX:S

    .line 89
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_LUY:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_patrol_RDY:S

    .line 91
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolWidth:B

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_patrolHeight:B

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_speedValue:B

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIStepNum:S

    .line 93
    const/16 v0, 0xa

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_maxAIHoldNum:S

    .line 95
    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 96
    return-void
.end method

.method public levelUp()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public magicAttack(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 0
    .param p1, "receive"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 467
    return-void
.end method

.method public noDraw()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-nez v0, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    .line 392
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-ne v0, v2, :cond_6

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    if-eqz v0, :cond_6

    .line 394
    :cond_1
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lastActionIndex:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    if-eq v0, v1, :cond_2

    .line 395
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->lastActionIndex:S

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    .line 399
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionIndex:B

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->nextFrame(III)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    .line 401
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    if-lez v0, :cond_3

    .line 402
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->frameIndex:I

    if-nez v0, :cond_3

    .line 403
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->actionLoop:S

    .line 409
    :cond_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    if-gez v0, :cond_5

    .line 424
    :cond_4
    :goto_0
    return-void

    .line 412
    :cond_5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v1, 0x18f

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->bbFrameIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->nextFrame(III)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->bbFrameIndex:I

    .line 414
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bubbleBrowLoop:S

    if-lez v0, :cond_4

    .line 415
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->bbFrameIndex:I

    if-nez v0, :cond_4

    .line 416
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bubbleBrowLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bubbleBrowLoop:S

    goto :goto_0

    .line 419
    :cond_6
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x17

    aget-short v1, v1, v2

    if-lt v0, v1, :cond_4

    .line 420
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    if-nez v0, :cond_4

    .line 421
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    goto :goto_0
.end method

.method public phyAttack(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 0
    .param p1, "receive"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 471
    return-void
.end method

.method public relive()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x17

    aget-short v1, v1, v2

    if-ge v0, v1, :cond_1

    .line 102
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornHorIdx:S

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    .line 106
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_bornVerIdx:S

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    .line 107
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 108
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 110
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v2, 0x189

    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 111
    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_i_rLFrame:I

    .line 112
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_reliveTimer:S

    .line 113
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_b_isAliveInScene:Z

    .line 114
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_actionType:B

    .line 115
    invoke-virtual {p0, v4, v4}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->setSpeed(BZ)V

    .line 116
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_direct:B

    aget-byte v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameNPC;->turn(BFF)V

    goto :goto_0
.end method
