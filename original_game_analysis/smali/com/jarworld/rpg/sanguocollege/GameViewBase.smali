.class public Lcom/jarworld/rpg/sanguocollege/GameViewBase;
.super Ljavax/microedition/lcdui/Canvas;
.source "GameViewBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final FLIP_MSEL:I = 0x28

.field static final KEY_0:I = 0x30

.field static final KEY_1:I = 0x31

.field static final KEY_3:I = 0x33

.field static final KEY_7:I = 0x37

.field static final KEY_9:I = 0x39

.field static final KEY_DOWN:I = -0x2

.field static final KEY_FIRE:I = -0x5

.field static final KEY_LEFT:I = -0x3

.field static final KEY_NULL:I = 0x0

.field static final KEY_RIGHT:I = -0x4

.field static final KEY_SOFTKEY1:I = -0x6

.field static final KEY_SOFTKEY2:I = -0x7

.field static final KEY_UP:I = -0x1

.field static s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;


# instance fields
.field private FPS:I

.field public FPSTimer:I

.field animationThread:Ljava/lang/Thread;

.field curKeyPressedCode:I

.field curKeyReleaseCode:I

.field exit:Z

.field private gameDuration:J

.field isPointerDragged:Z

.field isPointerPressed:Z

.field isPointerReleased:Z

.field private lastFrameEnd:J

.field m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

.field m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

.field m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

.field m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

.field m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

.field pointx:I

.field pointy:I

.field final showFPS:Z

.field private startTime:J

.field private thisFrameTake:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/jarworld/rpg/sanguocollege/GameAppBase;)V
    .locals 5
    .param p1, "App"    # Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 28
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->showFPS:Z

    .line 30
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->exit:Z

    .line 60
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->animationThread:Ljava/lang/Thread;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->lastFrameEnd:J

    .line 75
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    .line 77
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    .line 79
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    .line 81
    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    .line 89
    invoke-virtual {p0, v4}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->setFullScreenMode(Z)V

    .line 91
    iput-object p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    .line 94
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->initScrInfo()V

    .line 96
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadNFInfo()V

    .line 97
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadGAInfo()V

    .line 98
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadStoreInfo()V

    .line 99
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadLvlUpInfo()V

    .line 100
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadInlayInfo()V

    .line 102
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GamePage;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    .line 103
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    .line 104
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/GameScene;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    .line 105
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GameFight;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/GameFight;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    .line 107
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadMisson()V

    .line 108
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadMissonHint()V

    .line 110
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadMonster()V

    .line 112
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadEquipment()V

    .line 114
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadSkBook()V

    .line 116
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadSuit()V

    .line 118
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadSkillGroup()V

    .line 119
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadSkill()V

    .line 121
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadAdvance()V

    .line 123
    const/16 v0, 0x36

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    .line 124
    new-array v0, v4, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_load:[Ljavax/microedition/lcdui/Image;

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_page:[Ljavax/microedition/lcdui/Image;

    .line 126
    const/16 v0, 0xe

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_cg:[Ljavax/microedition/lcdui/Image;

    .line 128
    new-array v0, v4, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    .line 130
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/GameStr;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/GameStr;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 131
    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/util/Vector;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    .line 133
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->loadStr()V

    .line 135
    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initButton()V

    .line 137
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    invoke-virtual {v0, p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V

    .line 138
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    const/16 v1, -0x80

    invoke-virtual {v0, v1, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 139
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 140
    return-void
.end method

.method private delayWork()V
    .locals 3

    .prologue
    .line 840
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    invoke-virtual {v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->delayWork()V

    .line 842
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 845
    return-void

    .line 843
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getKeyAction(I)I
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 874
    sparse-switch p1, :sswitch_data_0

    .line 904
    .end local p1    # "keyCode":I
    :goto_0
    return p1

    .line 878
    .restart local p1    # "keyCode":I
    :sswitch_0
    const/4 p1, -0x6

    goto :goto_0

    .line 880
    :sswitch_1
    const/4 p1, -0x7

    goto :goto_0

    .line 883
    :sswitch_2
    const/4 p1, -0x1

    goto :goto_0

    .line 886
    :sswitch_3
    const/4 p1, -0x2

    goto :goto_0

    .line 889
    :sswitch_4
    const/4 p1, -0x3

    goto :goto_0

    .line 892
    :sswitch_5
    const/4 p1, -0x4

    goto :goto_0

    .line 894
    :sswitch_6
    const/16 p1, 0x30

    goto :goto_0

    .line 896
    :sswitch_7
    const/16 p1, 0x31

    goto :goto_0

    .line 898
    :sswitch_8
    const/16 p1, 0x33

    goto :goto_0

    .line 900
    :sswitch_9
    const/16 p1, 0x37

    goto :goto_0

    .line 902
    :sswitch_a
    const/16 p1, 0x39

    goto :goto_0

    .line 874
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x30 -> :sswitch_6
        0x31 -> :sswitch_7
        0x32 -> :sswitch_2
        0x33 -> :sswitch_8
        0x34 -> :sswitch_4
        0x35 -> :sswitch_0
        0x36 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_3
        0x39 -> :sswitch_a
    .end sparse-switch
.end method

.method private initSkill([BLcom/jarworld/rpg/sanguocollege/Skill;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "skill"    # Lcom/jarworld/rpg/sanguocollege/Skill;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 555
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 556
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 557
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    .line 558
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_b_isStartFirst:Z

    .line 559
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID1:S

    .line 560
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target1:B

    .line 561
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_spxID2:S

    .line 562
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_target2:B

    .line 563
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_standby:B

    .line 564
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_effect:B

    .line 565
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 566
    const/4 v1, 0x0

    .line 567
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 568
    const/4 v0, 0x0

    .line 569
    return-void

    .line 558
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initSkillGroup([BLcom/jarworld/rpg/sanguocollege/SkillGroup;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "skillgroup"    # Lcom/jarworld/rpg/sanguocollege/SkillGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 505
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 506
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_ID:S

    .line 507
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillImgIdx:B

    .line 508
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_target:B

    .line 509
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_type:B

    .line 510
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillNum:B

    .line 511
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v5, 0xa

    aget-short v4, v4, v5

    const/4 v5, 0x4

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    iput-object v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    .line 512
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 517
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    .line 518
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_state:B

    .line 519
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_round:B

    .line 520
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_stateBase:S

    .line 521
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput-byte v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_stateRate:B

    .line 522
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 523
    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 525
    const/4 v0, 0x0

    .line 526
    return-void

    .line 513
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_1
    iget-object v4, p2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    aget-object v4, v4, v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v3

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private keyHod()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v2

    aget-short v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 768
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->teachSwitch()V

    .line 769
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    if-eqz v0, :cond_2

    .line 773
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->getKeyAction(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->onKeyDown(I)V

    .line 774
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    goto :goto_0

    .line 775
    :cond_2
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyReleaseCode:I

    if-eqz v0, :cond_0

    .line 776
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyReleaseCode:I

    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->getKeyAction(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->onKeyUp(I)V

    .line 777
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyReleaseCode:I

    goto :goto_0
.end method

.method private lastWork()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 849
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 850
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v0, v0, v4

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_0

    .line 852
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lastWork(II)V

    .line 853
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aput v3, v0, v4

    .line 855
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v0, v0, v3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v1, v1, v5

    if-eq v0, v1, :cond_0

    .line 856
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v1, v0, v6

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v6

    .line 857
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v0, v0, v6

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 858
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    aget v1, v1, v5

    aput v1, v0, v3

    .line 862
    :cond_0
    return-void
.end method

.method private loadAdvance()V
    .locals 6

    .prologue
    .line 573
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "/bin/advance.bin"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 575
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const/16 v5, 0x9

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    .line 576
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 577
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 584
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 585
    const/4 v0, 0x0

    .line 590
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 579
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 580
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    aget-object v4, v4, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 586
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 588
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadEquipment()V
    .locals 6

    .prologue
    .line 414
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/bin/equipment.bin"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 417
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 419
    .local v2, "itemCount":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    .line 420
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, v2

    new-array v3, v3, [B

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    .line 422
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    array-length v5, v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 423
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    const/4 v0, 0x0

    .line 429
    .end local v2    # "itemCount":I
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 427
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadMisson()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x3

    .line 248
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "/bin/mission.bin"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 251
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 253
    .local v5, "missionNum":S
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    new-array v8, v5, [Lcom/jarworld/rpg/sanguocollege/GameMission;

    iput-object v8, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    .line 255
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    array-length v7, v7

    if-lt v2, v7, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 366
    const/4 v0, 0x0

    .line 371
    .end local v2    # "i":I
    .end local v5    # "missionNum":S
    :goto_1
    return-void

    .line 258
    .restart local v2    # "i":I
    .restart local v5    # "missionNum":S
    :cond_0
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    new-instance v8, Lcom/jarworld/rpg/sanguocollege/GameMission;

    invoke-direct {v8}, Lcom/jarworld/rpg/sanguocollege/GameMission;-><init>()V

    aput-object v8, v7, v2

    .line 259
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    .line 260
    iget-object v8, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v8, v2

    .line 261
    iget-object v9, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v9, v9, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v9, v9, v2

    int-to-short v10, v2

    iput-short v10, v9, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_des:S

    .line 260
    iput-short v10, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_title:S

    .line 259
    iput-short v10, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_ID:S

    .line 262
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_type:B

    .line 263
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_display:B

    .line 265
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 266
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_flag:B

    .line 268
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_flag:B

    if-ne v7, v13, :cond_1

    .line 269
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 270
    .local v6, "openIndex":Ljava/lang/Integer;
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->INITMISSIOM:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    .end local v6    # "openIndex":Ljava/lang/Integer;
    :cond_1
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_closerNum:B

    .line 275
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_closerNum:B

    if-gez v7, :cond_2

    .line 276
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_closerNum:B

    .line 278
    :cond_2
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_closerNum:B

    const/4 v9, 0x6

    filled-new-array {v7, v9}, [I

    move-result-object v7

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_closer:[[S

    .line 279
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_closer:[[S

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 288
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_closerNum:B

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0xb

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 290
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    iput-short v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCFloorID:S

    .line 291
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    iput-short v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCID:S

    .line 292
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_bubbleBrowID:B

    .line 294
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    iput-short v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_eventID:S

    .line 295
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_eventBinID:B

    .line 297
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_preNum:B

    .line 300
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openListType:B

    .line 302
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    .line 303
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    if-gez v7, :cond_3

    .line 304
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    .line 306
    :cond_3
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    const/4 v9, 0x3

    filled-new-array {v7, v9}, [I

    move-result-object v7

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openList:[[S

    .line 307
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openList:[[S

    array-length v7, v7

    if-lt v3, v7, :cond_8

    .line 316
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x5

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 318
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openListType:B

    if-le v7, v13, :cond_c

    .line 320
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    const/4 v9, 0x3

    filled-new-array {v7, v9}, [I

    move-result-object v7

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openJudge:[[S

    .line 321
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openJudge:[[S

    array-length v7, v7

    if-lt v3, v7, :cond_a

    .line 330
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_openNum:B

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x5

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 337
    :goto_5
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectMapNum:B

    .line 338
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectMapNum:B

    if-gez v7, :cond_4

    .line 339
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectMapNum:B

    .line 341
    :cond_4
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectMapNum:B

    const/4 v9, 0x2

    filled-new-array {v7, v9}, [I

    move-result-object v7

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    .line 342
    const/4 v3, 0x0

    :goto_6
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    array-length v7, v7

    if-lt v3, v7, :cond_d

    .line 348
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectMapNum:B

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 351
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectNpcNum:B

    .line 352
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectNpcNum:B

    if-gez v7, :cond_5

    .line 353
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-byte v8, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectNpcNum:B

    .line 355
    :cond_5
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectNpcNum:B

    const/4 v9, 0x4

    filled-new-array {v7, v9}, [I

    move-result-object v7

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, v8, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectNpc:[[S

    .line 356
    const/4 v3, 0x0

    :goto_7
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectNpc:[[S

    array-length v7, v7

    if-lt v3, v7, :cond_f

    .line 363
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_affectNpcNum:B

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x7

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 281
    :cond_6
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_closer:[[S

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-short v9, v7, v8

    .line 283
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_8
    if-lt v4, v14, :cond_7

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 284
    :cond_7
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_closer:[[S

    aget-object v7, v7, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v4

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 309
    .end local v4    # "k":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_9
    if-lt v4, v12, :cond_9

    .line 313
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openList:[[S

    aget-object v7, v7, v3

    const/4 v8, 0x2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-short v9, v7, v8

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 310
    :cond_9
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openList:[[S

    aget-object v7, v7, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v4

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 323
    .end local v4    # "k":I
    :cond_a
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openJudge:[[S

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-short v9, v7, v8

    .line 325
    const/4 v4, 0x1

    .restart local v4    # "k":I
    :goto_a
    if-lt v4, v11, :cond_b

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 326
    :cond_b
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_openJudge:[[S

    aget-object v7, v7, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v4

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 333
    .end local v4    # "k":I
    :cond_c
    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 367
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "missionNum":S
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 369
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "missionNum":S
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_b
    if-lt v4, v12, :cond_e

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 344
    :cond_e
    :try_start_1
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    aget-object v7, v7, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v4

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 357
    .end local v4    # "k":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "k":I
    :goto_c
    if-lt v4, v11, :cond_10

    .line 360
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectNpc:[[S

    aget-object v7, v7, v3

    const/4 v8, 0x3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-short v9, v7, v8

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 358
    :cond_10
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectNpc:[[S

    aget-object v7, v7, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method private loadMissonHint()V
    .locals 8

    .prologue
    .line 375
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "/bin/missionHint.bin"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 378
    .local v4, "len":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 379
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v5, 0x3

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    iput-object v5, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionHint:[[S

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionHint:[[S

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 386
    const/4 v0, 0x0

    .line 391
    .end local v2    # "i":I
    .end local v4    # "len":I
    :goto_1
    return-void

    .line 381
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionHint:[[S

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionHint:[[S

    aget-object v5, v5, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 387
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 389
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadMonster()V
    .locals 6

    .prologue
    .line 395
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/bin/monster.bin"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 398
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 400
    .local v2, "monsrtCount":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    sput-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    .line 401
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, v2

    new-array v3, v3, [B

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    .line 403
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    array-length v5, v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 404
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    const/4 v0, 0x0

    .line 410
    .end local v2    # "monsrtCount":I
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 408
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadSkBook()V
    .locals 8

    .prologue
    .line 433
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "/bin/skBook.bin"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 435
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    new-array v5, v5, [[[S

    sput-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    .line 436
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    array-length v5, v5

    const/4 v6, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    sput-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBOINFO:[[B

    .line 437
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 438
    .local v4, "oneSize":S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 452
    const/4 v0, 0x0

    .line 457
    .end local v2    # "i":I
    .end local v4    # "oneSize":S
    :goto_1
    return-void

    .line 439
    .restart local v2    # "i":I
    .restart local v4    # "oneSize":S
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBOINFO:[[B

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 442
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    const/4 v7, 0x4

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    aput-object v5, v6, v2

    .line 443
    const/4 v3, 0x0

    :goto_3
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v3, v5, :cond_2

    .line 449
    add-int/lit8 v5, v4, -0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v6, v6, v2

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_1
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBOINFO:[[B

    aget-object v5, v5, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v5, v3

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 444
    :cond_2
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    aput-short v7, v5, v6

    .line 445
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    aput-short v7, v5, v6

    .line 446
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    aput-short v7, v5, v6

    .line 447
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SBUSEINFO:[[[S

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    aput-short v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 453
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "oneSize":S
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadSkill()V
    .locals 8

    .prologue
    .line 530
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "/bin/skill.bin"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 533
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 534
    .local v5, "total":I
    new-array v6, v5, [Lcom/jarworld/rpg/sanguocollege/Skill;

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    .line 536
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 537
    .local v4, "size":I
    new-array v0, v4, [B

    .line 538
    .local v0, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 545
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 546
    const/4 v1, 0x0

    .line 551
    .end local v0    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "total":I
    :goto_1
    return-void

    .line 540
    .restart local v0    # "data":[B
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "total":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 541
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    new-instance v7, Lcom/jarworld/rpg/sanguocollege/Skill;

    invoke-direct {v7}, Lcom/jarworld/rpg/sanguocollege/Skill;-><init>()V

    aput-object v7, v6, v3

    .line 542
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    aget-object v6, v6, v3

    int-to-short v7, v3

    iput-short v7, v6, Lcom/jarworld/rpg/sanguocollege/Skill;->m_s_ID:S

    .line 543
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    aget-object v6, v6, v3

    invoke-direct {p0, v0, v6}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->initSkill([BLcom/jarworld/rpg/sanguocollege/Skill;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    .end local v0    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "total":I
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 549
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadSkillGroup()V
    .locals 8

    .prologue
    .line 480
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "/bin/skillGroup.bin"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 483
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 484
    .local v5, "total":I
    new-array v6, v5, [Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    .line 486
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 487
    .local v4, "size":I
    new-array v0, v4, [B

    .line 488
    .local v0, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 495
    const/4 v1, 0x0

    .line 500
    .end local v0    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "total":I
    :goto_1
    return-void

    .line 490
    .restart local v0    # "data":[B
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "total":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 491
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    new-instance v7, Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    invoke-direct {v7}, Lcom/jarworld/rpg/sanguocollege/SkillGroup;-><init>()V

    aput-object v7, v6, v3

    .line 492
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    aget-object v6, v6, v3

    invoke-direct {p0, v0, v6}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->initSkillGroup([BLcom/jarworld/rpg/sanguocollege/SkillGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "total":I
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 498
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadStr()V
    .locals 4

    .prologue
    .line 594
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/generalName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 595
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/monsterName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 596
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/skillGroupName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 597
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/skillGroupDiscription"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 598
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x4

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/eqType"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 599
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/equipmentName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 600
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x6

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/equipmentDiscription"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 601
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v1, 0x7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/tip"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 602
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x8

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/dialogName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 603
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x9

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/properties"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 604
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xa

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/state"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 605
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xb

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/switch"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 606
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xc

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/missionTitle"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 607
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xd

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/pageMenu"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 608
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xe

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/systemMenu"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 609
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0xf

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/mao"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 610
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/about"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 611
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x11

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/help"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 612
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x12

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/lHelp"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 613
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x13

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/over"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 614
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x14

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/missionDiscription"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 615
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x15

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/mapName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 616
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x16

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/advanceName"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 617
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x17

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/advanceDiscription"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 618
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x18

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/sundry"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 619
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x19

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    const-string v3, "/bin/sMStore"

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 620
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 621
    return-void
.end method

.method private loadSuit()V
    .locals 6

    .prologue
    .line 461
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "/bin/suit.bin"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 463
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const/4 v5, 0x3

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SUITINFO:[[S

    .line 464
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SUITINFO:[[S

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 471
    const/4 v0, 0x0

    .line 476
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 466
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SUITINFO:[[S

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SUITINFO:[[S

    aget-object v4, v4, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 472
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 474
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private pointerHod()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v3

    aget-short v1, v1, v3

    if-eq v0, v1, :cond_1

    .line 822
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->teachSwitch()V

    .line 823
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    if-eqz v0, :cond_2

    .line 827
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->onPointerPressed(II)V

    .line 828
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    goto :goto_0

    .line 829
    :cond_2
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerDragged:Z

    if-eqz v0, :cond_3

    .line 830
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->onPointerDragged(II)V

    .line 831
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerDragged:Z

    goto :goto_0

    .line 832
    :cond_3
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerReleased:Z

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->onPointerReleased(II)V

    .line 834
    iput-boolean v3, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerReleased:Z

    goto :goto_0
.end method


# virtual methods
.method public exitApp()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->exit:Z

    .line 676
    return-void
.end method

.method protected hideNotify()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->stopFlip()V

    .line 649
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->stopGamePlayerArray()V

    .line 650
    return-void
.end method

.method public initScrInfo()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->getWidth()I

    move-result v0

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    .line 145
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->getHeight()I

    move-result v0

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    .line 146
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x198

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xf

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->BF_X:S

    .line 147
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xfa

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x19

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->BF_Y:S

    .line 148
    return-void
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 751
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyPressedCode:I

    .line 752
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->curKeyReleaseCode:I

    .line 762
    return-void
.end method

.method public loadGAInfo()V
    .locals 5

    .prologue
    .line 172
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/bin/gA.bin"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 175
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 176
    const/16 v3, 0x18

    new-array v3, v3, [S

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 181
    const/4 v0, 0x0

    .line 186
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 178
    .restart local v2    # "i":I
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    aput-short v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadInlayInfo()V
    .locals 6

    .prologue
    .line 230
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "/bin/insert.bin"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    div-int/lit8 v5, v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->INLAYINFO:[[S

    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->INLAYINFO:[[S

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 239
    const/4 v0, 0x0

    .line 244
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 234
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->INLAYINFO:[[S

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->INLAYINFO:[[S

    aget-object v4, v4, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 240
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadLvlUpInfo()V
    .locals 6

    .prologue
    .line 211
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "/bin/LvlUp.bin"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const/16 v5, 0x8

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    .line 214
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 215
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 221
    const/4 v0, 0x0

    .line 226
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 216
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    aget-object v4, v4, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 222
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadNFInfo()V
    .locals 7

    .prologue
    .line 152
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "/bin/nF.bin"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const/4 v5, 0x6

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    .line 155
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    array-length v4, v4

    const/16 v5, 0x8

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    .line 156
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 163
    const/4 v0, 0x0

    .line 168
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 158
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v4, v4, v2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    aget-object v5, v5, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    aput-byte v6, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    .end local v2    # "i":I
    .end local v3    # "j":I
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadStoreInfo()V
    .locals 7

    .prologue
    .line 190
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "/bin/shop.bin"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    new-array v5, v5, [[S

    sput-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    .line 193
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 194
    .local v4, "oneSize":S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 202
    const/4 v0, 0x0

    .line 207
    .end local v2    # "i":I
    .end local v4    # "oneSize":S
    :goto_1
    return-void

    .line 195
    .restart local v2    # "i":I
    .restart local v4    # "oneSize":S
    :cond_0
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    new-array v6, v6, [S

    aput-object v6, v5, v2

    .line 196
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    aget-object v5, v5, v2

    array-length v5, v5

    if-lt v3, v5, :cond_1

    .line 199
    add-int/lit8 v5, v4, -0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    aget-object v6, v6, v2

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    aget-object v5, v5, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    aput-short v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 203
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "oneSize":S
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 918
    sput-object p1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 920
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->show()V

    .line 922
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v2

    aget-short v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 923
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->content:[[Ljava/util/Vector;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawTipWith2D([Ljava/util/Vector;)V

    .line 930
    :cond_0
    # 添加性能优化
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 931
    return-void
.end method

.method protected pointerDragged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 800
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    .line 801
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    .line 802
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerDragged:Z

    .line 803
    return-void

    .line 802
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    .line 794
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    .line 796
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    .line 797
    return-void

    .line 796
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pointerReleased(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 806
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointx:I

    .line 807
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointy:I

    .line 809
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerReleased:Z

    .line 811
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->isPointerPressed:Z

    .line 813
    sput-boolean v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    .line 815
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDragged:[Z

    aput-boolean v1, v0, v1

    .line 816
    return-void

    :cond_0
    move v0, v1

    .line 809
    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x28

    .line 934
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 937
    .local v0, "currentThread":Ljava/lang/Thread;
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->animationThread:Ljava/lang/Thread;

    if-eq v0, v5, :cond_0

    .line 952
    :goto_1
    return-void

    .line 938
    :cond_0
    sget-wide v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->totalTime:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sput-wide v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->totalTime:J

    .line 939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 940
    .local v1, "startTime":J
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->show()V

    .line 941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 943
    .local v3, "timeTaken":J
    cmp-long v5, v3, v9

    if-gez v5, :cond_1

    .line 944
    sub-long v5, v9, v3

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 949
    .end local v1    # "startTime":J
    .end local v3    # "timeTaken":J
    :catch_0
    move-exception v5

    goto :goto_1

    .line 946
    .restart local v1    # "startTime":J
    .restart local v3    # "timeTaken":J
    :cond_1
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    sput-boolean v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isRepaint:Z

    .line 688
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    if-eqz v0, :cond_4

    .line 690
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->delayWork()V

    .line 692
    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    .line 702
    :goto_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->control()V

    .line 708
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isRepaint:Z

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->repaint()V

    .line 712
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->serviceRepaints()V

    .line 714
    sput-boolean v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    .line 717
    :cond_2
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->exit:Z

    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->stopFlip()V

    .line 719
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->notifyDestroyed()V

    .line 722
    :cond_3
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    .line 723
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 724
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    goto :goto_0

    .line 693
    :cond_4
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isLastWork:Z

    if-eqz v0, :cond_5

    .line 695
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->lastWork()V

    goto :goto_1

    .line 698
    :cond_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->keyHod()V

    .line 699
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->pointerHod()V

    goto :goto_1
.end method

.method protected showNotify()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 633
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->startFlip()V

    .line 635
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->music:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingPlayerID:I

    if-ltz v0, :cond_0

    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingLoop:I

    if-ne v0, v2, :cond_0

    .line 636
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingPlayerID:I

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->playGamePlayerArray(II)V

    .line 638
    :cond_0
    return-void
.end method

.method public startFlip()V
    .locals 4

    .prologue
    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->gameDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->startTime:J

    .line 657
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->animationThread:Ljava/lang/Thread;

    .line 658
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 659
    return-void
.end method

.method public stopFlip()V
    .locals 4

    .prologue
    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->gameDuration:J

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->animationThread:Ljava/lang/Thread;

    .line 667
    return-void
.end method
