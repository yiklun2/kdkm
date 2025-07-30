.class public abstract Lcom/jarworld/rpg/sanguocollege/GameCharacter;
.super Ljava/lang/Object;
.source "GameCharacter.java"


# static fields
.field public static final BUBBLE_NONE:B = -0x1t

.field public static final BUBBLE_TALK:B = 0x0t

.field public static final CHARACTER_ID_LA:B = 0x0t

.field public static final CHARACTER_ID_MONSTER:B = 0x2t

.field public static final CHARACTER_ID_NPC:B = 0x1t

.field public static final STATE_MOVING:B = 0x1t

.field public static final STATE_STAND:B = 0x0t

.field public static final TACTICS_ITEM:B = 0x3t

.field public static final TACTICS_KILL:B = 0x5t

.field public static final TACTICS_PHYATT:B = 0x0t

.field public static final TACTICS_RECOVERY:B = 0x2t

.field public static final TACTICS_SHOP:B = 0x4t

.field public static final TACTICS_SKILL:B = 0x1t


# instance fields
.field public actionContinuance:B

.field public actionIndex:B

.field public actionLoop:S

.field public actionTurn:B

.field public agility:S

.field public bbFrameIndex:I

.field public characterType:B

.field public fFet:[[B

.field public frameIndex:I

.field public hp:I

.field public lastActionIndex:S

.field public luck:S

.field public mPIdx:I

.field public mPath:[[F

.field public m_b_immunity:Z

.field public m_b_isActionOver:Z

.field public m_b_isAlive:Z

.field public m_b_isCanPlay:Z

.field public m_b_isHadPlayed:Z

.field public m_b_isInBattle:Z

.field public m_b_isRecovery:Z

.field public m_byt_bubbleBrowID:B

.field public m_byt_direct:B

.field public m_byt_element:B

.field public m_byt_elementLvl:B

.field public m_byt_lastSpeed:B

.field public m_byt_level:B

.field public m_byt_posIndex:B

.field public m_byt_speedValue:B

.field public m_byt_state:B

.field public m_byt_stepCount:B

.field public m_byt_tactics:B

.field public m_f_posX:F

.field public m_f_posY:F

.field public m_f_speedX:F

.field public m_f_speedY:F

.field public m_i_curExp:I

.field public m_i_fetHurt:I

.field public m_i_nextExp:I

.field public m_s_ID:S

.field public m_s_bubbleBrowLoop:S

.field public m_s_fOriginPosX:S

.field public m_s_fOriginPosY:S

.field public m_s_fSpxIndex:S

.field public m_s_fightPosX:S

.field public m_s_fightPosY:S

.field public m_s_fightSpeedX:S

.field public m_s_fightSpeedY:S

.field public m_s_headImgIdx:S

.field public m_s_horIdx:S

.field public m_s_nameImgIndex:S

.field public m_s_phySGID:S

.field public m_s_sSpxIndex:S

.field public m_s_upAtt:S

.field public m_s_upDef:S

.field public m_s_verIdx:S

.field public magAttack:S

.field public magDefend:S

.field public maxHp:I

.field public maxMp:I

.field public mp:I

.field public phyAttack:S

.field public phyDefend:S

.field public sGInfo:[[S

.field public uiFIdx:I

.field public optimizationLevel:I

.field public performanceMode:Z

.field public cachedStats:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    .line 102
    const/4 v0, 0x1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->optimizationLevel:I

    .line 103
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->performanceMode:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->cachedStats:Ljava/util/Map;

    .line 103
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    .line 105
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 115
    new-array v2, v5, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    .line 116
    new-array v1, v5, [B

    aput-byte v3, v1, v4

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 117
    new-array v2, v5, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    .line 118
    new-array v1, v5, [B

    aput-byte v3, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x4

    .line 119
    new-array v2, v5, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    .line 151
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->lastActionIndex:S

    .line 157
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionLoop:S

    .line 182
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_bubbleBrowID:B

    .line 186
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_bubbleBrowLoop:S

    .line 202
    return-void
.end method

.method private amendDest(SSII[[[F)[S
    .locals 16
    .param p1, "destX"    # S
    .param p2, "destY"    # S
    .param p3, "h"    # I
    .param p4, "w"    # I
    .param p5, "movableRecord"    # [[[F

    .prologue
    .line 795
    if-gez p1, :cond_3

    .line 796
    const/16 p1, 0x0

    .line 800
    :cond_0
    :goto_0
    if-gez p2, :cond_4

    .line 801
    const/16 p2, 0x0

    .line 806
    :cond_1
    :goto_1
    aget-object v14, p5, p2

    aget-object v14, v14, p1

    const/4 v15, 0x0

    aget v14, v14, v15

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v14, v14, v15

    if-nez v14, :cond_2

    .line 807
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 808
    .local v13, "vec":Ljava/util/Vector;
    const/4 v10, 0x1

    .line 810
    .local v10, "run":Z
    const/4 v14, 0x2

    new-array v6, v14, [I

    fill-array-data v6, :array_0

    .line 811
    .local v6, "off":[I
    const/4 v5, 0x1

    .local v5, "len":I
    :goto_2
    if-nez v10, :cond_5

    .line 841
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 842
    .local v2, "d":[I
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-short v0, v14

    move/from16 p1, v0

    .line 843
    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-short v0, v14

    move/from16 p2, v0

    .line 844
    invoke-virtual {v13}, Ljava/util/Vector;->removeAllElements()V

    .line 847
    .end local v2    # "d":[I
    .end local v5    # "len":I
    .end local v6    # "off":[I
    .end local v10    # "run":Z
    .end local v13    # "vec":Ljava/util/Vector;
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [S

    const/4 v15, 0x0

    aput-short p1, v14, v15

    const/4 v15, 0x1

    aput-short p2, v14, v15

    return-object v14

    .line 797
    :cond_3
    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v14, v14, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v14, v14, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    move/from16 v0, p1

    if-lt v0, v14, :cond_0

    .line 798
    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v14, v14, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v14, v14, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    add-int/lit8 v14, v14, -0x1

    int-to-short v0, v14

    move/from16 p1, v0

    goto :goto_0

    .line 802
    :cond_4
    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v14, v14, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v14, v14, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    move/from16 v0, p2

    if-lt v0, v14, :cond_1

    .line 803
    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v14, v14, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v14, v14, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    add-int/lit8 v14, v14, -0x1

    int-to-short v0, v14

    move/from16 p2, v0

    goto :goto_1

    .line 812
    .restart local v5    # "len":I
    .restart local v6    # "off":[I
    .restart local v10    # "run":Z
    .restart local v13    # "vec":Ljava/util/Vector;
    :cond_5
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_3
    if-le v9, v5, :cond_6

    .line 811
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 813
    :cond_6
    sub-int v1, v5, v9

    .line 814
    .local v1, "col":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v14, v6

    if-lt v3, v14, :cond_7

    .line 812
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 815
    :cond_7
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    array-length v14, v6

    if-lt v4, v14, :cond_8

    .line 814
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 816
    :cond_8
    aget v14, v6, v4

    mul-int/2addr v14, v1

    add-int v14, v14, p1

    if-ltz v14, :cond_9

    aget v14, v6, v4

    mul-int/2addr v14, v1

    add-int v14, v14, p1

    move/from16 v0, p4

    if-ge v14, v0, :cond_9

    aget v14, v6, v3

    mul-int/2addr v14, v9

    add-int v14, v14, p2

    if-ltz v14, :cond_9

    aget v14, v6, v3

    mul-int/2addr v14, v9

    add-int v14, v14, p2

    move/from16 v0, p3

    if-lt v14, v0, :cond_a

    .line 815
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 820
    :cond_a
    aget v14, v6, v3

    mul-int/2addr v14, v9

    add-int v14, v14, p2

    aget-object v14, p5, v14

    aget v15, v6, v4

    mul-int/2addr v15, v1

    add-int v15, v15, p1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget v12, v14, v15

    .line 821
    .local v12, "val":F
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v14, v12, v14

    if-gez v14, :cond_9

    .line 822
    const/4 v14, 0x2

    new-array v11, v14, [I

    const/4 v14, 0x0

    aget v15, v6, v4

    mul-int/2addr v15, v1

    add-int v15, v15, p1

    aput v15, v11, v14

    const/4 v14, 0x1

    aget v15, v6, v3

    mul-int/2addr v15, v9

    add-int v15, v15, p2

    aput v15, v11, v14

    .line 823
    .local v11, "t":[I
    invoke-virtual {v13}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 824
    invoke-virtual {v13, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 835
    :cond_b
    :goto_7
    const/4 v10, 0x0

    goto :goto_6

    .line 826
    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 827
    .local v7, "oldA":[I
    const/4 v14, 0x1

    aget v14, v7, v14

    aget-object v14, p5, v14

    const/4 v15, 0x0

    aget v15, v7, v15

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget v8, v14, v15

    .line 828
    .local v8, "oldV":F
    cmpg-float v14, v8, v12

    if-gez v14, :cond_d

    .line 829
    invoke-virtual {v13}, Ljava/util/Vector;->removeAllElements()V

    .line 830
    invoke-virtual {v13, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 831
    :cond_d
    cmpl-float v14, v8, v12

    if-nez v14, :cond_b

    .line 832
    invoke-virtual {v13, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 810
    nop

    :array_0
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private checkBeeline(FFFF)Z
    .locals 27
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "destX"    # F
    .param p4, "destY"    # F

    .prologue
    .line 565
    cmpl-float v2, p1, p3

    if-nez v2, :cond_0

    cmpl-float v2, p2, p4

    if-nez v2, :cond_0

    .line 566
    const/4 v2, 0x1

    .line 696
    :goto_0
    return v2

    .line 573
    :cond_0
    cmpl-float v2, p1, p3

    if-eqz v2, :cond_1

    cmpl-float v2, p2, p4

    if-nez v2, :cond_9

    .line 575
    :cond_1
    cmpl-float v2, p1, p3

    if-nez v2, :cond_4

    .line 577
    move/from16 v3, p1

    .line 578
    .local v3, "s1x":F
    move/from16 v4, p2

    .line 579
    .local v4, "s1y":F
    move/from16 v5, p3

    .line 580
    .local v5, "d1x":F
    move/from16 v6, p4

    .line 581
    .local v6, "d1y":F
    const/4 v2, 0x0

    add-float v2, v2, p1

    const/high16 v11, 0x41800000    # 16.0f

    add-float v7, v2, v11

    .line 582
    .local v7, "s2x":F
    move/from16 v8, p2

    .line 583
    .local v8, "s2y":F
    const/4 v2, 0x0

    add-float v2, v2, p3

    const/high16 v11, 0x41800000    # 16.0f

    add-float v9, v2, v11

    .line 584
    .local v9, "d2x":F
    move/from16 v10, p4

    .line 586
    .local v10, "d2y":F
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v4, v2

    const/high16 v11, 0x41800000    # 16.0f

    div-float v11, v6, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v24, v0

    .line 587
    .local v24, "minRow":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v4, v2

    const/high16 v11, 0x41800000    # 16.0f

    div-float v11, v6, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 588
    .local v22, "maxRow":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v3, v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 589
    .local v25, "minVel":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v7, v2

    float-to-int v0, v2

    move/from16 v23, v0

    .line 591
    .local v23, "maxVel":I
    const/high16 v2, 0x41800000    # 16.0f

    rem-float v2, v7, v2

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-nez v2, :cond_2

    .line 592
    add-int/lit8 v2, v23, -0x1

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 615
    :cond_2
    :goto_1
    if-ltz v24, :cond_3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    if-ltz v25, :cond_3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    move/from16 v0, v23

    if-lt v0, v2, :cond_5

    .line 616
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 596
    .end local v3    # "s1x":F
    .end local v4    # "s1y":F
    .end local v5    # "d1x":F
    .end local v6    # "d1y":F
    .end local v7    # "s2x":F
    .end local v8    # "s2y":F
    .end local v9    # "d2x":F
    .end local v10    # "d2y":F
    .end local v22    # "maxRow":I
    .end local v23    # "maxVel":I
    .end local v24    # "minRow":I
    .end local v25    # "minVel":I
    :cond_4
    move/from16 v3, p1

    .line 597
    .restart local v3    # "s1x":F
    move/from16 v4, p2

    .line 598
    .restart local v4    # "s1y":F
    move/from16 v5, p3

    .line 599
    .restart local v5    # "d1x":F
    move/from16 v6, p4

    .line 600
    .restart local v6    # "d1y":F
    move/from16 v7, p1

    .line 601
    .restart local v7    # "s2x":F
    const/4 v2, 0x0

    add-float v2, v2, p2

    const/high16 v11, 0x41800000    # 16.0f

    add-float v8, v2, v11

    .line 602
    .restart local v8    # "s2y":F
    move/from16 v9, p3

    .line 603
    .restart local v9    # "d2x":F
    const/4 v2, 0x0

    add-float v2, v2, p4

    const/high16 v11, 0x41800000    # 16.0f

    add-float v10, v2, v11

    .line 605
    .restart local v10    # "d2y":F
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v4, v2

    float-to-int v0, v2

    move/from16 v24, v0

    .line 606
    .restart local v24    # "minRow":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v8, v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 607
    .restart local v22    # "maxRow":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v3, v2

    const/high16 v11, 0x41800000    # 16.0f

    div-float v11, v5, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 608
    .restart local v25    # "minVel":I
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, v3, v2

    const/high16 v11, 0x41800000    # 16.0f

    div-float v11, v5, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v23, v0

    .line 610
    .restart local v23    # "maxVel":I
    const/high16 v2, 0x41800000    # 16.0f

    rem-float v2, v8, v2

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-nez v2, :cond_2

    .line 611
    add-int/lit8 v2, v22, -0x1

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_1

    .line 618
    :cond_5
    move/from16 v19, v24

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 626
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 619
    :cond_6
    move/from16 v21, v25

    .local v21, "j":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 618
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 621
    :cond_7
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v11, v11, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v11, v11, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int v11, v11, v19

    add-int v11, v11, v21

    aget-boolean v2, v2, v11

    if-nez v2, :cond_8

    .line 622
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 619
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 629
    .end local v3    # "s1x":F
    .end local v4    # "s1y":F
    .end local v5    # "d1x":F
    .end local v6    # "d1y":F
    .end local v7    # "s2x":F
    .end local v8    # "s2y":F
    .end local v9    # "d2x":F
    .end local v10    # "d2y":F
    .end local v19    # "i":I
    .end local v21    # "j":I
    .end local v22    # "maxRow":I
    .end local v23    # "maxVel":I
    .end local v24    # "minRow":I
    .end local v25    # "minVel":I
    :cond_9
    cmpg-float v2, p1, p3

    if-gez v2, :cond_a

    cmpl-float v2, p2, p4

    if-gtz v2, :cond_b

    :cond_a
    cmpl-float v2, p1, p3

    if-lez v2, :cond_d

    cmpg-float v2, p2, p4

    if-gez v2, :cond_d

    .line 631
    :cond_b
    move/from16 v3, p1

    .line 632
    .restart local v3    # "s1x":F
    move/from16 v4, p2

    .line 633
    .restart local v4    # "s1y":F
    move/from16 v5, p3

    .line 634
    .restart local v5    # "d1x":F
    move/from16 v6, p4

    .line 635
    .restart local v6    # "d1y":F
    const/4 v2, 0x0

    add-float v2, v2, p1

    const/high16 v11, 0x41800000    # 16.0f

    add-float v7, v2, v11

    .line 636
    .restart local v7    # "s2x":F
    const/4 v2, 0x0

    add-float v2, v2, p2

    const/high16 v11, 0x41800000    # 16.0f

    add-float v8, v2, v11

    .line 637
    .restart local v8    # "s2y":F
    const/4 v2, 0x0

    add-float v2, v2, p3

    const/high16 v11, 0x41800000    # 16.0f

    add-float v9, v2, v11

    .line 638
    .restart local v9    # "d2x":F
    const/4 v2, 0x0

    add-float v2, v2, p4

    const/high16 v11, 0x41800000    # 16.0f

    add-float v10, v2, v11

    .restart local v10    # "d2y":F
    :goto_4
    move-object/from16 v2, p0

    .line 651
    invoke-direct/range {v2 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->getExtremum(FFFFFFFF)[[F

    move-result-object v18

    .line 653
    .local v18, "extremum":[[F
    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v11, 0x1

    aget v2, v2, v11

    const/4 v11, 0x0

    cmpg-float v2, v2, v11

    if-ltz v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v18, v2

    const/4 v11, 0x1

    aget v2, v2, v11

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v11, v11, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v11, v11, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    int-to-float v11, v11

    cmpl-float v2, v2, v11

    if-gtz v2, :cond_c

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v11, 0x0

    aget v2, v2, v11

    const/4 v11, 0x0

    cmpg-float v2, v2, v11

    if-ltz v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v18, v2

    const/4 v11, 0x0

    aget v2, v2, v11

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v11, v11, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v11, v11, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    int-to-float v11, v11

    cmpl-float v2, v2, v11

    if-lez v2, :cond_e

    .line 654
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 641
    .end local v3    # "s1x":F
    .end local v4    # "s1y":F
    .end local v5    # "d1x":F
    .end local v6    # "d1y":F
    .end local v7    # "s2x":F
    .end local v8    # "s2y":F
    .end local v9    # "d2x":F
    .end local v10    # "d2y":F
    .end local v18    # "extremum":[[F
    :cond_d
    const/4 v2, 0x0

    add-float v2, v2, p1

    const/high16 v11, 0x41800000    # 16.0f

    add-float v3, v2, v11

    .line 642
    .restart local v3    # "s1x":F
    move/from16 v4, p2

    .line 643
    .restart local v4    # "s1y":F
    const/4 v2, 0x0

    add-float v2, v2, p3

    const/high16 v11, 0x41800000    # 16.0f

    add-float v5, v2, v11

    .line 644
    .restart local v5    # "d1x":F
    move/from16 v6, p4

    .line 645
    .restart local v6    # "d1y":F
    move/from16 v7, p1

    .line 646
    .restart local v7    # "s2x":F
    const/4 v2, 0x0

    add-float v2, v2, p2

    const/high16 v11, 0x41800000    # 16.0f

    add-float v8, v2, v11

    .line 647
    .restart local v8    # "s2y":F
    move/from16 v9, p3

    .line 648
    .restart local v9    # "d2x":F
    const/4 v2, 0x0

    add-float v2, v2, p4

    const/high16 v11, 0x41800000    # 16.0f

    add-float v10, v2, v11

    .restart local v10    # "d2y":F
    goto :goto_4

    .line 657
    .restart local v18    # "extremum":[[F
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->getCorner([[F)[[I

    move-result-object v16

    .line 659
    .local v16, "gAPos":[[I
    const/4 v2, 0x1

    aget-object v2, v16, v2

    const/4 v11, 0x1

    aget v2, v2, v11

    const/4 v11, 0x0

    aget-object v11, v16, v11

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x1

    aget-object v11, v16, v11

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x0

    aget-object v12, v16, v12

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    filled-new-array {v2, v11}, [I

    move-result-object v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[I

    .local v17, "gA":[[I
    move-object/from16 v11, p0

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    .line 661
    invoke-direct/range {v11 .. v17}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fillBiasGrid(FFFF[[I[[I)V

    move-object/from16 v11, p0

    move v12, v7

    move v13, v8

    move v14, v9

    move v15, v10

    .line 662
    invoke-direct/range {v11 .. v17}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fillBiasGrid(FFFF[[I[[I)V

    .line 664
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v11, 0x2

    filled-new-array {v2, v11}, [I

    move-result-object v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [[I

    .line 665
    .local v26, "scan":[[I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v19

    if-lt v0, v2, :cond_f

    .line 670
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v19

    if-lt v0, v2, :cond_11

    .line 685
    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v19

    if-lt v0, v2, :cond_15

    .line 696
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 666
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_8
    aget-object v2, v26, v19

    array-length v2, v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_10

    .line 665
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 667
    :cond_10
    aget-object v2, v26, v19

    const/4 v11, -0x1

    aput v11, v2, v21

    .line 666
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 671
    .end local v21    # "j":I
    :cond_11
    const/16 v20, 0x0

    .line 672
    .local v20, "isfindMin":Z
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_9
    aget-object v2, v17, v19

    array-length v2, v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_12

    .line 670
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 673
    :cond_12
    if-nez v20, :cond_14

    .line 674
    aget-object v2, v17, v19

    aget v2, v2, v21

    const/4 v11, 0x2

    if-ne v2, v11, :cond_13

    .line 675
    aget-object v2, v26, v19

    const/4 v11, 0x0

    aget-object v12, v26, v19

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget-object v14, v16, v14

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, v21

    aput v14, v12, v13

    aput v14, v2, v11

    .line 676
    const/16 v20, 0x1

    .line 672
    :cond_13
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 679
    :cond_14
    aget-object v2, v17, v19

    aget v2, v2, v21

    const/4 v11, 0x2

    if-ne v2, v11, :cond_13

    .line 680
    aget-object v2, v26, v19

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v16, v12

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, v21

    aput v12, v2, v11

    goto :goto_a

    .line 687
    .end local v20    # "isfindMin":Z
    .end local v21    # "j":I
    :cond_15
    aget-object v2, v26, v19

    const/4 v11, 0x0

    aget v2, v2, v11

    const/4 v11, -0x1

    if-ne v2, v11, :cond_17

    .line 685
    :cond_16
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 690
    :cond_17
    aget-object v2, v26, v19

    const/4 v11, 0x0

    aget v21, v2, v11

    .restart local v21    # "j":I
    :goto_b
    aget-object v2, v26, v19

    const/4 v11, 0x1

    aget v2, v2, v11

    move/from16 v0, v21

    if-gt v0, v2, :cond_16

    .line 691
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    const/4 v11, 0x0

    aget-object v11, v16, v11

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int v11, v11, v19

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v12, v12, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v12, v12, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v11, v12

    add-int v11, v11, v21

    aget-boolean v2, v2, v11

    if-nez v2, :cond_18

    .line 692
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 690
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_b
.end method

.method private checkGMInMoving()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 283
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v2, :cond_0

    .line 284
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v2, v3, :cond_0

    .line 285
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->fState:B

    if-eq v2, v5, :cond_0

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->mapItemVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 301
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 287
    .restart local v1    # "i":I
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->mapItemVector:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 289
    .local v0, "a":[I
    const/4 v2, 0x0

    aget v2, v0, v2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    if-ne v2, v3, :cond_2

    .line 290
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    add-float/2addr v2, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    add-float/2addr v2, v4

    aget v3, v0, v5

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 291
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    add-float/2addr v2, v4

    const/4 v3, 0x2

    aget v3, v0, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    add-float/2addr v2, v4

    const/4 v3, 0x4

    aget v3, v0, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 293
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iput v1, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_i_mapItemVecIdx:I

    .line 295
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameScene;->checkMission(I)Z

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkSMovable(FF)Z
    .locals 21
    .param p1, "destX"    # F
    .param p2, "destY"    # F

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    .line 1005
    const/4 v1, 0x0

    .line 1047
    :goto_0
    return v1

    .line 1008
    :cond_0
    const/high16 v1, 0x41800000    # 16.0f

    div-float v1, p1, v1

    float-to-int v1, v1

    int-to-short v1, v1

    int-to-float v0, v1

    move/from16 p1, v0

    .line 1009
    const/high16 v1, 0x41800000    # 16.0f

    div-float v1, p2, v1

    float-to-int v1, v1

    int-to-short v1, v1

    int-to-float v0, v1

    move/from16 p2, v0

    .line 1011
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_verIdx:S

    .line 1012
    .local v2, "x":S
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_horIdx:S

    .line 1014
    .local v3, "y":S
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v4, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_horNum:B

    .line 1015
    .local v4, "h":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v5, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    .line 1018
    .local v5, "w":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .local v6, "mAVec":Ljava/util/Vector;
    move-object/from16 v1, p0

    .line 1020
    invoke-direct/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->initMovableRecord(SSIILjava/util/Vector;)[[[F

    move-result-object v12

    .line 1023
    .local v12, "movableRecord":[[[F
    move/from16 v0, p1

    float-to-int v1, v0

    int-to-short v8, v1

    move/from16 v0, p2

    float-to-int v1, v0

    int-to-short v9, v1

    move-object/from16 v7, p0

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->amendDest(SSII[[[F)[S

    move-result-object v20

    .line 1024
    .local v20, "d":[S
    const/4 v1, 0x0

    aget-short v1, v20, v1

    int-to-float v0, v1

    move/from16 p1, v0

    .line 1025
    const/4 v1, 0x1

    aget-short v1, v20, v1

    int-to-float v0, v1

    move/from16 p2, v0

    .line 1028
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v1, v7, :cond_2

    .line 1029
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    .line 1030
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 1035
    :cond_2
    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    .line 1036
    const/high16 v1, 0x41800000    # 16.0f

    mul-float p2, p2, v1

    .line 1037
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_3

    .line 1038
    const/4 v12, 0x0

    check-cast v12, [[[F

    .line 1039
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    .line 1043
    invoke-direct/range {v13 .. v19}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->getPath(FFSSLjava/util/Vector;[[[F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1044
    const/4 v6, 0x0

    .line 1045
    const/4 v12, 0x0

    check-cast v12, [[[F

    .line 1047
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private fillBiasGrid(FFFF[[I[[I)V
    .locals 29
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "gAPos"    # [[I
    .param p6, "gA"    # [[I

    .prologue
    .line 518
    const/4 v4, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v11

    .line 519
    .local v11, "tan":F
    const/4 v4, 0x3

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v21

    .line 521
    .local v21, "cot":F
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 522
    .local v12, "max_x":F
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v26

    .line 523
    .local v26, "min_x":F
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 524
    .local v22, "max_y":F
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 526
    .local v27, "min_y":F
    sub-float v4, v12, v26

    const/high16 v5, 0x41800000    # 16.0f

    rem-float v5, v12, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v13, v4

    .line 528
    .local v13, "velNum":I
    sub-float v4, v22, v27

    const/high16 v5, 0x41800000    # 16.0f

    rem-float v5, v22, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 530
    .local v23, "horNum":I
    const/4 v14, 0x1

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fillVelGrid(FFFF[[I[[IFFIZ)V

    .line 532
    const/16 v24, 0x0

    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v14 .. v24}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fillHorGrid(FFFF[[I[[IFFIZ)V

    .line 534
    const/high16 v4, 0x41800000    # 16.0f

    rem-float v4, p1, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    const/high16 v4, 0x41800000    # 16.0f

    rem-float v4, p2, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 535
    const/high16 v4, 0x41800000    # 16.0f

    div-float v4, p1, v4

    float-to-int v0, v4

    move/from16 v28, v0

    .line 536
    .local v28, "vel":I
    const/high16 v4, 0x41800000    # 16.0f

    div-float v4, p2, v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 537
    .local v25, "hor":I
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    move-object/from16 v0, p6

    array-length v5, v0

    if-ge v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v4, v28, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v4, v28, v4

    const/4 v5, 0x0

    aget-object v5, p6, v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 538
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    aget-object v4, p6, v4

    const/4 v5, 0x0

    aget-object v5, p5, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int v5, v28, v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 539
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    aget-object v4, p6, v4

    const/4 v5, 0x0

    aget-object v5, p5, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int v5, v28, v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 544
    .end local v25    # "hor":I
    .end local v28    # "vel":I
    :cond_0
    const/high16 v4, 0x41800000    # 16.0f

    rem-float v4, p3, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    const/high16 v4, 0x41800000    # 16.0f

    rem-float v4, p4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 545
    const/high16 v4, 0x41800000    # 16.0f

    div-float v4, p3, v4

    float-to-int v0, v4

    move/from16 v28, v0

    .line 546
    .restart local v28    # "vel":I
    const/high16 v4, 0x41800000    # 16.0f

    div-float v4, p4, v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 547
    .restart local v25    # "hor":I
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    move-object/from16 v0, p6

    array-length v5, v0

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v4, v28, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v4, v28, v4

    const/4 v5, 0x0

    aget-object v5, p6, v5

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 548
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    aget-object v4, p6, v4

    const/4 v5, 0x0

    aget-object v5, p5, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int v5, v28, v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 549
    const/4 v4, 0x0

    aget-object v4, p5, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v25, v4

    aget-object v4, p6, v4

    const/4 v5, 0x0

    aget-object v5, p5, v5

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int v5, v28, v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 553
    .end local v25    # "hor":I
    .end local v28    # "vel":I
    :cond_1
    return-void
.end method

.method private fillHorGrid(FFFF[[I[[IFFIZ)V
    .locals 12
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "gAPos"    # [[I
    .param p6, "gA"    # [[I
    .param p7, "cot"    # F
    .param p8, "max_y"    # F
    .param p9, "horNum"    # I
    .param p10, "isFill4"    # Z

    .prologue
    .line 469
    const/4 v8, 0x2

    move/from16 v0, p9

    filled-new-array {v0, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 470
    .local v2, "horP":[[F
    const/high16 v8, 0x41800000    # 16.0f

    rem-float v8, p8, v8

    sub-float v4, p8, v8

    .line 471
    .local v4, "lastHorx":F
    add-int/lit8 v3, p9, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    .line 505
    return-void

    .line 472
    :cond_0
    aget-object v8, v2, v3

    const/4 v9, 0x1

    aput v4, v8, v9

    .line 473
    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    cmpl-float v8, v8, p2

    if-nez v8, :cond_2

    .line 474
    aget-object v8, v2, v3

    const/4 v9, 0x0

    aput p1, v8, v9

    .line 480
    :goto_1
    aget-object v8, v2, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    div-float/2addr v8, v9

    float-to-int v7, v8

    .line 481
    .local v7, "vel":I
    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 483
    .local v1, "hor":I
    aget-object v8, v2, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    rem-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    .line 485
    const/4 v6, -0x1

    .local v6, "n":I
    :goto_2
    if-lez v6, :cond_4

    .line 471
    .end local v6    # "n":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    const/high16 v8, 0x41800000    # 16.0f

    sub-float/2addr v4, v8

    goto :goto_0

    .line 475
    .end local v1    # "hor":I
    .end local v7    # "vel":I
    :cond_2
    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    cmpl-float v8, v8, p4

    if-nez v8, :cond_3

    .line 476
    aget-object v8, v2, v3

    const/4 v9, 0x0

    aput p3, v8, v9

    goto :goto_1

    .line 478
    :cond_3
    aget-object v8, v2, v3

    const/4 v9, 0x0

    aget-object v10, v2, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float v10, v10, p4

    mul-float v10, v10, p7

    add-float/2addr v10, p3

    aput v10, v8, v9

    goto :goto_1

    .line 486
    .restart local v1    # "hor":I
    .restart local v6    # "n":I
    .restart local v7    # "vel":I
    :cond_4
    add-int v8, v1, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_5

    add-int v8, v1, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    array-length v9, v0

    if-ge v8, v9, :cond_5

    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v8, v7, v8

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int v8, v7, v8

    const/4 v9, 0x0

    aget-object v9, p6, v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 487
    add-int v8, v1, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v9, v7, v9

    aget v8, v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 488
    add-int v8, v1, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v9, v7, v9

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 485
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 492
    .end local v6    # "n":I
    :cond_6
    if-eqz p10, :cond_1

    .line 494
    const/4 v5, -0x1

    .local v5, "m":I
    :goto_3
    if-gtz v5, :cond_1

    .line 495
    const/4 v6, -0x1

    .restart local v6    # "n":I
    :goto_4
    if-lez v6, :cond_7

    .line 494
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 496
    :cond_7
    add-int v8, v1, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_8

    add-int v8, v1, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    array-length v9, v0

    if-ge v8, v9, :cond_8

    add-int v8, v7, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_8

    add-int v8, v7, v6

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p6, v9

    array-length v9, v9

    if-ge v8, v9, :cond_8

    .line 497
    add-int v8, v1, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    add-int v9, v7, v6

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v8, v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_8

    .line 498
    add-int v8, v1, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    add-int v9, v7, v6

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 495
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method private fillVelGrid(FFFF[[I[[IFFIZ)V
    .locals 12
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "gAPos"    # [[I
    .param p6, "gA"    # [[I
    .param p7, "tan"    # F
    .param p8, "max_x"    # F
    .param p9, "velNum"    # I
    .param p10, "isFill4"    # Z

    .prologue
    .line 416
    const/4 v8, 0x2

    move/from16 v0, p9

    filled-new-array {v0, v8}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    .line 417
    .local v7, "velP":[[F
    const/high16 v8, 0x41800000    # 16.0f

    rem-float v8, p8, v8

    sub-float v3, p8, v8

    .line 418
    .local v3, "lastVelx":F
    add-int/lit8 v2, p9, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 452
    return-void

    .line 419
    :cond_0
    aget-object v8, v7, v2

    const/4 v9, 0x0

    aput v3, v8, v9

    .line 420
    aget-object v8, v7, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    cmpl-float v8, v8, p1

    if-nez v8, :cond_2

    .line 421
    aget-object v8, v7, v2

    const/4 v9, 0x1

    aput p2, v8, v9

    .line 427
    :goto_1
    aget-object v8, v7, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 428
    .local v6, "vel":I
    aget-object v8, v7, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 430
    .local v1, "hor":I
    aget-object v8, v7, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    rem-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    .line 432
    const/4 v5, -0x1

    .local v5, "n":I
    :goto_2
    if-lez v5, :cond_4

    .line 418
    .end local v5    # "n":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/high16 v8, 0x41800000    # 16.0f

    sub-float/2addr v3, v8

    goto :goto_0

    .line 422
    .end local v1    # "hor":I
    .end local v6    # "vel":I
    :cond_2
    aget-object v8, v7, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    cmpl-float v8, v8, p3

    if-nez v8, :cond_3

    .line 423
    aget-object v8, v7, v2

    const/4 v9, 0x1

    aput p4, v8, v9

    goto :goto_1

    .line 425
    :cond_3
    aget-object v8, v7, v2

    const/4 v9, 0x1

    aget-object v10, v7, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v10, p1

    mul-float v10, v10, p7

    add-float/2addr v10, p2

    aput v10, v8, v9

    goto :goto_1

    .line 433
    .restart local v1    # "hor":I
    .restart local v5    # "n":I
    .restart local v6    # "vel":I
    :cond_4
    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v8, v1, v8

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v8, v1, v8

    move-object/from16 v0, p6

    array-length v9, v0

    if-ge v8, v9, :cond_5

    add-int v8, v6, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_5

    add-int v8, v6, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p6, v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 434
    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v8, v1, v8

    aget-object v8, p6, v8

    add-int v9, v6, v5

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v8, v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 435
    const/4 v8, 0x0

    aget-object v8, p5, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int v8, v1, v8

    aget-object v8, p6, v8

    add-int v9, v6, v5

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 432
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 439
    .end local v5    # "n":I
    :cond_6
    if-eqz p10, :cond_1

    .line 441
    const/4 v4, -0x1

    .local v4, "m":I
    :goto_3
    if-gtz v4, :cond_1

    .line 442
    const/4 v5, -0x1

    .restart local v5    # "n":I
    :goto_4
    if-lez v5, :cond_7

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 443
    :cond_7
    add-int v8, v1, v4

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_8

    add-int v8, v1, v4

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object/from16 v0, p6

    array-length v9, v0

    if-ge v8, v9, :cond_8

    add-int v8, v6, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    if-ltz v8, :cond_8

    add-int v8, v6, v5

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p6, v9

    array-length v9, v9

    if-ge v8, v9, :cond_8

    .line 444
    add-int v8, v1, v4

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    add-int v9, v6, v5

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v8, v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_8

    .line 445
    add-int v8, v1, v4

    const/4 v9, 0x0

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    aget-object v8, p6, v8

    add-int v9, v6, v5

    const/4 v10, 0x0

    aget-object v10, p5, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 442
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private getCorner([[F)[[I
    .locals 7
    .param p1, "extremum"    # [[F

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 387
    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 388
    .local v0, "result":[[I
    aget-object v1, v0, v4

    aget-object v2, p1, v4

    aget v2, v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v1, v4

    .line 389
    aget-object v1, v0, v4

    aget-object v2, p1, v4

    aget v2, v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v1, v3

    .line 390
    aget-object v1, v0, v3

    aget-object v2, p1, v3

    aget v2, v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v1, v4

    .line 391
    aget-object v1, p1, v3

    aget v1, v1, v4

    rem-float/2addr v1, v5

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    .line 392
    aget-object v1, v0, v3

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 394
    :cond_0
    aget-object v1, v0, v3

    aget-object v2, p1, v3

    aget v2, v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v1, v3

    .line 395
    aget-object v1, p1, v3

    aget v1, v1, v3

    rem-float/2addr v1, v5

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    .line 396
    aget-object v1, v0, v3

    aget v2, v1, v3

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v3

    .line 398
    :cond_1
    return-object v0
.end method

.method private getExtremum(FFFFFFFF)[[F
    .locals 5
    .param p1, "s1x"    # F
    .param p2, "s1y"    # F
    .param p3, "d1x"    # F
    .param p4, "d1y"    # F
    .param p5, "s2x"    # F
    .param p6, "s2y"    # F
    .param p7, "d2x"    # F
    .param p8, "d2y"    # F

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 375
    .local v0, "result":[[F
    aget-object v1, v0, v3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v3

    .line 376
    aget-object v1, v0, v3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v4

    .line 377
    aget-object v1, v0, v4

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v3

    .line 378
    aget-object v1, v0, v4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v4

    .line 379
    return-object v0
.end method

.method private getPath(FFSSLjava/util/Vector;[[[F)Z
    .locals 27
    .param p1, "destX"    # F
    .param p2, "destY"    # F
    .param p3, "x"    # S
    .param p4, "y"    # S
    .param p5, "mAVec"    # Ljava/util/Vector;
    .param p6, "movableRecord"    # [[[F

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    move/from16 v20, v0

    sget-short v21, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    sget-boolean v20, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-nez v20, :cond_1

    .line 863
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkBeeline(FFFF)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 865
    :cond_1
    const/16 v20, 0x2

    const/16 v21, 0x5

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[F

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v22, v0

    aput v22, v20, v21

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v22, v0

    aput v22, v20, v21

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_direct:B

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aput p1, v20, v21

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aput p2, v20, v21

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDirect(FFFF)B

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v22

    aput v22, v20, v21

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v22

    aput v22, v20, v21

    .line 874
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    .line 875
    const/16 v20, 0x1

    .line 993
    :goto_0
    return v20

    .line 879
    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput p1, v17, v20

    const/16 v20, 0x1

    aput p2, v17, v20

    .line 880
    .local v17, "temp1":[F
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 881
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v20, v0

    cmpl-float v20, v20, p1

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v20, v0

    cmpl-float v20, v20, p2

    if-nez v20, :cond_8

    .line 900
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 903
    .local v15, "realPath":Ljava/util/Vector;
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 904
    .local v18, "v1":Ljava/util/Vector;
    const-wide/16 v9, 0x0

    .line 905
    .local v9, "len1":D
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [F

    .line 906
    .local v16, "start":[F
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 907
    .local v5, "dest":[F
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 908
    :cond_4
    :goto_2
    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkBeeline(FFFF)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 932
    :cond_5
    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v9, v9, v20

    .line 933
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 935
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 936
    .local v19, "v2":Ljava/util/Vector;
    const-wide/16 v11, 0x0

    .line 937
    .local v11, "len2":D
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "start":[F
    check-cast v16, [F

    .line 938
    .restart local v16    # "start":[F
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "dest":[F
    check-cast v5, [F

    .line 939
    .restart local v5    # "dest":[F
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 940
    :cond_6
    :goto_3
    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkBeeline(FFFF)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 964
    :cond_7
    const/16 v20, 0x0

    aget v20, v5, v20

    const/16 v21, 0x1

    aget v21, v5, v21

    const/16 v22, 0x0

    aget v22, v16, v22

    const/16 v23, 0x1

    aget v23, v16, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v11, v11, v20

    .line 965
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 968
    cmpg-double v20, v9, v11

    if-gtz v20, :cond_12

    move-object/from16 v15, v18

    .line 969
    :goto_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->removeAllElements()V

    .line 972
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v8

    .line 973
    .local v8, "len":I
    const/16 v20, 0x5

    move/from16 v0, v20

    filled-new-array {v8, v0}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[F

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    .line 974
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-lt v6, v8, :cond_13

    .line 986
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    .line 987
    invoke-virtual {v15}, Ljava/util/Vector;->removeAllElements()V

    .line 988
    const/4 v15, 0x0

    .line 989
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->removeAllElements()V

    .line 990
    const/16 v18, 0x0

    .line 991
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->removeAllElements()V

    .line 992
    const/16 v19, 0x0

    .line 993
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 882
    .end local v5    # "dest":[F
    .end local v6    # "i":I
    .end local v8    # "len":I
    .end local v9    # "len1":D
    .end local v11    # "len2":D
    .end local v15    # "realPath":Ljava/util/Vector;
    .end local v16    # "start":[F
    .end local v18    # "v1":Ljava/util/Vector;
    .end local v19    # "v2":Ljava/util/Vector;
    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 883
    const/16 v20, 0x0

    const/high16 v21, 0x41800000    # 16.0f

    div-float v21, p2, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aget-object v21, p6, v21

    const/high16 v22, 0x41800000    # 16.0f

    div-float v22, p1, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    aget v21, v21, v22

    const/high16 v22, 0x41800000    # 16.0f

    mul-float v21, v21, v22

    aput v21, v17, v20

    .line 884
    const/16 v20, 0x1

    const/high16 v21, 0x41800000    # 16.0f

    div-float v21, p2, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aget-object v21, p6, v21

    const/high16 v22, 0x41800000    # 16.0f

    div-float v22, p1, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    const/16 v22, 0x2

    aget v21, v21, v22

    const/high16 v22, 0x41800000    # 16.0f

    mul-float v21, v21, v22

    aput v21, v17, v20

    .line 885
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 886
    const/16 v20, 0x0

    aget p1, v17, v20

    .line 887
    const/16 v20, 0x1

    aget p2, v17, v20

    .line 889
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41800000    # 16.0f

    div-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41800000    # 16.0f

    div-float v21, p2, v21

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v20, v0

    cmpl-float v20, v20, p1

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v20, v0

    cmpl-float v20, v20, p2

    if-eqz v20, :cond_3

    .line 890
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 891
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    move/from16 v21, v0

    aput v21, v17, v20

    .line 892
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    move/from16 v21, v0

    aput v21, v17, v20

    .line 893
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 894
    const/16 v20, 0x0

    aget p1, v17, v20

    .line 895
    const/16 v20, 0x1

    aget p2, v17, v20

    goto/16 :goto_1

    .line 909
    .restart local v5    # "dest":[F
    .restart local v9    # "len1":D
    .restart local v15    # "realPath":Ljava/util/Vector;
    .restart local v16    # "start":[F
    .restart local v18    # "v1":Ljava/util/Vector;
    :cond_a
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    .line 910
    .local v13, "node":[F
    if-eq v13, v5, :cond_5

    .line 915
    :goto_6
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    const/16 v20, 0x0

    aget v20, v16, v20

    const/16 v21, 0x1

    aget v21, v16, v21

    const/16 v22, 0x0

    aget v22, v13, v22

    const/16 v23, 0x1

    aget v23, v13, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkBeeline(FFFF)Z

    move-result v20

    if-nez v20, :cond_c

    .line 918
    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [F

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 920
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "start":[F
    check-cast v16, [F

    .line 921
    .restart local v16    # "start":[F
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 922
    .local v7, "last":[F
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    const/16 v22, 0x0

    aget v22, v16, v22

    const/16 v23, 0x1

    aget v23, v16, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v9, v9, v20

    .line 923
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 916
    .end local v7    # "last":[F
    :cond_c
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "node":[F
    check-cast v13, [F

    .restart local v13    # "node":[F
    goto/16 :goto_6

    .line 924
    :cond_d
    if-eq v13, v5, :cond_4

    .line 926
    move-object/from16 v16, v13

    .line 927
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 928
    .restart local v7    # "last":[F
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    const/16 v22, 0x0

    aget v22, v16, v22

    const/16 v23, 0x1

    aget v23, v16, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v9, v9, v20

    .line 929
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 941
    .end local v7    # "last":[F
    .end local v13    # "node":[F
    .restart local v11    # "len2":D
    .restart local v19    # "v2":Ljava/util/Vector;
    :cond_e
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [F

    .line 942
    .restart local v13    # "node":[F
    move-object/from16 v0, v16

    if-eq v13, v0, :cond_7

    .line 947
    :goto_7
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x0

    aget v20, v13, v20

    const/16 v21, 0x1

    aget v21, v13, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkBeeline(FFFF)Z

    move-result v20

    if-nez v20, :cond_10

    .line 950
    :cond_f
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [F

    move-object/from16 v0, v20

    if-eq v0, v5, :cond_11

    .line 952
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "dest":[F
    check-cast v5, [F

    .line 953
    .restart local v5    # "dest":[F
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 954
    .restart local v7    # "last":[F
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v11, v11, v20

    .line 955
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 948
    .end local v7    # "last":[F
    :cond_10
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "node":[F
    check-cast v13, [F

    .restart local v13    # "node":[F
    goto/16 :goto_7

    .line 956
    :cond_11
    move-object/from16 v0, v16

    if-eq v13, v0, :cond_6

    .line 958
    move-object v5, v13

    .line 959
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 960
    .restart local v7    # "last":[F
    const/16 v20, 0x0

    aget v20, v7, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    invoke-static/range {v20 .. v23}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v20

    add-double v11, v11, v20

    .line 961
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .end local v7    # "last":[F
    .end local v13    # "node":[F
    :cond_12
    move-object/from16 v15, v19

    .line 968
    goto/16 :goto_4

    .line 975
    .restart local v6    # "i":I
    .restart local v8    # "len":I
    :cond_13
    invoke-virtual {v15, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    .line 976
    .local v14, "pos":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v14, v22

    aput v22, v20, v21

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v14, v22

    aput v22, v20, v21

    .line 978
    if-nez v6, :cond_14

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_direct:B

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    .line 974
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 981
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v6, -0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x1

    aget v25, v25, v26

    invoke-static/range {v22 .. v25}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDirect(FFFF)B

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v6, -0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x1

    aget v25, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v22 .. v26}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v22

    aput v22, v20, v21

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    const/16 v21, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v6, -0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x1

    aget v25, v25, v26

    const/16 v26, 0x0

    invoke-static/range {v22 .. v26}, Lcom/jarworld/rpg/sanguocollege/Tool;->getSlope(FFFFI)F

    move-result v22

    aput v22, v20, v21

    goto/16 :goto_8
.end method

.method private initMovableRecord(SSIILjava/util/Vector;)[[[F
    .locals 14
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "h"    # I
    .param p4, "w"    # I
    .param p5, "mAVec"    # Ljava/util/Vector;

    .prologue
    .line 710
    const/4 v10, 0x3

    move/from16 v0, p3

    move/from16 v1, p4

    filled-new-array {v0, v1, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[F

    .line 712
    .local v7, "movableRecord":[[[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v7

    if-lt v4, v10, :cond_0

    .line 720
    const/4 v10, 0x2

    new-array v9, v10, [S

    const/4 v10, 0x0

    aput-short p1, v9, v10

    const/4 v10, 0x1

    aput-short p2, v9, v10

    .line 722
    .local v9, "temp":[S
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 724
    aget-object v10, v7, p2

    aget-object v10, v10, p1

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 725
    aget-object v10, v7, p2

    aget-object v10, v10, p1

    const/4 v11, 0x1

    int-to-float v12, p1

    aput v12, v10, v11

    .line 726
    aget-object v10, v7, p2

    aget-object v10, v10, p1

    const/4 v11, 0x2

    move/from16 v0, p2

    int-to-float v12, v0

    aput v12, v10, v11

    .line 730
    :goto_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 781
    return-object v7

    .line 713
    .end local v9    # "temp":[S
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    aget-object v10, v7, v4

    array-length v10, v10

    if-lt v6, v10, :cond_1

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 714
    :cond_1
    aget-object v10, v7, v4

    aget-object v10, v10, v6

    const/4 v11, 0x0

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    aput v12, v10, v11

    .line 715
    aget-object v10, v7, v4

    aget-object v10, v10, v6

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    aput v12, v10, v11

    .line 716
    aget-object v10, v7, v4

    aget-object v10, v10, v6

    const/4 v11, 0x2

    const/high16 v12, -0x40800000    # -1.0f

    aput v12, v10, v11

    .line 713
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 731
    .end local v6    # "j":I
    .restart local v9    # "temp":[S
    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "temp":[S
    check-cast v9, [S

    .line 733
    .restart local v9    # "temp":[S
    const/4 v4, 0x0

    :goto_3
    const/16 v10, 0x8

    if-lt v4, v10, :cond_3

    .line 779
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 734
    :cond_3
    const/4 v10, 0x1

    aget-short v10, v9, v10

    aget-object v10, v7, v10

    const/4 v11, 0x0

    aget-short v11, v9, v11

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 735
    const/4 v10, 0x0

    aget-short v10, v9, v10

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GC;->DIR8_X:[B

    aget-byte v11, v11, v4

    add-int/2addr v10, v11

    int-to-short v2, v10

    .line 736
    .local v2, "cx":S
    const/4 v10, 0x1

    aget-short v10, v9, v10

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GC;->DIR8_Y:[B

    aget-byte v11, v11, v4

    add-int/2addr v10, v11

    int-to-short v3, v10

    .line 738
    .local v3, "cy":S
    if-ltz v2, :cond_7

    move/from16 v0, p4

    if-ge v2, v0, :cond_7

    if-ltz v3, :cond_7

    move/from16 v0, p3

    if-ge v3, v0, :cond_7

    .line 740
    iget-byte v10, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v10, :cond_4

    iget-short v10, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v10, v11, :cond_4

    sget-boolean v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-nez v10, :cond_5

    .line 741
    :cond_4
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    mul-int v11, v3, p4

    add-int/2addr v11, v2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_7

    .line 742
    :cond_5
    const/4 v10, 0x0

    aget-short v10, v9, v10

    if-eq v2, v10, :cond_b

    const/4 v10, 0x1

    aget-short v10, v9, v10

    if-eq v3, v10, :cond_b

    .line 744
    const/4 v5, 0x0

    .line 745
    .local v5, "isOk":Z
    const/4 v10, 0x0

    aget-short v10, v9, v10

    if-ge v2, v10, :cond_8

    const/4 v10, 0x1

    aget-short v10, v9, v10

    if-ge v3, v10, :cond_8

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    mul-int v11, v3, p4

    add-int/lit8 v12, v2, 0x1

    add-int/2addr v11, v12

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_8

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    add-int/lit8 v11, v3, 0x1

    mul-int v11, v11, p4

    add-int/2addr v11, v2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_8

    .line 747
    const/4 v5, 0x1

    .line 758
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    const/4 v10, 0x1

    aget-short v10, v9, v10

    aget-object v10, v7, v10

    const/4 v11, 0x0

    aget-short v11, v9, v11

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    const v11, 0x3fb33333    # 1.4f

    add-float/2addr v10, v11

    aget-object v11, v7, v3

    aget-object v11, v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 759
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-short v12, v9, v12

    aget-object v12, v7, v12

    const/4 v13, 0x0

    aget-short v13, v9, v13

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget v12, v12, v13

    const v13, 0x3fb33333    # 1.4f

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 760
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-short v12, v9, v12

    int-to-float v12, v12

    aput v12, v10, v11

    .line 761
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-short v12, v9, v12

    int-to-float v12, v12

    aput v12, v10, v11

    .line 762
    const/4 v10, 0x2

    new-array v8, v10, [S

    const/4 v10, 0x0

    aput-short v2, v8, v10

    const/4 v10, 0x1

    aput-short v3, v8, v10

    .line 763
    .local v8, "newTemp":[S
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 733
    .end local v2    # "cx":S
    .end local v3    # "cy":S
    .end local v5    # "isOk":Z
    .end local v8    # "newTemp":[S
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 748
    .restart local v2    # "cx":S
    .restart local v3    # "cy":S
    .restart local v5    # "isOk":Z
    :cond_8
    const/4 v10, 0x0

    aget-short v10, v9, v10

    if-le v2, v10, :cond_9

    const/4 v10, 0x1

    aget-short v10, v9, v10

    if-ge v3, v10, :cond_9

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    mul-int v11, v3, p4

    add-int/lit8 v12, v2, -0x1

    add-int/2addr v11, v12

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_9

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    add-int/lit8 v11, v3, 0x1

    mul-int v11, v11, p4

    add-int/2addr v11, v2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_9

    .line 750
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 751
    :cond_9
    const/4 v10, 0x0

    aget-short v10, v9, v10

    if-le v2, v10, :cond_a

    const/4 v10, 0x1

    aget-short v10, v9, v10

    if-le v3, v10, :cond_a

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    mul-int v11, v3, p4

    add-int/lit8 v12, v2, -0x1

    add-int/2addr v11, v12

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_a

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    add-int/lit8 v11, v3, -0x1

    mul-int v11, v11, p4

    add-int/2addr v11, v2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_a

    .line 753
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 754
    :cond_a
    const/4 v10, 0x0

    aget-short v10, v9, v10

    if-ge v2, v10, :cond_6

    const/4 v10, 0x1

    aget-short v10, v9, v10

    if-le v3, v10, :cond_6

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    mul-int v11, v3, p4

    add-int/lit8 v12, v2, 0x1

    add-int/2addr v11, v12

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    add-int/lit8 v11, v3, -0x1

    mul-int v11, v11, p4

    add-int/2addr v11, v2

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    .line 756
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 767
    .end local v5    # "isOk":Z
    :cond_b
    const/4 v10, 0x1

    aget-short v10, v9, v10

    aget-object v10, v7, v10

    const/4 v11, 0x0

    aget-short v11, v9, v11

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aget-object v11, v7, v3

    aget-object v11, v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 768
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-short v12, v9, v12

    aget-object v12, v7, v12

    const/4 v13, 0x0

    aget-short v13, v9, v13

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 769
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-short v12, v9, v12

    int-to-float v12, v12

    aput v12, v10, v11

    .line 770
    aget-object v10, v7, v3

    aget-object v10, v10, v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-short v12, v9, v12

    int-to-float v12, v12

    aput v12, v10, v11

    .line 771
    const/4 v10, 0x2

    new-array v8, v10, [S

    const/4 v10, 0x0

    aput-short v2, v8, v10

    const/4 v10, 0x1

    aput-short v3, v8, v10

    .line 772
    .restart local v8    # "newTemp":[S
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public CheckBarrier(FFFFLjava/util/Vector;)Z
    .locals 10
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "speedX"    # F
    .param p4, "speedY"    # F
    .param p5, "vec"    # Ljava/util/Vector;

    .prologue
    .line 1234
    const/4 v7, 0x2

    new-array v0, v7, [F

    const/4 v7, 0x0

    .line 1236
    const/4 v8, 0x0

    add-float/2addr v8, p1

    const/high16 v9, 0x41000000    # 8.0f

    add-float/2addr v8, v9

    add-float/2addr v8, p3

    aput v8, v0, v7

    const/4 v7, 0x1

    .line 1238
    const/4 v8, 0x0

    add-float/2addr v8, p2

    const/high16 v9, 0x41000000    # 8.0f

    add-float/2addr v8, v9

    add-float/2addr v8, p4

    aput v8, v0, v7

    .line 1241
    .local v0, "a":[F
    add-float v7, p1, p3

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 1243
    .local v6, "verIdx":I
    add-float v7, p2, p4

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v7, v8

    float-to-int v3, v7

    .line 1244
    .local v3, "horIdx":I
    const/4 v4, -0x1

    .local v4, "i":I
    :goto_0
    const/4 v7, 0x2

    if-lt v4, v7, :cond_0

    .line 1272
    if-nez p5, :cond_4

    .line 1273
    const/4 v7, 0x0

    .line 1277
    :goto_1
    return v7

    .line 1245
    :cond_0
    const/4 v5, -0x1

    .local v5, "j":I
    :goto_2
    const/4 v7, 0x2

    if-lt v5, v7, :cond_1

    .line 1244
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v7, v3

    add-int/2addr v7, v6

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    if-ltz v7, :cond_3

    .line 1247
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v7, v3

    add-int/2addr v7, v6

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 1248
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v8, v3

    add-int/2addr v8, v6

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v9, v9, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v9, v9, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    aget-boolean v7, v7, v8

    if-nez v7, :cond_3

    .line 1250
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v7, v3

    add-int/2addr v7, v6

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int v2, v7, v5

    .line 1251
    .local v2, "barrierMapIdx":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    const/4 v7, 0x0

    .line 1253
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    rem-int v8, v2, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x8

    aput v8, v1, v7

    const/4 v7, 0x1

    .line 1255
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    div-int v8, v2, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x8

    aput v8, v1, v7

    .line 1258
    .local v1, "b":[I
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 1260
    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 1262
    if-nez p5, :cond_2

    .line 1263
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1265
    :cond_2
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v1, v9

    add-int/lit8 v9, v9, -0x8

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/lit8 v9, v9, -0x8

    aput v9, v7, v8

    invoke-virtual {p5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1245
    .end local v1    # "b":[I
    .end local v2    # "barrierMapIdx":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1274
    .end local v5    # "j":I
    :cond_4
    invoke-virtual {p5}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1275
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1277
    :cond_5
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method public baseMove(FF)V
    .locals 6
    .param p1, "speedX"    # F
    .param p2, "speedY"    # F

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/4 v3, 0x0

    .line 263
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v2, :cond_0

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v2, v4, :cond_0

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->screenMove(FF)V

    .line 267
    :cond_0
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    .line 268
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    .line 271
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    add-int/lit8 v1, v2, -0x10

    .line 272
    .local v1, "mw":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    add-int/lit8 v0, v2, -0x10

    .line 273
    .local v0, "mh":I
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    .line 274
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :goto_1
    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    .line 276
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_verIdx:S

    .line 277
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_horIdx:S

    .line 278
    return-void

    .line 273
    :cond_1
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    int-to-float v4, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    int-to-float v2, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    goto :goto_0

    .line 274
    :cond_3
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    int-to-float v3, v0

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    goto :goto_1
.end method

.method public changeAction(II)V
    .locals 4
    .param p1, "actIdx"    # I
    .param p2, "actTurn"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1166
    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    .line 1167
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1168
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionTurn:B

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_state:B

    if-ne v0, v2, :cond_2

    .line 1171
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_direct:B

    packed-switch v0, :pswitch_data_0

    .line 1206
    :goto_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v0, :cond_0

    .line 1207
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    add-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    goto :goto_0

    .line 1173
    :pswitch_0
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1174
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionTurn:B

    goto :goto_1

    .line 1177
    :pswitch_1
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1178
    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionTurn:B

    goto :goto_1

    .line 1181
    :pswitch_2
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    goto :goto_1

    .line 1184
    :pswitch_3
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    goto :goto_1

    .line 1188
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_direct:B

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1198
    :pswitch_4
    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    goto :goto_1

    .line 1190
    :pswitch_5
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1191
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionTurn:B

    goto :goto_1

    .line 1194
    :pswitch_6
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1195
    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionTurn:B

    goto :goto_1

    .line 1201
    :pswitch_7
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    goto :goto_1

    .line 1171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 1188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public changeRoleState(BZ)V
    .locals 5
    .param p1, "state"    # B
    .param p2, "changeAction"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1142
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v0, v1, :cond_2

    if-ne p1, v4, :cond_2

    .line 1144
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iput-boolean v3, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_b_isHKUp:Z

    .line 1154
    :cond_0
    :goto_0
    iput-byte p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_state:B

    .line 1155
    if-eqz p2, :cond_1

    .line 1156
    invoke-virtual {p0, v2, v2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->changeAction(II)V

    .line 1158
    :cond_1
    return-void

    .line 1145
    :cond_2
    if-nez p1, :cond_0

    .line 1146
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_3

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v0, v1, :cond_3

    .line 1148
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iput-boolean v4, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_b_isHKUp:Z

    .line 1150
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameScene;->cleanDMInfo()V

    .line 1152
    :cond_3
    invoke-virtual {p0, v3}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->cleanSMove(Z)V

    goto :goto_0
.end method

.method public cleanSMove(Z)V
    .locals 3
    .param p1, "isRestart"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1080
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    .line 1081
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v0, v1, :cond_0

    .line 1082
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 1083
    sput-boolean p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->isSMove:Z

    .line 1085
    :cond_0
    return-void
.end method

.method public collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z
    .locals 5
    .param p1, "role"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "speedX"    # F
    .param p3, "speedY"    # F

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v2, 0x0

    .line 1290
    iget v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v1, p2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 1292
    iget v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1289
    goto :goto_0
.end method

.method public abstract draw()V
.end method

.method public drawBubble(B)V
    .locals 7
    .param p1, "browIdx"    # B

    .prologue
    .line 1393
    if-gez p1, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    .line 1397
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    float-to-int v2, v2

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    .line 1398
    const/16 v3, 0x18f

    .line 1399
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    const/4 v6, 0x0

    move v4, p1

    .line 1396
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    .line 1401
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_bubbleBrowLoop:S

    if-lez v0, :cond_0

    .line 1402
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    if-nez v0, :cond_0

    .line 1403
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_bubbleBrowLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_bubbleBrowLoop:S

    goto :goto_0
.end method

.method public fightMove(II)Z
    .locals 8
    .param p1, "GoleX"    # I
    .param p2, "GoleY"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 1322
    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    sub-int v2, v5, p1

    .line 1323
    .local v2, "dx":I
    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    sub-int v3, v5, p2

    .line 1324
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-eqz v3, :cond_7

    .line 1325
    :cond_0
    if-gez v2, :cond_6

    move v0, v4

    .line 1326
    .local v0, "drx":I
    :goto_0
    if-gez v3, :cond_1

    move v1, v4

    .line 1327
    .local v1, "dry":I
    :cond_1
    mul-int/lit8 v5, v0, 0x14

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v5, v6

    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->sqrt(I)I

    move-result v6

    div-int/2addr v5, v6

    int-to-short v5, v5

    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    .line 1328
    mul-int/lit8 v5, v1, 0x14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v5, v6

    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->sqrt(I)I

    move-result v6

    div-int/2addr v5, v6

    int-to-short v5, v5

    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    .line 1330
    if-eqz v2, :cond_2

    .line 1331
    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v0

    int-to-short v5, v5

    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    .line 1334
    :cond_2
    if-eqz v3, :cond_3

    .line 1335
    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v1

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    .line 1337
    :cond_3
    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v0

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    .line 1338
    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v1

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    .line 1339
    if-eqz v2, :cond_4

    .line 1340
    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedX:S

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 1342
    :cond_4
    if-eqz v3, :cond_5

    .line 1343
    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightSpeedY:S

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 1345
    :cond_5
    const/4 v4, 0x0

    .line 1349
    .end local v0    # "drx":I
    .end local v1    # "dry":I
    :goto_1
    return v4

    :cond_6
    move v0, v1

    .line 1325
    goto/16 :goto_0

    .line 1347
    :cond_7
    int-to-short v5, p1

    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 1348
    int-to-short v5, p2

    iput-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    goto :goto_1
.end method

.method public hitCheck()Z
    .locals 6

    .prologue
    .line 1218
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v0, :cond_0

    .line 1219
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v0

    goto :goto_0
.end method

.method public initFightFet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1385
    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upAtt:S

    .line 1386
    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upDef:S

    .line 1387
    iput v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_fetHurt:I

    .line 1388
    return-void

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v0

    aput-byte v4, v1, v4

    .line 1382
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 1383
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initSMove(FF)Z
    .locals 5
    .param p1, "destX"    # F
    .param p2, "destY"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1094
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkSMovable(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->turn(BFF)V

    .line 1098
    invoke-virtual {p0, v0, v0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->changeRoleState(BZ)V

    .line 1102
    :goto_0
    return v0

    .line 1101
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->changeRoleState(BZ)V

    move v0, v1

    .line 1102
    goto :goto_0
.end method

.method public move(FF)V
    .locals 4
    .param p1, "speedX"    # F
    .param p2, "speedY"    # F

    .prologue
    const/4 v3, 0x3

    .line 309
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->baseMove(FF)V

    .line 312
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->fState:B

    if-ne v0, v3, :cond_0

    .line 313
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_stepCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_stepCount:B

    .line 315
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_stepCount:B

    const/16 v1, 0x10

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_speedValue:B

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_stepCount:B

    .line 317
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->eventArray:[Lcom/jarworld/rpg/sanguocollege/GameEvent;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_s_eventIndex:S

    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_byt_eventUnionSize:B

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameEvent;->param:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkGMInMoving()V

    .line 323
    :cond_1
    return-void
.end method

.method public pSMove()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1107
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    if-nez v0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sMove([[FI)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    .line 1111
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    if-eqz v0, :cond_0

    .line 1114
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPath:[[F

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mPIdx:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->turn(BFF)V

    .line 1117
    invoke-virtual {p0, v4, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->changeAction(II)V

    goto :goto_0

    .line 1120
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->changeRoleState(BZ)V

    goto :goto_0
.end method

.method public sMove([[FI)I
    .locals 6
    .param p1, "mPath"    # [[F
    .param p2, "mPIdx"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1056
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_state:B

    if-ne v0, v1, :cond_4

    .line 1058
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    aget-object v0, p1, p2

    aget v0, v0, v5

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 1059
    aget-object v0, p1, p2

    aget v0, v0, v5

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    .line 1061
    :cond_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    aget-object v0, p1, p2

    aget v0, v0, v1

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 1062
    aget-object v0, p1, p2

    aget v0, v0, v1

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    .line 1064
    :cond_2
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->baseMove(FF)V

    .line 1066
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    aget-object v2, p1, p2

    aget v2, v2, v5

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    aget-object v2, p1, p2

    aget v1, v2, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 1067
    add-int/lit8 p2, p2, 0x1

    .line 1070
    :cond_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkGMInMoving()V

    .line 1072
    :cond_4
    return p2

    :cond_5
    move v0, v2

    .line 1059
    goto :goto_0
.end method

.method public screenMove(FF)V
    .locals 5
    .param p1, "speedX"    # F
    .param p2, "speedY"    # F

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sub-int v1, v2, v4

    .line 237
    .local v1, "mw":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sub-int v0, v2, v4

    .line 238
    .local v0, "mh":I
    cmpg-float v2, p2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    sub-float/2addr v2, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 239
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    add-float/2addr v2, p2

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 240
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move v2, v3

    :goto_0
    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 242
    :cond_0
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    sub-float/2addr v2, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    int-to-float v4, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 243
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    add-float/2addr v2, p1

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 244
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    int-to-float v4, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    int-to-float v2, v1

    :goto_1
    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 246
    :cond_1
    cmpl-float v2, p2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    sub-float/2addr v2, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 247
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    add-float/2addr v2, p2

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 248
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    int-to-float v2, v0

    :goto_2
    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 250
    :cond_2
    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    sub-float/2addr v2, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 251
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    add-float/2addr v2, p1

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 252
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    :goto_3
    sput v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 254
    :cond_3
    return-void

    .line 240
    :cond_4
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    goto :goto_0

    .line 244
    :cond_5
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    goto :goto_1

    .line 248
    :cond_6
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    goto :goto_2

    .line 252
    :cond_7
    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    goto :goto_3
.end method

.method public setFightAction(B)V
    .locals 1
    .param p1, "idx"    # B

    .prologue
    .line 1311
    iput-byte p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    .line 1314
    return-void
.end method

.method public setFightFet(BI)V
    .locals 9
    .param p1, "fet"    # B
    .param p2, "round"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1359
    packed-switch p1, :pswitch_data_0

    .line 1376
    :goto_0
    return-void

    .line 1361
    :pswitch_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v2, v2, v8

    aput-byte v4, v2, v4

    aput-byte v4, v1, v4

    aput-byte v4, v0, v4

    .line 1362
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v2, v2, v8

    int-to-byte v3, p2

    aput-byte v3, v2, v6

    aput-byte v3, v1, v6

    aput-byte v3, v0, v6

    .line 1363
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v2, v2, v8

    aput-byte v4, v2, v5

    aput-byte v4, v1, v5

    aput-byte v4, v0, v5

    goto :goto_0

    .line 1371
    :pswitch_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    aput-byte v6, v0, v4

    .line 1372
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    int-to-byte v1, p2

    aput-byte v1, v0, v6

    .line 1373
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    aput-byte v4, v0, v5

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFightPos(SS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S

    .prologue
    .line 1302
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 1303
    iput-short p2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 1304
    return-void
.end method

.method public setLocus(FF)V
    .locals 7
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v3, 0x0

    .line 332
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    .line 333
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    .line 335
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    add-int/lit8 v1, v2, -0x10

    .line 336
    .local v1, "mw":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    add-int/lit8 v0, v2, -0x10

    .line 337
    .local v0, "mh":I
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    .line 338
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    .line 339
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    div-float/2addr v2, v6

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_verIdx:S

    .line 340
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    div-float/2addr v2, v6

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_horIdx:S

    .line 342
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v2, :cond_1

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_ID:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-ne v2, v4, :cond_1

    .line 343
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v5

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 344
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 345
    sput v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 350
    :cond_0
    :goto_2
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v5

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 351
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 352
    sput v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 358
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->checkGMInMoving()V

    .line 359
    return-void

    .line 337
    :cond_2
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    int-to-float v4, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    int-to-float v2, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    goto :goto_0

    .line 338
    :cond_4
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    int-to-float v2, v0

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    goto :goto_1

    .line 346
    :cond_6
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    int-to-float v4, v4

    add-float/2addr v2, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 347
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    goto :goto_2

    .line 353
    :cond_7
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 354
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    goto :goto_3
.end method

.method public setMapItem(SS)V
    .locals 1
    .param p1, "x"    # S
    .param p2, "y"    # S

    .prologue
    .line 1130
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_verIdx:S

    .line 1131
    iput-short p2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_horIdx:S

    .line 1132
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_verIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posX:F

    .line 1133
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_horIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_posY:F

    .line 1134
    return-void
.end method

.method public setSpeed(BZ)V
    .locals 1
    .param p1, "value"    # B
    .param p2, "record"    # Z

    .prologue
    .line 212
    iput-byte p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_speedValue:B

    .line 213
    if-eqz p2, :cond_0

    .line 214
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_speedValue:B

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_lastSpeed:B

    .line 216
    :cond_0
    return-void
.end method

.method public turn(BFF)V
    .locals 1
    .param p1, "direct"    # B
    .param p2, "cos"    # F
    .param p3, "sin"    # F

    .prologue
    .line 225
    iput-byte p1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_direct:B

    .line 226
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_speedValue:B

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedX:F

    .line 227
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_speedValue:B

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_f_speedY:F

    .line 228
    return-void
.end method
