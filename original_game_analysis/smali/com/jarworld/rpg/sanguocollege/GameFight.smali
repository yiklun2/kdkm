.class public Lcom/jarworld/rpg/sanguocollege/GameFight;
.super Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
.source "GameFight.java"


# static fields
.field public static final FIGHT_ACTION:B = 0xdt

.field public static final FIGHT_ACTIONEFFECT:B = 0xet

.field public static final FIGHT_ACTIONPREPARE:B = 0xbt

.field public static final FIGHT_ACTIONTIP:B = 0x9t

.field public static final FIGHT_BUY:B = 0x7t

.field public static final FIGHT_BUYCONFIRM:B = 0x8t

.field public static final FIGHT_CHANGETURN:B = 0x2t

.field public static final FIGHT_CHOOSETACTICS:B = 0x4t

.field public static final FIGHT_DEATH:B = 0xft

.field public static final FIGHT_DIALOG:B = 0x16t

.field public static final FIGHT_FSDEATH:B = 0x10t

.field public static final FIGHT_GETEXP:B = 0x12t

.field public static final FIGHT_LEVELUP:B = 0x13t

.field public static final FIGHT_LOST:B = 0x15t

.field public static final FIGHT_MOVE:B = 0xct

.field public static final FIGHT_RESULT:B = 0x14t

.field public static final FIGHT_SELROLE:B = 0x1t

.field public static final FIGHT_SELTARGET:B = 0xat

.field public static final FIGHT_SEL_ITEM:B = 0x6t

.field public static final FIGHT_SEL_SKILL:B = 0x5t

.field public static final FIGHT_START:B = 0x0t

.field public static final FIGHT_STATUSEFFECT:B = 0x3t

.field public static final FIGHT_VICTORY:B = 0x11t

.field public static POS_M:[[[S

.field public static POS_P:[[[S

.field public static s_Item_tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

.field public static s_b_isCanFlee:Z

.field public static s_enu_drop:Ljava/util/Enumeration;

.field public static s_img_Bg:Ljavax/microedition/lcdui/Image;

.field public static s_vec_drop:Ljava/util/Vector;

.field public static tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;


# instance fields
.field public attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

.field public backRole1:Ljava/util/Vector;

.field public backRole2:Ljava/util/Vector;

.field public curIndex:I

.field public curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

.field public curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

.field public defencer:Ljava/util/Vector;

.field public enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

.field public fLUMMaxNum:I

.field public fMIdx:I

.field public fMOffset:[[I

.field public fettleDefencer:Ljava/util/Vector;

.field public forcesVec:Ljava/util/Vector;

.field public frameHurt:[I

.field public frontRole1:Ljava/util/Vector;

.field public frontRole2:Ljava/util/Vector;

.field public groupDefencer:Ljava/util/Vector;

.field public heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

.field public isJook:[Z

.field public isPower:Z

.field public leftEnemy:I

.field public leftTeammate:I

.field public lvlUpSkID:I

.field public mSGUsable:[Z

.field public m_b_isBOver1:Z

.field public m_b_isBOver2:Z

.field public m_b_isFOver1:Z

.field public m_b_isFOver2:Z

.field public m_b_isHasSingle:Z

.field public m_b_isOurTurn:Z

.field public m_b_isSelRole:Z

.field public m_b_isStartSec:Z

.field public m_byt_ScreenEffect:B

.field public m_byt_diaBinIdx:B

.field public m_byt_skillIdx:B

.field public m_i_addLevel:I

.field public m_i_fLUMCount:I

.field public m_i_frame1b:I

.field public m_i_frame1f:I

.field public m_i_frame2b:I

.field public m_i_frame2f:I

.field public m_i_frameDeath:I

.field public m_s_dialogIdx:S

.field public m_s_lostType:S

.field public m_s_useSG:S

.field public moveGolex:I

.field public moveGoley:I

.field public needActNum:I

.field public numVec:[Ljava/util/Vector;

.field public overActNum:I

.field public showVec:Ljava/util/Vector;

.field public singleX:I

.field public singleY:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 67
    new-array v0, v6, [[[S

    .line 68
    new-array v1, v5, [[S

    .line 69
    new-array v2, v3, [S

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 71
    new-array v1, v3, [[S

    .line 72
    new-array v2, v3, [S

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    .line 73
    new-array v2, v3, [S

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 75
    new-array v1, v6, [[S

    .line 76
    new-array v2, v3, [S

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    .line 77
    new-array v2, v3, [S

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    .line 78
    new-array v2, v3, [S

    fill-array-data v2, :array_5

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    .line 67
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    .line 82
    new-array v0, v6, [[[S

    .line 83
    new-array v1, v5, [[S

    .line 84
    new-array v2, v3, [S

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 86
    new-array v1, v3, [[S

    .line 87
    new-array v2, v3, [S

    fill-array-data v2, :array_7

    aput-object v2, v1, v4

    .line 88
    new-array v2, v3, [S

    fill-array-data v2, :array_8

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 90
    new-array v1, v6, [[S

    .line 91
    new-array v2, v3, [S

    fill-array-data v2, :array_9

    aput-object v2, v1, v4

    .line 92
    new-array v2, v3, [S

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    .line 93
    new-array v2, v3, [S

    fill-array-data v2, :array_b

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    .line 82
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    .line 17
    return-void

    .line 69
    nop

    :array_0
    .array-data 2
        0x54s
        0xa0s
    .end array-data

    .line 72
    :array_1
    .array-data 2
        0x85s
        0x70s
    .end array-data

    .line 73
    :array_2
    .array-data 2
        0x85s
        0xe0s
    .end array-data

    .line 76
    :array_3
    .array-data 2
        0x85s
        0x70s
    .end array-data

    .line 77
    :array_4
    .array-data 2
        0x54s
        0xa0s
    .end array-data

    .line 78
    :array_5
    .array-data 2
        0x85s
        0xe0s
    .end array-data

    .line 84
    :array_6
    .array-data 2
        0x1ccs
        0xa0s
    .end array-data

    .line 87
    :array_7
    .array-data 2
        0x1a9s
        0x70s
    .end array-data

    .line 88
    :array_8
    .array-data 2
        0x1a9s
        0xe0s
    .end array-data

    .line 91
    :array_9
    .array-data 2
        0x1a9s
        0x70s
    .end array-data

    .line 92
    :array_a
    .array-data 2
        0x1ccs
        0xa0s
    .end array-data

    .line 93
    :array_b
    .array-data 2
        0x1a9s
        0xe0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 216
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;-><init>()V

    .line 175
    iput-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isSelRole:Z

    .line 199
    const/4 v0, 0x6

    new-array v0, v0, [[I

    .line 200
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 201
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    .line 202
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 203
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 204
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 205
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fMOffset:[[I

    .line 214
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    .line 217
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    .line 218
    return-void

    .line 200
    nop

    :array_0
    .array-data 4
        0x15
        0x10
    .end array-data

    .line 201
    :array_1
    .array-data 4
        0x4f
        0x10
    .end array-data

    .line 202
    :array_2
    .array-data 4
        0x67
        0x35
    .end array-data

    .line 203
    :array_3
    .array-data 4
        0x4f
        0x5a
    .end array-data

    .line 204
    :array_4
    .array-data 4
        0x15
        0x5a
    .end array-data

    .line 205
    :array_5
    .array-data 4
        0x5
        0x35
    .end array-data
.end method

.method private actionTipPPressed(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2988
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    .line 2989
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->backToScene()V

    .line 2993
    :goto_0
    return-void

    .line 2991
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private arrangeRule([Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 6
    .param p1, "tr"    # [Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 849
    .local v0, "bChange":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    .line 866
    return-void

    .line 850
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_1

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    :cond_1
    aget-object v4, p1, v2

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-le v4, v5, :cond_4

    .line 853
    const/4 v0, 0x1

    .line 858
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 859
    aget-object v3, p1, v2

    .line 860
    .local v3, "tm":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v2

    .line 861
    add-int/lit8 v4, v2, 0x1

    aput-object v3, p1, v4

    .line 862
    const/4 v0, 0x0

    .line 850
    .end local v3    # "tm":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 854
    :cond_4
    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    if-ne v4, v5, :cond_2

    aget-object v4, p1, v2

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-ne v4, v5, :cond_2

    .line 856
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private arrangedShow()V
    .locals 4

    .prologue
    .line 832
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 833
    .local v1, "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 836
    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->arrangeRule([Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 837
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 840
    return-void

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    aput-object v2, v1, v0

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private backToScene()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1637
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 1652
    const/4 v6, 0x0

    :goto_1
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRoleCount:I

    if-lt v6, v0, :cond_2

    .line 1657
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->eventArray:[Lcom/jarworld/rpg/sanguocollege/GameEvent;

    if-eqz v0, :cond_3

    .line 1658
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2, v8}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    .line 1662
    :goto_2
    return-void

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-nez v0, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    invoke-direct {p0, v8, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->backToSceneRelive()V

    .line 1645
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    invoke-virtual {v0, v9, v8}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeRoleState(BZ)V

    .line 1646
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    iput v9, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    .line 1648
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->initFightFet()V

    .line 1650
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v6

    invoke-direct {p0, v8, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 1637
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1653
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_s_controlID:S

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_s_controlID:S

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    .line 1654
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_s_controlID:S

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_s_controlID:S

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    .line 1655
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_s_controlID:S

    aget-object v5, v5, v7

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    .line 1653
    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setPos(SSFFB)V

    .line 1652
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1660
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v0, p0, v1, v9, v8}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    goto :goto_2
.end method

.method private buyConfirmDelayWork()V
    .locals 2

    .prologue
    .line 3625
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3633
    :goto_0
    return-void

    .line 3627
    :pswitch_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3630
    :pswitch_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3625
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buyConfirmLastWork(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3711
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x24

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3712
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    if-le v0, v7, :cond_0

    .line 3713
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    .line 3715
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    mul-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    .line 3725
    :goto_0
    return-void

    .line 3716
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x62

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3717
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    const/16 v1, 0x63

    if-ge v0, v1, :cond_2

    .line 3718
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    .line 3720
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    mul-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    goto :goto_0

    .line 3722
    :cond_3
    sput-boolean v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    .line 3723
    invoke-virtual {p0, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private buyConfirmPPressed(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3102
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x24

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    const/16 v5, 0x8

    const/16 v6, 0xe

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3103
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    if-le v0, v7, :cond_0

    .line 3104
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    .line 3106
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    mul-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    .line 3107
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x4

    aput v1, v0, v9

    .line 3108
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v7, v0, v7

    .line 3109
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v9, v0, v8

    .line 3110
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v9, v0, v11

    .line 3111
    sput-boolean v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3112
    new-array v0, v8, [I

    aput v7, v0, v7

    invoke-virtual {p0, v0, v10, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3114
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x62

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    const/16 v5, 0x8

    const/16 v6, 0xe

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3115
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    const/16 v1, 0x63

    if-ge v0, v1, :cond_2

    .line 3116
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    .line 3118
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    mul-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    .line 3119
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x4

    aput v1, v0, v9

    .line 3120
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v7, v0, v7

    .line 3121
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v9, v0, v8

    .line 3122
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    aput v9, v0, v11

    .line 3123
    sput-boolean v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3124
    new-array v0, v8, [I

    invoke-virtual {p0, v0, v10, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3126
    :cond_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0xe

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x2a

    const/16 v5, 0x36

    const/16 v6, 0x25

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3127
    new-array v0, v8, [I

    aput v8, v0, v7

    invoke-virtual {p0, v0, v10, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3129
    :cond_4
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x52

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x44

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x2a

    const/16 v5, 0x36

    const/16 v6, 0x25

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3130
    new-array v0, v8, [I

    aput v11, v0, v7

    invoke-virtual {p0, v0, v10, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3132
    :cond_5
    return-void
.end method

.method private buyConfirmPReleased()V
    .locals 1

    .prologue
    .line 3392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3393
    return-void
.end method

.method private buyDelayWork()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3601
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 3602
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 3603
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3622
    :cond_0
    :goto_0
    return-void

    .line 3605
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_0

    .line 3606
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    if-ne v1, v4, :cond_2

    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    if-eq v1, v4, :cond_4

    .line 3607
    :cond_2
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    int-to-short v1, v1

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 3608
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    int-to-short v1, v1

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    .line 3609
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v4

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    add-int/2addr v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3610
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v4, v5

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 3612
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v4, v4, v3

    aget-byte v4, v4, v0

    mul-int/lit8 v5, v4, 0x7

    move v4, v0

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRoll(ILjava/util/Vector;[Ljava/util/Vector;III)V

    goto :goto_0

    .line 3614
    :cond_3
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    goto :goto_0

    .line 3617
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v0, :cond_0

    .line 3618
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private buyLastWork(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v5, 0x1b

    const/16 v6, 0x1a

    const/4 v7, 0x0

    .line 3700
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x12

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3708
    :goto_0
    return-void

    .line 3702
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v4, v0, 0x9d

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3703
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    goto :goto_0

    .line 3705
    :cond_1
    sput-boolean v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    .line 3706
    invoke-virtual {p0, v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private buyPDragged(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0x71

    .line 3442
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3443
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x100

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x2c

    const/16 v5, 0x51

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v1, v6, v1

    if-lt v0, v1, :cond_0

    .line 3445
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v4, v6, v4

    div-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuDragged(IIII)V

    .line 3446
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3450
    :cond_0
    return-void

    .line 3445
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private buyPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3067
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3068
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3070
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x12

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3071
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3072
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3073
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3074
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3075
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3076
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3077
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3079
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v4, v0, 0x9d

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3080
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3081
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3082
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3083
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3084
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3085
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3086
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3088
    :cond_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x2c

    const/16 v5, 0x1b

    const/16 v6, 0x71

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3089
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 3090
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3092
    :cond_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x4

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x15

    const/16 v5, 0x111

    const/16 v6, 0x90

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    sget v8, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedGrid(IIIIIIII)[I

    move-result-object v9

    .line 3093
    .local v9, "result":[I
    if-eqz v9, :cond_4

    .line 3094
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    const/4 v3, 0x1

    aget v3, v9, v3

    add-int/2addr v2, v3

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v9, v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3095
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    .line 3094
    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3096
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    .line 3097
    const/4 v0, 0x0

    aget v0, v9, v0

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    .line 3099
    :cond_4
    return-void
.end method

.method private buyPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3380
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 3381
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 3382
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3389
    :cond_0
    :goto_0
    return-void

    .line 3383
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 3384
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0

    .line 3386
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 3387
    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private changeTurn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v1, :cond_2

    .line 918
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 927
    :cond_0
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    .line 929
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    .line 930
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->overActNum:I

    .line 931
    return-void

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isHadPlayed:Z

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isHadPlayed:Z

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 927
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private checkDropItem(Lcom/jarworld/rpg/sanguocollege/Item;)V
    .locals 4
    .param p1, "dropItem"    # Lcom/jarworld/rpg/sanguocollege/Item;

    .prologue
    const/4 v3, 0x1

    .line 2853
    const/4 v0, 0x1

    .line 2854
    .local v0, "newItem":Z
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    if-eqz v1, :cond_3

    .line 2855
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    .line 2856
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2864
    :goto_0
    if-eqz v0, :cond_1

    .line 2865
    iput-byte v3, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byte_drawRNum:B

    .line 2866
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2873
    :cond_1
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_Item_tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 2874
    return-void

    .line 2857
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_Item_tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 2858
    iget-short v1, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_Item_tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    if-ne v1, v2, :cond_0

    .line 2859
    const/4 v0, 0x0

    .line 2860
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_Item_tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byte_drawRNum:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byte_drawRNum:B

    goto :goto_0

    .line 2869
    :cond_3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    .line 2870
    iput-byte v3, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byte_drawRNum:B

    .line 2871
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private controlFirst()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1014
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v5, v6, v7}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 1015
    iput-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    .line 1017
    :cond_0
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v5, v6, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 1018
    iput-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    .line 1020
    :cond_1
    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-nez v4, :cond_5

    .line 1021
    :cond_2
    const/4 v3, 0x0

    .line 1023
    .local v3, "hasCollides":Z
    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-nez v4, :cond_3

    .line 1024
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    aget-short v0, v4, v9

    .line 1025
    .local v0, "flag":S
    if-nez v0, :cond_6

    .line 1026
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x5

    aget-short v2, v4, v5

    .line 1031
    .local v2, "framefront":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v2

    aget-short v4, v4, v7

    if-lez v4, :cond_3

    .line 1032
    const/4 v3, 0x1

    .line 1035
    .end local v0    # "flag":S
    .end local v2    # "framefront":I
    :cond_3
    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-nez v4, :cond_4

    .line 1036
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    aget-short v0, v4, v9

    .line 1037
    .restart local v0    # "flag":S
    if-nez v0, :cond_7

    .line 1038
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    mul-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x5

    aget-short v1, v4, v5

    .line 1043
    .local v1, "frameback":I
    :goto_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    aget-short v4, v4, v7

    if-lez v4, :cond_4

    .line 1044
    const/4 v3, 0x1

    .line 1048
    .end local v0    # "flag":S
    .end local v1    # "frameback":I
    :cond_4
    if-eqz v3, :cond_5

    .line 1049
    iput-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    .line 1052
    .end local v3    # "hasCollides":Z
    :cond_5
    return-void

    .line 1028
    .restart local v0    # "flag":S
    .restart local v3    # "hasCollides":Z
    :cond_6
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x5

    aget-short v2, v4, v5

    .restart local v2    # "framefront":I
    goto :goto_0

    .line 1040
    .end local v2    # "framefront":I
    :cond_7
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x5

    aget-short v1, v4, v5

    .restart local v1    # "frameback":I
    goto :goto_1
.end method

.method private controlNum()V
    .locals 5

    .prologue
    .line 1001
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 1009
    return-void

    .line 1002
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/DigNum;

    .line 1004
    .local v0, "dns":Lcom/jarworld/rpg/sanguocollege/DigNum;
    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1002
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private controlSecond()V
    .locals 11

    .prologue
    .line 1057
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v9, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v9, v9, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 1058
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    .line 1060
    :cond_0
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v9, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v9, v9, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 1061
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    .line 1063
    :cond_1
    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-nez v7, :cond_7

    .line 1064
    :cond_2
    const/4 v5, 0x0

    .line 1066
    .local v5, "hasCollides":Z
    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-nez v7, :cond_3

    .line 1067
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x4

    aget-short v2, v7, v8

    .line 1068
    .local v2, "flag":S
    if-nez v2, :cond_8

    .line 1069
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x5

    aget-short v4, v7, v8

    .line 1074
    .local v4, "framefront":I
    :goto_0
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    aget-object v7, v7, v4

    const/4 v8, 0x1

    aget-short v7, v7, v8

    if-lez v7, :cond_3

    .line 1075
    const/4 v5, 0x1

    .line 1078
    .end local v2    # "flag":S
    .end local v4    # "framefront":I
    :cond_3
    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-nez v7, :cond_4

    .line 1079
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x4

    aget-short v2, v7, v8

    .line 1080
    .restart local v2    # "flag":S
    if-nez v2, :cond_9

    .line 1081
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x5

    aget-short v3, v7, v8

    .line 1086
    .local v3, "frameback":I
    :goto_1
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->frameData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-short v7, v7, v8

    if-lez v7, :cond_4

    .line 1087
    const/4 v5, 0x1

    .line 1091
    .end local v2    # "flag":S
    .end local v3    # "frameback":I
    :cond_4
    if-eqz v5, :cond_7

    .line 1093
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1094
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    .line 1095
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_a

    .line 1103
    .end local v6    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {p0, v7, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->useMedicine(Ljava/util/Vector;Lcom/jarworld/rpg/sanguocollege/Item;)V

    .line 1106
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_c

    .line 1155
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_effect:B

    iput-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    .line 1156
    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    packed-switch v7, :pswitch_data_0

    .line 1162
    const/4 v7, 0x6

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    .line 1165
    :goto_4
    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-nez v7, :cond_7

    .line 1166
    const/4 v7, 0x1

    iput-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    .line 1167
    const/4 v7, 0x6

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    .line 1171
    .end local v5    # "hasCollides":Z
    .end local v6    # "i":I
    :cond_7
    return-void

    .line 1071
    .restart local v2    # "flag":S
    .restart local v5    # "hasCollides":Z
    :cond_8
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    aget-short v4, v7, v8

    .restart local v4    # "framefront":I
    goto/16 :goto_0

    .line 1083
    .end local v4    # "framefront":I
    :cond_9
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->actionData:[[[S

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    aget-short v3, v7, v8

    .restart local v3    # "frameback":I
    goto/16 :goto_1

    .line 1096
    .end local v2    # "flag":S
    .end local v3    # "frameback":I
    .restart local v6    # "i":I
    :cond_a
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1097
    .local v0, "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-boolean v7, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v7, :cond_b

    .line 1098
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    .line 1099
    const/4 v7, 0x1

    invoke-direct {p0, v7, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 1095
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1107
    .end local v0    # "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_c
    new-instance v1, Lcom/jarworld/rpg/sanguocollege/DigNum;

    invoke-direct {v1}, Lcom/jarworld/rpg/sanguocollege/DigNum;-><init>()V

    .line 1108
    .local v1, "dn":Lcom/jarworld/rpg/sanguocollege/DigNum;
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->x:I

    .line 1109
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->y:I

    .line 1110
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_f

    .line 1111
    const-wide v7, 0x3ffd524fe24f89f1L    # 1.832595714594046

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-static {v7, v8, v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDRandom(DD)D

    move-result-wide v7

    .line 1110
    :goto_5
    iput-wide v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->arc:D

    .line 1113
    const/4 v7, 0x1

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v7

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->speed:I

    .line 1114
    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    iput-boolean v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->big:Z

    .line 1116
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->color:I

    .line 1117
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    aget v7, v7, v6

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->value:I

    .line 1118
    const/4 v7, 0x0

    iput v7, v1, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    .line 1119
    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_posIndex:B

    aget-object v7, v8, v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1121
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v7, :cond_10

    .line 1123
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 1124
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 1132
    :cond_d
    :goto_6
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v8, 0x3

    if-eq v7, v8, :cond_12

    .line 1134
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    if-lez v7, :cond_e

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    aget v7, v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_11

    .line 1106
    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1112
    :cond_f
    const-wide/16 v7, 0x0

    const-wide v9, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    invoke-static {v7, v8, v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDRandom(DD)D

    move-result-wide v7

    goto :goto_5

    .line 1125
    :cond_10
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 1127
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    if-eq v7, v8, :cond_d

    .line 1128
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 1129
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    goto :goto_6

    .line 1137
    :cond_11
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v7, :cond_13

    .line 1138
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget-object v9, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1145
    :cond_12
    :goto_8
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    if-gtz v7, :cond_e

    .line 1146
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v8, 0x0

    iput v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1147
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    .line 1148
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    goto :goto_7

    .line 1140
    :cond_13
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget-object v9, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1141
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v9, v8, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v8, v8, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    goto :goto_8

    .line 1150
    :cond_14
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    goto/16 :goto_7

    .line 1158
    .end local v1    # "dn":Lcom/jarworld/rpg/sanguocollege/DigNum;
    :pswitch_0
    const/16 v7, 0x9

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    goto/16 :goto_4

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private defineDef(Z)[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .locals 1
    .param p1, "attack"    # Z

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .line 1239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    goto :goto_0
.end method

.method private dialogPPressed(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3287
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    if-gtz v0, :cond_0

    .line 3288
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v0, v0, v3

    aget v0, v0, v4

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    if-eq v0, v1, :cond_1

    .line 3289
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v0, v0, v3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    aput v1, v0, v4

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 3291
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    aget v1, v0, v3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 3292
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v0, v0, v3

    aput v3, v0, v4

    .line 3293
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    aget v0, v0, v3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v1, v1, v3

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 3294
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    .line 3295
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 3297
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/Dialog;->releaseDialog()V

    .line 3299
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    .line 3300
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3303
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    .line 3305
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iput-short v3, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    .line 3307
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v1

    aget-short v0, v0, v5

    add-int/lit16 v0, v0, 0x12d

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadDialogHead(S)V

    .line 3312
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    aget-object v0, v0, v1

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v1, -0x40

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v2, v2, v4

    aget-byte v2, v2, v5

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v4, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    .line 3314
    :cond_3
    invoke-static {v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->initFactNum(I)V

    goto/16 :goto_0

    .line 3309
    :cond_4
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    goto :goto_1
.end method

.method private dispatchByStand(I)V
    .locals 6
    .param p1, "stand"    # I

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1264
    packed-switch p1, :pswitch_data_0

    .line 1314
    :goto_0
    return-void

    .line 1267
    :pswitch_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosX:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1268
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosY:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 1269
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 1273
    :pswitch_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-nez v0, :cond_3

    .line 1274
    iget-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1279
    :goto_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 1280
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v0, :cond_0

    .line 1281
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 1282
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->singleX:I

    .line 1283
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->singleY:I

    .line 1299
    :cond_0
    :goto_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1274
    goto :goto_1

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    add-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    goto :goto_2

    .line 1286
    :cond_3
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    if-eqz v0, :cond_4

    .line 1287
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->singleX:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1288
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->singleY:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    goto :goto_3

    .line 1290
    :cond_4
    iget-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 1291
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v0, v0, v5

    aget-object v0, v0, v1

    aget-short v0, v0, v2

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1296
    :goto_5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    goto :goto_3

    :cond_5
    move v0, v2

    .line 1290
    goto :goto_4

    .line 1293
    :cond_6
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v0, v0, v5

    aget-object v0, v0, v1

    aget-short v0, v0, v2

    add-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    goto :goto_5

    .line 1303
    :pswitch_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1304
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 1305
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 1309
    :pswitch_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 1310
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 1311
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 1264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private disposeFet(Ljava/util/Vector;BBBS)V
    .locals 4
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "fet"    # B
    .param p3, "rate"    # B
    .param p4, "round"    # B
    .param p5, "baseValue"    # S

    .prologue
    const/4 v3, 0x0

    .line 2112
    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    .line 2113
    const/16 v2, 0x63

    invoke-static {v3, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    if-le p3, v2, :cond_0

    .line 2114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2147
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 2115
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2117
    .local v1, "man":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    :cond_2
    iget-boolean v2, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_immunity:Z

    if-eqz v2, :cond_3

    .line 2114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2120
    :cond_3
    invoke-virtual {v1, p2, p4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightFet(BI)V

    .line 2121
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2124
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_1

    .line 2129
    :pswitch_2
    invoke-direct {p0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_1

    .line 2133
    :pswitch_3
    iput-short p5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upAtt:S

    goto :goto_1

    .line 2137
    :pswitch_4
    iput-short p5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upDef:S

    goto :goto_1

    .line 2141
    :pswitch_5
    invoke-static {p5, v1}, Lcom/jarworld/rpg/sanguocollege/Formular;->poisonHurt(ILcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v2

    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_fetHurt:I

    goto :goto_1

    .line 2121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private draw()V
    .locals 13

    .prologue
    .line 2320
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2322
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2323
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    .line 2324
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, -0x4

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 2335
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawBackGround()V

    .line 2336
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2337
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawAllbEff()V

    .line 2340
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_b

    .line 2420
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_24

    .line 2423
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-nez v0, :cond_2

    .line 2424
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 2425
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2428
    :cond_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawAllfEff()V

    .line 2430
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v0, v0

    if-lt v4, v0, :cond_22

    .line 2440
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v0, :cond_4

    .line 2441
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-nez v0, :cond_3

    .line 2442
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    .line 2444
    :cond_3
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-nez v0, :cond_4

    .line 2445
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    .line 2448
    :cond_4
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_6

    .line 2449
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-nez v0, :cond_5

    .line 2450
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    .line 2452
    :cond_5
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-nez v0, :cond_6

    .line 2453
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    .line 2472
    .end local v4    # "j":I
    :cond_6
    :goto_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 2473
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_29

    .line 2474
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 2483
    :cond_7
    :goto_4
    const/4 v0, 0x0

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    .line 2484
    # 添加悬浮窗功能
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;
    const/4 v1, -0x1
    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    const/16 v1, 0x140
    const/4 v2, 0x0
    const/4 v3, 0x7
    const/4 v4, 0x7
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
    return-void

    .line 2325
    .end local v7    # "i":I
    .end local v8    # "k":I
    :cond_8
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2326
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_0

    .line 2327
    :cond_9
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2328
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x4

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_0

    .line 2330
    :cond_a
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, -0x4

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_0

    .line 2341
    .restart local v7    # "i":I
    .restart local v8    # "k":I
    :cond_b
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2342
    .local v10, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 2343
    invoke-direct {p0, v10, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawSinglebEff(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V

    .line 2345
    :cond_c
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_d

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 2346
    :cond_d
    iget-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    if-eqz v0, :cond_13

    .line 2348
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-short v2, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2349
    iget-short v3, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fSpxIndex:S

    iget-byte v4, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    iget v5, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    iget-byte v6, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v6, :cond_12

    const/4 v6, 0x1

    .line 2348
    :goto_5
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    .line 2351
    invoke-direct {p0, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawSimpleHp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2363
    :goto_6
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 2365
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2366
    iget v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    if-nez v0, :cond_e

    iget-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-nez v0, :cond_e

    .line 2367
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 2368
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2389
    :cond_e
    :goto_7
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xd

    if-eq v0, v1, :cond_10

    .line 2390
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_f

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    .line 2392
    invoke-direct {p0, v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawSimpleHp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2394
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_8
    iget-object v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    array-length v0, v0

    if-lt v4, v0, :cond_1a

    .line 2404
    .end local v4    # "j":I
    :cond_10
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 2406
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    if-ne v0, v10, :cond_11

    iget-byte v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_11

    .line 2407
    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-byte v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    const/16 v0, 0x23

    :goto_9
    add-int/2addr v1, v0

    .line 2408
    iget-short v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v2, v0, -0x64

    .line 2409
    iget-byte v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x0

    .line 2407
    :goto_a
    invoke-direct {p0, v1, v2, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawArrow(IIZ)V

    .line 2340
    :cond_11
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2349
    :cond_12
    const/4 v6, 0x0

    goto :goto_5

    .line 2354
    :cond_13
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-short v2, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2355
    const/16 v3, 0x12d

    const/4 v4, 0x0

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    const/4 v6, 0x0

    .line 2354
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    goto :goto_6

    .line 2358
    :cond_14
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2359
    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-short v2, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2360
    iget-short v3, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fSpxIndex:S

    .line 2361
    iget-byte v4, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->actionIndex:B

    iget v5, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    iget-byte v6, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v6, :cond_15

    const/4 v6, 0x1

    .line 2358
    :goto_c
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    goto/16 :goto_6

    .line 2361
    :cond_15
    const/4 v6, 0x0

    goto :goto_c

    .line 2371
    :cond_16
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_e

    .line 2373
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2374
    iget v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->frameIndex:I

    if-nez v0, :cond_17

    iget-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-nez v0, :cond_17

    .line 2375
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 2376
    iget-boolean v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    if-eqz v0, :cond_19

    .line 2377
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2383
    :cond_17
    :goto_d
    invoke-direct {p0, v10, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawSinglefEff(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V

    .line 2384
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-nez v0, :cond_e

    .line 2385
    :cond_18
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2386
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 2379
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    goto :goto_d

    .line 2395
    .restart local v4    # "j":I
    :cond_1a
    iget-object v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v0, v0, v4

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 2397
    iget-object v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v11, v0, v4

    const/4 v12, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2398
    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-short v2, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2399
    const/16 v3, 0x12c

    .line 2400
    iget-object v5, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v4

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    iget-byte v6, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v6, :cond_1c

    const/4 v6, 0x1

    .line 2397
    :goto_e
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v11, v12

    .line 2394
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 2400
    :cond_1c
    const/4 v6, 0x0

    goto :goto_e

    .line 2407
    .end local v4    # "j":I
    :cond_1d
    const/16 v0, -0x3c

    goto/16 :goto_9

    .line 2409
    :cond_1e
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 2411
    :cond_1f
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 2413
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2414
    iget-short v1, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-byte v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    const/16 v0, 0x23

    :goto_f
    add-int/2addr v1, v0

    .line 2415
    iget-short v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v2, v0, -0x64

    .line 2416
    iget-byte v0, v10, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    const/4 v0, 0x0

    .line 2414
    :goto_10
    invoke-direct {p0, v1, v2, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawArrow(IIZ)V

    goto/16 :goto_b

    :cond_20
    const/16 v0, -0x3c

    goto :goto_f

    .line 2416
    :cond_21
    const/4 v0, 0x1

    goto :goto_10

    .line 2431
    .end local v10    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .restart local v4    # "j":I
    :cond_22
    const/4 v8, 0x0

    :goto_11
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v8, v0, :cond_23

    .line 2430
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2432
    :cond_23
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jarworld/rpg/sanguocollege/DigNum;

    .line 2433
    .local v9, "num":Lcom/jarworld/rpg/sanguocollege/DigNum;
    invoke-direct {p0, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFlyNum(Lcom/jarworld/rpg/sanguocollege/DigNum;)V

    .line 2435
    iget v0, v9, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    .line 2431
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 2457
    .end local v4    # "j":I
    .end local v9    # "num":Lcom/jarworld/rpg/sanguocollege/DigNum;
    :cond_24
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_25

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 2459
    :cond_25
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_12
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 2460
    const/4 v8, 0x0

    :goto_13
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v8, v0, :cond_26

    .line 2459
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2461
    :cond_26
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jarworld/rpg/sanguocollege/DigNum;

    .line 2462
    .restart local v9    # "num":Lcom/jarworld/rpg/sanguocollege/DigNum;
    invoke-direct {p0, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFlyNum(Lcom/jarworld/rpg/sanguocollege/DigNum;)V

    .line 2464
    iget v0, v9, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    .line 2460
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 2467
    .end local v4    # "j":I
    .end local v9    # "num":Lcom/jarworld/rpg/sanguocollege/DigNum;
    :cond_27
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_28

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 2469
    :cond_28
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    goto/16 :goto_3

    .line 2475
    :cond_29
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 2476
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, -0x4

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_4

    .line 2477
    :cond_2a
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 2478
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, -0x4

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_4

    .line 2480
    :cond_2b
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x4

    const/4 v2, -0x4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    goto/16 :goto_4
.end method

.method private drawAllbEff()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2505
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target1:B

    if-ne v0, v8, :cond_0

    .line 2506
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2507
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v7

    aget-short v1, v1, v4

    .line 2508
    :goto_0
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v7

    aget-short v2, v2, v7

    .line 2509
    :goto_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    .line 2510
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    .line 2511
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_4

    move v6, v4

    .line 2506
    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2514
    :cond_0
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-ne v0, v8, :cond_1

    .line 2515
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2516
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v1, :cond_5

    move v1, v7

    :goto_3
    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v7

    aget-short v1, v1, v4

    .line 2517
    :goto_4
    iget-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v2, :cond_7

    move v2, v7

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_8

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v7

    aget-short v2, v2, v7

    .line 2518
    :goto_6
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    .line 2519
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    .line 2520
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_9

    move v6, v4

    .line 2515
    :goto_7
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2522
    :cond_1
    return-void

    .line 2507
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v7

    aget-short v1, v1, v4

    goto :goto_0

    .line 2508
    :cond_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v7

    aget-short v2, v2, v7

    goto :goto_1

    :cond_4
    move v6, v7

    .line 2511
    goto :goto_2

    :cond_5
    move v1, v4

    .line 2516
    goto :goto_3

    :cond_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v7

    aget-short v1, v1, v4

    goto :goto_4

    :cond_7
    move v2, v4

    .line 2517
    goto :goto_5

    :cond_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v7

    aget-short v2, v2, v7

    goto :goto_6

    :cond_9
    move v6, v7

    .line 2520
    goto :goto_7
.end method

.method private drawAllfEff()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 2527
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target1:B

    if-ne v0, v8, :cond_0

    .line 2528
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2529
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v4

    aget-short v1, v1, v7

    .line 2530
    :goto_0
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v4

    aget-short v2, v2, v4

    .line 2531
    :goto_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    .line 2532
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    .line 2533
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_4

    move v6, v7

    .line 2528
    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2536
    :cond_0
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-ne v0, v8, :cond_1

    .line 2537
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2538
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v1, :cond_5

    move v1, v4

    :goto_3
    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v4

    aget-short v1, v1, v7

    .line 2539
    :goto_4
    iget-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v2, :cond_7

    move v2, v4

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_8

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v4

    aget-short v2, v2, v4

    .line 2540
    :goto_6
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    .line 2541
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    .line 2542
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_9

    move v6, v7

    .line 2537
    :goto_7
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2544
    :cond_1
    return-void

    .line 2529
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v4

    aget-short v1, v1, v7

    goto :goto_0

    .line 2530
    :cond_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v4

    aget-short v2, v2, v4

    goto :goto_1

    :cond_4
    move v6, v4

    .line 2533
    goto :goto_2

    :cond_5
    move v1, v7

    .line 2538
    goto :goto_3

    :cond_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v1, v1, v8

    aget-object v1, v1, v4

    aget-short v1, v1, v7

    goto :goto_4

    :cond_7
    move v2, v7

    .line 2539
    goto :goto_5

    :cond_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    aget-object v2, v2, v8

    aget-object v2, v2, v4

    aget-short v2, v2, v4

    goto :goto_6

    :cond_9
    move v6, v4

    .line 2542
    goto :goto_7
.end method

.method private drawArrow(IIZ)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isHor"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 2839
    if-nez p3, :cond_0

    .line 2840
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveOffset:[B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    aget-byte v1, v1, v3

    add-int/2addr v1, p1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, p2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 2841
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v6

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveOffset:[B

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    add-int/2addr v3, p1

    invoke-interface {v0, v1, v3, p2, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 2846
    :goto_0
    return-void

    .line 2843
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveOffset:[B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    aget-byte v1, v1, v3

    add-int/2addr v1, p1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    invoke-interface {v0, v1, p2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 2844
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v6

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveOffset:[B

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v7, v7, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v7, v7, 0x4

    rem-int/lit8 v7, v7, 0x4

    aget-byte v3, v3, v7

    add-int v7, p1, v3

    move v3, v2

    move v8, p2

    move v9, v2

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method private drawBackGround()V
    .locals 10

    .prologue
    .line 2662
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2663
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2664
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2665
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2666
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2667
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->bgColor:[I

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2669
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 2671
    :cond_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 2672
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2673
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2674
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 2675
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10b

    const/16 v5, 0xa0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 2676
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10b

    const/16 v5, 0xa0

    const/4 v6, 0x2

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v7, v7, -0x10b

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 2677
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10b

    const/16 v5, 0xa0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v8, v8, -0xa0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 2678
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10b

    const/16 v5, 0xa0

    const/4 v6, 0x3

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v7, v7, -0x10b

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v8, v8, -0xa0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto/16 :goto_0

    .line 2681
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto/16 :goto_0
.end method

.method private drawFSkllMenu(IILcom/jarworld/rpg/sanguocollege/GameCharacter;[S)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skCanUse"    # [S

    .prologue
    .line 2776
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    const/16 v7, 0xf2

    const/16 v8, 0x108

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    move v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2777
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x593f2c

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0xf

    const/16 v5, 0xec

    const/16 v6, 0xea

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2778
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0xf

    const/16 v5, 0xec

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2779
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x5

    move/from16 v0, p2

    add-int/lit16 v6, v0, 0x9d

    const/16 v7, 0xe8

    const/16 v8, 0x4c

    const v9, 0x593f2c

    const v10, 0x79582b

    const v11, 0x8d6a3e

    const v12, 0xad8463

    const v13, 0xad8463

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2781
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x3d

    add-int/lit8 v6, p2, -0xe

    const/16 v7, 0x78

    const/16 v8, 0x1a

    const v9, 0x145d64

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0x593f2c

    const v13, 0xa58252

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2782
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x55

    add-int/lit8 v4, p2, -0xb

    const/16 v5, 0x48

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/16 v8, 0x104

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2784
    add-int/lit16 v2, p1, 0xd1

    add-int/lit8 v3, p2, 0x22

    const/16 v4, 0x1a

    const/16 v5, 0x78

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0xc

    aget-object v9, v1, v9

    .line 2785
    const/4 v1, 0x2

    new-array v10, v1, [Z

    const/4 v1, 0x0

    .line 2786
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    const/4 v1, 0x1

    .line 2787
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    move-object v1, p0

    .line 2784
    invoke-virtual/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2791
    if-eqz p4, :cond_0

    .line 2792
    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0x1e

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v5, 0x2

    aget-object v1, v1, v5

    const/4 v5, 0x5

    aget-object v1, v1, v5

    const/4 v5, 0x1

    aget-object v5, v1, v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawOGForSk(III[[Z[[S[SI)V

    .line 2794
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2795
    add-int/lit8 v1, p1, 0x19

    .line 2796
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0xa2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 2797
    const/16 v3, 0xc0

    .line 2798
    const/16 v4, 0x42

    .line 2799
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const v10, 0xfffed2

    .line 2800
    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, p1, 0x19

    aput v13, v11, v12

    const/4 v12, 0x1

    move/from16 v0, p2

    add-int/lit16 v13, v0, 0xa2

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0xc0

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x42

    aput v13, v11, v12

    .line 2801
    const/4 v12, -0x1

    const/4 v13, 0x1

    .line 2795
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 2805
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x8

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xea

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x27

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2806
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x23

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xec

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    move-object/from16 v0, p3

    iget v10, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2808
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v1, -0x55

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v5, 0x2

    aget-object v1, v1, v5

    const/4 v5, 0x5

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-boolean v5, v1, v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawYON(IIIZZ)V

    .line 2809
    return-void
.end method

.method private drawFightInfo(IILcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 11
    .param p1, "bx"    # I
    .param p2, "by"    # I
    .param p3, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 2741
    add-int/lit8 v0, p1, -0x5

    add-int/lit8 v1, p2, -0x15

    invoke-virtual {p0, v0, v1, p3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawheadImg(IILcom/jarworld/rpg/sanguocollege/GameCharacter;I)V

    .line 2743
    iget-byte v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-ne v0, v10, :cond_0

    const/16 v0, 0x5a

    :goto_0
    add-int/2addr v0, p1

    add-int/lit8 v1, p2, 0x24

    invoke-direct {p0, v0, v1, p3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawHpMp(IILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2745
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_1
    iget-object v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 2751
    return-void

    .line 2743
    .end local v8    # "i":I
    .end local v9    # "idx":I
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0

    .line 2746
    .restart local v8    # "i":I
    .restart local v9    # "idx":I
    :cond_1
    iget-object v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v0, v0, v8

    aget-byte v0, v0, v7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2747
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    iget-byte v2, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-ne v2, v10, :cond_3

    const/16 v2, 0x6e

    :goto_2
    add-int/2addr v2, p1

    mul-int/lit8 v3, v9, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x12

    const/16 v4, 0xe

    const/16 v5, 0xd

    mul-int/lit8 v6, v8, 0xe

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2748
    add-int/lit8 v9, v9, 0x1

    .line 2745
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2747
    :cond_3
    const/16 v2, 0x50

    goto :goto_2
.end method

.method private drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 10
    .param p1, "someOne"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/16 v4, 0x6b

    const/16 v5, 0x52

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 2691
    iget-byte v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_1

    .line 2692
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v0, v0

    if-lt v8, v0, :cond_0

    .line 2700
    .end local v8    # "i":I
    :goto_1
    return-void

    .line 2693
    .restart local v8    # "i":I
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v9

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, -0x9e

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x52

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2694
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, -0x9e

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v1, 0x3

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v1, v1, -0x52

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfo(IILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2692
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2697
    .end local v8    # "i":I
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v9

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, -0x9e

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x52

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2698
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, -0x9e

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v1, v1, -0x52

    invoke-direct {p0, v0, v1, p1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfo(IILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_1
.end method

.method private drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 14
    .param p1, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 2705
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, v12

    aget-byte v3, v3, v2

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x42

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, v12

    aget-byte v3, v3, v2

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x42

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v4, v4, v12

    aget-byte v4, v4, v13

    add-int/lit8 v4, v4, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v10, 0x2d

    aget-object v9, v9, v10

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2707
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v0, v0, -0x36

    div-int/lit8 v4, v0, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v12

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    add-int/lit8 v5, v0, 0x5

    const/4 v8, -0x1

    const v10, 0xffc501

    move-object v3, p0

    move v6, v12

    move v7, v13

    move v9, v2

    move-object v11, p1

    invoke-virtual/range {v3 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2709
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x21

    aget-object v4, v0, v1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v12

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x22

    div-int/lit8 v5, v0, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v12

    aget-byte v0, v0, v13

    add-int/lit8 v0, v0, -0x3

    div-int/lit8 v6, v0, 0x2

    const/16 v7, 0x19

    const/16 v8, 0xd

    move v9, v2

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2710
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-byte v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v12

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    div-int/lit8 v5, v0, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v12

    aget-byte v0, v0, v13

    div-int/lit8 v6, v0, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x13

    aget-object v8, v0, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2711
    return-void
.end method

.method private drawFightItem(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2818
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const/16 v6, 0x138

    const/16 v7, 0xc6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2819
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0x114

    const/16 v5, 0xaa

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2821
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x60

    add-int/lit8 v5, p2, -0xe

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2822
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x78

    add-int/lit8 v3, p2, -0xb

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0xdc

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2824
    add-int/lit16 v1, p1, 0x11b

    add-int/lit8 v2, p2, 0xe

    const/16 v3, 0x1a

    const/16 v4, 0xaa

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 2825
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 2826
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 2827
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 2824
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2831
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0xe

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v6, 0x2

    aget-object v0, v0, v6

    const/4 v6, 0x6

    aget-object v0, v0, v6

    const/4 v6, 0x1

    aget-object v6, v0, v6

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V

    .line 2833
    add-int/lit8 v0, p1, 0x12

    add-int/lit16 v1, p2, 0xa6

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawMOA(IIII)V

    .line 2835
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const/4 v4, 0x6

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawYON(IIIZZ)V

    .line 2836
    return-void
.end method

.method private drawFightMenu()V
    .locals 9

    .prologue
    .line 2756
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xa5

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x6e

    const/16 v4, 0xa5

    const/16 v5, 0xa4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2758
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v8, v0, :cond_0

    .line 2764
    :goto_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xa5

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x6e

    const/16 v4, 0xa5

    const/16 v5, 0xa4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2765
    return-void

    .line 2759
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v1, v8, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 2760
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xa5

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fMOffset:[[I

    aget-object v3, v3, v8

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x6e

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fMOffset:[[I

    aget-object v4, v4, v8

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/16 v4, 0x2b

    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1

    .line 2758
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private drawFlyNum(Lcom/jarworld/rpg/sanguocollege/DigNum;)V
    .locals 31
    .param p1, "num"    # Lcom/jarworld/rpg/sanguocollege/DigNum;

    .prologue
    .line 2604
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    move/from16 v29, v0

    .line 2605
    .local v29, "t":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->speed:I

    int-to-double v2, v2

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->arc:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    mul-double/2addr v2, v8

    move/from16 v0, v29

    int-to-double v8, v0

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v8

    double-to-int v0, v2

    move/from16 v27, v0

    .line 2606
    .local v27, "offX":I
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->speed:I

    int-to-double v8, v4

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->arc:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v14

    mul-double/2addr v8, v10

    move/from16 v0, v29

    int-to-double v10, v0

    mul-double/2addr v8, v10

    mul-int/lit8 v4, v29, 0x5

    mul-int v4, v4, v29

    int-to-double v10, v4

    sub-double/2addr v8, v10

    mul-int/lit8 v4, v29, 0x19

    int-to-double v10, v4

    add-double/2addr v8, v10

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v8

    double-to-int v0, v2

    move/from16 v28, v0

    .line 2607
    .local v28, "offY":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->value:I

    if-ltz v2, :cond_9

    .line 2609
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->value:I

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getNumWay(I)I

    move-result v26

    .line 2610
    .local v26, "n":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->color:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v25, v2, 0x4

    .line 2611
    .local v25, "imgIdx":I
    const/16 v22, 0x1

    .line 2613
    .local v22, "dig":I
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->big:Z

    if-eqz v2, :cond_1

    .line 2614
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->x:I

    move/from16 v23, v0

    .line 2615
    .local v23, "drawX":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v6

    .line 2616
    .local v6, "bigW":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    .line 2617
    .local v7, "bigH":I
    div-int/lit8 v2, v6, 0x2

    sub-int v2, v23, v2

    if-gez v2, :cond_3

    .line 2618
    div-int/lit8 v23, v6, 0x2

    .line 2622
    :cond_0
    :goto_0
    add-int v23, v23, v27

    .line 2623
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->y:I

    add-int/lit8 v2, v2, -0x38

    sub-int/2addr v2, v7

    add-int v5, v2, v28

    .line 2624
    .local v5, "drawY":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    div-int/lit8 v4, v6, 0x2

    sub-int v4, v23, v4

    const/4 v8, 0x0

    const/4 v9, 0x5

    move/from16 v0, v29

    if-ge v0, v9, :cond_4

    const/4 v9, 0x0

    :goto_1
    mul-int/2addr v9, v7

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2627
    .end local v5    # "drawY":I
    .end local v6    # "bigW":I
    .end local v7    # "bigH":I
    .end local v23    # "drawX":I
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->x:I

    move/from16 v23, v0

    .line 2628
    .restart local v23    # "drawX":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v25

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    div-int/lit8 v12, v2, 0xb

    .line 2629
    .local v12, "numW":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v25

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/lit8 v13, v2, 0x2

    .line 2630
    .local v13, "numH":I
    add-int/lit8 v2, v26, 0x1

    mul-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v23, v2

    if-gez v2, :cond_5

    .line 2631
    add-int/lit8 v2, v26, 0x1

    mul-int/2addr v2, v12

    div-int/lit8 v23, v2, 0x2

    .line 2635
    :cond_2
    :goto_2
    add-int v23, v23, v27

    .line 2636
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->y:I

    add-int/lit8 v2, v2, -0x38

    add-int v5, v2, v28

    .line 2637
    .restart local v5    # "drawY":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 2643
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v9, v2, v25

    add-int/lit8 v2, v26, 0x1

    mul-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    sub-int v10, v23, v2

    mul-int/lit8 v14, v12, 0xa

    const/4 v2, 0x5

    move/from16 v0, v29

    if-ge v0, v2, :cond_8

    const/4 v2, 0x0

    :goto_4
    mul-int v15, v2, v13

    move v11, v5

    invoke-static/range {v8 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2658
    .end local v12    # "numW":I
    .end local v13    # "numH":I
    .end local v22    # "dig":I
    .end local v24    # "i":I
    .end local v25    # "imgIdx":I
    .end local v26    # "n":I
    :goto_5
    return-void

    .line 2619
    .end local v5    # "drawY":I
    .restart local v6    # "bigW":I
    .restart local v7    # "bigH":I
    .restart local v22    # "dig":I
    .restart local v25    # "imgIdx":I
    .restart local v26    # "n":I
    :cond_3
    div-int/lit8 v2, v6, 0x2

    add-int v2, v2, v23

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    if-le v2, v3, :cond_0

    .line 2620
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v3, v6, 0x2

    sub-int v23, v2, v3

    goto/16 :goto_0

    .line 2624
    .restart local v5    # "drawY":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    .line 2632
    .end local v5    # "drawY":I
    .end local v6    # "bigW":I
    .end local v7    # "bigH":I
    .restart local v12    # "numW":I
    .restart local v13    # "numH":I
    :cond_5
    add-int/lit8 v2, v26, 0x1

    mul-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v23

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    if-le v2, v3, :cond_2

    .line 2633
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v26, 0x1

    mul-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    goto :goto_2

    .line 2638
    .restart local v5    # "drawY":I
    .restart local v24    # "i":I
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->value:I

    div-int v2, v2, v22

    rem-int/lit8 v30, v2, 0xa

    .line 2639
    .local v30, "value":I
    mul-int/lit8 v22, v22, 0xa

    .line 2640
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    aget-object v9, v2, v25

    add-int/lit8 v2, v26, 0x1

    mul-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v23

    add-int/lit8 v3, v24, 0x1

    mul-int/2addr v3, v12

    sub-int v10, v2, v3

    mul-int v14, v30, v12

    const/4 v2, 0x5

    move/from16 v0, v29

    if-ge v0, v2, :cond_7

    const/4 v2, 0x0

    :goto_6
    mul-int v15, v2, v13

    move v11, v5

    invoke-static/range {v8 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2637
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 2640
    :cond_7
    const/4 v2, 0x1

    goto :goto_6

    .line 2643
    .end local v30    # "value":I
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 2646
    .end local v5    # "drawY":I
    .end local v12    # "numW":I
    .end local v13    # "numH":I
    .end local v22    # "dig":I
    .end local v23    # "drawX":I
    .end local v24    # "i":I
    .end local v25    # "imgIdx":I
    .end local v26    # "n":I
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->x:I

    move/from16 v23, v0

    .line 2647
    .restart local v23    # "drawX":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    .line 2648
    .local v18, "missW":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/lit8 v19, v2, 0x2

    .line 2649
    .local v19, "missH":I
    div-int/lit8 v2, v18, 0x2

    sub-int v2, v23, v2

    if-gez v2, :cond_b

    .line 2650
    div-int/lit8 v23, v18, 0x2

    .line 2654
    :cond_a
    :goto_7
    add-int v23, v23, v27

    .line 2655
    move-object/from16 v0, p1

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/DigNum;->y:I

    add-int/lit8 v2, v2, -0x38

    add-int v5, v2, v28

    .line 2656
    .restart local v5    # "drawY":I
    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x3

    aget-object v15, v2, v3

    div-int/lit8 v2, v18, 0x2

    sub-int v16, v23, v2

    const/16 v20, 0x0

    const/4 v2, 0x5

    move/from16 v0, v29

    if-ge v0, v2, :cond_c

    const/4 v2, 0x0

    :goto_8
    mul-int v21, v2, v19

    move/from16 v17, v5

    invoke-static/range {v14 .. v21}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto/16 :goto_5

    .line 2651
    .end local v5    # "drawY":I
    :cond_b
    div-int/lit8 v2, v18, 0x2

    add-int v2, v2, v23

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    if-le v2, v3, :cond_a

    .line 2652
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v3, v18, 0x2

    sub-int v23, v2, v3

    goto :goto_7

    .line 2656
    .restart local v5    # "drawY":I
    :cond_c
    const/4 v2, 0x1

    goto :goto_8
.end method

.method private drawHpMp(IILcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 2722
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/16 v5, 0x14

    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2723
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x2

    if-lt v11, v1, :cond_0

    .line 2731
    return-void

    .line 2725
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x14

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v5, v11, 0x1a

    add-int/2addr v4, v5

    const/16 v5, 0x4e

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/16 v8, 0x1c

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2727
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x14

    add-int/lit8 v3, p2, 0x4

    mul-int/lit8 v4, v11, 0x1a

    add-int/2addr v3, v4

    if-nez v11, :cond_1

    move-object/from16 v0, p3

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    :goto_1
    if-nez v11, :cond_2

    move-object/from16 v0, p3

    iget v5, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    :goto_2
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x4e

    const/16 v10, 0xe

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2729
    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v13, p1, 0x15

    mul-int/lit8 v1, v11, 0x1a

    add-int v14, p2, v1

    const/4 v15, 0x0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x13

    aget-object v16, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x5

    aget-object v17, v1, v2

    const/16 v18, 0x2

    const/16 v19, -0x1

    const/16 v20, 0x3

    if-nez v11, :cond_3

    move-object/from16 v0, p3

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    move/from16 v21, v0

    :goto_3
    if-nez v11, :cond_4

    move-object/from16 v0, p3

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    move/from16 v22, v0

    :goto_4
    invoke-static/range {v12 .. v22}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2723
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2727
    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p3

    iget v5, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    goto :goto_2

    .line 2729
    :cond_3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    move/from16 v21, v0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    move/from16 v22, v0

    goto :goto_4
.end method

.method private drawSimpleHp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 9
    .param p1, "r"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v1, 0x0

    .line 2488
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 2489
    iget-short v3, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-byte v2, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v2, :cond_0

    const/16 v2, -0xf

    :goto_0
    add-int/2addr v2, v3

    .line 2490
    iget-short v3, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v3, v3, 0x5

    .line 2491
    const/16 v4, 0x12

    .line 2492
    const/4 v5, 0x3

    move v6, v1

    .line 2488
    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2494
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/high16 v3, 0xff0000

    .line 2495
    iget-short v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iget-byte v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_1

    const/16 v0, -0xe

    :goto_1
    add-int/2addr v4, v0

    .line 2496
    iget-short v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    add-int/lit8 v5, v0, 0x6

    .line 2497
    iget v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    mul-int/lit8 v0, v0, 0x10

    iget v6, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    div-int v6, v0, v6

    .line 2498
    const/4 v7, 0x1

    move v8, v1

    .line 2494
    invoke-static/range {v2 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2500
    return-void

    .line 2489
    :cond_0
    const/4 v2, -0x3

    goto :goto_0

    .line 2495
    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method private drawSinglebEff(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 9
    .param p1, "r"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "j"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2549
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole1:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target1:B

    if-eq v0, v8, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-nez v0, :cond_0

    .line 2551
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2552
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 2553
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2554
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    .line 2555
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    .line 2556
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_2

    move v6, v4

    .line 2551
    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole2:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-eq v0, v8, :cond_1

    .line 2561
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-nez v0, :cond_1

    .line 2562
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2563
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 2564
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2565
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    .line 2566
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    .line 2567
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_3

    move v6, v4

    .line 2562
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2570
    :cond_1
    return-void

    :cond_2
    move v6, v7

    .line 2556
    goto :goto_0

    :cond_3
    move v6, v7

    .line 2567
    goto :goto_1
.end method

.method private drawSinglefEff(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 9
    .param p1, "r"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "j"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2575
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole1:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target1:B

    if-eq v0, v8, :cond_0

    .line 2577
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2578
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 2579
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2580
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    .line 2581
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    .line 2582
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_2

    move v6, v7

    .line 2577
    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-eq v0, v8, :cond_1

    .line 2587
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-nez v0, :cond_1

    .line 2588
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 2589
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    .line 2590
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    .line 2591
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    .line 2592
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    .line 2593
    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v6, :cond_3

    move v6, v7

    .line 2588
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2596
    :cond_1
    return-void

    :cond_2
    move v6, v4

    .line 2582
    goto :goto_0

    :cond_3
    move v6, v4

    .line 2593
    goto :goto_1
.end method

.method private engineActEff()V
    .locals 8

    .prologue
    .line 2153
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 2154
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 2155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 2156
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2158
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    .line 2159
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_state:B

    .line 2160
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_stateRate:B

    .line 2161
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v4, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_round:B

    .line 2162
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v5, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_stateBase:S

    move-object v0, p0

    .line 2158
    invoke-direct/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->disposeFet(Ljava/util/Vector;BBBS)V

    .line 2181
    :goto_0
    const/4 v7, 0x0

    .line 2182
    .local v7, "somedead":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    .line 2188
    if-eqz v7, :cond_4

    .line 2189
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 2195
    .end local v6    # "i":I
    .end local v7    # "somedead":Z
    :goto_2
    return-void

    .line 2165
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 2166
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v1, v1, v2

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillNum:B

    if-ge v0, v1, :cond_1

    .line 2168
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-short v1, v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 2169
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_2

    .line 2173
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    .line 2174
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v2

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_state:B

    .line 2175
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v3

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_stateRate:B

    .line 2176
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v4

    iget-byte v4, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_round:B

    .line 2177
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v5

    iget-short v5, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_stateBase:S

    move-object v0, p0

    .line 2173
    invoke-direct/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->disposeFet(Ljava/util/Vector;BBBS)V

    goto :goto_0

    .line 2184
    .restart local v6    # "i":I
    .restart local v7    # "somedead":Z
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-eqz v0, :cond_3

    .line 2185
    const/4 v7, 0x1

    .line 2182
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2192
    :cond_4
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosX:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 2193
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosY:S

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 2194
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_2
.end method

.method private engineAction()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2065
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    if-nez v2, :cond_0

    .line 2066
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    .line 2069
    :cond_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->controlNum()V

    .line 2071
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v2, :cond_1

    .line 2072
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->controlFirst()V

    .line 2074
    :cond_1
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    if-eqz v2, :cond_2

    .line 2075
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->controlSecond()V

    .line 2079
    :cond_2
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-eqz v2, :cond_5

    .line 2080
    const/4 v0, 0x1

    .line 2082
    .local v0, "allOver":Z
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-eq v2, v3, :cond_3

    .line 2083
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 2087
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    .line 2088
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v5, v5, v6

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillNum:B

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_a

    .line 2090
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v2, v2

    if-lt v1, v2, :cond_8

    .line 2093
    if-nez v0, :cond_a

    .line 2101
    .end local v0    # "allOver":Z
    .end local v1    # "i":I
    :cond_5
    :goto_2
    return-void

    .line 2084
    .restart local v0    # "allOver":Z
    .restart local v1    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-eqz v2, :cond_7

    move v0, v3

    .line 2083
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    move v0, v4

    .line 2084
    goto :goto_3

    .line 2091
    :cond_8
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_9

    move v0, v3

    .line 2090
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    move v0, v4

    .line 2091
    goto :goto_4

    .line 2097
    .end local v1    # "i":I
    :cond_a
    if-eqz v0, :cond_5

    .line 2098
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v3, 0xe

    invoke-virtual {p0, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_2
.end method

.method private engineChangeTurn()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1749
    const/4 v1, 0x0

    .line 1751
    .local v1, "isGotoStattusEffect":Z
    iget-boolean v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v5, :cond_0

    .line 1753
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .line 1754
    .local v3, "junta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    .line 1761
    .local v4, "opJunta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_1

    .line 1801
    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-lt v0, v5, :cond_8

    .line 1830
    if-eqz v1, :cond_d

    .line 1832
    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1841
    :goto_3
    return-void

    .line 1757
    .end local v0    # "i":I
    .end local v3    # "junta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .end local v4    # "opJunta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_0
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    .line 1758
    .restart local v3    # "junta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .restart local v4    # "opJunta":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    goto :goto_0

    .line 1763
    .restart local v0    # "i":I
    :cond_1
    aget-object v5, v3, v0

    iget-boolean v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v5, :cond_3

    .line 1761
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1767
    :cond_3
    aget-object v5, v3, v0

    iget-boolean v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    if-eqz v5, :cond_4

    .line 1768
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    .line 1771
    :cond_4
    aget-object v5, v3, v0

    iput-boolean v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    .line 1772
    aget-object v5, v3, v0

    invoke-virtual {v5, v7}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 1773
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 1774
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v7

    if-nez v5, :cond_6

    .line 1773
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1777
    :cond_6
    if-ne v2, v9, :cond_7

    .line 1779
    const/4 v1, 0x1

    .line 1780
    goto :goto_5

    .line 1782
    :cond_7
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 1784
    :pswitch_0
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v6, v5, v8

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 1785
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v8

    if-nez v5, :cond_5

    .line 1786
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aput-byte v7, v5, v7

    .line 1787
    aget-object v5, v3, v0

    iput-short v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upAtt:S

    goto :goto_5

    .line 1791
    :pswitch_1
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v6, v5, v8

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 1792
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v8

    if-nez v5, :cond_5

    .line 1793
    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aput-byte v7, v5, v7

    .line 1794
    aget-object v5, v3, v0

    iput-short v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upDef:S

    goto :goto_5

    .line 1803
    .end local v2    # "j":I
    :cond_8
    aget-object v5, v4, v0

    iget-boolean v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v5, :cond_a

    .line 1801
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1806
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_6
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    array-length v5, v5

    if-ge v2, v5, :cond_9

    .line 1807
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v7

    if-nez v5, :cond_c

    .line 1806
    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1810
    :cond_c
    if-eq v2, v9, :cond_b

    .line 1813
    packed-switch v2, :pswitch_data_1

    goto :goto_7

    .line 1815
    :pswitch_2
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v6, v5, v8

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 1816
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v8

    if-nez v5, :cond_b

    .line 1817
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aput-byte v7, v5, v7

    goto :goto_7

    .line 1821
    :pswitch_3
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v6, v5, v8

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 1822
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v8

    if-nez v5, :cond_b

    .line 1823
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v5, v5, v2

    aput-byte v7, v5, v7

    .line 1824
    aget-object v5, v4, v0

    invoke-direct {p0, v8, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_7

    .line 1835
    .end local v2    # "j":I
    :cond_d
    invoke-direct {p0, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRole(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1836
    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v5, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_3

    .line 1838
    :cond_e
    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v5, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_3

    .line 1782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1813
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private engineDeath()V
    .locals 7

    .prologue
    const/16 v6, 0x12d

    const/4 v3, 0x0

    .line 2200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 2210
    const/4 v0, 0x1

    .line 2211
    .local v0, "allOver":Z
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 2215
    if-eqz v0, :cond_0

    .line 2217
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-virtual {v3, v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 2219
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosX:S

    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    .line 2220
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fOriginPosY:S

    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    .line 2221
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v4, 0xc

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 2223
    :cond_0
    return-void

    .line 2201
    .end local v0    # "allOver":Z
    :cond_1
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2202
    .local v2, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-virtual {v5, v6, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v5

    if-lt v4, v5, :cond_2

    iget-boolean v4, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    if-nez v4, :cond_2

    .line 2203
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 2204
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2206
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2212
    .end local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .restart local v0    # "allOver":Z
    :cond_3
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2213
    .restart local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-eqz v0, :cond_4

    iget-boolean v4, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 2211
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 2213
    goto :goto_2
.end method

.method private engineDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2307
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    if-lez v0, :cond_1

    .line 2308
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    .line 2315
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v0, v0, v2

    aget v0, v0, v3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v1, v1, v2

    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    .line 2312
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v0, v0, v2

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    goto :goto_0
.end method

.method private engineFSDeath()V
    .locals 8

    .prologue
    const/16 v7, 0x12d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 2238
    const/4 v0, 0x1

    .line 2239
    .local v0, "allOver":Z
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 2243
    if-eqz v0, :cond_0

    .line 2245
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-virtual {v4, v7}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 2247
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    if-gtz v4, :cond_5

    .line 2248
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 2261
    :cond_0
    :goto_2
    return-void

    .line 2229
    .end local v0    # "allOver":Z
    :cond_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2230
    .local v2, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    invoke-virtual {v6, v7, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v6

    if-lt v5, v6, :cond_2

    iget-boolean v5, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    if-nez v5, :cond_2

    .line 2231
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 2232
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2234
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2240
    .end local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .restart local v0    # "allOver":Z
    :cond_3
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 2241
    .restart local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-eqz v0, :cond_4

    iget-boolean v5, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    if-eqz v5, :cond_4

    move v0, v3

    .line 2239
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v4

    .line 2241
    goto :goto_3

    .line 2251
    .end local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_5
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    if-gtz v4, :cond_6

    .line 2252
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v4, 0x15

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_2

    .line 2255
    :cond_6
    invoke-direct {p0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRole(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2256
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_2

    .line 2258
    :cond_7
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v4, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_2
.end method

.method private engineGetEXP()V
    .locals 3

    .prologue
    .line 2265
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->backToScene()V

    .line 2281
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropExpTotal:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    .line 2269
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/Formular;->upLevel(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_addLevel:I

    .line 2270
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_addLevel:I

    if-lez v0, :cond_1

    .line 2271
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2274
    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 2275
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 2276
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->backToScene()V

    goto :goto_0

    .line 2278
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private engineLevelUp()V
    .locals 2

    .prologue
    .line 2285
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fLUMMaxNum:I

    if-ge v0, v1, :cond_0

    .line 2286
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    .line 2288
    :cond_0
    return-void
.end method

.method private engineLost()V
    .locals 2

    .prologue
    .line 2292
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_lostType:S

    packed-switch v0, :pswitch_data_0

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2294
    :pswitch_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 2295
    const/4 v0, 0x0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    .line 2296
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->backToScene()V

    goto :goto_0

    .line 2300
    :pswitch_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    goto :goto_0

    .line 2292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private engineMove()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2017
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->controlNum()V

    .line 2018
    const/4 v0, 0x0

    .line 2019
    .local v0, "atGoal":Z
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGolex:I

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->moveGoley:I

    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fightMove(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    const/4 v0, 0x1

    .line 2022
    :cond_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->arrangedShow()V

    .line 2023
    if-eqz v0, :cond_1

    .line 2024
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    packed-switch v1, :pswitch_data_0

    .line 2058
    :cond_1
    :goto_0
    :pswitch_0
    sput-boolean v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->isRepaint:Z

    .line 2059
    :goto_1
    return-void

    .line 2026
    :pswitch_1
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2030
    :pswitch_2
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v1, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2031
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->toSelRole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2032
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v1, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2034
    :cond_2
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v1, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2039
    :pswitch_3
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    if-gtz v1, :cond_3

    .line 2040
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v1, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2041
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_1

    .line 2044
    :cond_3
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    if-gtz v1, :cond_4

    .line 2045
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v1, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2046
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v2, 0x15

    invoke-virtual {p0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_1

    .line 2049
    :cond_4
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v1, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 2050
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->toSelRole()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2051
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v1, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2053
    :cond_5
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v1, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 2024
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private enginePrepare()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1949
    iput-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    .line 1950
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    .line 1952
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    .line 1953
    iput-boolean v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    .line 1954
    iput-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    .line 1955
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    .line 1956
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_standby:B

    invoke-direct {p0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->dispatchByStand(I)V

    .line 2012
    :goto_0
    return-void

    .line 1959
    :cond_0
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_type:B

    if-ne v3, v6, :cond_3

    .line 1960
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_target:B

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1962
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    .line 1995
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-nez v3, :cond_a

    .line 1996
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-static {v3}, Lcom/jarworld/rpg/sanguocollege/Formular;->willPower(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    .line 1997
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    .line 1999
    iget-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    if-nez v3, :cond_2

    .line 2000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    array-length v3, v3

    if-lt v0, v3, :cond_9

    .line 2011
    .end local v0    # "i":I
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_standby:B

    invoke-direct {p0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->dispatchByStand(I)V

    goto :goto_0

    .line 1966
    :cond_3
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v3, :cond_5

    move v3, v4

    :goto_4
    invoke-direct {p0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->defineDef(Z)[Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    move-result-object v2

    .line 1968
    .local v2, "tr1":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    if-eqz v3, :cond_6

    .line 1970
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1971
    aget-object v3, v2, v0

    iget-boolean v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-eqz v3, :cond_4

    .line 1972
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    aget-object v6, v2, v0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1970
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v2    # "tr1":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_5
    move v3, v5

    .line 1966
    goto :goto_4

    .line 1982
    .restart local v2    # "tr1":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_6
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-ne v3, v4, :cond_7

    .line 1983
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1985
    :cond_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    .line 1986
    .local v1, "skRand":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1987
    add-int v3, v1, v0

    array-length v6, v2

    rem-int/2addr v3, v6

    aget-object v3, v2, v3

    iget-boolean v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-eqz v3, :cond_8

    .line 1988
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    add-int v6, v1, v0

    array-length v7, v2

    rem-int/2addr v6, v7

    aget-object v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1986
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2001
    .end local v1    # "skRand":I
    .end local v2    # "tr1":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_9
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-static {v3}, Lcom/jarworld/rpg/sanguocollege/Formular;->willJook(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z

    move-result v3

    aput-boolean v3, v4, v0

    .line 2000
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2004
    .end local v0    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-nez v3, :cond_b

    .line 2005
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-static {v3}, Lcom/jarworld/rpg/sanguocollege/Formular;->willPower(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    .line 2006
    iput-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    goto/16 :goto_3

    .line 2008
    :cond_b
    iput-boolean v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    .line 2009
    iput-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    goto/16 :goto_3
.end method

.method private engineSelRole()V
    .locals 2

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isHadPlayed:Z

    .line 1742
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1744
    :cond_0
    return-void
.end method

.method private engineSelTarget()V
    .locals 2

    .prologue
    .line 1938
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v0, :cond_0

    .line 1944
    :goto_0
    return-void

    .line 1942
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 1943
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private engineStart()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1704
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_dialogIdx:S

    if-eq v3, v4, :cond_0

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_diaBinIdx:B

    if-eq v3, v4, :cond_0

    .line 1705
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v4, 0x16

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1735
    :goto_0
    return-void

    .line 1708
    :cond_0
    const/4 v1, 0x0

    .line 1709
    .local v1, "isGotoStattusEffect":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1724
    if-eqz v1, :cond_6

    .line 1726
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 1711
    :cond_1
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-nez v3, :cond_3

    .line 1709
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1714
    :cond_3
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->fFet:[[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1715
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->fFet:[[B

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_5

    .line 1714
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1718
    :cond_5
    if-ne v2, v6, :cond_4

    .line 1720
    const/4 v1, 0x1

    goto :goto_3

    .line 1729
    .end local v2    # "j":I
    :cond_6
    invoke-direct {p0, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRole(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1730
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 1732
    :cond_7
    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private engineStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1847
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->controlNum()V

    .line 1849
    const/4 v0, 0x1

    .line 1851
    .local v0, "allOver":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 1856
    if-eqz v0, :cond_0

    .line 1858
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 1862
    if-eqz v0, :cond_0

    .line 1863
    const/4 v3, 0x0

    .line 1864
    .local v3, "somedead":Z
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 1880
    if-eqz v3, :cond_9

    .line 1881
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1892
    .end local v3    # "somedead":Z
    :cond_0
    :goto_3
    return-void

    .line 1852
    :cond_1
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1853
    .local v2, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-eqz v0, :cond_2

    iget-boolean v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    if-eqz v6, :cond_2

    move v0, v4

    .line 1851
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    .line 1853
    goto :goto_4

    .line 1859
    .end local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 1858
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    .line 1859
    goto :goto_5

    .line 1865
    .restart local v3    # "somedead":Z
    :cond_5
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1866
    .restart local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v6, v6, v8

    aget-byte v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 1867
    iget-object v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v6, v6, v8

    aget-byte v6, v6, v4

    if-nez v6, :cond_6

    .line 1868
    iget-object v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    aget-object v6, v6, v8

    aput-byte v5, v6, v5

    .line 1869
    iput v5, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_fetHurt:I

    .line 1871
    :cond_6
    iget v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    if-gtz v6, :cond_7

    iget-boolean v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-eqz v6, :cond_7

    .line 1872
    const/4 v3, 0x1

    .line 1873
    iget-byte v6, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-ne v6, v8, :cond_8

    .line 1874
    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    .line 1864
    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1876
    :cond_8
    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    goto :goto_6

    .line 1884
    .end local v2    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_9
    invoke-direct {p0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRole(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1885
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v4, v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_3

    .line 1887
    :cond_a
    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v5, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_3
.end method

.method private engineTactics()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1896
    iget-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v4, :cond_2

    .line 1898
    const/4 v3, -0x1

    .line 1899
    .local v3, "skillIndex":S
    const/16 v4, 0x64

    invoke-static {v5, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    .line 1901
    .local v2, "rand":I
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v6, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    if-gt v4, v9, :cond_3

    move v4, v5

    :goto_0
    if-gt v6, v4, :cond_4

    .line 1903
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    array-length v1, v4

    .line 1908
    .local v1, "len":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_5

    .line 1921
    :goto_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1922
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-byte v8, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    .line 1923
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v3, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_phySGID:S

    .line 1925
    :cond_0
    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 1926
    iput-byte v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 1927
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v6, v6, v7

    aget-short v6, v6, v8

    aget-object v4, v4, v6

    iput-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 1928
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-ne v4, v5, :cond_1

    .line 1929
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v5, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 1931
    :cond_1
    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v4, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1933
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "rand":I
    .end local v3    # "skillIndex":S
    :cond_2
    return-void

    .line 1901
    .restart local v2    # "rand":I
    .restart local v3    # "skillIndex":S
    :cond_3
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    div-int/lit8 v4, v4, 0xa

    goto :goto_0

    .line 1906
    :cond_4
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "len":I
    goto :goto_1

    .line 1909
    .restart local v0    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSGUsable:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_6

    .line 1908
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1913
    :cond_6
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v5

    if-gt v2, v4, :cond_7

    .line 1914
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-byte v5, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    .line 1915
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    aget-object v4, v4, v0

    aget-short v3, v4, v8

    .line 1916
    goto :goto_3

    .line 1918
    :cond_7
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v5

    sub-int/2addr v2, v4

    goto :goto_4
.end method

.method private forcibleChangeOurTrun()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 935
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    .line 936
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    .line 937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 947
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 951
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->overActNum:I

    .line 952
    return-void

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isHadPlayed:Z

    .line 940
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanPlay:Z

    if-eqz v1, :cond_1

    .line 943
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    .line 937
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_2
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isHadPlayed:Z

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private found1Role()V
    .locals 7

    .prologue
    .line 1446
    const/4 v0, 0x0

    .line 1447
    .local v0, "back":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v2, 0x0

    .line 1448
    .local v2, "front":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole1:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 1449
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole1:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 1450
    const/4 v1, 0x0

    .line 1451
    .local v1, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 1468
    if-eqz v1, :cond_0

    .line 1469
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole1:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1470
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole1:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1472
    :cond_0
    :goto_1
    return-void

    .line 1452
    :cond_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1453
    .local v4, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-nez v1, :cond_3

    .line 1454
    iget-short v5, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-ne v5, v6, :cond_2

    .line 1455
    move-object v2, v4

    move-object v0, v4

    .line 1456
    const/4 v1, 0x1

    .line 1451
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1459
    :cond_3
    iget-short v5, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-eq v5, v6, :cond_4

    .line 1460
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole1:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1461
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole1:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1464
    :cond_4
    move-object v2, v4

    goto :goto_2
.end method

.method private found2Role()V
    .locals 8

    .prologue
    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, "back":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v2, 0x0

    .line 1479
    .local v2, "front":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole2:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    .line 1480
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->removeAllElements()V

    .line 1481
    const/4 v1, 0x0

    .line 1482
    .local v1, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 1502
    if-eqz v1, :cond_0

    .line 1503
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole2:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1504
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1506
    :cond_0
    return-void

    .line 1483
    :cond_1
    const/4 v1, 0x0

    .line 1484
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 1482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1485
    :cond_2
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1486
    .local v5, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-nez v1, :cond_4

    .line 1487
    iget-short v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-ne v7, v6, :cond_3

    .line 1488
    move-object v2, v5

    move-object v0, v5

    .line 1489
    const/4 v1, 0x1

    .line 1484
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1492
    :cond_4
    iget-short v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    if-eq v7, v6, :cond_5

    .line 1493
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole2:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1494
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1495
    const/4 v1, 0x0

    goto :goto_2

    .line 1497
    :cond_5
    move-object v2, v5

    goto :goto_2
.end method

.method private getRoleIdx([Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p1, "r"    # [Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "m"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 1249
    const/4 v1, -0x1

    .line 1250
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1256
    :goto_1
    return v1

    .line 1251
    :cond_0
    aget-object v2, p1, v0

    if-ne v2, p2, :cond_1

    .line 1252
    move v1, v0

    .line 1253
    goto :goto_1

    .line 1250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initForcesVec()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 777
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v5, v5

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v6, v6

    add-int/2addr v5, v6

    new-array v1, v5, [Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 779
    .local v1, "forces":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    int-to-byte v5, v5

    iput v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    .line 781
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 788
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v5, v5

    iput v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftEnemy:I

    .line 790
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v5, v5

    if-lt v2, v5, :cond_1

    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "bChange":Z
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v2, v5

    :goto_2
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_2

    .line 814
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    .line 815
    const/4 v2, 0x0

    :goto_3
    array-length v5, v1

    if-lt v2, v5, :cond_6

    .line 820
    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->arrangeRule([Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 822
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    .line 823
    const/4 v2, 0x0

    :goto_4
    array-length v5, v1

    if-lt v2, v5, :cond_7

    .line 826
    return-void

    .line 782
    .end local v0    # "bChange":Z
    :cond_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v2

    iput-boolean v7, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isHadPlayed:Z

    .line 783
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v2

    iput-boolean v7, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isRecovery:Z

    .line 784
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v2

    invoke-virtual {v5, v7}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setFightAction(B)V

    .line 785
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v2

    aput-object v5, v1, v2

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    :cond_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v5, v5, v2

    iput-boolean v7, v5, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isHadPlayed:Z

    .line 792
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v5, v5, v2

    invoke-virtual {v5, v7}, Lcom/jarworld/rpg/sanguocollege/Monster;->setFightAction(B)V

    .line 793
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v6, v6, v2

    aput-object v6, v1, v5

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 800
    .restart local v0    # "bChange":Z
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    array-length v5, v1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_3

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 801
    :cond_3
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    add-int/2addr v5, v3

    aget-object v5, v1, v5

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->agility:S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v6, v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v1, v6

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->agility:S

    if-ge v5, v6, :cond_4

    .line 802
    const/4 v0, 0x1

    .line 804
    :cond_4
    if-eqz v0, :cond_5

    .line 805
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    add-int/2addr v5, v3

    aget-object v4, v1, v5

    .line 806
    .local v4, "tm":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v6, v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v1, v6

    aput-object v6, v1, v5

    .line 807
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    aput-object v4, v1, v5

    .line 808
    const/4 v0, 0x0

    .line 800
    .end local v4    # "tm":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 816
    .end local v3    # "j":I
    :cond_6
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 824
    :cond_7
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method private itemDelayWork()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3555
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 3556
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 3557
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3598
    :cond_0
    :goto_0
    return-void

    .line 3559
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v1, v1, v0

    if-ne v1, v3, :cond_0

    .line 3560
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    if-ne v1, v4, :cond_2

    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    if-eq v1, v4, :cond_4

    .line 3561
    :cond_2
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    int-to-short v1, v1

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 3562
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    int-to-short v1, v1

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    .line 3563
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v4

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    add-int/2addr v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3564
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v4, v5

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 3566
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v4, v4, v3

    aget-byte v4, v4, v0

    mul-int/lit8 v5, v4, 0x7

    move v4, v0

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRoll(ILjava/util/Vector;[Ljava/util/Vector;III)V

    goto :goto_0

    .line 3568
    :cond_3
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    goto :goto_0

    .line 3571
    :cond_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_0

    .line 3572
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    if-lt v1, v2, :cond_5

    .line 3573
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    sparse-switch v1, :sswitch_data_0

    .line 3586
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0xb

    aget-short v1, v1, v2

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 3587
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 3588
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v2, v2, v3

    aget-short v0, v2, v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 3589
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 3575
    :sswitch_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 3579
    :sswitch_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0xc

    aget-short v1, v1, v2

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 3580
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 3581
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v2, v2, v3

    aget-short v0, v2, v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 3582
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 3593
    :cond_5
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_0

    .line 3573
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private itemLastWork(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v5, 0x1b

    const/16 v6, 0x1a

    const/4 v7, 0x0

    .line 3689
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x12

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3690
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3697
    :goto_0
    return-void

    .line 3691
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v4, v0, 0x9d

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3692
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    goto :goto_0

    .line 3694
    :cond_1
    sput-boolean v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    .line 3695
    invoke-virtual {p0, v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private itemPDragged(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0x71

    .line 3431
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3432
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x100

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x2c

    const/16 v5, 0x51

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3433
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v1, v6, v1

    if-lt v0, v1, :cond_0

    .line 3434
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v4, v6, v4

    div-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuDragged(IIII)V

    .line 3435
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3439
    :cond_0
    return-void

    .line 3434
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private itemPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3032
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3033
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3035
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x12

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3036
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3037
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3038
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3039
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3040
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3041
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3042
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3044
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v4, v0, 0x9d

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3045
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3046
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3047
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3048
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3049
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3050
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3051
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3053
    :cond_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0x11b

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x2c

    const/16 v5, 0x1b

    const/16 v6, 0x71

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3054
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 3055
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3057
    :cond_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x4

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xc6

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x15

    const/16 v5, 0x111

    const/16 v6, 0x90

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    sget v8, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedGrid(IIIIIIII)[I

    move-result-object v9

    .line 3058
    .local v9, "result":[I
    if-eqz v9, :cond_4

    .line 3059
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    const/4 v3, 0x1

    aget v3, v9, v3

    add-int/2addr v2, v3

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v9, v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3060
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    .line 3059
    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3061
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v0, v1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    .line 3062
    const/4 v0, 0x0

    aget v0, v9, v0

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIX:I

    .line 3064
    :cond_4
    return-void
.end method

.method private itemPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3368
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 3369
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 3370
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3377
    :cond_0
    :goto_0
    return-void

    .line 3371
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 3372
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0

    .line 3374
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 3375
    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private levelUpPPressed(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3269
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fLUMMaxNum:I

    if-lt v0, v1, :cond_3

    .line 3270
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_addLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_addLevel:I

    .line 3271
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_addLevel:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x16

    aget-short v1, v1, v2

    if-lt v0, v1, :cond_2

    .line 3272
    :cond_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 3273
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 3274
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->backToScene()V

    .line 3284
    :goto_0
    return-void

    .line 3276
    :cond_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3279
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3282
    :cond_3
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fLUMMaxNum:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    goto :goto_0
.end method

.method private lostPPressed(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 3243
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_lostType:S

    packed-switch v0, :pswitch_data_0

    .line 3256
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3245
    :pswitch_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameScene;->initDate()V

    .line 3246
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameScene;->initDataForOver()V

    .line 3247
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    goto :goto_0

    .line 3250
    :pswitch_2
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 3251
    const/4 v0, 0x0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    .line 3252
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->allRelive()V

    goto :goto_0

    .line 3243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private menuDelayWork()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3485
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 3487
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-boolean v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isHadPlayed:Z

    .line 3489
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3529
    :cond_0
    :goto_0
    return-void

    .line 3490
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-gt v0, v5, :cond_0

    .line 3491
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    .line 3492
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3495
    :pswitch_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_phySGID:S

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 3496
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 3497
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v1, v1, v2

    aget-short v1, v1, v3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 3498
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3502
    :pswitch_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3507
    :pswitch_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-boolean v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    .line 3508
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-virtual {v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 3509
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->toSelRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3510
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3512
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3517
    :pswitch_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3521
    :pswitch_4
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private menuPPressed(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2971
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2972
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 2974
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x5

    if-lt v7, v0, :cond_2

    .line 2985
    :cond_1
    :goto_1
    return-void

    .line 2975
    :cond_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xa5

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fMOffset:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int v3, v0, v1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x6e

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fMOffset:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int v4, v0, v1

    const/16 v5, 0x2b

    const/16 v6, 0x2c

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2977
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    if-lt v7, v0, :cond_1

    .line 2980
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    add-int/lit8 v2, v7, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 2981
    sput v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    goto :goto_1

    .line 2974
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private menuPReleased()V
    .locals 1

    .prologue
    .line 3352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3353
    return-void
.end method

.method private reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 2
    .param p1, "isAdd"    # Z
    .param p2, "r"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v0, :cond_0

    iget-byte v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-eqz v0, :cond_1

    .line 985
    :cond_0
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_2

    iget-byte v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 988
    :cond_1
    iget-boolean v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isHadPlayed:Z

    if-nez v0, :cond_2

    .line 989
    if-eqz p1, :cond_3

    .line 990
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    .line 996
    :cond_2
    :goto_0
    return-void

    .line 992
    :cond_3
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    goto :goto_0
.end method

.method private releaseCharacterSpx()V
    .locals 3

    .prologue
    .line 1510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1513
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1516
    return-void

    .line 1511
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    invoke-virtual {v1, v2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_fSpxIndex:S

    invoke-virtual {v1, v2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 1513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private releaseFightInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1520
    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 1521
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1522
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 1523
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1524
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1525
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .line 1526
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    .line 1528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1531
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    .line 1533
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_0

    .line 1534
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1537
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1539
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_1

    .line 1540
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1543
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1545
    :cond_1
    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    .line 1547
    sput v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropExpTotal:I

    .line 1548
    sput-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropMoneyTotal:S

    .line 1549
    return-void

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    aput-object v2, v1, v0

    .line 1528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aput-object v2, v1, v0

    .line 1534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1541
    :cond_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aput-object v2, v1, v0

    .line 1540
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private resultPPressed(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3264
    const/4 v0, 0x0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 3265
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3266
    return-void
.end method

.method private selRole(Z)Z
    .locals 4
    .param p1, "initTurn"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 889
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->overActNum:I

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->needActNum:I

    if-lt v2, v3, :cond_0

    .line 910
    :goto_0
    return v0

    .line 893
    :cond_0
    iget-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v2, :cond_4

    .line 894
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v2, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 895
    :goto_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanPlay:Z

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isHadPlayed:Z

    .line 895
    if-nez v0, :cond_3

    .line 900
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    :goto_3
    move v0, v1

    .line 910
    goto :goto_0

    :cond_1
    move v0, v1

    .line 894
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getRoleIdx([Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 898
    :cond_3
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    goto :goto_2

    .line 902
    :cond_4
    if-eqz p1, :cond_5

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    .line 903
    :goto_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isAlive:Z

    if-eqz v0, :cond_6

    .line 904
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isCanPlay:Z

    if-eqz v0, :cond_6

    .line 905
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_isHadPlayed:Z

    .line 903
    if-nez v0, :cond_6

    .line 908
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    goto :goto_3

    .line 902
    :cond_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getRoleIdx([Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 906
    :cond_6
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    goto :goto_5
.end method

.method private selRolePPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 2950
    const/4 v7, 0x0

    .local v7, "i":B
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    .line 2968
    :cond_0
    :goto_1
    return-void

    .line 2951
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    aget-object v0, v0, v7

    const/4 v1, 0x0

    aget-short v0, v0, v1

    add-int/lit8 v3, v0, -0xf

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    aget-object v0, v0, v7

    aget-short v0, v0, v8

    add-int/lit8 v4, v0, -0x5a

    const/16 v5, 0x1e

    const/16 v6, 0x5a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2952
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v0, v0

    if-ne v0, v8, :cond_2

    .line 2954
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-boolean v8, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isHadPlayed:Z

    .line 2955
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_1

    .line 2957
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanPlay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isHadPlayed:Z

    if-nez v0, :cond_3

    .line 2958
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    goto :goto_1

    .line 2959
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v7

    if-ne v0, v1, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-boolean v8, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isHadPlayed:Z

    .line 2962
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    invoke-virtual {p0, v0, v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_1

    .line 2950
    :cond_4
    add-int/lit8 v0, v7, 0x1

    int-to-byte v7, v0

    goto :goto_0
.end method

.method private selTargetDelayWork()V
    .locals 2

    .prologue
    .line 3636
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 3637
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v0, :pswitch_data_0

    .line 3651
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3639
    :pswitch_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3643
    :pswitch_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3647
    :pswitch_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private selTargetPPressed(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3140
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v12, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 3141
    .local v12, "type":I
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v10, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    .line 3146
    .local v10, "target":I
    :goto_0
    if-nez v12, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->defineDef(Z)[Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    move-result-object v11

    .line 3147
    .local v11, "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v0, 0x0

    aget-object v0, v11, v0

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_3

    .line 3148
    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_P:[[[S

    .line 3153
    .local v9, "pos":[[[S
    :goto_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3154
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3240
    :cond_0
    :goto_3
    return-void

    .line 3143
    .end local v9    # "pos":[[[S
    .end local v10    # "target":I
    .end local v11    # "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .end local v12    # "type":I
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v1

    iget-byte v12, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_type:B

    .line 3144
    .restart local v12    # "type":I
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v0, v0, v1

    iget-byte v10, v0, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_target:B

    .restart local v10    # "target":I
    goto :goto_0

    .line 3146
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3150
    .restart local v11    # "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_3
    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFight;->POS_M:[[[S

    .restart local v9    # "pos":[[[S
    goto :goto_2

    .line 3158
    :cond_4
    const/4 v0, 0x1

    if-eq v10, v0, :cond_9

    .line 3159
    const/4 v8, 0x0

    .local v8, "i":B
    :goto_4
    array-length v0, v11

    if-ge v8, v0, :cond_0

    .line 3160
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    aget-object v0, v0, v8

    const/4 v1, 0x0

    aget-short v0, v0, v1

    add-int/lit8 v3, v0, -0xf

    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    aget-object v0, v0, v8

    const/4 v1, 0x1

    aget-short v0, v0, v1

    add-int/lit8 v4, v0, -0x5a

    const/16 v5, 0x1e

    const/16 v6, 0x5a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3161
    array-length v0, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 3162
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 3165
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3166
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_3

    .line 3170
    :pswitch_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 3172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3173
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_3

    .line 3178
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3179
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_3

    .line 3183
    :cond_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 3184
    .local v7, "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    aget-object v0, v11, v8

    if-eq v7, v0, :cond_7

    aget-object v0, v11, v8

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 3185
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 3186
    :cond_6
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 3187
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    aget-object v1, v11, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3188
    :cond_7
    aget-object v0, v11, v8

    if-ne v7, v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_3

    .line 3192
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3193
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_3

    .line 3197
    :pswitch_6
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 3199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3200
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_3

    .line 3205
    :pswitch_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3206
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto/16 :goto_3

    .line 3159
    .end local v7    # "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_8
    add-int/lit8 v0, v8, 0x1

    int-to-byte v8, v0

    goto/16 :goto_4

    .line 3215
    .end local v8    # "i":B
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "i":B
    :goto_5
    array-length v0, v11

    if-ge v8, v0, :cond_0

    .line 3216
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    aget-object v0, v0, v8

    const/4 v1, 0x0

    aget-short v0, v0, v1

    add-int/lit8 v3, v0, -0xf

    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    aget-object v0, v0, v8

    const/4 v1, 0x1

    aget-short v0, v0, v1

    add-int/lit8 v4, v0, -0x5a

    const/16 v5, 0x1e

    const/16 v6, 0x5a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3217
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v0, :pswitch_data_2

    .line 3215
    :cond_a
    :goto_6
    :pswitch_8
    add-int/lit8 v0, v8, 0x1

    int-to-byte v8, v0

    goto :goto_5

    .line 3220
    :pswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3221
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_6

    .line 3225
    :pswitch_a
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 3227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3228
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_6

    .line 3233
    :pswitch_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 3234
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_6

    .line 3162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 3189
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 3217
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private selTargetPReleased()V
    .locals 1

    .prologue
    .line 3396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3397
    return-void
.end method

.method private setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 3
    .param p1, "isCanPlay"    # Z
    .param p2, "r"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 960
    if-eqz p1, :cond_1

    .line 961
    iget-boolean v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    if-nez v0, :cond_0

    .line 962
    iput-boolean v2, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    .line 964
    invoke-direct {p0, v2, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-boolean v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    if-eqz v0, :cond_0

    .line 968
    iput-boolean v1, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isCanPlay:Z

    .line 970
    invoke-direct {p0, v1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_0
.end method

.method private skillDelayWork()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3532
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v5

    if-nez v0, :cond_1

    .line 3533
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v4

    if-nez v0, :cond_0

    .line 3534
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3552
    :cond_0
    :goto_0
    return-void

    .line 3536
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v5

    if-ne v0, v4, :cond_0

    .line 3537
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    if-eq v0, v1, :cond_2

    .line 3538
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 3540
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    aget-short v2, v2, v3

    aget-object v1, v1, v2

    aget-short v1, v1, v5

    aget-object v0, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x42

    invoke-static {v0, v4, v1, v2, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    goto :goto_0

    .line 3542
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    aget-short v3, v3, v4

    aget-object v2, v2, v3

    aget-short v2, v2, v5

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    if-ge v0, v1, :cond_3

    .line 3543
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0

    .line 3545
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    aget-short v1, v1, v2

    aget-object v0, v0, v1

    aget-short v0, v0, v5

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 3546
    iput-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 3547
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v1, v1, v2

    aget-short v1, v1, v5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 3548
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    goto :goto_0
.end method

.method private skillLastWork(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v5, 0x1b

    const/16 v6, 0x1a

    const/4 v7, 0x0

    .line 3678
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xd1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x26

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3679
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3686
    :goto_0
    return-void

    .line 3680
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xd1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x7f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3681
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    goto :goto_0

    .line 3683
    :cond_1
    sput-boolean v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    .line 3684
    invoke-virtual {p0, v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private skillPDragged(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0x3f

    .line 3420
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3421
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xb6

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x40

    const/16 v5, 0x51

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3422
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v1, v6, v1

    if-lt v0, v1, :cond_0

    .line 3423
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v0, p2, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    div-int v4, v6, v4

    div-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuDragged(IIII)V

    .line 3424
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3428
    :cond_0
    return-void

    .line 3423
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private skillPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2996
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 2999
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xd1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x26

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3000
    const/4 v0, -0x1

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3001
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3002
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3003
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3004
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3005
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3006
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3008
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xd1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x7f

    const/16 v5, 0x1b

    const/16 v6, 0x1a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3009
    const/4 v0, -0x2

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuScroll(III)V

    .line 3010
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 3011
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 3012
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3013
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lWInfo:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 3014
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isLastWork:Z

    .line 3015
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3017
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    if-eqz v0, :cond_3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xd1

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x40

    const/16 v5, 0x1b

    const/16 v6, 0x3f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3018
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isDragged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 3019
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFight;->draggedY:I

    .line 3021
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    if-eqz v0, :cond_4

    .line 3022
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x108

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1e

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v0, v1

    const/16 v5, 0xcc

    const/16 v0, 0x1d

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    mul-int v6, v0, v1

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pointerPressedMenu(IIIIIIIZ)I

    move-result v9

    .line 3023
    .local v9, "result":I
    if-ltz v9, :cond_4

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 3024
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    add-int/2addr v2, v9

    aput v2, v0, v1

    .line 3025
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    .line 3024
    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->pressButton([I[I[[I)V

    .line 3026
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    add-int/2addr v0, v9

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->delayIY:I

    .line 3029
    .end local v9    # "result":I
    :cond_4
    return-void
.end method

.method private skillPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3356
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 3357
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 3358
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    .line 3365
    :cond_0
    :goto_0
    return-void

    .line 3359
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 3360
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0

    .line 3362
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->btId:[I

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    .line 3363
    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseButton(Z)V

    goto :goto_0
.end method

.method private swAction()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1319
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    packed-switch v2, :pswitch_data_0

    .line 1331
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v2, :cond_0

    .line 1332
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/s/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".otr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v2, v5, v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 1334
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/s/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".otr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    invoke-virtual {v2, v5, v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 1336
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    .line 1337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 1420
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v2, :cond_11

    .line 1421
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v2, v5, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    .line 1422
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    invoke-virtual {v2, v5, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    .line 1423
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    .line 1428
    :goto_4
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    invoke-virtual {v2, v5, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver2:Z

    .line 1429
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    invoke-virtual {v2, v5, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v2

    if-nez v2, :cond_13

    :goto_6
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver2:Z

    .line 1430
    iput v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2b:I

    iput v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1b:I

    iput v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame2f:I

    iput v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frame1f:I

    .line 1433
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole1:Ljava/util/Vector;

    .line 1434
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole1:Ljava/util/Vector;

    .line 1435
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->backRole2:Ljava/util/Vector;

    .line 1436
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frontRole2:Ljava/util/Vector;

    .line 1437
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    if-eqz v2, :cond_1

    .line 1438
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->found1Role()V

    .line 1440
    :cond_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->found2Role()V

    .line 1441
    return-void

    .line 1321
    .end local v1    # "i":I
    :pswitch_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    goto/16 :goto_0

    .line 1326
    :pswitch_2
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v5, v5, v6

    aget-short v5, v5, v8

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    goto/16 :goto_0

    .line 1338
    .restart local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 1339
    .local v0, "hurt":I
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-eq v2, v8, :cond_6

    .line 1341
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v2, v2, v5

    const/4 v5, 0x2

    aget-short v2, v2, v5

    sparse-switch v2, :sswitch_data_0

    .line 1408
    :cond_3
    :goto_7
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v2, v2, v5

    aget v2, v2, v3

    .line 1409
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v5, v5, v6

    aget v5, v5, v4

    .line 1408
    add-int/2addr v2, v5

    if-lez v2, :cond_4

    .line 1410
    if-lez v0, :cond_e

    .line 1411
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v5, v5, v6

    aget v5, v5, v3

    .line 1412
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->collideCount:[[I

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    aget-object v6, v6, v7

    aget v6, v6, v4

    add-int/2addr v5, v6

    div-int v5, v0, v5

    .line 1411
    aput v5, v2, v1

    .line 1413
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    aget v5, v5, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v2, v1

    .line 1337
    :cond_4
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1344
    :sswitch_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isJook:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_5

    .line 1345
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-boolean v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    invoke-static {v5, v2, v6}, Lcom/jarworld/rpg/sanguocollege/Formular;->phyHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Z)I

    move-result v0

    goto :goto_7

    .line 1347
    :cond_5
    const/4 v0, -0x1

    .line 1349
    goto :goto_7

    .line 1352
    :sswitch_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v6, v6, v7

    aget-short v6, v6, v3

    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    invoke-static {v5, v2, v6, v7}, Lcom/jarworld/rpg/sanguocollege/Formular;->magicHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;IZ)I

    move-result v0

    .line 1353
    goto/16 :goto_7

    .line 1356
    :sswitch_2
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v6, v6, v7

    aget-short v6, v6, v3

    iget-boolean v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->isPower:Z

    invoke-static {v5, v2, v6, v7}, Lcom/jarworld/rpg/sanguocollege/Formular;->magicPhyHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;IZ)I

    move-result v0

    .line 1357
    goto/16 :goto_7

    .line 1360
    :sswitch_3
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v5, v5, v6

    aget-short v5, v5, v3

    invoke-static {v2, v5}, Lcom/jarworld/rpg/sanguocollege/Formular;->magicCure(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)I

    move-result v0

    .line 1361
    goto/16 :goto_7

    .line 1366
    :sswitch_4
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v0, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    goto/16 :goto_7

    .line 1371
    :cond_6
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    if-lez v2, :cond_7

    .line 1372
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v2, :pswitch_data_1

    .line 1379
    :pswitch_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    .line 1380
    goto/16 :goto_7

    .line 1376
    :pswitch_4
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v5, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    mul-int/2addr v2, v5

    div-int/lit8 v0, v2, 0x64

    .line 1377
    goto/16 :goto_7

    .line 1382
    :cond_7
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    if-lez v2, :cond_8

    .line 1383
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v2, :pswitch_data_2

    .line 1390
    :pswitch_5
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    .line 1391
    goto/16 :goto_7

    .line 1387
    :pswitch_6
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget v5, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->defencer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    mul-int/2addr v2, v5

    div-int/lit8 v0, v2, 0x64

    .line 1388
    goto/16 :goto_7

    .line 1393
    :cond_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    if-lez v2, :cond_9

    .line 1394
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    goto/16 :goto_7

    .line 1395
    :cond_9
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    if-lez v2, :cond_a

    .line 1396
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    goto/16 :goto_7

    .line 1397
    :cond_a
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    if-lez v2, :cond_b

    .line 1398
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    goto/16 :goto_7

    .line 1399
    :cond_b
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    if-lez v2, :cond_c

    .line 1400
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    goto/16 :goto_7

    .line 1401
    :cond_c
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    if-lez v2, :cond_d

    .line 1402
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    goto/16 :goto_7

    .line 1403
    :cond_d
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    if-lez v2, :cond_3

    .line 1404
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    goto/16 :goto_7

    .line 1415
    :cond_e
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->frameHurt:[I

    const/4 v5, -0x1

    aput v5, v2, v1

    goto/16 :goto_8

    .end local v0    # "hurt":I
    :cond_f
    move v2, v4

    .line 1421
    goto/16 :goto_2

    :cond_10
    move v2, v4

    .line 1422
    goto/16 :goto_3

    .line 1425
    :cond_11
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isBOver1:Z

    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isFOver1:Z

    .line 1426
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isStartSec:Z

    goto/16 :goto_4

    :cond_12
    move v2, v4

    .line 1428
    goto/16 :goto_5

    :cond_13
    move v3, v4

    .line 1429
    goto/16 :goto_6

    .line 1319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x63 -> :sswitch_4
        0x64 -> :sswitch_4
    .end sparse-switch

    .line 1372
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1383
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private swSelTarget()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v6, 0x1

    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 1176
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1177
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-boolean v7, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 1180
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    .line 1181
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    .line 1194
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-ne v5, v9, :cond_1

    .line 1195
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v4, v5, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 1196
    .local v4, "type":I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v5, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    .line 1201
    .local v2, "target":I
    :goto_0
    if-nez v4, :cond_2

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->defineDef(Z)[Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    move-result-object v3

    .line 1203
    .local v3, "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    if-ne v2, v6, :cond_6

    .line 1204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, v3

    if-lt v0, v5, :cond_3

    .line 1233
    :cond_0
    :goto_3
    return-void

    .line 1198
    .end local v0    # "i":I
    .end local v2    # "target":I
    .end local v3    # "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .end local v4    # "type":I
    :cond_1
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v5, v5, v8

    iget-byte v4, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_type:B

    .line 1199
    .restart local v4    # "type":I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v5, v5, v8

    iget-byte v2, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_target:B

    .restart local v2    # "target":I
    goto :goto_0

    :cond_2
    move v5, v7

    .line 1201
    goto :goto_1

    .line 1205
    .restart local v0    # "i":I
    .restart local v3    # "tr":[Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_3
    aget-object v5, v3, v0

    iget-boolean v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v5, :cond_4

    .line 1206
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-ne v5, v9, :cond_5

    .line 1207
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    if-ne v5, v10, :cond_5

    .line 1209
    :cond_4
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1204
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1220
    .end local v0    # "i":I
    :cond_6
    const/4 v1, 0x0

    .line 1221
    .local v1, "skRand":I
    iget-boolean v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v5, :cond_7

    .line 1222
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v7, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    .line 1224
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 1225
    add-int v5, v0, v1

    array-length v6, v3

    rem-int/2addr v5, v6

    aget-object v5, v3, v5

    iget-boolean v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-nez v5, :cond_8

    .line 1226
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    if-ne v5, v9, :cond_9

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    if-ne v5, v10, :cond_9

    .line 1228
    :cond_8
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    add-int v6, v0, v1

    array-length v7, v3

    rem-int/2addr v6, v7

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1224
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private toSelRole()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 873
    iget-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isSelRole:Z

    if-eqz v1, :cond_0

    .line 874
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->overActNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->overActNum:I

    .line 875
    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRole(Z)Z

    move-result v0

    .line 878
    :goto_0
    return v0

    .line 877
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isSelRole:Z

    goto :goto_0
.end method

.method private transferItem()V
    .locals 3

    .prologue
    .line 2878
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 2879
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 2880
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_drop:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    .line 2881
    const/4 v0, 0x0

    .line 2882
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2887
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 2883
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_enu_drop:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    aput-object v1, v2, v0

    .line 2884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private victoryPPressed(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3259
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 3260
    return-void
.end method


# virtual methods
.method public allRelive()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1666
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0xd

    aget-short v1, v1, v2

    iput-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 1667
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 1668
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v2, v2, v3

    aget-short v2, v2, v4

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 1670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1677
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isSelRole:Z

    .line 1678
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v5

    :goto_1
    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1679
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    .line 1681
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput-byte v5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    .line 1682
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->swSelTarget()V

    .line 1684
    iput-boolean v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 1685
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v2, 0xb

    invoke-virtual {p0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1686
    return-void

    .line 1671
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iput-boolean v5, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    .line 1672
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    invoke-direct {p0, v5, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 1673
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 1674
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 1675
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setFightAction(B)V

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v4

    goto :goto_1
.end method

.method public allkill()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1690
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v1, 0xe

    aget-short v0, v0, v1

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    .line 1691
    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    .line 1692
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_useSG:S

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_skillIdx:B

    aget-object v1, v1, v2

    aget-short v1, v1, v3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curSkill:Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 1694
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_tactics:B

    .line 1695
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->swSelTarget()V

    .line 1697
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isHasSingle:Z

    .line 1698
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->assignState(BB)V

    .line 1699
    return-void
.end method

.method public assignState(BB)V
    .locals 19
    .param p1, "curState"    # B
    .param p2, "nextState"    # B

    .prologue
    .line 226
    packed-switch p2, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->disposeRes(BB)V

    .line 522
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    .line 524
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->isRepaint:Z

    .line 526
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->isCanKP:Z

    .line 527
    return-void

    .line 228
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->changeTurn()V

    goto :goto_0

    .line 232
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    .line 233
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    .line 235
    const/4 v10, 0x0

    .line 236
    .local v10, "index":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcesVec:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 238
    .local v15, "role":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v2, :cond_2

    .line 240
    iget-byte v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-eqz v2, :cond_3

    .line 236
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 245
    :cond_2
    iget-byte v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 250
    :cond_3
    iget-object v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->fFet:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 251
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 252
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 253
    new-instance v8, Lcom/jarworld/rpg/sanguocollege/DigNum;

    invoke-direct {v8}, Lcom/jarworld/rpg/sanguocollege/DigNum;-><init>()V

    .line 254
    .local v8, "dn":Lcom/jarworld/rpg/sanguocollege/DigNum;
    iget-short v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosX:S

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->x:I

    .line 255
    iget-short v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_fightPosY:S

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->y:I

    .line 256
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 257
    const-wide v2, 0x3ffd524fe24f89f1L    # 1.832595714594046

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDRandom(DD)D

    move-result-wide v2

    .line 256
    :goto_3
    iput-wide v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->arc:D

    .line 259
    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->speed:I

    .line 260
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->big:Z

    .line 261
    const/4 v2, 0x0

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->color:I

    .line 262
    iget v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_fetHurt:I

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->value:I

    .line 263
    const/4 v2, 0x0

    iput v2, v8, Lcom/jarworld/rpg/sanguocollege/DigNum;->frame:I

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    aget-object v2, v2, v10

    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    const/4 v2, 0x0

    iget v3, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget v4, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_fetHurt:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v15, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fettleDefencer:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v10, v11

    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto :goto_2

    .line 258
    :cond_4
    const-wide/16 v2, 0x0

    const-wide v4, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    invoke-static {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getDRandom(DD)D

    move-result-wide v2

    goto :goto_3

    .line 272
    .end local v8    # "dn":Lcom/jarworld/rpg/sanguocollege/DigNum;
    .end local v9    # "i":I
    .end local v10    # "index":I
    .end local v15    # "role":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v2, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    array-length v2, v2

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSGUsable:[Z

    .line 275
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    array-length v2, v2

    if-ge v9, v2, :cond_0

    .line 276
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    aget-object v3, v3, v9

    const/4 v4, 0x0

    aget-short v3, v3, v4

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    if-gt v2, v3, :cond_5

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSGUsable:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v9

    .line 275
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 284
    .end local v9    # "i":I
    :pswitch_4
    packed-switch p1, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    .line 286
    :pswitch_6
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 288
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 292
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    if-lt v2, v3, :cond_7

    .line 293
    sget-boolean v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_b_isCanFlee:Z

    if-eqz v2, :cond_6

    .line 294
    const/16 v2, -0x80

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 295
    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->useMedicine(Ljava/util/Vector;Lcom/jarworld/rpg/sanguocollege/Item;)V

    .line 297
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 299
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 301
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0x28

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 304
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 306
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0x1b

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 311
    :pswitch_8
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 312
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    if-lt v2, v3, :cond_9

    .line 313
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    sub-int/2addr v2, v3

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    .line 314
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    if-lt v9, v2, :cond_8

    .line 318
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 315
    :cond_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getItem(S)V

    .line 314
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 321
    .end local v9    # "i":I
    :cond_9
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto/16 :goto_0

    .line 328
    :pswitch_9
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 329
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setCanUseSk(Lcom/jarworld/rpg/sanguocollege/LeadingActor;)V

    .line 333
    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/16 v4, 0x7e

    const/16 v5, 0xcc

    const/16 v6, 0x1d

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/16 v18, 0x1

    aget-object v7, v7, v18

    const/16 v18, 0x2

    aget-byte v7, v7, v18

    add-int/lit8 v7, v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    array-length v7, v7

    :goto_6
    invoke-static/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->initOptionUI(IIIIII)V

    .line 334
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v3, 0x5

    const/4 v4, 0x1

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    invoke-static {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->initBtLen(IIII)V

    .line 335
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v4, 0x5

    const/4 v2, 0x1

    new-array v5, v2, [I

    const/4 v2, 0x0

    const/4 v6, 0x1

    aput v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [[I

    const/4 v2, 0x1

    new-array v7, v2, [[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->updateButton(II[I[[I[[I)V

    .line 336
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPixCont(I)V

    goto/16 :goto_0

    .line 333
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 341
    :pswitch_a
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 342
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 343
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    .line 345
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getExpendable(I)V

    .line 347
    const/4 v2, 0x1

    const/16 v3, 0x114

    const/16 v4, 0x9e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->initOptionUI(IIIIII)V

    .line 348
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v3, 0x6

    const/4 v4, 0x1

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->initBtLen(IIII)V

    .line 349
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v4, 0x6

    const/4 v2, 0x1

    new-array v5, v2, [I

    const/4 v2, 0x0

    const/4 v6, 0x1

    aput v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [[I

    const/4 v2, 0x1

    new-array v7, v2, [[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->updateButton(II[I[[I[[I)V

    .line 350
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRollCont(I)V

    goto/16 :goto_0

    .line 355
    :pswitch_b
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 356
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_y:S

    .line 357
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mId_x:S

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->mSId:I

    .line 359
    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GC;->FIGHTSHOP:B

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->initStore(I)V

    .line 361
    const/4 v2, 0x1

    const/16 v3, 0x114

    const/16 v4, 0x9e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->initOptionUI(IIIIII)V

    .line 362
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v3, 0x7

    const/4 v4, 0x1

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->initBtLen(IIII)V

    .line 363
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->sType:B

    const/4 v4, 0x7

    const/4 v2, 0x1

    new-array v5, v2, [I

    const/4 v2, 0x0

    const/4 v6, 0x1

    aput v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [[I

    const/4 v2, 0x1

    new-array v7, v2, [[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFight;->updateButton(II[I[[I[[I)V

    .line 364
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRollCont(I)V

    goto/16 :goto_0

    .line 369
    :pswitch_c
    const/4 v2, 0x1

    sput-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_byt_bStotalNum:B

    .line 370
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    sput v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_bStotalCost:I

    goto/16 :goto_0

    .line 374
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->swSelTarget()V

    goto/16 :goto_0

    .line 378
    :pswitch_e
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->pFS_f:B

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    goto/16 :goto_0

    .line 383
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->swAction()V

    goto/16 :goto_0

    .line 388
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->attacker:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isActionOver:Z

    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_ScreenEffect:B

    .line 391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_SECount:I

    goto/16 :goto_0

    .line 396
    :pswitch_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_frameDeath:I

    .line 398
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v3, "/s/301.otr"

    const/16 v4, 0x12d

    invoke-virtual {v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 399
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->showVec:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 402
    .local v13, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget v2, v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    if-gtz v2, :cond_b

    iget-boolean v2, v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    if-eqz v2, :cond_b

    .line 403
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    .line 405
    invoke-virtual {v13}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->initFightFet()V

    .line 407
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/jarworld/rpg/sanguocollege/GameFight;->setPlayable(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/jarworld/rpg/sanguocollege/GameFight;->reBrushNeedActNum(ZLcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 411
    const/4 v2, 0x3

    invoke-virtual {v13, v2}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->setFightAction(B)V

    .line 413
    iget-byte v2, v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 414
    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isInBattle:Z

    .line 399
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 421
    .end local v9    # "i":I
    .end local v13    # "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :pswitch_12
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_lostType:S

    packed-switch v2, :pswitch_data_2

    .line 436
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcibleChangeOurTrun()V

    goto/16 :goto_0

    .line 423
    :pswitch_13
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    .line 424
    const/4 v2, 0x3

    sput-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curMusicIndex:B

    .line 425
    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curMusicIndex:B

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->playGamePlayerArray(II)V

    goto :goto_8

    .line 428
    :pswitch_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    goto :goto_8

    .line 431
    :pswitch_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    .line 432
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    goto :goto_8

    .line 440
    :pswitch_16
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    .line 441
    const/4 v2, 0x2

    sput-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curMusicIndex:B

    .line 442
    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->curMusicIndex:B

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->playGamePlayerArray(II)V

    .line 444
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v2, v2

    if-lt v9, v2, :cond_c

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Formular;->fightMoney([Lcom/jarworld/rpg/sanguocollege/GameCharacter;[Lcom/jarworld/rpg/sanguocollege/Monster;)S

    move-result v2

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropMoneyTotal:S

    .line 470
    sget v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->expMtp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->leftTeammate:I

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Formular;->fightExp([Lcom/jarworld/rpg/sanguocollege/Monster;I)I

    move-result v3

    mul-int/2addr v2, v3

    sput v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropExpTotal:I

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcibleChangeOurTrun()V

    goto/16 :goto_0

    .line 445
    :cond_c
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    array-length v2, v2

    if-lt v12, v2, :cond_d

    .line 444
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 446
    :cond_d
    const/16 v17, -0x1

    .line 447
    .local v17, "tempDropItem":S
    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v14

    .line 448
    .local v14, "ram":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v2, v2, v12

    const/4 v3, 0x1

    aget-short v2, v2, v3

    if-gt v14, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v2, v2, v12

    const/4 v3, 0x1

    aget-short v2, v2, v3

    if-lez v2, :cond_e

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v2, v2, v12

    const/4 v3, 0x0

    aget-short v17, v2, v3

    .line 451
    :cond_e
    if-ltz v17, :cond_f

    .line 452
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-nez v2, :cond_10

    .line 453
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 454
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v3, 0x0

    new-instance v4, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v4}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    aput-object v4, v2, v3

    .line 455
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 445
    :cond_f
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 457
    :cond_10
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Lcom/jarworld/rpg/sanguocollege/Item;

    move-object/from16 v16, v0

    .line 458
    .local v16, "tempArray":[Lcom/jarworld/rpg/sanguocollege/Item;
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v5, v5

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    aput-object v3, v16, v2

    .line 460
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v16, v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 461
    const/4 v2, 0x0

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 462
    sput-object v16, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    goto :goto_b

    .line 478
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v14    # "ram":I
    .end local v16    # "tempArray":[Lcom/jarworld/rpg/sanguocollege/Item;
    .end local v17    # "tempDropItem":S
    :pswitch_17
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v2, :cond_11

    .line 479
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v2, v2

    if-lt v9, v2, :cond_12

    .line 486
    .end local v9    # "i":I
    :cond_11
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropMoneyTotal:S

    add-int/2addr v2, v3

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    goto/16 :goto_0

    .line 480
    .restart local v9    # "i":I
    :cond_12
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v9

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getItem(S)V

    .line 481
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->checkDropItem(Lcom/jarworld/rpg/sanguocollege/Item;)V

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->transferItem()V

    .line 479
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 491
    .end local v9    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v4, 0x16

    aget-short v3, v3, v4

    if-lt v2, v3, :cond_0

    .line 490
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    :pswitch_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v3, v3

    if-lt v2, v3, :cond_13

    goto/16 :goto_0

    .line 499
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->levelUp()V

    .line 500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    .line 501
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lvlUpSkID:I

    .line 502
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    array-length v2, v2

    if-lt v9, v2, :cond_15

    .line 508
    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lvlUpSkID:I

    if-ltz v2, :cond_17

    .line 509
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fLUMMaxNum:I

    goto/16 :goto_0

    .line 503
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v9

    const/4 v3, 0x0

    aget-short v2, v2, v3

    if-ltz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v9

    const/4 v3, 0x1

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v3, v3, v4

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    if-ne v2, v3, :cond_16

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v9

    const/4 v3, 0x0

    aget-short v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->lvlUpSkID:I

    goto :goto_e

    .line 502
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 511
    :cond_17
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fLUMMaxNum:I

    goto/16 :goto_0

    .line 516
    .end local v9    # "i":I
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_dialogIdx:S

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/bin/dialog"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_diaBinIdx:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->getDialog(Ljava/lang/Object;SLjava/lang/String;)V

    .line 517
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_byt_diaBinIdx:B

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_dialogIdx:S

    .line 518
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_17
        :pswitch_12
        :pswitch_1a
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 421
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public control()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 538
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 612
    :goto_0
    :pswitch_0
    return-void

    .line 540
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineStart()V

    goto :goto_0

    .line 544
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineSelRole()V

    goto :goto_0

    .line 548
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineChangeTurn()V

    goto :goto_0

    .line 552
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineStatus()V

    goto :goto_0

    .line 556
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineTactics()V

    goto :goto_0

    .line 560
    :pswitch_6
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineRoll(ZII)V

    goto :goto_0

    .line 565
    :pswitch_7
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineRoll(ZII)V

    goto :goto_0

    .line 569
    :pswitch_8
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineSelTarget()V

    goto :goto_0

    .line 573
    :pswitch_9
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->enginePrepare()V

    goto :goto_0

    .line 577
    :pswitch_a
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineMove()V

    goto :goto_0

    .line 581
    :pswitch_b
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineAction()V

    goto :goto_0

    .line 585
    :pswitch_c
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineActEff()V

    goto :goto_0

    .line 589
    :pswitch_d
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineDeath()V

    goto :goto_0

    .line 593
    :pswitch_e
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineFSDeath()V

    goto :goto_0

    .line 597
    :pswitch_f
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineGetEXP()V

    goto :goto_0

    .line 601
    :pswitch_10
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineLevelUp()V

    goto :goto_0

    .line 605
    :pswitch_11
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineLost()V

    goto :goto_0

    .line 609
    :pswitch_12
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->engineDialog()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V
    .locals 4
    .param p1, "view"    # Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .prologue
    const/4 v3, 0x3

    .line 759
    sput-object p1, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .line 761
    new-array v1, v3, [Ljava/util/Vector;

    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->initForcesVec()V

    .line 768
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->forcibleChangeOurTrun()V

    .line 770
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_1
    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 771
    return-void

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->numVec:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public delayWork()V
    .locals 1

    .prologue
    .line 3454
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 3482
    :goto_0
    return-void

    .line 3457
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3459
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuDelayWork()V

    goto :goto_0

    .line 3463
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->skillDelayWork()V

    goto :goto_0

    .line 3467
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->itemDelayWork()V

    goto :goto_0

    .line 3471
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyDelayWork()V

    goto :goto_0

    .line 3475
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyConfirmDelayWork()V

    goto :goto_0

    .line 3479
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selTargetDelayWork()V

    goto :goto_0

    .line 3457
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public disposeRes(BB)V
    .locals 0
    .param p1, "curframeState"    # B
    .param p2, "nextframeState"    # B

    .prologue
    .line 1569
    sparse-switch p2, :sswitch_data_0

    .line 1576
    :goto_0
    invoke-virtual {p0, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadRes(B)V

    .line 1577
    return-void

    .line 1573
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseRes(B)V

    goto :goto_0

    .line 1569
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public lastWork(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3655
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 3675
    :goto_0
    return-void

    .line 3658
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3660
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->skillLastWork(II)V

    goto :goto_0

    .line 3664
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->itemLastWork(II)V

    goto :goto_0

    .line 3668
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyLastWork(II)V

    goto :goto_0

    .line 3672
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyConfirmLastWork(II)V

    goto :goto_0

    .line 3658
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadRes(B)V
    .locals 10
    .param p1, "nextframeState"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1603
    sparse-switch p1, :sswitch_data_0

    .line 1634
    :goto_0
    return-void

    .line 1605
    :sswitch_0
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 1606
    .local v1, "idx0":[I
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v5, "n"

    invoke-virtual {p0, v4, v1, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_0

    .line 1611
    .end local v1    # "idx0":[I
    :sswitch_1
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 1612
    .local v2, "idx1":[I
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v5, "n"

    invoke-virtual {p0, v4, v2, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_0

    .line 1617
    .end local v2    # "idx1":[I
    :sswitch_2
    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, v7

    aget-byte v5, v5, v8

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1c

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->dlgARGB:[I

    .line 1618
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->dlgARGB:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 1622
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    .line 1623
    .local v3, "idx2":[I
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v5, "n"

    invoke-virtual {p0, v4, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    .line 1625
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v4, v4, v5

    aget-short v4, v4, v8

    add-int/lit16 v4, v4, 0x12d

    int-to-short v4, v4

    invoke-virtual {p0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFight;->loadDialogHead(S)V

    .line 1627
    invoke-static {v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPixCont(I)V

    .line 1628
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    aget-object v4, v4, v5

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v5, v5, -0x40

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, v7

    aget-byte v6, v6, v8

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v7, v5, v6, v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    .line 1630
    invoke-static {v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->initFNCont(I)V

    .line 1631
    invoke-static {v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->initFactNum(I)V

    goto :goto_0

    .line 1619
    .end local v3    # "idx2":[I
    :cond_0
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->dlgARGB:[I

    const/high16 v5, -0x34000000    # -3.3554432E7f

    aput v5, v4, v0

    .line 1618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1603
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch

    .line 1605
    :array_0
    .array-data 4
        0xb
        0x2e
        0x2f
    .end array-data

    .line 1611
    :array_1
    .array-data 4
        0xa
        0x20
        0x2e
    .end array-data

    .line 1622
    :array_2
    .array-data 4
        0x22
        0x35
    .end array-data
.end method

.method public onKeyDown(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 535
    return-void
.end method

.method public onKeyUp(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onPointerDragged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3401
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 3417
    :goto_0
    return-void

    .line 3404
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3406
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->skillPDragged(II)V

    goto :goto_0

    .line 3410
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->itemPDragged(II)V

    goto :goto_0

    .line 3414
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyPDragged(II)V

    goto :goto_0

    .line 3404
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2891
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 2947
    :goto_0
    return-void

    .line 2894
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2896
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selRolePPressed(II)V

    goto :goto_0

    .line 2900
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuPPressed(II)V

    goto :goto_0

    .line 2904
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->actionTipPPressed(II)V

    goto :goto_0

    .line 2908
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->skillPPressed(II)V

    goto :goto_0

    .line 2912
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->itemPPressed(II)V

    goto :goto_0

    .line 2916
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyPPressed(II)V

    goto :goto_0

    .line 2920
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyConfirmPPressed(II)V

    goto :goto_0

    .line 2924
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selTargetPPressed(II)V

    goto :goto_0

    .line 2928
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->lostPPressed(II)V

    goto :goto_0

    .line 2932
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->victoryPPressed(II)V

    goto :goto_0

    .line 2936
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->resultPPressed(II)V

    goto :goto_0

    .line 2940
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->levelUpPPressed(II)V

    goto :goto_0

    .line 2944
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->dialogPPressed(II)V

    goto :goto_0

    .line 2894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public onPointerReleased(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3321
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-nez v0, :cond_0

    .line 3349
    :goto_0
    return-void

    .line 3324
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3326
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->menuPReleased()V

    goto :goto_0

    .line 3330
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->skillPReleased()V

    goto :goto_0

    .line 3334
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->itemPReleased()V

    goto :goto_0

    .line 3338
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyPReleased()V

    goto :goto_0

    .line 3342
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->buyConfirmPReleased()V

    goto :goto_0

    .line 3346
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->selTargetPReleased()V

    goto :goto_0

    .line 3324
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public release()V
    .locals 4

    .prologue
    .line 1553
    const/4 v2, 0x0

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    .line 1555
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1556
    .local v0, "idx0":[I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 1558
    const/4 v2, 0x6

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    .line 1559
    .local v1, "idx1":[I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 1561
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseCharacterSpx()V

    .line 1563
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 1565
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseFightInfo()V

    .line 1566
    return-void

    .line 1555
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xb
        0xc
        0xd
    .end array-data

    .line 1558
    :array_1
    .array-data 4
        0x4
        0x5
        0x13
        0x14
        0x1c
        0x21
    .end array-data
.end method

.method public releaseRes(B)V
    .locals 5
    .param p1, "curframeState"    # B

    .prologue
    const/4 v3, 0x3

    .line 1580
    sparse-switch p1, :sswitch_data_0

    .line 1600
    :goto_0
    return-void

    .line 1582
    :sswitch_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1583
    .local v0, "idx0":[I
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v3, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 1588
    .end local v0    # "idx0":[I
    :sswitch_1
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 1589
    .local v1, "idx1":[I
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 1593
    .end local v1    # "idx1":[I
    :sswitch_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->dlgARGB:[I

    .line 1594
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    .line 1595
    .local v2, "idx2":[I
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v3, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 1596
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    invoke-virtual {v3, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 1597
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    const/4 v4, -0x1

    iput-short v4, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    goto :goto_0

    .line 1580
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch

    .line 1582
    :array_0
    .array-data 4
        0xb
        0x2e
        0x2f
    .end array-data

    .line 1588
    :array_1
    .array-data 4
        0xa
        0x20
        0x2e
    .end array-data

    .line 1594
    :array_2
    .array-data 4
        0x22
        0x35
    .end array-data
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v5, 0x7

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 615
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 619
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 620
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_0

    .line 627
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 628
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_0

    .line 632
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 633
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto :goto_0

    .line 637
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 638
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 639
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 640
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_b_isOurTurn:Z

    if-eqz v0, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightMenu()V

    .line 643
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    aget-object v0, v0, v9

    const/4 v4, 0x4

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-boolean v4, v0, v2

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawYON(IIIZZ)V

    goto :goto_0

    .line 647
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 648
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 649
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 650
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf2

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0x108

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->skCanUse:[S

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFSkllMenu(IILcom/jarworld/rpg/sanguocollege/GameCharacter;[S)V

    goto :goto_0

    .line 654
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 655
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 656
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 657
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0xc6

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightItem(II)V

    goto/16 :goto_0

    .line 661
    :pswitch_7
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 662
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 663
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 664
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0xc6

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    aget-object v2, v2, v9

    aget-object v2, v2, v5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawBuy(II[[[ZZ)V

    goto/16 :goto_0

    .line 668
    :pswitch_8
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 669
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 670
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 671
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x138

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0xc6

    div-int/lit8 v1, v1, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    aget-object v4, v4, v9

    aget-object v4, v4, v5

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawBuy(II[[[ZZ)V

    .line 672
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v3

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x52

    div-int/lit8 v4, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v3

    aget-byte v1, v1, v9

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x42

    div-int/lit8 v5, v0, 0x2

    .line 673
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v6, v0, 0x52

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v7, v0, 0x42

    .line 674
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    aget-object v0, v0, v9

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v9, v0, v2

    move-object v3, p0

    move v8, v2

    .line 672
    invoke-virtual/range {v3 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawBSConfirm(IIIII[[Z)V

    goto/16 :goto_0

    .line 679
    :pswitch_9
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 680
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 681
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->groupDefencer:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 682
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->button:[[[[[Z

    aget-object v0, v0, v9

    const/16 v4, 0xa

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-boolean v4, v0, v2

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawYON(IIIZZ)V

    goto/16 :goto_0

    .line 688
    :pswitch_a
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 689
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto/16 :goto_0

    .line 693
    :pswitch_b
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 694
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 695
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 696
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawTipWith1D(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 700
    :pswitch_c
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_s_lostType:S

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 702
    :pswitch_d
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 703
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 704
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 705
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawTipWith1D(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 708
    :pswitch_e
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 709
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 710
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    goto/16 :goto_0

    .line 713
    :pswitch_f
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 714
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 715
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 716
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 717
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawTipWith1D(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 724
    :pswitch_10
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 725
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 726
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 727
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_tipIdx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawTipWith1D(Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 731
    :pswitch_11
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 732
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 733
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 734
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v0, v0, -0x28

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v3

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 735
    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v5, v0, 0x1c

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1f

    :goto_1
    add-int/2addr v0, v5

    sub-int v0, v4, v0

    div-int/lit8 v7, v0, 0x2

    .line 736
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v8, v0, 0x28

    .line 737
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x1c

    .line 738
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int/lit8 v5, v0, 0x1c

    .line 739
    :goto_2
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object v0, p0

    move v2, v7

    move v3, v8

    .line 734
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawResultMenu(IIIII[Lcom/jarworld/rpg/sanguocollege/LeadingActor;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 735
    goto :goto_1

    :cond_3
    move v5, v2

    .line 738
    goto :goto_2

    .line 743
    :pswitch_12
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 744
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoUp(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 745
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawFightInfoDown(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 746
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xa6

    div-int/lit8 v1, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0x87

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v2, v2, v3

    aget-byte v2, v2, v9

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    const/16 v7, 0xa6

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    add-int/lit8 v4, v0, 0x78

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v9

    add-int/lit8 v5, v0, 0xc

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->curIndex:I

    aget-object v6, v0, v3

    move-object v0, p0

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawLevelUpMenu(IIIIILcom/jarworld/rpg/sanguocollege/LeadingActor;)V

    goto/16 :goto_0

    .line 750
    :pswitch_13
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFight;->draw()V

    .line 751
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_FrameTimer:I

    if-gtz v0, :cond_0

    .line 752
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GameFight;->drawDialog(Z)V

    goto/16 :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_c
        :pswitch_13
    .end packed-switch

    .line 700
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
