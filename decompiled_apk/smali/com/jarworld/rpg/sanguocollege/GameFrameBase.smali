.class abstract Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
.super Ljava/lang/Object;
.source "GameFrameBase.java"


# static fields
.field static final PIXUI_ABOUT:I = 0x10

.field static final PIXUI_ADVDIS:I = 0x17

.field static final PIXUI_ADVNAME:I = 0x16

.field static final PIXUI_DLGNAME:I = 0x8

.field static final PIXUI_ELEMENT:I = 0x9

.field static final PIXUI_FSTATE:I = 0xa

.field static final PIXUI_HELP:I = 0x11

.field static final PIXUI_ITEMINTRO:I = 0x6

.field static final PIXUI_ITEMNAME:I = 0x5

.field static final PIXUI_ITEMTYPE:I = 0x4

.field static final PIXUI_LANAME:I = 0x0

.field static final PIXUI_LHELP:I = 0x12

.field static final PIXUI_MAO:I = 0xf

.field static final PIXUI_MAPNAME:I = 0x15

.field static final PIXUI_MISSIONDIS:I = 0x14

.field static final PIXUI_MISSIONTLE:I = 0xc

.field static final PIXUI_MOSNAME:I = 0x1

.field static final PIXUI_OVER:I = 0x13

.field static final PIXUI_PAGEMENU:I = 0xd

.field static final PIXUI_SKILLINTRO:I = 0x3

.field static final PIXUI_SKILLNAME:I = 0x2

.field static final PIXUI_SMSTORE:I = 0x19

.field static final PIXUI_SUNDRY:I = 0x18

.field static final PIXUI_SWMISSION:I = 0xb

.field static final PIXUI_SYSTEMMENU:I = 0xe

.field static final PIXUI_TIP:I = 0x7

.field static RECORD_LEVEL:[B = null

.field static RECORD_MONEY:[I = null

.field static RECORD_NPCFLOORID:[S = null

.field static RECORD_SPX:[[S = null

.field static RECORD_TIME:[J = null

.field static final RECORD_TOTAL:B = 0x3t

.field static final SCN_FIGHT:B = 0x2t

.field static final SCN_PAGE:B = 0x1t

.field static final SCN_SCENE:B = 0x0t

.field static final SCN_SWITCH:B = 0x3t

.field static btId:[I

.field static button:[[[[[Z

.field static curItem:Lcom/jarworld/rpg/sanguocollege/Item;

.field static curMusicIndex:B

.field static currentPlayingLoop:I

.field static currentPlayingPlayerID:I

.field static delayIX:I

.field static delayIY:I

.field static draggedX:I

.field static draggedY:I

.field static dummy:Z

.field public static expMtp:I

.field static fightRoleCount:I

.field static gamePlayerArray:[Ljavax/microedition/media/Player;

.field static inlaedItem:Lcom/jarworld/rpg/sanguocollege/Item;

.field static inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

.field static isCanKP:Z

.field static isDelayWork:Z

.field static isDragged:[Z

.field static isLastWork:Z

.field static isRepaint:Z

.field static lWInfo:[I

.field static music:Z

.field public static musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

.field public static musicsVolume:B

.field static parter:[S

.field public static sMStoreMenu:[I

.field static s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

.field static s_byt_bStotalNum:B

.field static s_byt_recordIndex:B

.field static s_enu_pocket:Ljava/util/Enumeration;

.field static s_gph:Ljavax/microedition/lcdui/Graphics;

.field static s_i_bStotalCost:I

.field static s_i_ui:[[Ljava/util/Vector;

.field static s_img_cg:[Ljavax/microedition/lcdui/Image;

.field static s_img_com:[Ljavax/microedition/lcdui/Image;

.field static s_img_fight:[Ljavax/microedition/lcdui/Image;

.field static final OPTIMIZATION_MODE:I = 0x1

.field static final PERFORMANCE_BOOST:Z = 0x1

.field static final MEMORY_SAVING:Z = 0x1

.field static s_img_load:[Ljavax/microedition/lcdui/Image;

.field static s_img_logo:[Ljavax/microedition/lcdui/Image;

.field static s_img_page:[Ljavax/microedition/lcdui/Image;

.field static s_s_controlID:S

.field static s_vec_curPocket:Ljava/util/Vector;

.field static s_vec_pocket:Ljava/util/Vector;

.field static selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

.field static selfRoleCount:I

.field static tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

.field static totalTime:J


# instance fields
.field attChg:[I

.field public bugPos:[[I

.field dlgARGB:[I

.field fState:B

.field hpMpChg:[[[I

.field itTpIdx:B

.field public leafPos:[[I

.field mId_x:S

.field mId_y:S

.field mSId:I

.field m_byt_bGResType:B

.field m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

.field m_i_FrameTimer:I

.field m_i_SECount:I

.field m_i_bFC:[I

.field m_i_bHTimer:I

.field m_i_bgActIdx:I

.field m_i_bgFrameIdx:I

.field m_i_tipIdx:I

.field m_s_bGResIdx:S

.field m_s_holdTime:S

.field moveOffset:[B

.field pFS_f:B

.field pFS_s1:B

.field pFS_s2:B

.field public pSColor:[I

.field public pSPos:[[I

.field sType:B

.field public shineFrame:I

.field skCanUse:[S

.field teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

.field public windPos:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 139
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v1, 0xf

    aget-short v0, v0, v1

    new-array v0, v0, [Ljavax/microedition/media/Player;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->gamePlayerArray:[Ljavax/microedition/media/Player;

    .line 141
    const/4 v0, -0x1

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingPlayerID:I

    .line 151
    new-array v0, v2, [B

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    .line 153
    new-array v0, v2, [J

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    .line 155
    new-array v0, v2, [S

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_NPCFLOORID:[S

    .line 157
    new-array v0, v2, [I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_MONEY:[I

    .line 163
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v5

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    .line 171
    sput-boolean v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->lWInfo:[I

    .line 197
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    .line 203
    new-array v0, v3, [Z

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDragged:[Z

    .line 221
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    .line 234
    new-array v0, v3, [Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 244
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/4 v1, 0x5

    aget-short v0, v0, v1

    new-array v0, v0, [Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .line 246
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v0, v0, v5

    new-array v0, v0, [S

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    .line 1098
    sput v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->expMtp:I

    .line 4288
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    .line 4289
    const/16 v0, 0xa

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musicsVolume:B

    .line 29
    return-void

    .line 197
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->moveOffset:[B

    .line 255
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/Dialog;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/Dialog;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    .line 276
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    .line 298
    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_SECount:I

    .line 301
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/Teacher;

    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;-><init>()V

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->teacher:Lcom/jarworld/rpg/sanguocollege/Teacher;

    .line 306
    return-void
.end method

.method public static checkItem(Lcom/jarworld/rpg/sanguocollege/Item;)Z
    .locals 2
    .param p0, "item"    # Lcom/jarworld/rpg/sanguocollege/Item;

    .prologue
    const/4 v1, 0x0

    .line 784
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 785
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 793
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 786
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 787
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    if-ne p0, v0, :cond_0

    .line 788
    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 789
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private drawDlgHead(SIII)V
    .locals 9
    .param p1, "side"    # S
    .param p2, "headWidth"    # I
    .param p3, "headHeight"    # I
    .param p4, "fId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 3159
    packed-switch p1, :pswitch_data_0

    .line 3179
    :goto_0
    return-void

    .line 3161
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 3163
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, p4

    aget-byte v3, v3, v5

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 3164
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    .line 3165
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v4, v4, v5

    aget-short v4, v4, v7

    move v5, v1

    move v6, v1

    .line 3161
    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    goto :goto_0

    .line 3170
    :pswitch_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    .line 3171
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    .line 3172
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v4, v4, p4

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1c

    sub-int/2addr v0, v4

    sub-int v4, v0, p3

    .line 3173
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v5, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    .line 3174
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v6

    aget-short v6, v0, v7

    .line 3176
    const/4 v8, 0x1

    move v7, v1

    .line 3170
    invoke-virtual/range {v2 .. v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    goto :goto_0

    .line 3159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawDlgName(SIII)V
    .locals 12
    .param p1, "side"    # S
    .param p2, "baseX"    # I
    .param p3, "baseY"    # I
    .param p4, "fId"    # I

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-short v0, v0, v1

    if-nez v0, :cond_0

    .line 3203
    :goto_0
    return-void

    .line 3193
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 3194
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 3195
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11e

    const/16 v5, 0x2b

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v7, 0x0

    :goto_2
    add-int/2addr v7, p2

    const/4 v9, 0x0

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 3196
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-short v2, v2, v3

    aget-object v1, v1, v2

    .line 3197
    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_3
    add-int v3, p2, v2

    if-nez p1, :cond_4

    const/16 v2, 0xc6

    :goto_4
    add-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x15

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move/from16 v4, p4

    .line 3196
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto :goto_0

    .line 3195
    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v7, v7, -0x11e

    goto :goto_2

    .line 3197
    :cond_3
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0x11e

    goto :goto_3

    :cond_4
    const/16 v2, 0x58

    goto :goto_4

    .line 3199
    :cond_5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    const/16 v4, 0xcb

    const/16 v5, 0x2b

    const/16 v6, 0x53

    const/4 v7, 0x0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3200
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-short v2, v2, v3

    aget-object v1, v1, v2

    .line 3201
    add-int/lit8 v2, p2, 0x75

    add-int/lit8 v3, p3, 0x15

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move/from16 v4, p4

    .line 3200
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0
.end method

.method private drawDlgStr(II)V
    .locals 14
    .param p1, "showCont"    # I
    .param p2, "fId"    # I

    .prologue
    .line 3211
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 3212
    const/16 v4, 0x20

    .line 3213
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p2

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p2

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xe

    sub-int/2addr v5, v6

    .line 3214
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const v10, 0xffc501

    const/4 v11, 0x0

    const/4 v13, 0x1

    move/from16 v6, p2

    move v12, p1

    .line 3211
    invoke-virtual/range {v0 .. v13}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStrs([Ljava/util/Vector;IIIIIIIII[IIZ)V

    .line 3215
    return-void
.end method

.method private drawEqNotch(IILcom/jarworld/rpg/sanguocollege/LeadingActor;IZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "role"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;
    .param p4, "idx"    # I
    .param p5, "isShowPop"    # Z

    .prologue
    .line 2038
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    const/16 v5, 0xa6

    const/16 v6, 0x94

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2040
    add-int/lit8 v1, p1, 0x23

    add-int/lit8 v2, p2, 0xd

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawheadImg(IILcom/jarworld/rpg/sanguocollege/GameCharacter;I)V

    .line 2042
    add-int/lit8 v2, p1, 0x54

    add-int/lit16 v3, p2, 0x82

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0x1c4071

    const v8, 0xffffff

    move-object v1, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2044
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v12, v1, :cond_1

    .line 2059
    if-eqz p5, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    .line 2060
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->curEqPos:[I

    aget v2, v2, p4

    aget-object v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2061
    add-int/lit8 v6, p1, -0x64

    .line 2062
    add-int/lit8 v7, p2, -0x2d

    .line 2063
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v1, p0

    .line 2060
    invoke-virtual/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawPop(Ljava/lang/Object;IIIIIIIII)V

    .line 2065
    :cond_0
    return-void

    .line 2045
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x20

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int/lit8 v2, v12, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x20

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int/lit8 v2, v12, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 2046
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v3, v3, v12

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x5

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v4, v4, v12

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x7

    const/16 v5, 0x2b

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2048
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v1, v1, v12

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    if-ge v12, v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v1, v1, v12

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v2, v2, v12

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x5

    if-ne v12, v1, :cond_6

    .line 2049
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    .line 2050
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v3, v3, v12

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v4, v4, v12

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v4, p2

    .line 2051
    const/16 v5, 0x21

    const/16 v6, 0x1e

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v7, v7, v12

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    mul-int/lit8 v7, v7, 0x21

    const/4 v8, 0x0

    .line 2049
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2044
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2053
    :cond_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    .line 2054
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v3, v3, v12

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->EqOffset:[[I

    aget-object v4, v4, v12

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    .line 2055
    const/16 v5, 0x1f

    const/16 v6, 0x1c

    mul-int/lit8 v7, v12, 0x1f

    const/4 v8, 0x0

    .line 2053
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1
.end method

.method private drawOGForAdv(III[[Z[SI)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mSId"    # I
    .param p4, "button"    # [[Z
    .param p5, "advInfo"    # [S
    .param p6, "fId"    # I

    .prologue
    .line 1857
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    if-lt v14, v1, :cond_0

    .line 1877
    return-void

    .line 1858
    :cond_0
    add-int v1, v14, p3

    move-object/from16 v0, p5

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1860
    add-int v1, p3, v14

    aget-object v1, p4, v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 1861
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xf6ff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, -0x2

    .line 1862
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    .line 1863
    const/16 v5, 0x9c

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1861
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1864
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xffffff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 1865
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    .line 1866
    const/16 v5, 0x9a

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x6

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1864
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1868
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v5, v5, p1

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v6, v6, p2

    add-int/lit8 v6, v6, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0x8

    mul-int/2addr v7, v14

    add-int/2addr v6, v7

    .line 1869
    const/16 v7, 0x98

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, 0x4

    const v9, 0x633e21

    const v10, 0x855d43

    const v11, 0xbf9c76

    const v12, 0x7a582b

    const v13, 0xd4b386

    .line 1868
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 1871
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    add-int v3, v14, p3

    aget-short v3, p5, v3

    aget-object v2, v2, v3

    .line 1872
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x4c

    .line 1873
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    .line 1874
    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    add-int v5, v14, p3

    if-nez v5, :cond_3

    const v9, 0xff0005

    :goto_1
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    move/from16 v5, p6

    .line 1871
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1857
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1874
    :cond_3
    const v9, 0x7b3c10

    goto :goto_1
.end method

.method private drawOGForIM(IIII[[ZLjava/util/Vector;I)V
    .locals 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mId_y"    # I
    .param p4, "mSId"    # I
    .param p5, "button"    # [[Z
    .param p6, "itemVector"    # Ljava/util/Vector;
    .param p7, "fId"    # I

    .prologue
    .line 1812
    const/4 v3, 0x0

    .line 1813
    .local v3, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_1

    .line 1838
    const/4 v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 1839
    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    check-cast v3, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1840
    .restart local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 1841
    add-int/lit8 v2, p1, -0xa

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    sub-int/2addr v2, v5

    if-gez v2, :cond_12

    const/4 v7, 0x0

    .line 1842
    :goto_1
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x2

    aget-byte v5, v5, v8

    sub-int/2addr v2, v5

    add-int/lit16 v2, v2, -0xfc

    div-int/lit8 v8, v2, 0x2

    .line 1843
    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object/from16 v2, p0

    move/from16 v5, p7

    .line 1840
    invoke-virtual/range {v2 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawPop(Ljava/lang/Object;IIIIIIIII)V

    .line 1845
    :cond_0
    return-void

    .line 1814
    :cond_1
    add-int v2, v21, p4

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 1815
    add-int v2, p4, v21

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1817
    .end local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .local v22, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    add-int v2, p4, v21

    aget-object v2, p5, v2

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-nez v2, :cond_2

    add-int v2, p4, v21

    aget-object v2, p5, v2

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    .line 1818
    :cond_2
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0xf6ff

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v4, v4, p1

    add-int/lit8 v4, v4, 0x26

    .line 1819
    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v5, v5, p2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    rsub-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, -0xc

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x20

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xc

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int v6, v6, v21

    add-int/2addr v5, v6

    .line 1820
    const/16 v6, 0x6e

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xa

    const/16 v8, 0x8

    const/16 v9, 0x8

    .line 1818
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1821
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0xffffff

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v4, v4, p1

    add-int/lit8 v4, v4, 0x27

    .line 1822
    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v5, v5, p2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    rsub-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, -0xc

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x20

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xc

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int v6, v6, v21

    add-int/2addr v5, v6

    .line 1823
    const/16 v6, 0x6c

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    .line 1821
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1825
    :cond_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v6, v6, p1

    add-int/lit8 v6, v6, 0x28

    .line 1826
    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v7, v7, p2

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    rsub-int/lit8 v8, v8, 0x20

    add-int/lit8 v8, v8, -0xc

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    const/16 v8, 0x20

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, 0xc

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int v8, v8, v21

    add-int/2addr v7, v8

    .line 1827
    const/16 v8, 0x6a

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, 0x6

    const v10, 0x633e21

    const v11, 0x855d43

    const v12, 0xbf9c76

    const v13, 0x7a582b

    const v14, 0xd4b386

    .line 1825
    invoke-static/range {v2 .. v14}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 1829
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v5, p1, v4

    add-int v4, p4, v21

    aget-object v4, p5, v4

    const/4 v6, 0x0

    aget-boolean v4, v4, v6

    if-nez v4, :cond_4

    add-int v4, p4, v21

    aget-object v4, p5, v4

    const/4 v6, 0x1

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_b

    :cond_4
    const/4 v4, -0x5

    :goto_2
    add-int v3, v5, v4

    .line 1830
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v5, p2, v4

    const/16 v4, 0x20

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0xc

    if-lt v4, v6, :cond_c

    const/4 v4, 0x1

    :goto_3
    add-int/2addr v5, v4

    add-int v4, p4, v21

    aget-object v4, p5, v4

    const/4 v6, 0x0

    aget-boolean v4, v4, v6

    if-nez v4, :cond_5

    add-int v4, p4, v21

    aget-object v4, p5, v4

    const/4 v6, 0x1

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_d

    :cond_5
    const/4 v4, -0x7

    :goto_4
    add-int/2addr v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0xc

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v21

    add-int/2addr v4, v5

    .line 1832
    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_6

    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_e

    :cond_6
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x4

    aget-object v6, v5, v6

    :goto_5
    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v7, 0x0

    aget-boolean v5, v5, v7

    if-nez v5, :cond_7

    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v7, 0x1

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_f

    :cond_7
    const/16 v7, 0x2b

    :goto_6
    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v8, 0x0

    aget-boolean v5, v5, v8

    if-nez v5, :cond_8

    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/4 v8, 0x1

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_10

    :cond_8
    const/16 v8, 0x2c

    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1833
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v11, 0xa

    aget-object v11, v5, v11

    const/16 v12, 0x21

    const/16 v13, 0x1e

    move-object/from16 v0, v22

    iget-byte v5, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    mul-int/lit8 v14, v5, 0x21

    const/4 v15, 0x0

    .line 1834
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v16, 0x5

    aget-object v5, v5, v16

    move-object/from16 v0, v22

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    move/from16 v16, v0

    aget-object v16, v5, v16

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p7

    const/16 v17, 0x1

    aget-byte v17, v5, v17

    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/16 v18, 0x0

    aget-boolean v5, v5, v18

    if-nez v5, :cond_9

    add-int v5, p4, v21

    aget-object v5, p5, v5

    const/16 v18, 0x1

    aget-boolean v5, v5, v18

    if-eqz v5, :cond_11

    :cond_9
    const/16 v18, 0x36

    :goto_8
    const/16 v19, 0x2

    const v20, 0x7b3c10

    move/from16 v5, p7

    .line 1829
    invoke-static/range {v2 .. v20}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawIconWithStr(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;IIIILjavax/microedition/lcdui/Image;IIIILjava/util/Vector;BIII)V

    move-object/from16 v3, v22

    .line 1813
    .end local v22    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 1829
    .end local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v22    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1830
    :cond_c
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const/4 v6, 0x2

    aget-byte v4, v4, v6

    add-int/lit8 v4, v4, -0x12

    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1832
    :cond_e
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x20

    aget-object v6, v5, v6

    goto/16 :goto_5

    :cond_f
    const/16 v7, 0x21

    goto/16 :goto_6

    :cond_10
    const/16 v8, 0x1e

    goto :goto_7

    .line 1834
    :cond_11
    const/16 v18, 0x3b

    goto :goto_8

    .line 1841
    .end local v22    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v3    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_12
    add-int/lit8 v2, p1, -0xa

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    sub-int v7, v2, v5

    goto/16 :goto_1
.end method

.method private drawOGForMS(III[[ZI)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mSId"    # I
    .param p4, "button"    # [[Z
    .param p5, "fId"    # I

    .prologue
    .line 1697
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    sget v0, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    if-lt v13, v0, :cond_0

    .line 1724
    return-void

    .line 1698
    :cond_0
    add-int v0, v13, p3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1700
    add-int v0, p3, v13

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    add-int v0, p3, v13

    aget-object v0, p4, v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 1701
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xf6ff

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v2, v2, p1

    add-int/lit8 v2, v2, -0x2

    .line 1702
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 1703
    const/16 v4, 0x9e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xe

    const/16 v6, 0x8

    const/16 v7, 0x8

    .line 1701
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1704
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 1705
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, 0x5

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 1706
    const/16 v4, 0x9c

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x8

    .line 1704
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1708
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 1709
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v4, v4, p1

    .line 1710
    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v5, v5, p2

    add-int/lit8 v5, v5, 0x6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x16

    mul-int/2addr v6, v13

    add-int/2addr v5, v6

    .line 1711
    const/16 v6, 0x9a

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0xa

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xad8c6b

    const v11, 0x7a582b

    const v12, 0xad8c6b

    .line 1708
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 1713
    sget v0, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v0, v0, p1

    add-int/lit8 v0, v0, 0xb

    .line 1714
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v1, v1, p2

    add-int/lit8 v1, v1, 0xb

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x16

    mul-int/2addr v2, v13

    add-int/2addr v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    add-int v3, v13, p3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 1715
    const/16 v2, 0x84

    .line 1716
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, p5

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    .line 1717
    add-int v4, v13, p3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffed2

    .line 1718
    const/4 v5, 0x4

    new-array v10, v5, [I

    const/4 v5, 0x0

    sget v11, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v11, v11, p1

    add-int/lit8 v11, v11, 0xb

    aput v11, v10, v5

    const/4 v5, 0x1

    .line 1719
    sget v11, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, 0xb

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v14, 0x1

    aget-object v12, v12, v14

    const/4 v14, 0x2

    aget-byte v12, v12, v14

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x16

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v5

    const/4 v5, 0x2

    .line 1720
    const/16 v11, 0x84

    aput v11, v10, v5

    const/4 v5, 0x3

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v11, v11, p5

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    mul-int/lit8 v11, v11, 0x2

    aput v11, v10, v5

    .line 1721
    const/4 v11, -0x1

    const/4 v12, 0x1

    move/from16 v5, p5

    .line 1713
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 1697
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method private drawOGForTask(III[[Z[SI)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mSId"    # I
    .param p4, "button"    # [[Z
    .param p5, "misArray"    # [S
    .param p6, "fId"    # I

    .prologue
    .line 1736
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    if-lt v14, v1, :cond_0

    .line 1754
    return-void

    .line 1737
    :cond_0
    add-int v1, v14, p3

    move-object/from16 v0, p5

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1739
    add-int v1, p3, v14

    aget-object v1, p4, v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    add-int v1, p3, v14

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 1740
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xf6ff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, -0x2

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    .line 1741
    const/16 v5, 0x104

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0xa

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1740
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1742
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xffffff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    .line 1743
    const/16 v5, 0x102

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1742
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1745
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v5, v5, p1

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v6, v6, p2

    add-int/lit8 v6, v6, 0x3

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p6

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xc

    mul-int/2addr v7, v14

    add-int/2addr v6, v7

    .line 1746
    const/16 v7, 0x100

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, 0x6

    const v9, 0x633e21

    const v10, 0x855d43

    const v11, 0xbf9c76

    const v12, 0x7a582b

    const v13, 0xd4b386

    .line 1745
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 1748
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    add-int v3, p3, v14

    aget-short v3, p5, v3

    aget-object v2, v2, v3

    .line 1749
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit16 v3, v3, 0x80

    .line 1750
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x3

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    mul-int/2addr v5, v14

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    .line 1751
    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0x7b3c10

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    move/from16 v5, p6

    .line 1748
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1736
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method

.method private drawPopFrame(Ljava/lang/Object;IIIIIIII)[I
    .locals 14
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "mode"    # I
    .param p3, "fId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "mX"    # I
    .param p7, "mY"    # I
    .param p8, "mW"    # I
    .param p9, "mH"    # I

    .prologue
    .line 1263
    const/4 v12, 0x3

    .line 1264
    .local v12, "len":I
    instance-of v1, p1, Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_0

    move-object v11, p1

    .line 1266
    check-cast v11, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1267
    .local v11, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    iget-byte v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v1, :pswitch_data_0

    .line 1299
    .end local v11    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_0
    :goto_0
    :pswitch_0
    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    .line 1301
    .local v4, "width":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, p3

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    mul-int/2addr v1, v12

    add-int/lit8 v5, v1, 0x6

    .line 1303
    .local v5, "height":I
    const/4 v2, 0x0

    .local v2, "popX":I
    const/4 v3, 0x0

    .line 1304
    .local v3, "popY":I
    packed-switch p2, :pswitch_data_1

    .line 1347
    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v6, 0x65fff6

    const v7, 0xf6ff

    const v8, 0xffffff

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v13, 0x2d

    aget-object v10, v10, v13

    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 1348
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v6, 0x0

    aput v2, v1, v6

    const/4 v6, 0x1

    aput v3, v1, v6

    const/4 v6, 0x2

    aput v4, v1, v6

    const/4 v6, 0x3

    aput v5, v1, v6

    return-object v1

    .line 1272
    .end local v2    # "popX":I
    .end local v3    # "popY":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .restart local v11    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :pswitch_1
    iget v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    if-eqz v1, :cond_1

    .line 1273
    add-int/lit8 v12, v12, 0x1

    .line 1276
    :cond_1
    iget v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    if-eqz v1, :cond_2

    .line 1277
    add-int/lit8 v12, v12, 0x1

    .line 1280
    :cond_2
    iget-short v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    if-eqz v1, :cond_3

    .line 1281
    add-int/lit8 v12, v12, 0x1

    .line 1284
    :cond_3
    iget-short v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    if-eqz v1, :cond_4

    .line 1285
    add-int/lit8 v12, v12, 0x1

    .line 1288
    :cond_4
    iget-short v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    if-eqz v1, :cond_5

    .line 1289
    add-int/lit8 v12, v12, 0x1

    .line 1292
    :cond_5
    iget-short v1, v11, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    if-eqz v1, :cond_0

    .line 1293
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1308
    .end local v11    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v2    # "popX":I
    .restart local v3    # "popY":I
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    :pswitch_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GPOFFSET:[B

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    add-int v1, v1, p4

    add-int/2addr v1, v4

    add-int v6, p6, p8

    if-gt v1, v6, :cond_6

    .line 1310
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GPOFFSET:[B

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    add-int v2, p4, v1

    .line 1328
    :goto_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GPOFFSET:[B

    const/4 v6, 0x5

    aget-byte v1, v1, v6

    add-int v1, v1, p5

    add-int/2addr v1, v5

    add-int v6, p7, p9

    if-gt v1, v6, :cond_9

    .line 1330
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GPOFFSET:[B

    const/4 v6, 0x1

    aget-byte v1, v1, v6

    add-int v3, p5, v1

    goto :goto_1

    .line 1313
    :cond_6
    add-int/lit8 v1, p4, 0x5

    add-int v6, p6, p8

    sub-int/2addr v6, v4

    if-gt v1, v6, :cond_7

    .line 1315
    add-int v1, p6, p8

    sub-int v2, v1, v4

    goto :goto_2

    .line 1318
    :cond_7
    sub-int v1, p4, v4

    move/from16 v0, p6

    if-lt v1, v0, :cond_8

    .line 1320
    sub-int v2, p4, v4

    goto :goto_2

    .line 1323
    :cond_8
    move/from16 v2, p6

    goto :goto_2

    .line 1333
    :cond_9
    add-int v1, p7, p9

    sub-int v3, v1, v5

    .line 1335
    goto/16 :goto_1

    .line 1338
    :pswitch_3
    div-int/lit8 v1, v4, 0x2

    sub-int v2, p4, v1

    .line 1339
    div-int/lit8 v1, v5, 0x2

    sub-int v3, p5, v1

    .line 1340
    goto/16 :goto_1

    .line 1343
    :pswitch_4
    move/from16 v2, p4

    .line 1344
    move/from16 v3, p5

    goto/16 :goto_1

    .line 1267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1304
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getEquip(ILcom/jarworld/rpg/sanguocollege/LeadingActor;)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "role"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .prologue
    .line 834
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 835
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 837
    :cond_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-static {v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 839
    packed-switch p0, :pswitch_data_0

    .line 879
    :goto_0
    const/4 v4, 0x0

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 880
    return-void

    .line 843
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 844
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v4, :pswitch_data_1

    .line 842
    :cond_2
    :goto_1
    :pswitch_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 848
    :pswitch_1
    const/4 v2, 0x0

    .line 849
    .local v2, "isNone":Z
    const/4 v1, 0x0

    .line 850
    .local v1, "isBreak":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 862
    :cond_3
    if-nez v2, :cond_2

    .line 863
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 851
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 858
    :goto_4
    if-nez v1, :cond_3

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 852
    :cond_5
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v5, v5, v3

    if-ne v4, v5, :cond_6

    .line 853
    const/4 v2, 0x1

    .line 854
    const/4 v1, 0x1

    .line 855
    goto :goto_4

    .line 851
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 872
    .end local v0    # "i":I
    .end local v1    # "isBreak":Z
    .end local v2    # "isNone":Z
    .end local v3    # "j":I
    :cond_7
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 873
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    iget-object v5, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    aget-byte v5, v5, p0

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    iget-object v5, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v5, v5, p0

    if-eq v4, v5, :cond_8

    .line 874
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 871
    :cond_8
    :pswitch_2
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 844
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getExpendable(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 887
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 890
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 892
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 916
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 917
    return-void

    .line 893
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 894
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 897
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v0, :pswitch_data_1

    .line 904
    :goto_1
    :pswitch_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    goto :goto_0

    .line 910
    :pswitch_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 899
    :pswitch_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 897
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_4
    .end packed-switch

    .line 904
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getItem(S)V
    .locals 3
    .param p0, "itemID"    # S

    .prologue
    .line 732
    const/4 v0, 0x1

    .line 733
    .local v0, "newItem":Z
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 734
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 735
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3

    .line 745
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 746
    new-instance v1, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v1}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 747
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v1, p0}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 748
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 755
    :cond_2
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 756
    return-void

    .line 736
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 737
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    if-ne p0, v1, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 739
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    const/16 v2, 0x63

    if-ge v1, v2, :cond_1

    .line 740
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    goto :goto_0

    .line 751
    :cond_4
    new-instance v1, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v1}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 752
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v1, p0}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 753
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getMaterial()V
    .locals 2

    .prologue
    .line 921
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 924
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 926
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 934
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 935
    return-void

    .line 927
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 928
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public static getMissionItem()V
    .locals 2

    .prologue
    .line 957
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 960
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 962
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 971
    return-void

    .line 963
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 964
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 966
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static getSkBook()V
    .locals 2

    .prologue
    .line 939
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 942
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 944
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 953
    return-void

    .line 945
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 946
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 948
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static initBtLen(IIII)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "state"    # I
    .param p2, "aId"    # I
    .param p3, "len"    # I

    .prologue
    .line 585
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, p0

    aget-object v1, v0, p1

    const/4 v0, 0x2

    filled-new-array {p3, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    aput-object v0, v1, p2

    .line 586
    return-void
.end method

.method public static initButton()V
    .locals 3

    .prologue
    .line 568
    const/4 v0, 0x3

    new-array v0, v0, [[[[[Z

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    .line 569
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x0

    const/16 v2, 0x4f

    new-array v2, v2, [[[[Z

    aput-object v2, v0, v1

    .line 570
    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initSButton()V

    .line 571
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x1

    const/16 v2, 0x9

    new-array v2, v2, [[[[Z

    aput-object v2, v0, v1

    .line 572
    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initPButton()V

    .line 573
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x2

    const/16 v2, 0x17

    new-array v2, v2, [[[[Z

    aput-object v2, v0, v1

    .line 574
    invoke-static {}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initFButton()V

    .line 575
    return-void
.end method

.method private static initFButton()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 547
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v5, [[[Z

    aput-object v1, v0, v7

    .line 548
    const/4 v0, 0x7

    invoke-static {v3, v7, v4, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 550
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 551
    const/4 v0, 0x5

    invoke-static {v3, v0, v4, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 553
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 554
    const/4 v0, 0x6

    invoke-static {v3, v0, v4, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 556
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 557
    const/4 v0, 0x7

    invoke-static {v3, v0, v4, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 559
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x8

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 560
    const/16 v0, 0x8

    invoke-static {v3, v0, v4, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 562
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 563
    const/16 v0, 0xa

    invoke-static {v3, v0, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 564
    return-void
.end method

.method private static initPButton()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 523
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v3, [[[Z

    aput-object v1, v0, v3

    .line 524
    invoke-static {v3, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 526
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v3, [[[Z

    aput-object v1, v0, v5

    .line 527
    invoke-static {v3, v5, v4, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 529
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v3, [[[Z

    aput-object v1, v0, v6

    .line 530
    invoke-static {v3, v6, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 532
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v3, [[[Z

    aput-object v1, v0, v2

    .line 533
    invoke-static {v3, v2, v4, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 535
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 536
    const/4 v0, 0x5

    invoke-static {v3, v0, v4, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 538
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 539
    const/4 v0, 0x6

    invoke-static {v3, v0, v4, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 541
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [[[Z

    aput-object v2, v0, v1

    .line 542
    const/4 v0, 0x7

    invoke-static {v3, v0, v4, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 543
    return-void
.end method

.method private static initSButton()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v4, [[[Z

    aput-object v1, v0, v3

    .line 417
    const/4 v0, 0x6

    invoke-static {v3, v3, v3, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 419
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    new-array v1, v4, [[[Z

    aput-object v1, v0, v5

    .line 421
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 422
    const/16 v0, 0xa

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 424
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0xb

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 425
    const/16 v0, 0xb

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 427
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0xe

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 428
    const/16 v0, 0xe

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 430
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0xf

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 431
    const/16 v0, 0xf

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 433
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x10

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 434
    const/16 v0, 0x10

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 436
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x12

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 437
    const/16 v0, 0x12

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 439
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x15

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 440
    const/16 v0, 0x15

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 442
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x17

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 443
    const/16 v0, 0x17

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 445
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x1a

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 446
    const/16 v0, 0x1a

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 448
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x1b

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 449
    const/16 v0, 0x1b

    const/4 v1, 0x5

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 451
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x1f

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 452
    const/16 v0, 0x1f

    const/4 v1, 0x6

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 454
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x20

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 455
    const/16 v0, 0x20

    const/16 v1, 0x10

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 457
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x23

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 458
    const/16 v0, 0x23

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 460
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x24

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 461
    const/16 v0, 0x24

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 463
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x25

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 464
    const/16 v0, 0x25

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 466
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x27

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 467
    const/16 v0, 0x27

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 469
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x28

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 470
    const/16 v0, 0x28

    const/16 v1, 0xe

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 472
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x29

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 473
    const/16 v0, 0x29

    invoke-static {v3, v0, v3, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 475
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x2b

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 476
    const/16 v0, 0x2b

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 478
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x2f

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 479
    const/16 v0, 0x2f

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 481
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x32

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 482
    const/16 v0, 0x32

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 484
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x33

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 485
    const/16 v0, 0x33

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 487
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x37

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 488
    const/16 v0, 0x37

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 490
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x3e

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 491
    const/16 v0, 0x3e

    const/16 v1, 0xc

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 493
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x40

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 494
    const/16 v0, 0x40

    invoke-static {v3, v0, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 496
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x45

    new-array v2, v5, [[[Z

    aput-object v2, v0, v1

    .line 497
    const/16 v0, 0x45

    const/16 v1, 0x9

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 499
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x46

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 500
    const/16 v0, 0x46

    const/16 v1, 0x10

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 502
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x47

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 503
    const/16 v0, 0x47

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 505
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x4a

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 506
    const/16 v0, 0x4a

    const/16 v1, 0x10

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 508
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x4b

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 509
    const/16 v0, 0x4b

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 511
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x4c

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 512
    const/16 v0, 0x4c

    const/16 v1, 0xf

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 514
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x4d

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 515
    const/16 v0, 0x4d

    const/16 v1, 0x11

    invoke-static {v3, v0, v3, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 517
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v3

    const/16 v1, 0x4e

    new-array v2, v4, [[[Z

    aput-object v2, v0, v1

    .line 518
    const/16 v0, 0x4e

    invoke-static {v3, v0, v3, v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->initBtLen(IIII)V

    .line 519
    return-void
.end method

.method public static initSMStoreMenu()V
    .locals 3

    .prologue
    .line 1102
    const/4 v1, 0x1

    new-array v1, v1, [I

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    .line 1103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1106
    return-void

    .line 1104
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initSound(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 4322
    :try_start_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->gamePlayerArray:[Ljavax/microedition/media/Player;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sound/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/microedition/media/Manager;->createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v1

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4325
    :goto_0
    return-void

    .line 4323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static initStore(I)V
    .locals 4
    .param p0, "storeID"    # I

    .prologue
    .line 978
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 982
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 983
    .local v1, "vec":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    aget-object v2, v2, p0

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 988
    invoke-static {v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sortPocket(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    .line 989
    const/4 v2, 0x0

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 990
    return-void

    .line 984
    :cond_1
    new-instance v2, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v2}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    sput-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 985
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->STORESELLITEM:[[S

    aget-object v3, v3, p0

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 986
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadDialog(SLjava/lang/String;)Ljava/util/Vector;
    .locals 21
    .param p1, "dialogID"    # S
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4165
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 4167
    .local v18, "vec":Ljava/util/Vector;
    const/4 v5, 0x0

    .line 4170
    .local v5, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4171
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .local v6, "dis":Ljava/io/DataInputStream;
    const/4 v9, 0x0

    .line 4173
    .local v9, "hasFound":Z
    const/16 v16, 0x0

    .line 4175
    .local v16, "start":I
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 4177
    .local v8, "groupNum":S
    const/4 v10, 0x0

    .local v10, "i":S
    :goto_0
    if-lt v10, v8, :cond_0

    .line 4187
    :goto_1
    if-nez v9, :cond_2

    .line 4188
    const/16 v18, 0x0

    move-object v5, v6

    .line 4240
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v8    # "groupNum":S
    .end local v9    # "hasFound":Z
    .end local v10    # "i":S
    .end local v16    # "start":I
    .end local v18    # "vec":Ljava/util/Vector;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    :goto_2
    return-object v18

    .line 4178
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "groupNum":S
    .restart local v9    # "hasFound":Z
    .restart local v10    # "i":S
    .restart local v16    # "start":I
    .restart local v18    # "vec":Ljava/util/Vector;
    :cond_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 4179
    const/4 v9, 0x1

    .line 4180
    move/from16 p1, v10

    .line 4182
    add-int/lit8 v19, v8, -0x1

    sub-int v19, v19, v10

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_1

    .line 4238
    .end local v8    # "groupNum":S
    .end local v10    # "i":S
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 4239
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "hasFound":Z
    .end local v16    # "start":I
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v5, 0x0

    .line 4240
    const/16 v18, 0x0

    goto :goto_2

    .line 4177
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "groupNum":S
    .restart local v9    # "hasFound":Z
    .restart local v10    # "i":S
    .restart local v16    # "start":I
    :cond_1
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    int-to-short v10, v0

    goto :goto_0

    .line 4190
    :cond_2
    const/16 v16, 0x0

    .line 4192
    if-eqz p1, :cond_3

    .line 4194
    add-int/lit8 v19, p1, -0x1

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 4196
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 4199
    :cond_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 4201
    sub-int v19, v8, p1

    add-int/lit8 v19, v19, -0x1

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 4203
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 4206
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v15

    .line 4207
    .local v15, "segNum":S
    const/16 v19, 0x8

    move/from16 v0, v19

    filled-new-array {v15, v0}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[S

    .line 4208
    .local v14, "option":[[S
    new-array v4, v15, [[Ljava/util/Vector;

    .line 4210
    .local v4, "content":[[Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 4211
    add-int/lit8 v19, v15, -0x1

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 4213
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-lt v10, v15, :cond_4

    .line 4232
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4233
    const/4 v5, 0x0

    .line 4235
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4236
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 4238
    .end local v4    # "content":[[Ljava/util/Vector;
    .end local v8    # "groupNum":S
    .end local v9    # "hasFound":Z
    .end local v10    # "i":I
    .end local v14    # "option":[[S
    .end local v15    # "segNum":S
    .end local v16    # "start":I
    :catch_1
    move-exception v7

    goto :goto_3

    .line 4214
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "content":[[Ljava/util/Vector;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "groupNum":S
    .restart local v9    # "hasFound":Z
    .restart local v10    # "i":I
    .restart local v14    # "option":[[S
    .restart local v15    # "segNum":S
    .restart local v16    # "start":I
    :cond_4
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    const/16 v19, 0x8

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    .line 4217
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    .line 4218
    .local v13, "lineNum":S
    new-array v0, v13, [Ljava/util/Vector;

    move-object/from16 v19, v0

    aput-object v19, v4, v10

    .line 4219
    const/4 v11, 0x0

    :goto_6
    if-lt v11, v13, :cond_6

    .line 4213
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 4215
    .end local v13    # "lineNum":S
    :cond_5
    aget-object v19, v14, v10

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    aput-short v20, v19, v11

    .line 4214
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 4220
    .restart local v13    # "lineNum":S
    :cond_6
    aget-object v19, v4, v10

    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    aput-object v20, v19, v11

    .line 4221
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 4222
    .local v3, "colorInfoLen":S
    new-array v2, v3, [I

    .line 4223
    .local v2, "col":[I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_7
    if-lt v12, v3, :cond_7

    .line 4226
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 4227
    .local v17, "str":Ljava/lang/String;
    aget-object v19, v4, v10

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4228
    aget-object v19, v4, v10

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4219
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 4224
    .end local v17    # "str":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    aput v19, v2, v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4223
    add-int/lit8 v12, v12, 0x1

    goto :goto_7
.end method

.method public static removeItem(S)V
    .locals 2
    .param p0, "equipID"    # S

    .prologue
    .line 763
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 764
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 776
    return-void

    .line 765
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 766
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    if-ne p0, v0, :cond_0

    .line 767
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 768
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    goto :goto_0

    .line 770
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sortPocket(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7
    .param p0, "source"    # Ljava/util/Vector;

    .prologue
    .line 802
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Lcom/jarworld/rpg/sanguocollege/Item;

    .line 803
    .local v0, "array":[Lcom/jarworld/rpg/sanguocollege/Item;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-lt v1, v5, :cond_0

    .line 807
    const/4 v1, 0x1

    :goto_1
    array-length v5, v0

    if-lt v1, v5, :cond_1

    .line 821
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 822
    .local v4, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    :goto_2
    array-length v5, v0

    if-lt v1, v5, :cond_5

    .line 825
    return-object v4

    .line 804
    .end local v4    # "vec":Ljava/util/Vector;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jarworld/rpg/sanguocollege/Item;

    aput-object v5, v0, v1

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_1
    aget-object v3, v0, v1

    .line 809
    .local v3, "temp":Lcom/jarworld/rpg/sanguocollege/Item;
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_3
    if-gez v2, :cond_2

    .line 807
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    :cond_2
    iget-byte v5, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    aget-object v6, v0, v2

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    if-ge v5, v6, :cond_4

    .line 811
    add-int/lit8 v5, v2, 0x1

    aget-object v6, v0, v2

    aput-object v6, v0, v5

    .line 816
    if-nez v2, :cond_3

    .line 817
    const/4 v5, 0x0

    aput-object v3, v0, v5

    .line 809
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 813
    :cond_4
    add-int/lit8 v5, v2, 0x1

    aput-object v3, v0, v5

    goto :goto_4

    .line 823
    .end local v2    # "j":I
    .end local v3    # "temp":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v4    # "vec":Ljava/util/Vector;
    :cond_5
    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public changeState(BB)V
    .locals 2
    .param p1, "curState"    # B
    .param p2, "nextState"    # B

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->disposeRes(BB)V

    .line 669
    iput-byte p2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    .line 671
    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isRepaint:Z

    .line 673
    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isCanKP:Z

    .line 676
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 678
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameScene;->checkMission(I)Z

    .line 680
    :cond_0
    return-void
.end method

.method public abstract control()V
.end method

.method public abstract create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V
.end method

.method public abstract delayWork()V
.end method

.method public abstract disposeRes(BB)V
.end method

.method public drawAdvConfirm(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3449
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const/16 v6, 0xda

    const/16 v7, 0xd2

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3450
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0xd4

    const/16 v5, 0xb6

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 3452
    add-int/lit8 v0, p1, 0xf

    .line 3453
    add-int/lit8 v1, p2, 0x1b

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 3454
    const/16 v2, 0xbc

    .line 3455
    const/16 v3, 0x7a

    .line 3456
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffed2

    .line 3457
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    add-int/lit8 v12, p1, 0xf

    aput v12, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, p2, 0x1b

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0xbc

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x7a

    aput v12, v10, v11

    .line 3458
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 3452
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 3460
    add-int/lit8 v1, p1, 0xe

    add-int/lit16 v2, p2, 0xa0

    const/4 v3, 0x0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x17

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3461
    add-int/lit16 v1, p1, 0x96

    add-int/lit16 v2, p2, 0xa0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x17

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3462
    return-void
.end method

.method public drawAdvance(II)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3389
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const/16 v6, 0xda

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0xa

    add-int/lit16 v7, v4, 0xaa

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move v4, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3390
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0xd4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0xa

    add-int/lit16 v5, v5, 0x8e

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 3391
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x4

    add-int/lit8 v5, p2, 0xe

    const/16 v6, 0xd2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0xa

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3393
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0xd

    aget-object v1, v1, v2

    .line 3394
    add-int/lit8 v2, p1, 0x19

    .line 3395
    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3396
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3393
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3397
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    aget-object v1, v1, v2

    .line 3398
    add-int/lit8 v2, p1, 0x19

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    .line 3399
    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3400
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3397
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3402
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0xe

    aget-object v1, v1, v2

    .line 3403
    add-int/lit8 v2, p1, 0x19

    .line 3404
    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3405
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3402
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3406
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x16

    aget-object v2, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    aget-object v1, v2, v1

    .line 3407
    add-int/lit8 v2, p1, 0x19

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    .line 3408
    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3409
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3406
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3411
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0xf

    aget-object v1, v1, v2

    .line 3412
    add-int/lit8 v2, p1, 0x19

    .line 3413
    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3414
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3411
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3415
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    aget-object v1, v2, v1

    const/4 v2, 0x0

    aget-short v1, v1, v2

    .line 3416
    add-int/lit8 v2, p1, 0x19

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x13

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    .line 3415
    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 3417
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    if-eqz v0, :cond_2

    .line 3419
    add-int/lit16 v1, p1, 0xbb

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, p2

    add-int/lit8 v2, v0, 0x19

    const/16 v3, 0x1a

    const/16 v4, 0x8c

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 3420
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 3421
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x15

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 3422
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x15

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 3419
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 3426
    add-int/lit8 v1, p1, 0x21

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x3

    add-int v0, v0, p2

    add-int/lit8 v2, v0, 0x19

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x15

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-object v4, v0, v4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v5, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawOGForAdv(III[[Z[SI)V

    .line 3438
    :goto_2
    add-int/lit8 v0, p1, 0x12

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xa

    add-int v1, v1, p2

    add-int/lit16 v1, v1, 0x8c

    const/4 v2, 0x1

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 3440
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x15

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3441
    return-void

    .line 3406
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    const/4 v3, 0x0

    aget-short v1, v1, v3

    goto/16 :goto_0

    .line 3415
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->canAdvance:[S

    const/4 v3, 0x0

    aget-short v1, v1, v3

    goto/16 :goto_1

    .line 3429
    :cond_2
    add-int/lit8 v0, p1, 0xf

    .line 3430
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int v1, v1, p2

    add-int/lit8 v1, v1, 0x19

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 3431
    const/16 v2, 0xbc

    .line 3432
    const/16 v3, 0x7a

    .line 3433
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffed2

    .line 3434
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    add-int/lit8 v12, p1, 0xf

    aput v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    mul-int/lit8 v12, v12, 0x3

    add-int v12, v12, p2

    add-int/lit8 v12, v12, 0x19

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0xbc

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x7a

    aput v12, v10, v11

    .line 3435
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 3429
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    goto/16 :goto_2
.end method

.method public drawAttChange(IIII[ILcom/jarworld/rpg/sanguocollege/LeadingActor;[Z)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "attChange"    # [I
    .param p6, "role"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;
    .param p7, "button"    # [Z

    .prologue
    .line 1675
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 1677
    div-int/lit8 v0, p3, 0x2

    add-int v1, p1, v0

    add-int/lit8 v0, p2, 0x8

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    add-int/2addr v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const v7, 0xffffff

    move-object v0, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 1679
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v11, v0, :cond_0

    .line 1684
    add-int/lit8 v1, p1, 0xe

    add-int v0, p2, p4

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-boolean v4, p7, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 1685
    add-int v0, p1, p3

    add-int/lit8 v1, v0, -0x44

    add-int v0, p2, p4

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x1

    const/4 v0, 0x1

    aget-boolean v4, p7, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 1686
    return-void

    .line 1680
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x23

    add-int/lit8 v3, p2, 0xc

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    mul-int/lit8 v4, v11, 0x12

    add-int/2addr v3, v4

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    mul-int/lit8 v7, v11, 0xd

    add-int/lit8 v7, v7, 0x1a

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1681
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v1, p1, 0x57

    add-int/lit8 v2, p2, 0xe

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v11, 0x12

    add-int/2addr v2, v3

    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v8, p5, v11

    if-ltz v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    aget v9, p5, v11

    const/4 v10, -0x1

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1679
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1681
    :cond_1
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public drawBSConfirm(IIIII[[Z)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "type"    # I
    .param p6, "button"    # [[Z

    .prologue
    .line 2373
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2375
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    add-int/lit8 v2, p5, 0x2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x24

    add-int/lit8 v3, p2, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2377
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x24

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffffff

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2379
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x24

    add-int/lit8 v4, p2, 0x14

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xe

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/16 v5, 0x46

    const/4 v6, 0x4

    const/4 v7, 0x1

    aget-object v7, p6, v7

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2380
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x24

    add-int/lit8 v4, p2, 0x14

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xe

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/16 v5, 0x46

    const/16 v6, 0x8

    const/4 v7, 0x0

    aget-object v7, p6, v7

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2381
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_byt_bStotalNum:B

    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_byt_bStotalNum:B

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    const/16 v2, 0x4f

    :goto_2
    add-int/2addr v2, p1

    add-int/lit8 v3, p2, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2383
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x17

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x78

    add-int v3, p1, p3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_3

    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x5

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    sub-int/2addr v2, v3

    :goto_3
    add-int/lit8 v3, p2, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2385
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x16

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x24

    add-int/lit8 v3, p2, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2386
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_i_bStotalCost:I

    add-int/lit8 v2, p1, 0x24

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v3, p2, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2388
    add-int/lit8 v0, p1, 0x24

    add-int/lit8 v1, p2, 0x14

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0xd

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 2390
    add-int/lit8 v1, p1, 0xe

    add-int v0, p2, p4

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x0

    const/4 v0, 0x2

    aget-object v0, p6, v0

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2391
    add-int v0, p1, p3

    add-int/lit8 v1, v0, -0x44

    add-int v0, p2, p4

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x1

    const/4 v0, 0x3

    aget-object v0, p6, v0

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2392
    return-void

    .line 2379
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2380
    :cond_1
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2381
    :cond_2
    const/16 v2, 0x4b

    goto/16 :goto_2

    .line 2383
    :cond_3
    add-int/lit8 v2, p1, 0x78

    goto/16 :goto_3
.end method

.method public drawBaseFrame(IIZZ)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isDrawYON"    # Z
    .param p4, "isPressed"    # Z

    .prologue
    const/16 v3, 0x18b

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1158
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v0, v0, v6

    if-ge v0, v8, :cond_2

    move v10, v7

    .line 1160
    .local v10, "isNotDrawElse":Z
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v4, v1, v6

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v5, v1, v7

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 1161
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v0, v0, v6

    if-ge v0, v8, :cond_0

    .line 1162
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v1, v0, v7

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v7

    .line 1163
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v0, v0, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aget v2, v2, v6

    invoke-virtual {v1, v3, v2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1164
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aput v8, v0, v6

    .line 1165
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->bBS:[I

    aput v6, v0, v7

    .line 1169
    :cond_0
    if-eqz p3, :cond_1

    .line 1170
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v5, v0, -0x55

    move-object v4, p0

    move v8, p4

    move v9, v7

    invoke-virtual/range {v4 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 1172
    :cond_1
    return v10

    .end local v10    # "isNotDrawElse":Z
    :cond_2
    move v10, v6

    .line 1158
    goto :goto_0
.end method

.method public drawBlackBg(Z)V
    .locals 17
    .param p1, "isCanSkip"    # Z

    .prologue
    .line 2906
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v1, v1, v2

    array-length v14, v1

    .line 2908
    .local v14, "l":I
    move-object/from16 v0, p0

    iget-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_byt_bGResType:B

    packed-switch v1, :pswitch_data_0

    .line 2950
    :cond_0
    if-eqz p1, :cond_1

    .line 2951
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v3, -0x64

    const/16 v4, 0x8

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v5, v5, 0x4

    rem-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x2f

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2953
    :cond_1
    return-void

    .line 2911
    :pswitch_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 2912
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-object v2, v2, v13

    .line 2913
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v3, v3, 0x2

    .line 2914
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/16 v4, 0xa

    if-gt v14, v4, :cond_2

    move v4, v14

    :goto_1
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v4, v6

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v5, v13

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 2915
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    :goto_2
    aget v9, v10, v9

    .line 2916
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x1

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x2

    aget-byte v15, v15, v16

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v12, v15

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x2

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    aput v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v15, 0x1

    aget-object v12, v12, v15

    const/4 v15, 0x2

    aget-byte v12, v12, v15

    mul-int/lit8 v12, v12, 0xa

    aput v12, v10, v11

    .line 2917
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 2912
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2911
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2914
    :cond_2
    const/16 v4, 0xa

    goto :goto_1

    .line 2915
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    neg-int v9, v9

    goto :goto_2

    .line 2922
    .end local v13    # "i":I
    :pswitch_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_cg:[Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_s_bGResIdx:S

    aget-object v2, v2, v3

    .line 2923
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2924
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_cg:[Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_s_bGResIdx:S

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    .line 2925
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_cg:[Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_s_bGResIdx:S

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    .line 2926
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2922
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2927
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v14, :cond_0

    .line 2928
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-object v2, v2, v13

    .line 2929
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 2930
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/16 v4, 0xa

    if-gt v14, v4, :cond_4

    move v4, v14

    :goto_4
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v4, v6

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v5, v13

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 2931
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    if-ltz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    :goto_5
    aget v9, v10, v9

    .line 2932
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x1

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x2

    aget-byte v15, v15, v16

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v12, v15

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x2

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v15, 0x1

    aget-object v12, v12, v15

    const/4 v15, 0x2

    aget-byte v12, v12, v15

    mul-int/lit8 v12, v12, 0xa

    aput v12, v10, v11

    .line 2933
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 2928
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2927
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 2930
    :cond_4
    const/16 v4, 0xa

    goto :goto_4

    .line 2931
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    neg-int v9, v9

    goto :goto_5

    .line 2938
    .end local v13    # "i":I
    :pswitch_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_s_bGResIdx:S

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bgActIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bgFrameIdx:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bgFrameIdx:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2939
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    if-ge v13, v14, :cond_0

    .line 2940
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-object v2, v2, v13

    .line 2941
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 2942
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/16 v4, 0xa

    if-gt v14, v4, :cond_6

    move v4, v14

    :goto_7
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v4, v6

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v5, v13

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 2943
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    if-ltz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    :goto_8
    aget v9, v10, v9

    .line 2944
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x1

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x2

    aget-byte v15, v15, v16

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v12, v15

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x2

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v15, 0x1

    aget-object v12, v12, v15

    const/4 v15, 0x2

    aget-byte v12, v12, v15

    mul-int/lit8 v12, v12, 0xa

    aput v12, v10, v11

    .line 2945
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 2940
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2939
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 2942
    :cond_6
    const/16 v4, 0xa

    goto :goto_7

    .line 2943
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_bFC:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    neg-int v9, v9

    goto :goto_8

    .line 2908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawBuy(II[[[ZZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "button"    # [[[Z
    .param p4, "isShowPop"    # Z

    .prologue
    .line 2008
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

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

    .line 2009
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0x114

    const/16 v5, 0xaa

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2011
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

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

    .line 2012
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x78

    add-int/lit8 v3, p2, -0xb

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0xf0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2014
    add-int/lit16 v1, p1, 0x11b

    add-int/lit8 v2, p2, 0xe

    const/16 v3, 0x1a

    const/16 v4, 0xaa

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 2015
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 2016
    const/4 v10, 0x0

    aget-object v10, p3, v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 2017
    const/4 v10, 0x0

    aget-object v10, p3, v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 2014
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2021
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0xe

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_x:S

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    const/4 v0, 0x1

    aget-object v6, p3, v0

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V

    .line 2023
    add-int/lit8 v0, p1, 0x12

    add-int/lit16 v1, p2, 0xa6

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 2025
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2026
    return-void
.end method

.method public drawChooseRole(IIIII[[[I[[Z)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "idx"    # I
    .param p6, "chg"    # [[[I
    .param p7, "button"    # [[Z

    .prologue
    .line 2406
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v6, 0x65fff6

    const v7, 0xf6ff

    const v8, 0xffffff

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xe

    aget-object v9, v2, v3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2d

    aget-object v10, v2, v3

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2408
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v12, v1, :cond_1

    .line 2443
    if-nez p6, :cond_0

    .line 2444
    add-int/lit8 v1, p3, -0x36

    div-int/lit8 v1, v1, 0x2

    add-int v2, p1, v1

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x2a

    const/4 v4, 0x1

    if-nez p7, :cond_a

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2446
    :cond_0
    return-void

    .line 2410
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0xc

    add-int/lit8 v4, p2, 0x8

    mul-int/lit8 v5, v12, 0x40

    add-int/2addr v4, v5

    const/16 v5, 0x37

    const/16 v6, 0x36

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v8, v8, v12

    aget-object v7, v7, v8

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_headImgIdx:S

    mul-int/lit8 v7, v7, 0x37

    if-nez p7, :cond_3

    :cond_2
    const/16 v8, 0x36

    :goto_2
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2412
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x530201

    add-int/lit8 v3, p1, 0x48

    add-int/lit8 v4, p2, 0x26

    mul-int/lit8 v5, v12, 0x40

    add-int/2addr v4, v5

    const/16 v5, 0x67

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2413
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x49

    add-int/lit8 v4, p2, 0x27

    mul-int/lit8 v5, v12, 0x40

    add-int/2addr v4, v5

    const/16 v5, 0x65

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2415
    if-eqz p6, :cond_6

    .line 2416
    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 2417
    aget-object v1, p6, v12

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    aget-object v2, p6, v12

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v3, p6, v12

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-int/2addr v2, v3

    aget-object v3, p6, v12

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/2addr v2, v3

    add-int v13, v1, v2

    .line 2424
    .local v13, "param1":I
    :goto_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x49

    add-int/lit8 v3, p2, 0x27

    mul-int/lit8 v4, v12, 0x40

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v5, v5, v12

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    add-int/2addr v4, v13

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v6, v6, v12

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    const/4 v6, 0x0

    const/high16 v7, 0xff0000

    const/high16 v8, 0xcc0000

    const/16 v9, 0x65

    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2425
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x75

    add-int/lit8 v3, p2, 0x1b

    mul-int/lit8 v4, v12, 0x40

    add-int/2addr v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v11, v11, v12

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    add-int/2addr v10, v13

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v15, v15, v12

    aget-object v11, v11, v15

    iget v11, v11, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2427
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x11553

    add-int/lit8 v3, p1, 0x48

    add-int/lit8 v4, p2, 0x3a

    mul-int/lit8 v5, v12, 0x40

    add-int/2addr v4, v5

    const/16 v5, 0x67

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2428
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x49

    add-int/lit8 v4, p2, 0x3b

    mul-int/lit8 v5, v12, 0x40

    add-int/2addr v4, v5

    const/16 v5, 0x65

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2430
    if-eqz p6, :cond_9

    .line 2431
    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 2432
    aget-object v1, p6, v12

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    aget-object v2, p6, v12

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v3, p6, v12

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-int/2addr v2, v3

    aget-object v3, p6, v12

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/2addr v2, v3

    add-int v14, v1, v2

    .line 2439
    .local v14, "param2":I
    :goto_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x49

    add-int/lit8 v3, p2, 0x3b

    mul-int/lit8 v4, v12, 0x40

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v5, v5, v12

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    add-int/2addr v4, v14

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v6, v6, v12

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    const/4 v6, 0x0

    const v7, 0x3399ff

    const v8, 0x3333ff

    const/16 v9, 0x65

    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2440
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x75

    add-int/lit8 v3, p2, 0x2f

    mul-int/lit8 v4, v12, 0x40

    add-int/2addr v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x3

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v11, v11, v12

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    add-int/2addr v10, v14

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v15, v15, v12

    aget-object v11, v11, v15

    iget v11, v11, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2408
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2410
    .end local v13    # "param1":I
    .end local v14    # "param2":I
    :cond_3
    add-int/lit8 v8, v12, 0x1

    aget-object v8, p7, v8

    const/4 v9, 0x0

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2419
    :cond_4
    move/from16 v0, p5

    if-ne v12, v0, :cond_5

    const/4 v1, 0x0

    aget-object v1, p6, v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    const/4 v2, 0x0

    aget-object v2, p6, v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget-object v3, p6, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget-object v3, p6, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/2addr v2, v3

    add-int v13, v1, v2

    .restart local v13    # "param1":I
    :goto_5
    goto/16 :goto_3

    .end local v13    # "param1":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 2422
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "param1":I
    goto/16 :goto_3

    .line 2434
    :cond_7
    move/from16 v0, p5

    if-ne v12, v0, :cond_8

    const/4 v1, 0x0

    aget-object v1, p6, v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    const/4 v2, 0x0

    aget-object v2, p6, v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget-object v3, p6, v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget-object v3, p6, v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    div-int/2addr v2, v3

    add-int v14, v1, v2

    .restart local v14    # "param2":I
    :goto_6
    goto/16 :goto_4

    .end local v14    # "param2":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 2437
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "param2":I
    goto/16 :goto_4

    .line 2444
    .end local v13    # "param1":I
    .end local v14    # "param2":I
    :cond_a
    const/4 v1, 0x0

    aget-object v1, p7, v1

    const/4 v5, 0x0

    aget-boolean v5, v1, v5

    goto/16 :goto_1
.end method

.method public drawCrossing()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2870
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2871
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/high16 v1, 0xff0000

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move v3, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2873
    :cond_0
    return-void
.end method

.method public drawDialog(Z)V
    .locals 11
    .param p1, "isCanSkip"    # Z

    .prologue
    .line 3223
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 3224
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->dlgARGB:[I

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1c

    sub-int/2addr v5, v6

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1c

    const/4 v8, 0x1

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    .line 3225
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/16 v1, 0x3332

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 3226
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sub-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1c

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 3227
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x419fb1

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 3228
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v3, -0x3

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1c

    add-int/lit8 v4, v4, -0x3

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    .line 3229
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1c

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 3230
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x1d

    const/4 v6, 0x2

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v7, v7, -0x11

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1c

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 3231
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x1d

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v8, v8, -0x1d

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 3232
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x1d

    const/4 v6, 0x3

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v7, v7, -0x11

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v8, v8, -0x1d

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 3234
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-short v0, v0, v1

    const/4 v1, 0x0

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2b

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawDlgName(SIII)V

    .line 3236
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3237
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-short v0, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0xb4

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawDlgHead(SIII)V

    .line 3240
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawDlgStr(II)V

    .line 3242
    if-eqz p1, :cond_1

    .line 3243
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v2, -0x64

    const/16 v3, 0x8

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x2f

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3245
    :cond_1
    return-void
.end method

.method public drawEqChange(IIBZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "idx"    # B
    .param p4, "isShowPop"    # Z

    .prologue
    .line 2182
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2185
    const/4 v0, 0x6

    new-array v0, v0, [[Z

    const/4 v1, 0x0

    .line 2186
    const/4 v2, 0x2

    new-array v2, v2, [Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2187
    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2188
    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2189
    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2190
    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2191
    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-object v2, v0, v1

    .line 2184
    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2195
    const/4 v0, 0x1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x25

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    .line 2197
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    add-int/lit8 v4, p1, 0x38

    add-int/lit8 v5, p2, 0x26

    const/16 v6, 0x138

    const/16 v7, 0xba

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2198
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3b

    add-int/lit8 v3, p2, 0x34

    const/16 v4, 0x114

    const/16 v5, 0x9e

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2200
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit16 v4, p1, 0x97

    add-int/lit8 v5, p2, 0x14

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2201
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit16 v2, p1, 0xaf

    add-int/lit8 v3, p2, 0x17

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->curEqPos:[I

    sget-byte v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->curEqIdx:B

    aget v7, v7, v8

    mul-int/lit8 v7, v7, 0x14

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2203
    add-int/lit16 v1, p1, 0x153

    add-int/lit8 v2, p2, 0x34

    const/16 v3, 0x1a

    const/16 v4, 0x9e

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 2204
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 2205
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x25

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 2206
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x25

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 2203
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2210
    add-int/lit8 v1, p1, 0x3b

    add-int/lit8 v2, p2, 0x34

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_x:S

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v0, v0, v6

    const/16 v6, 0x25

    aget-object v0, v0, v6

    const/4 v6, 0x1

    aget-object v6, v0, v6

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V

    .line 2211
    return-void
.end method

.method public drawEveTip(Z[Ljava/util/Vector;)V
    .locals 8
    .param p1, "isCanSkip"    # Z
    .param p2, "idx"    # [Ljava/util/Vector;

    .prologue
    const/4 v6, 0x0

    .line 3253
    invoke-virtual {p0, p2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawTipWith2D([Ljava/util/Vector;)V

    .line 3255
    if-eqz p1, :cond_0

    .line 3256
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v2, -0x64

    const/16 v3, 0x8

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x2f

    const/16 v5, 0x16

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3258
    :cond_0
    return-void
.end method

.method public drawEvent(ZZ)V
    .locals 12
    .param p1, "isCanSkip"    # Z
    .param p2, "isSkiping"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x0

    .line 1985
    if-eqz p2, :cond_2

    .line 1987
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move v2, v1

    move v3, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1989
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x33

    aget-object v3, v0, v3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xab

    div-int/lit8 v4, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v0, v0, -0x54

    div-int/lit8 v5, v0, 0x2

    const/16 v6, 0xab

    const/16 v7, 0x54

    move v8, v1

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1990
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    if-lt v10, v0, :cond_1

    .line 1997
    .end local v10    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1991
    .restart local v10    # "i":I
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0xe9cc29

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xab

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x66

    mul-int/lit8 v4, v10, 0x8

    add-int/2addr v4, v0

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v0, v0, -0x54

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v5, v0, 0x51

    move v6, v11

    move v7, v11

    move v8, v1

    invoke-static/range {v2 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1990
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1993
    .end local v10    # "i":I
    :cond_2
    if-eqz p1, :cond_0

    .line 1995
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x34

    aget-object v3, v0, v3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v4, v0, -0x64

    const/16 v5, 0x8

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v6, v0, 0x2f

    const/16 v7, 0x16

    move v8, v1

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1
.end method

.method public drawExit(Ljava/util/Vector;[[Z)V
    .locals 12
    .param p1, "sindex"    # Ljava/util/Vector;
    .param p2, "button"    # [[Z

    .prologue
    .line 2737
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 2738
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v1, v1, -0x106

    div-int/lit8 v1, v1, 0x2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3c

    div-int/lit8 v2, v2, 0x2

    .line 2739
    const/16 v3, 0x106

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x3c

    .line 2740
    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v10, 0x2d

    aget-object v9, v9, v10

    .line 2737
    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2742
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 2743
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v1, 0x2

    .line 2744
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2a

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    .line 2745
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 2742
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2747
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0xe

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2748
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, 0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x44

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2749
    return-void
.end method

.method public drawFirebug()V
    .locals 12

    .prologue
    const/16 v4, 0x11

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 3500
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    if-nez v0, :cond_0

    .line 3501
    const/16 v0, 0xf

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    .line 3502
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 3507
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_2

    .line 3529
    return-void

    .line 3503
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v7

    .line 3504
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3502
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3508
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    .line 3509
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v2, v2, v8

    aget v2, v2, v7

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 3510
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v3, v3, v8

    aget v3, v3, v9

    sget v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v5, v5

    sub-int/2addr v3, v5

    .line 3512
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v8

    rem-int/lit8 v5, v5, 0x6

    mul-int/lit8 v6, v5, 0x11

    move v5, v4

    .line 3508
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3513
    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_5

    .line 3514
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v7

    invoke-static {v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 3515
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v9

    invoke-static {v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v9

    .line 3520
    :goto_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v7

    add-int/lit8 v0, v0, 0x11

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    add-int/lit8 v0, v0, 0x11

    if-gez v0, :cond_4

    .line 3521
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v7

    .line 3522
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v7

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 3523
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3507
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3517
    :cond_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v7

    invoke-static {v9, v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 3518
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v9

    invoke-static {v9, v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v9

    goto :goto_2

    .line 3525
    :cond_6
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->bugPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    goto :goto_3
.end method

.method public drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mId_y"    # I
    .param p4, "mId_x"    # I
    .param p5, "mSId"    # I
    .param p6, "button"    # [[Z
    .param p7, "itemVector"    # Ljava/util/Vector;
    .param p8, "fId"    # I
    .param p9, "isShowNum"    # Z
    .param p10, "isShowPop"    # Z

    .prologue
    .line 1893
    const/4 v2, 0x0

    .line 1894
    .local v2, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    if-lt v12, v1, :cond_1

    .line 1927
    if-eqz p10, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    .line 1928
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int v1, v1, p3

    add-int v1, v1, p4

    invoke-virtual/range {p7 .. p7}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1929
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int v1, v1, p3

    add-int v1, v1, p4

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1930
    .restart local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 1931
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    sub-int v1, p1, v1

    if-gez v1, :cond_6

    const/4 v6, 0x0

    .line 1932
    :goto_1
    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->BF_Y:S

    .line 1933
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v1, p0

    move/from16 v4, p8

    .line 1930
    invoke-virtual/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawPop(Ljava/lang/Object;IIIIIIIII)V

    .line 1936
    :cond_0
    return-void

    .line 1895
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    move-object v13, v2

    .end local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .local v13, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :goto_2
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    if-lt v14, v1, :cond_2

    .line 1894
    add-int/lit8 v12, v12, 0x1

    move-object v2, v13

    .end local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    goto :goto_0

    .line 1897
    .end local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_2
    add-int v1, p5, v12

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v14

    aget-object v1, p6, v1

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    add-int v1, p5, v12

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v14

    aget-object v1, p6, v1

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_5

    .line 1898
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x4

    aget-object v2, v3, v4

    .line 1899
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x2b

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1900
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    mul-int/2addr v5, v12

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x2c

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1901
    const/16 v5, 0x2b

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1898
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1909
    :goto_3
    add-int v1, p5, v12

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v14

    invoke-virtual/range {p7 .. p7}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1910
    add-int v1, p5, v12

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v14

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    check-cast v13, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1912
    .restart local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xa

    aget-object v2, v3, v4

    .line 1913
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x21

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1914
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    mul-int/2addr v5, v12

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1e

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1915
    const/16 v5, 0x21

    const/16 v6, 0x1e

    iget-byte v7, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    mul-int/lit8 v7, v7, 0x21

    const/4 v8, 0x0

    .line 1912
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1917
    if-eqz p9, :cond_4

    iget-byte v1, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    .line 1918
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-byte v2, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    .line 1919
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    .line 1920
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    mul-int/2addr v5, v12

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v4, v5

    .line 1921
    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    .line 1918
    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    :cond_4
    move-object v2, v13

    .line 1895
    .end local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    add-int/lit8 v14, v14, 0x1

    move-object v13, v2

    .end local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .restart local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    goto/16 :goto_2

    .line 1903
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x20

    aget-object v2, v3, v4

    .line 1904
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 1905
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    mul-int/2addr v5, v12

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    .line 1906
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1903
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto/16 :goto_3

    .line 1931
    .end local v13    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    .end local v14    # "j":I
    .restart local v2    # "it":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_6
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    sub-int v6, p1, v1

    goto/16 :goto_1
.end method

.method public drawGameOver(Z)V
    .locals 14
    .param p1, "showOver"    # Z

    .prologue
    .line 2880
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2881
    if-nez p1, :cond_3

    .line 2882
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    array-length v1, v1

    rem-int v12, v0, v1

    .line 2883
    .local v12, "colorOffset":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    array-length v1, v1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    array-length v2, v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    array-length v1, v1

    div-int/2addr v0, v1

    :goto_1
    if-le v13, v0, :cond_0

    .line 2891
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    .line 2898
    .end local v12    # "colorOffset":I
    .end local v13    # "i":I
    :goto_2
    return-void

    .line 2884
    .restart local v12    # "colorOffset":I
    .restart local v13    # "i":I
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    aget-object v1, v1, v13

    .line 2885
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    .line 2886
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    array-length v4, v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 2887
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 2888
    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    array-length v9, v9

    div-int/2addr v8, v9

    if-ne v13, v8, :cond_1

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_i_FrameTimer:I

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v10, 0x13

    aget-object v9, v9, v10

    array-length v9, v9

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    array-length v10, v10

    mul-int/2addr v9, v10

    if-ge v8, v9, :cond_1

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    aget v8, v8, v12

    .line 2889
    :goto_3
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2884
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2883
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2888
    :cond_1
    const v8, 0xffffff

    goto :goto_3

    .line 2883
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2893
    .end local v12    # "colorOffset":I
    .end local v13    # "i":I
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    aget-object v1, v1, v2

    .line 2894
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    .line 2895
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 2896
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffffff

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2893
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_2
.end method

.method public drawHelp(III)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "sel"    # I

    .prologue
    .line 2682
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2685
    const/4 v3, 0x6

    new-array v3, v3, [[Z

    const/4 v4, 0x0

    .line 2686
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x9

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2687
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xa

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2688
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xb

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 2689
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xc

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2690
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xd

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2691
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4c

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xe

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 2684
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2695
    const/4 v3, 0x1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x4c

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2728
    :goto_0
    return-void

    .line 2699
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x2b

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    add-int/lit8 v7, p1, 0x19

    add-int/lit8 v8, p2, 0xd

    const/16 v9, 0x7a

    const/16 v10, 0xe3

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2700
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    add-int/lit8 v5, p1, 0x1c

    add-int/lit8 v6, p2, 0x1b

    const/16 v7, 0x74

    const/16 v8, 0xc7

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2702
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    const/4 v3, 0x6

    move/from16 v0, v16

    if-lt v0, v3, :cond_1

    .line 2711
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0x99

    add-int/lit8 v8, p2, 0xd

    const/16 v9, 0xf0

    const/16 v10, 0xdf

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2713
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0xd4

    add-int/lit8 v8, p2, 0x13

    const/16 v9, 0x78

    const/16 v10, 0x1a

    const v11, 0x145d64

    const v12, 0x593f2c

    const v13, 0x593f2c

    const v14, 0x593f2c

    const v15, 0xa58252

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2714
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x2e

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xec

    add-int/lit8 v6, p2, 0x16

    const/16 v7, 0x48

    const/16 v8, 0x14

    const/4 v9, 0x0

    add-int/lit8 v10, p3, 0x5

    mul-int/lit8 v10, v10, 0x14

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2716
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move/from16 v0, p1

    add-int/lit16 v6, v0, 0xb5

    add-int/lit8 v7, p2, 0x12

    const/16 v8, 0xb6

    const/4 v9, 0x4

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x4c

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x7

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2717
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move/from16 v0, p1

    add-int/lit16 v6, v0, 0xb5

    add-int/lit8 v7, p2, 0x12

    const/16 v8, 0xb6

    const/16 v9, 0x8

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x4c

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x8

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_3
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2719
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0xaa

    add-int/lit8 v8, p2, 0x35

    const/16 v9, 0xce

    const/16 v10, 0xa9

    const v11, 0x593f2c

    const v12, 0x79582b

    const v13, 0x8d6a3e

    const v14, 0xad8463

    const v15, 0xad8463

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2721
    move/from16 v0, p1

    add-int/lit16 v3, v0, 0xbb

    .line 2722
    add-int/lit8 v4, p2, 0x39

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 2723
    const/16 v5, 0xac

    .line 2724
    const/16 v6, 0xa1

    .line 2725
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const v12, 0xfffed2

    .line 2726
    const/4 v7, 0x4

    new-array v13, v7, [I

    const/4 v7, 0x0

    move/from16 v0, p1

    add-int/lit16 v14, v0, 0xbb

    aput v14, v13, v7

    const/4 v7, 0x1

    add-int/lit8 v14, p2, 0x39

    sget-object v15, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v15, v15, p3

    const/16 v17, 0x0

    aget v15, v15, v17

    add-int/2addr v14, v15

    aput v14, v13, v7

    const/4 v7, 0x2

    const/16 v14, 0xac

    aput v14, v13, v7

    const/4 v7, 0x3

    const/16 v14, 0xa1

    aput v14, v13, v7

    .line 2727
    const/4 v14, -0x1

    const/4 v15, 0x1

    move/from16 v7, p3

    .line 2721
    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    goto/16 :goto_0

    .line 2703
    :cond_1
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x4c

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x4c

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 2704
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xf6ff

    add-int/lit8 v5, p1, 0x1f

    add-int/lit8 v6, p2, 0x1e

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6e

    const/16 v8, 0x21

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2705
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xffffff

    add-int/lit8 v5, p1, 0x20

    add-int/lit8 v6, p2, 0x1f

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6c

    const/16 v8, 0x1f

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2707
    :cond_3
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x21

    add-int/lit8 v8, p2, 0x20

    mul-int/lit8 v9, v16, 0x20

    add-int/2addr v8, v9

    const/16 v9, 0x6a

    const/16 v10, 0x1d

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2708
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x30

    add-int/lit8 v6, p2, 0x24

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x4c

    const/16 v8, 0x15

    const/4 v9, 0x0

    add-int/lit8 v10, v16, 0x2

    mul-int/lit8 v10, v10, 0x15

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2702
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 2716
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2717
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_3
.end method

.method public drawIOMInfo(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3351
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const/16 v6, 0xda

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit16 v7, v4, 0xfc

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3352
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0xd4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit16 v5, v5, 0xe0

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 3354
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x31

    add-int/lit8 v5, p2, -0xe

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3355
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x49

    add-int/lit8 v3, p2, -0xb

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0x118

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3357
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v1, v1, v2

    .line 3358
    add-int/lit8 v2, p1, 0x6d

    .line 3359
    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 3360
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, -0x1

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3357
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3361
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3363
    add-int/lit16 v1, p1, 0xb9

    add-int/lit8 v0, p2, 0xe

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v2, v0

    const/16 v3, 0x1a

    const/16 v4, 0xe0

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 3364
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 3365
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x1a

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 3366
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x1a

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 3363
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 3370
    add-int/lit8 v1, p1, 0x24

    add-int/lit8 v0, p2, 0xe

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v2, v0

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/16 v5, 0x1a

    aget-object v0, v0, v5

    const/4 v5, 0x1

    aget-object v5, v0, v5

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawOGForIM(IIII[[ZLjava/util/Vector;I)V

    .line 3379
    :goto_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x1a

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3380
    return-void

    .line 3373
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x25

    aget-object v1, v1, v2

    .line 3374
    add-int/lit8 v2, p1, 0x6d

    .line 3375
    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    rsub-int v4, v4, 0xe0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 3376
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 3373
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto :goto_0
.end method

.method public drawInfoFrame(IIIIIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "c3"    # I

    .prologue
    .line 1146
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 1147
    return-void
.end method

.method public drawInlay(II)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3058
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    const/16 v7, 0x138

    const/16 v8, 0xdc

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3059
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x593f2c

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0xd

    const/16 v5, 0x132

    const/16 v6, 0xc2

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 3060
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x3

    move/from16 v0, p2

    add-int/lit16 v6, v0, 0x83

    const/16 v7, 0x132

    const/16 v8, 0x4c

    const v9, 0x593f2c

    const v10, 0x79582b

    const v11, 0x8d6a3e

    const v12, 0xad8463

    const v13, 0xad8463

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 3062
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x64

    add-int/lit8 v4, p2, 0x5

    const/16 v5, 0x6f

    const/16 v6, 0x84

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3063
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x8c

    add-int/lit8 v4, p2, 0x35

    const/16 v5, 0x21

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3064
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x8d

    add-int/lit8 v4, p2, 0x36

    const/16 v5, 0x1f

    const/16 v6, 0x1c

    const/16 v7, 0x9b

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3065
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0xc

    add-int/lit8 v4, p2, 0x73

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x82

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3067
    move/from16 v0, p1

    add-int/lit16 v1, v0, 0xd9

    add-int/lit8 v2, p2, 0x73

    const/4 v3, 0x0

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 3069
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v1, v1

    if-lt v14, v1, :cond_1

    .line 3084
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 3086
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayCost:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayCost:S

    add-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2c

    add-int/lit8 v4, p2, 0x75

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 3088
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x72

    add-int/lit8 v4, p2, 0x5c

    const/16 v5, 0x54

    const/16 v6, 0x1d

    const/4 v7, 0x0

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0xe

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_4

    const/16 v8, 0x1d

    :goto_1
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3089
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlaedItem:Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_5

    .line 3091
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x8c

    add-int/lit8 v4, p2, 0x35

    const/16 v5, 0x21

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3092
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x8c

    add-int/lit8 v4, p2, 0x35

    const/16 v5, 0x21

    const/16 v6, 0x1e

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlaedItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    mul-int/lit8 v7, v7, 0x21

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3094
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x8

    rsub-int v2, v2, 0x138

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, p1

    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x27

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 3095
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x8

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    const v6, 0x65fff6

    const v7, 0xf6ff

    const v8, 0xffffff

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v11, 0x2d

    aget-object v10, v10, v11

    .line 3094
    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 3096
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlaedItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v2, v2, v3

    .line 3097
    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x9c

    .line 3098
    add-int/lit8 v4, p2, 0xe

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    rsub-int/lit8 v5, v5, 0x27

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    .line 3099
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v9, 0xffffff

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 3096
    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 3101
    add-int/lit8 v1, p1, 0x15

    .line 3102
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x88

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 3103
    const/16 v3, 0x10e

    .line 3104
    const/16 v4, 0x42

    .line 3105
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const v10, 0xfffed2

    .line 3106
    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, p1, 0x15

    aput v13, v11, v12

    const/4 v12, 0x1

    move/from16 v0, p2

    add-int/lit16 v13, v0, 0x88

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x10e

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x42

    aput v13, v11, v12

    .line 3107
    const/4 v12, -0x1

    const/4 v13, 0x1

    .line 3101
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 3120
    :cond_0
    :goto_2
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v1, -0x55

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/16 v5, 0xe

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/4 v5, 0x0

    aget-boolean v5, v1, v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3121
    return-void

    .line 3071
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x14

    mul-int/lit16 v4, v14, 0xc8

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x1e

    const/16 v5, 0x48

    const/16 v6, 0x14

    const/4 v7, 0x0

    add-int/lit8 v8, v14, 0x12

    mul-int/lit8 v8, v8, 0x14

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3073
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xe

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int/lit8 v2, v14, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 3074
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x23

    mul-int/lit16 v4, v14, 0xc7

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3b

    const/16 v5, 0x2b

    const/16 v6, 0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3079
    :goto_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v1, v1, v14

    if-eqz v1, :cond_2

    .line 3080
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x28

    mul-int/lit16 v4, v14, 0xc7

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x42

    const/16 v5, 0x21

    const/16 v6, 0x1e

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v7, v7, v14

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    mul-int/lit8 v7, v7, 0x21

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3069
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 3076
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x28

    mul-int/lit16 v4, v14, 0xc7

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x42

    const/16 v5, 0x21

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_3

    .line 3088
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3110
    :cond_5
    add-int/lit8 v1, p1, 0x15

    .line 3111
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x88

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 3112
    const/16 v3, 0x10e

    .line 3113
    const/16 v4, 0x42

    .line 3114
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const v10, 0xfffed2

    .line 3115
    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit8 v13, p1, 0x15

    aput v13, v11, v12

    const/4 v12, 0x1

    move/from16 v0, p2

    add-int/lit16 v13, v0, 0x88

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x10e

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x42

    aput v13, v11, v12

    .line 3116
    const/4 v12, -0x1

    const/4 v13, 0x1

    .line 3110
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    goto/16 :goto_2
.end method

.method public drawInlaySelIOS(IIZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isSelIt"    # Z

    .prologue
    .line 3131
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

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

    .line 3132
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0x114

    const/16 v5, 0xaa

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 3134
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

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

    .line 3135
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x78

    add-int/lit8 v3, p2, -0xb

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    const/16 v7, 0x140

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3137
    add-int/lit16 v1, p1, 0x11b

    add-int/lit8 v2, p2, 0xe

    const/16 v3, 0x1a

    const/16 v4, 0xaa

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 3138
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v10, 0x0

    .line 3139
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v11, v0, v11

    if-eqz p3, :cond_1

    const/16 v0, 0xf

    :goto_1
    aget-object v0, v11, v0

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x1

    aget-object v0, v0, v11

    const/4 v11, 0x0

    aget-boolean v0, v0, v11

    aput-boolean v0, v9, v10

    const/4 v10, 0x1

    .line 3140
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v11, v0, v11

    if-eqz p3, :cond_2

    const/16 v0, 0xf

    :goto_2
    aget-object v0, v11, v0

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x2

    aget-object v0, v0, v11

    const/4 v11, 0x0

    aget-boolean v0, v0, v11

    aput-boolean v0, v9, v10

    move-object v0, p0

    .line 3137
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 3144
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0xe

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_x:S

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-eqz p3, :cond_3

    const/16 v0, 0xf

    :goto_3
    aget-object v0, v6, v0

    const/4 v6, 0x1

    aget-object v6, v0, v6

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V

    .line 3146
    add-int/lit8 v0, p1, 0x12

    add-int/lit16 v1, p2, 0xa6

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 3148
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v4, v0, v4

    if-eqz p3, :cond_4

    const/16 v0, 0xf

    :goto_4
    aget-object v0, v4, v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3149
    return-void

    .line 3135
    :cond_0
    const/16 v7, 0x154

    goto/16 :goto_0

    .line 3139
    :cond_1
    const/16 v0, 0x10

    goto :goto_1

    .line 3140
    :cond_2
    const/16 v0, 0x10

    goto :goto_2

    .line 3144
    :cond_3
    const/16 v0, 0x10

    goto :goto_3

    .line 3148
    :cond_4
    const/16 v0, 0x10

    goto :goto_4
.end method

.method public drawItOption(IIIII)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "type"    # I

    .prologue
    .line 2345
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2347
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v13, v0, :cond_0

    .line 2360
    return-void

    .line 2349
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x29

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v13

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 2350
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xf6ff

    add-int/lit8 v2, p3, -0x71

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    add-int/lit8 v3, p2, 0xa

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x71

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xe

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2351
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    add-int/lit8 v2, p3, -0x6f

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    add-int/lit8 v3, p2, 0xb

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x6f

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2353
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p3, -0x6e

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v5, p2, 0xc

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x16

    mul-int/2addr v6, v13

    add-int/2addr v5, v6

    .line 2354
    const/16 v6, 0x6e

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xa

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    .line 2353
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2355
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v2, v1, v2

    if-nez v13, :cond_3

    if-nez p5, :cond_2

    const/16 v1, 0xb

    :goto_1
    aget-object v1, v2, v1

    .line 2356
    div-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p1

    .line 2357
    add-int/lit8 v3, p2, 0xc

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 2358
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0x283e4a

    const v8, 0xdd7d37

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2355
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2347
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2355
    :cond_2
    const/16 v1, 0xa

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v13, v1, :cond_4

    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public drawItemMenu(IIZ)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isShowPop"    # Z

    .prologue
    .line 2293
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2296
    const/4 v3, 0x6

    new-array v3, v3, [[Z

    const/4 v4, 0x0

    .line 2297
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x8

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2298
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x9

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2299
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xa

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 2300
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xb

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2301
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xc

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2302
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x28

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xd

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 2295
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2306
    const/4 v3, 0x1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x28

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2333
    :goto_0
    return-void

    .line 2310
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    add-int/lit8 v5, p1, 0x65

    add-int/lit8 v6, p2, 0x8

    const/16 v7, 0xdb

    const/16 v8, 0x26

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2311
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    const/4 v3, 0x5

    move/from16 v0, v16

    if-lt v0, v3, :cond_1

    .line 2320
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x2b

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    add-int/lit8 v7, p1, 0x37

    add-int/lit8 v8, p2, 0x2f

    const/16 v9, 0x138

    const/16 v10, 0xc6

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2321
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    add-int/lit8 v5, p1, 0x3a

    add-int/lit8 v6, p2, 0x3d

    const/16 v7, 0x114

    const/16 v8, 0xaa

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2323
    move/from16 v0, p1

    add-int/lit16 v4, v0, 0x152

    add-int/lit8 v5, p2, 0x3d

    const/16 v6, 0x1a

    const/16 v7, 0xaa

    sget v8, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v9, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v11, 0xc

    aget-object v11, v3, v11

    .line 2324
    const/4 v3, 0x2

    new-array v12, v3, [Z

    const/4 v3, 0x0

    .line 2325
    sget-object v13, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/16 v14, 0x28

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x6

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-boolean v13, v13, v14

    aput-boolean v13, v12, v3

    const/4 v3, 0x1

    .line 2326
    sget-object v13, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/16 v14, 0x28

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x7

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-boolean v13, v13, v14

    aput-boolean v13, v12, v3

    move-object/from16 v3, p0

    .line 2323
    invoke-virtual/range {v3 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2330
    add-int/lit8 v4, p1, 0x3a

    add-int/lit8 v5, p2, 0x3d

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    move-object/from16 v0, p0

    iget-short v7, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_x:S

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v9, 0x0

    aget-object v3, v3, v9

    const/16 v9, 0x28

    aget-object v3, v3, v9

    const/4 v9, 0x1

    aget-object v9, v3, v9

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_curPocket:Ljava/util/Vector;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move/from16 v13, p3

    invoke-virtual/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawGGForIt(IIIII[[ZLjava/util/Vector;IZZ)V

    .line 2332
    add-int/lit8 v3, p1, 0x3f

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xd5

    const/4 v5, 0x0

    sget v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    goto/16 :goto_0

    .line 2312
    :cond_1
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x28

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x28

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 2313
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x6f

    mul-int/lit8 v6, v16, 0x27

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    const/16 v7, 0x2b

    const/16 v8, 0x2c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2317
    :goto_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x74

    mul-int/lit8 v6, v16, 0x27

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xc

    const/16 v7, 0x21

    const/16 v8, 0x1e

    mul-int/lit8 v9, v16, 0x21

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2311
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 2315
    :cond_3
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x74

    mul-int/lit8 v6, v16, 0x27

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xc

    const/16 v7, 0x21

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_2
.end method

.method public drawLeaf()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 3535
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    if-nez v0, :cond_0

    .line 3536
    const/16 v0, 0x14

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    .line 3537
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 3542
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_2

    .line 3559
    return-void

    .line 3538
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v7

    .line 3539
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3537
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3543
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    .line 3544
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v2, v2, v8

    aget v2, v2, v7

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 3545
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v3, v3, v8

    aget v3, v3, v9

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 3546
    const/16 v4, 0x12

    const/16 v5, 0xe

    .line 3547
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v8

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x12

    .line 3543
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3548
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v7

    invoke-static {v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 3549
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v9

    invoke-static {v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 3550
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v7

    add-int/lit8 v0, v0, 0x12

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    int-to-float v0, v0

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 3551
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v7

    .line 3552
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v7

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v1, v2

    if-le v0, v1, :cond_5

    .line 3553
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3542
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3555
    :cond_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->leafPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    goto :goto_2
.end method

.method public drawLevelUpMenu(IIIIILcom/jarworld/rpg/sanguocollege/LeadingActor;)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height1"    # I
    .param p5, "height2"    # I
    .param p6, "someone"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .prologue
    .line 2505
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v6, 0x65fff6

    const v7, 0xf6ff

    const v8, 0xffffff

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xe

    aget-object v9, v2, v3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2d

    aget-object v10, v2, v3

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2507
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x8

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, p1, v1

    add-int/lit8 v1, p2, 0xe

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    move-object v1, p0

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2509
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aget-object v2, v2, v3

    div-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p1

    add-int/lit8 v4, p2, 0xe

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v9, 0xffc501

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2511
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit8 v4, p2, 0x12

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2512
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p1, 0x3e

    add-int/lit8 v4, p2, 0x15

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2514
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit8 v4, p2, 0x25

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2515
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-short v3, v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3e

    add-int/lit8 v4, p2, 0x28

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2517
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit8 v4, p2, 0x38

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x27

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2518
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-short v3, v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3e

    add-int/lit8 v4, p2, 0x3b

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2520
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit8 v4, p2, 0x4b

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x34

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2521
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-short v3, v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3e

    add-int/lit8 v4, p2, 0x4e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2523
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit8 v4, p2, 0x5e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x41

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2524
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-short v3, v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3e

    add-int/lit8 v4, p2, 0x61

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2526
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->m_i_fLUMCount:I

    packed-switch v1, :pswitch_data_0

    .line 2567
    :goto_0
    return-void

    .line 2529
    :pswitch_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p2, 0x7b

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    add-int/2addr v3, v2

    const v6, 0x65fff6

    const v7, 0xf6ff

    const v8, 0xffffff

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xe

    aget-object v9, v2, v4

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2d

    aget-object v10, v2, v4

    move v2, p1

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2530
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x13

    add-int/lit16 v4, p2, 0x81

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xffffff

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2531
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->lvlUpSkID:I

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x31

    add-int/lit16 v4, p2, 0x81

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xffc501

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2533
    :pswitch_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget-short v1, v1, v2

    if-lez v1, :cond_0

    .line 2535
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    add-int/lit8 v3, p1, 0x73

    add-int/lit8 v4, p2, 0x61

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2537
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x66

    add-int/lit8 v5, p2, 0x5e

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2540
    :cond_0
    :pswitch_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-short v1, v1, v2

    if-lez v1, :cond_1

    .line 2542
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    add-int/lit8 v3, p1, 0x73

    add-int/lit8 v4, p2, 0x4e

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2544
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x66

    add-int/lit8 v5, p2, 0x4b

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2547
    :cond_1
    :pswitch_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-short v1, v1, v2

    if-lez v1, :cond_2

    .line 2549
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    add-int/lit8 v3, p1, 0x73

    add-int/lit8 v4, p2, 0x3b

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2551
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x66

    add-int/lit8 v5, p2, 0x38

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2554
    :cond_2
    :pswitch_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    move-object/from16 v0, p6

    iget-short v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-short v1, v1, v2

    if-lez v1, :cond_3

    .line 2556
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    add-int/lit8 v3, p1, 0x73

    add-int/lit8 v4, p2, 0x28

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2558
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x66

    add-int/lit8 v5, p2, 0x25

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 2562
    :cond_3
    :pswitch_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    move-object/from16 v0, p6

    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    add-int/lit8 v3, p1, 0x73

    add-int/lit8 v4, p2, 0x15

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2564
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x66

    add-int/lit8 v5, p2, 0x12

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    goto/16 :goto_0

    .line 2526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public drawMOA(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "type"    # I
    .param p4, "value"    # I

    .prologue
    const/16 v2, 0x21

    const/16 v4, 0x1a

    const/16 v5, 0xd

    const/4 v6, 0x0

    .line 1183
    packed-switch p3, :pswitch_data_0

    .line 1193
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v4, p1, 0x20

    add-int/lit8 v5, p2, 0x2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x13

    aget-object v7, v0, v1

    move v3, p4

    invoke-static/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 1194
    return-void

    .line 1186
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v2

    const/16 v7, 0x75

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 1190
    :pswitch_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v2

    const/16 v7, 0x68

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawMainMenu([[Z)V
    .locals 11
    .param p1, "button"    # [[Z

    .prologue
    const/16 v5, 0x3e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1548
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v8, v0, :cond_0

    .line 1553
    return-void

    .line 1549
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    .line 1550
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, -0x42

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    aget-object v3, p1, v8

    aget-boolean v3, v3, v9

    if-nez v3, :cond_1

    aget-object v3, p1, v8

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_3

    :cond_1
    const/16 v3, 0x3a

    :goto_1
    sub-int/2addr v4, v3

    aget-object v3, p1, v8

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->moveOffset:[B

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x4

    aget-byte v3, v3, v6

    :goto_2
    add-int/2addr v3, v4

    .line 1551
    const/16 v4, 0x42

    mul-int/lit8 v6, v8, 0x42

    aget-object v7, p1, v8

    aget-boolean v7, v7, v9

    if-nez v7, :cond_2

    aget-object v7, p1, v8

    aget-boolean v7, v7, v10

    if-eqz v7, :cond_5

    :cond_2
    move v7, v9

    .line 1549
    :goto_3
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1548
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1550
    :cond_3
    const/16 v3, 0x32

    goto :goto_1

    :cond_4
    move v3, v9

    goto :goto_2

    :cond_5
    move v7, v5

    .line 1551
    goto :goto_3
.end method

.method public drawMiniMap(IIIIIIIIIIIIIILjava/util/Vector;Ljava/util/Vector;)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "pullOffx"    # I
    .param p6, "pullOffy"    # I
    .param p7, "pullLeft"    # I
    .param p8, "pullRight"    # I
    .param p9, "pullTop"    # I
    .param p10, "pullBottom"    # I
    .param p11, "mapOffx"    # I
    .param p12, "mapOffy"    # I
    .param p13, "manOffx"    # I
    .param p14, "manOffy"    # I
    .param p15, "mainMisFlagVec"    # Ljava/util/Vector;
    .param p16, "branchMisFlagVec"    # Ljava/util/Vector;

    .prologue
    .line 3300
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0x530201

    const/4 v8, 0x0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 3302
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->setActionWithoutChangeFrame(I)V

    .line 3303
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x18c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->setFrame(III)V

    .line 3304
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v3, p3, 0x2

    add-int v3, v3, p11

    add-int v3, v3, p5

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p12

    add-int v4, v4, p6

    invoke-interface {v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 3305
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v3, v3, -0x2

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    neg-int v4, v4

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v5, v5, 0x4

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/lit8 v6, v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 3306
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/16 v4, 0x18c

    invoke-virtual {v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->paint(Ljavax/microedition/lcdui/Graphics;I)V

    .line 3307
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    div-int/lit8 v3, p3, 0x2

    add-int v3, v3, p11

    add-int v3, v3, p5

    neg-int v3, v3

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p12

    add-int v4, v4, p6

    neg-int v4, v4

    invoke-interface {v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 3311
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p15 .. p15}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v10, v2, :cond_4

    .line 3317
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p16 .. p16}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v10, v2, :cond_5

    .line 3323
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    div-int/lit8 v4, p3, 0x2

    add-int v4, v4, p13

    add-int/lit8 v4, v4, -0x10

    add-int v4, v4, p5

    div-int/lit8 v5, p4, 0x2

    add-int v5, v5, p14

    add-int/lit8 v5, v5, -0x14

    add-int v5, v5, p6

    const/16 v6, 0x21

    const/16 v7, 0x21

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v8, v8, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x21

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3325
    move/from16 v0, p8

    move/from16 v1, p5

    if-le v0, v1, :cond_0

    .line 3326
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p1, 0x12

    add-int/lit8 v6, p4, -0x1b

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, p2

    add-int/lit8 v7, p3, -0x24

    const/4 v8, 0x4

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/16 v13, 0x1b

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/4 v13, 0x4

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_2
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 3329
    :cond_0
    move/from16 v0, p7

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    .line 3330
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p1, 0x12

    add-int/lit8 v6, p4, -0x1b

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, p2

    add-int/lit8 v7, p3, -0x24

    const/16 v8, 0x8

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/16 v13, 0x1b

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/4 v13, 0x2

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    :goto_3
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 3333
    :cond_1
    move/from16 v0, p10

    move/from16 v1, p6

    if-le v0, v1, :cond_2

    .line 3334
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const/4 v4, 0x3

    add-int/lit8 v5, p3, -0x1c

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v6, p2, 0xb

    add-int/lit8 v7, p4, -0x16

    const/16 v8, 0x10

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/16 v13, 0x1b

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/4 v13, 0x1

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    :goto_4
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 3337
    :cond_2
    move/from16 v0, p9

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    .line 3338
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const/4 v4, 0x3

    add-int/lit8 v5, p3, -0x1c

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v6, p2, 0xb

    add-int/lit8 v7, p4, -0x16

    const/16 v8, 0x20

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/16 v13, 0x1b

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-object v9, v9, v13

    const/4 v13, 0x3

    aget-object v9, v9, v13

    const/4 v13, 0x0

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 3341
    :cond_3
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v2, -0x55

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v2, v2, v6

    const/16 v6, 0x1b

    aget-object v2, v2, v6

    const/4 v6, 0x0

    aget-object v2, v2, v6

    const/4 v6, 0x0

    aget-object v2, v2, v6

    const/4 v6, 0x0

    aget-boolean v6, v2, v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 3342
    return-void

    .line 3312
    :cond_4
    move-object/from16 v0, p15

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3313
    .local v11, "taskx":I
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p15

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3314
    .local v12, "tasky":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    div-int/lit8 v4, p3, 0x2

    add-int v4, v4, p11

    add-int v4, v4, p5

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, -0x3

    div-int/lit8 v5, p4, 0x2

    add-int v5, v5, p12

    add-int v5, v5, p6

    add-int/2addr v5, v12

    add-int/lit8 v5, v5, -0x7

    const/4 v6, 0x6

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3311
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_0

    .line 3318
    .end local v11    # "taskx":I
    .end local v12    # "tasky":I
    :cond_5
    move-object/from16 v0, p16

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3319
    .restart local v11    # "taskx":I
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3320
    .restart local v12    # "tasky":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    div-int/lit8 v4, p3, 0x2

    add-int v4, v4, p11

    add-int v4, v4, p5

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, -0x3

    div-int/lit8 v5, p4, 0x2

    add-int v5, v5, p12

    add-int v5, v5, p6

    add-int/2addr v5, v12

    add-int/lit8 v5, v5, -0x7

    const/4 v6, 0x6

    const/16 v7, 0xe

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3317
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_1

    .line 3326
    .end local v11    # "taskx":I
    .end local v12    # "tasky":I
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 3330
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 3334
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 3338
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_5
.end method

.method public drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fId"    # I
    .param p4, "anthor"    # I
    .param p5, "type"    # I
    .param p6, "cB"    # I
    .param p7, "cM"    # I
    .param p8, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 1208
    move-object/from16 v0, p8

    iget-byte v1, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v1, :cond_0

    .line 1210
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p8

    iget-short v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_nameImgIndex:S

    aget-object v2, v2, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1215
    :goto_0
    return-void

    .line 1213
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p8

    iget-short v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_nameImgIndex:S

    aget-object v2, v2, v3

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto :goto_0
.end method

.method public drawNormalKey(I[[Z)V
    .locals 9
    .param p1, "offset"    # I
    .param p2, "button"    # [[Z

    .prologue
    .line 1960
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->dummy:Z

    if-eqz v0, :cond_0

    .line 1961
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    .line 1962
    const/16 v2, 0x14

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x6e

    .line 1963
    const/16 v4, 0x61

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1961
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1964
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    .line 1965
    sget v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->dum_x:I

    sget v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->dum_y:I

    .line 1966
    const/16 v4, 0x61

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1964
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1967
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    .line 1968
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v2, -0x46

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x64

    .line 1969
    const/16 v4, 0x40

    const/16 v5, 0x41

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1967
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1971
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v8, v0, :cond_1

    .line 1977
    return-void

    .line 1972
    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    .line 1971
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1975
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    const/4 v2, 0x3

    if-ge v8, v2, :cond_3

    rem-int/lit8 v2, v8, 0x3

    mul-int/lit8 v2, v2, 0x2d

    add-int/lit8 v2, v2, 0x3

    :goto_2
    aget-object v3, p2, v8

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    sub-int/2addr v3, p1

    const/16 v4, 0x2a

    const/16 v5, 0x33

    rem-int/lit8 v6, v8, 0x3

    mul-int/lit8 v6, v6, 0x2a

    const/4 v7, 0x3

    if-ge v8, v7, :cond_5

    const/4 v7, 0x0

    :goto_4
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1

    :cond_3
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0x87

    rem-int/lit8 v3, v8, 0x3

    mul-int/lit8 v3, v3, 0x2d

    add-int/2addr v2, v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    goto :goto_3

    :cond_5
    const/16 v7, 0x33

    goto :goto_4
.end method

.method public drawOGForSk(III[[Z[[S[SI)V
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mSId"    # I
    .param p4, "button"    # [[Z
    .param p5, "sgInfo"    # [[S
    .param p6, "skCanUse"    # [S
    .param p7, "fId"    # I

    .prologue
    .line 1767
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    move/from16 v0, v20

    if-lt v0, v1, :cond_0

    .line 1799
    return-void

    .line 1768
    :cond_0
    add-int v1, v20, p3

    move-object/from16 v0, p6

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1770
    add-int v1, p3, v20

    aget-object v1, p4, v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    add-int v1, p3, v20

    aget-object v1, p4, v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 1771
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xf6ff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x2c

    .line 1772
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    rsub-int/lit8 v5, v5, 0x1d

    add-int/lit8 v5, v5, -0x4

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    .line 1773
    const/16 v5, 0x9e

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1771
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1774
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xffffff

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x2d

    .line 1775
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    rsub-int/lit8 v5, v5, 0x1d

    add-int/lit8 v5, v5, -0x4

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    .line 1776
    const/16 v5, 0x9c

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1774
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1782
    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0xad8463

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x2e

    .line 1783
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    rsub-int/lit8 v5, v5, 0x1d

    add-int/lit8 v5, v5, -0x4

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    .line 1784
    const/16 v5, 0x9a

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1782
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1786
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget v2, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v2, v2, p1

    add-int/lit8 v2, v2, 0x4

    .line 1787
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, p2, v3

    const/16 v3, 0x1d

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x4

    if-lt v3, v5, :cond_4

    const/4 v3, 0x1

    :goto_2
    add-int/2addr v3, v4

    const/16 v4, 0x1d

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int v4, v4, v20

    add-int/2addr v3, v4

    .line 1789
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0xb

    aget-object v5, v4, v5

    const/16 v6, 0x1f

    const/16 v7, 0x1b

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    add-int v8, v20, p3

    aget-short v8, p6, v8

    aget-object v8, p5, v8

    const/4 v9, 0x0

    aget-short v8, v8, v9

    aget-object v4, v4, v8

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillImgIdx:B

    mul-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x0

    .line 1790
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1791
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v15, 0x2

    aget-object v4, v4, v15

    add-int v15, v20, p3

    aget-short v15, p6, v15

    aget-object v15, p5, v15

    const/16 v16, 0x0

    aget-short v15, v15, v16

    aget-object v15, v4, v15

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v4, v4, p7

    const/16 v16, 0x1

    aget-byte v16, v4, v16

    const/16 v17, 0x12

    const/16 v18, 0x0

    const v19, 0xfffed2

    move/from16 v4, p7

    .line 1786
    invoke-static/range {v1 .. v19}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawIconWithStr(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;IIIILjavax/microedition/lcdui/Image;IIIILjava/util/Vector;BIII)V

    .line 1793
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    add-int v3, v20, p3

    aget-short v3, p6, v3

    aget-object v3, p5, v3

    const/4 v4, 0x0

    aget-short v3, v3, v4

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    .line 1794
    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit16 v3, v3, 0xc0

    .line 1795
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v5, p2, v4

    const/16 v4, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    if-lt v4, v6, :cond_5

    const/16 v4, 0x9

    :goto_3
    add-int/2addr v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    .line 1796
    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    .line 1793
    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 1767
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 1778
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x79582b

    sget v3, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    add-int v3, v3, p1

    add-int/lit8 v3, v3, 0x2d

    .line 1779
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    add-int v4, v4, p2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    rsub-int/lit8 v5, v5, 0x1d

    add-int/lit8 v5, v5, -0x4

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x1d

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v5, v5, v20

    add-int/2addr v4, v5

    .line 1780
    const/16 v5, 0x9c

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 1778
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    goto/16 :goto_1

    .line 1787
    :cond_4
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    add-int/lit8 v3, v3, -0x17

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    .line 1795
    :cond_5
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const/4 v6, 0x2

    aget-byte v4, v4, v6

    add-int/lit8 v4, v4, -0x6

    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_3
.end method

.method public drawPaperStreamer()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/16 v4, 0x15

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3567
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSColor:[I

    if-nez v0, :cond_0

    .line 3568
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSColor:[I

    .line 3569
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSColor:[I

    array-length v0, v0

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getRandArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSColor:[I

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    if-nez v0, :cond_1

    .line 3572
    const/4 v0, 0x2

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    .line 3573
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_2

    .line 3578
    .end local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_4

    .line 3587
    return-void

    .line 3574
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v1, 0x2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3575
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v1, v0, v8

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    if-le v0, v2, :cond_3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    invoke-static {v9, v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    :goto_2
    aput v0, v1, v10

    .line 3573
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3575
    :cond_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    goto :goto_2

    .line 3579
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_page:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v11

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v2, v2, v8

    aget v2, v2, v9

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v3, v3, v8

    aget v3, v3, v10

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v8

    rem-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v5, 0x15

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSColor:[I

    aget v5, v5, v8

    div-int/lit8 v5, v5, 0x7

    mul-int/lit8 v7, v5, 0x15

    move v5, v4

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3580
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v9

    invoke-static {v10, v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v9

    .line 3581
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v10

    invoke-static {v10, v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v10

    .line 3582
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    add-int/lit8 v0, v0, 0x15

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v10

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v1, v1, 0x15

    if-le v0, v1, :cond_6

    .line 3583
    :cond_5
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v1, 0x2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v9

    .line 3584
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v1, v0, v8

    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->pSPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v9

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    if-le v0, v2, :cond_7

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    invoke-static {v9, v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    :goto_3
    aput v0, v1, v10

    .line 3578
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3584
    :cond_7
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    goto :goto_3
.end method

.method public drawPop(Ljava/lang/Object;IIIIIIIII)V
    .locals 20
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "mode"    # I
    .param p3, "fId"    # I
    .param p4, "idx"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "mX"    # I
    .param p8, "mY"    # I
    .param p9, "mW"    # I
    .param p10, "mH"    # I

    .prologue
    .line 1365
    if-nez p1, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/jarworld/rpg/sanguocollege/Item;

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    .line 1369
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 1371
    .local v2, "it":Lcom/jarworld/rpg/sanguocollege/Item;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    move/from16 v0, v16

    if-lt v0, v1, :cond_4

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 1381
    invoke-direct/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawPopFrame(Ljava/lang/Object;IIIIIIII)[I

    move-result-object v15

    .line 1383
    .local v15, "a":[I
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    iget-short v4, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v4, v1, v4

    .line 1384
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v5, 0x2

    aget v5, v15, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    add-int/2addr v6, v1

    .line 1385
    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0xfffefe

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    move/from16 v7, p3

    .line 1383
    invoke-virtual/range {v3 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1387
    iget-byte v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    if-lez v1, :cond_2

    .line 1388
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-byte v4, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    .line 1389
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xa

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1390
    const/4 v7, 0x0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0x13

    aget-object v8, v1, v8

    .line 1388
    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 1391
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v4, 0x18

    aget-object v1, v1, v4

    const/4 v4, 0x7

    aget-object v4, v1, v4

    .line 1392
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    iget-byte v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    const/16 v6, 0x9

    if-le v1, v6, :cond_6

    const/16 v1, 0x11

    :goto_2
    add-int/2addr v5, v1

    .line 1393
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    add-int/2addr v6, v1

    .line 1394
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0xfffed2

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    move/from16 v7, p3

    .line 1391
    invoke-virtual/range {v3 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1397
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    iget-byte v4, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    aget-object v4, v1, v4

    .line 1398
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    iget-byte v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    if-lez v1, :cond_8

    iget-byte v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    const/16 v6, 0x9

    if-le v1, v6, :cond_7

    const/16 v1, 0x11

    :goto_3
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    add-int/2addr v1, v6

    :goto_4
    add-int/2addr v5, v1

    .line 1399
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    add-int/2addr v6, v1

    .line 1400
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0xfffed2

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    move/from16 v7, p3

    .line 1397
    invoke-virtual/range {v3 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1402
    const/16 v18, 0x0

    .line 1403
    .local v18, "offset":I
    iget-byte v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v1, :pswitch_data_0

    .line 1470
    :cond_3
    :goto_5
    :pswitch_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    iget-short v4, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v4, v1, v4

    .line 1471
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x7

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v5, v5, p4

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, v1

    .line 1472
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    add-int/2addr v6, v1

    .line 1473
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v11, 0xffdc1b

    .line 1474
    const/4 v1, 0x4

    new-array v12, v1, [I

    const/4 v1, 0x0

    const/4 v7, 0x0

    aget v7, v15, v7

    add-int/lit8 v7, v7, 0x7

    aput v7, v12, v1

    const/4 v1, 0x1

    const/4 v7, 0x1

    aget v7, v15, v7

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v13, v18, 0x2

    sget-object v14, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v14, v14, p3

    const/16 v19, 0x2

    aget-byte v14, v14, v19

    mul-int/2addr v13, v14

    add-int/2addr v7, v13

    sget-object v13, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v13, v13, p3

    const/4 v14, 0x3

    aget-byte v13, v13, v14

    add-int/2addr v7, v13

    aput v7, v12, v1

    const/4 v1, 0x2

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    add-int/lit8 v7, v7, -0xe

    aput v7, v12, v1

    const/4 v1, 0x3

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v13, 0x1

    aget-byte v7, v7, v13

    aput v7, v12, v1

    .line 1475
    const/4 v13, -0x1

    const/4 v14, 0x1

    move/from16 v7, p3

    .line 1470
    invoke-virtual/range {v3 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0

    .line 1372
    .end local v15    # "a":[I
    .end local v18    # "offset":I
    :cond_4
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v16

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    array-length v1, v1

    move/from16 v0, v17

    if-lt v0, v1, :cond_5

    .line 1371
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1373
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v16

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v1, v1, v17

    iget-short v3, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    if-eq v1, v3, :cond_0

    .line 1372
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1392
    .end local v17    # "j":I
    .restart local v15    # "a":[I
    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_2

    .line 1398
    :cond_7
    const/16 v1, 0x9

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1408
    .restart local v18    # "offset":I
    :pswitch_1
    iget v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    if-eqz v1, :cond_9

    .line 1409
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1410
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x1a

    .line 1409
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1411
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1412
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1413
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1414
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    if-lez v1, :cond_e

    const/4 v11, 0x0

    :goto_7
    iget v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    const/4 v13, -0x1

    .line 1411
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1415
    add-int/lit8 v18, v18, 0x1

    .line 1418
    :cond_9
    iget v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    if-eqz v1, :cond_a

    .line 1419
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1420
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x27

    .line 1419
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1421
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1422
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1423
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v18, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1424
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    if-lez v1, :cond_f

    const/4 v11, 0x0

    :goto_8
    iget v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    const/4 v13, -0x1

    .line 1421
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1425
    add-int/lit8 v18, v18, 0x1

    .line 1428
    :cond_a
    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    if-eqz v1, :cond_b

    .line 1429
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1430
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x34

    .line 1429
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1431
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1432
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1433
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v18, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1434
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    if-lez v1, :cond_10

    const/4 v11, 0x0

    :goto_9
    iget-short v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    const/4 v13, -0x1

    .line 1431
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1435
    add-int/lit8 v18, v18, 0x1

    .line 1438
    :cond_b
    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    if-eqz v1, :cond_c

    .line 1439
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1440
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x41

    .line 1439
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1441
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1442
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1443
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v18, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1444
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    if-lez v1, :cond_11

    const/4 v11, 0x0

    :goto_a
    iget-short v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    const/4 v13, -0x1

    .line 1441
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1445
    add-int/lit8 v18, v18, 0x1

    .line 1448
    :cond_c
    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    if-eqz v1, :cond_d

    .line 1449
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1450
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x4e

    .line 1449
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1451
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1452
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1453
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v18, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1454
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    if-lez v1, :cond_12

    const/4 v11, 0x0

    :goto_b
    iget-short v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    const/4 v13, -0x1

    .line 1451
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1455
    add-int/lit8 v18, v18, 0x1

    .line 1458
    :cond_d
    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    if-eqz v1, :cond_3

    .line 1459
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x21

    aget-object v4, v1, v4

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v5, v1, 0x7

    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v18, 0x2

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v7, v7, p3

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0xd

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 1460
    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/16 v10, 0x5b

    .line 1459
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1461
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 1462
    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/lit8 v4, v1, 0x22

    .line 1463
    const/4 v1, 0x1

    aget v1, v15, v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v5, v18, 0x2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v5, v5, p3

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0xa

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1464
    const/4 v6, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x13

    aget-object v7, v1, v7

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-short v1, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    if-lez v1, :cond_13

    const/4 v11, 0x0

    :goto_c
    iget-short v12, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    const/4 v13, -0x1

    .line 1461
    invoke-static/range {v3 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 1465
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1414
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 1424
    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 1434
    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 1444
    :cond_11
    const/4 v11, 0x1

    goto/16 :goto_a

    .line 1454
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_b

    .line 1464
    :cond_13
    const/4 v11, 0x1

    goto :goto_c

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawResultMenu(IIIII[Lcom/jarworld/rpg/sanguocollege/LeadingActor;)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h1"    # I
    .param p5, "h2"    # I
    .param p6, "role"    # [Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .prologue
    .line 2459
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2461
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "idx":I
    :goto_0
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v12, v0, :cond_1

    .line 2470
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x9

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x14

    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2471
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropMoneyTotal:S

    add-int/lit8 v2, p1, 0x14

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2473
    if-lez p5, :cond_0

    .line 2474
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int v1, p2, p4

    add-int/lit8 v2, v1, 0x3

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0xe

    aget-object v8, v1, v3

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2d

    aget-object v9, v1, v3

    move v1, p1

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2476
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x15

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x14

    add-int v3, p2, p4

    add-int/lit8 v3, v3, 0x11

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2477
    const/4 v12, 0x0

    :goto_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v0, v0

    if-lt v12, v0, :cond_3

    .line 2492
    :cond_0
    return-void

    .line 2462
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v12

    aget-object v0, p6, v0

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isToFight:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v12

    aget-object v0, p6, v0

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v12

    aget-object v0, p6, v0

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x16

    aget-short v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 2463
    add-int/lit8 v1, p1, 0x14

    add-int/lit8 v0, p2, 0xe

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/2addr v2, v13

    add-int/2addr v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const v7, 0xffc501

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v12

    aget-object v8, p6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2464
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x8

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x14

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffffff

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2465
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget v1, Lcom/jarworld/rpg/sanguocollege/Monster;->s_dropExpTotal:I

    add-int/lit8 v2, p1, 0x14

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0xb

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2466
    add-int/lit8 v13, v13, 0x1

    .line 2461
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2479
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v12

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v2

    .line 2480
    add-int/lit8 v2, p1, 0x14

    rem-int/lit8 v3, v12, 0x2

    mul-int/lit8 v3, v3, 0x8

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2481
    add-int v3, p2, p4

    add-int/lit8 v3, v3, 0x11

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v4, v12, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2482
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2479
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2484
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    .line 2485
    add-int/lit8 v1, p1, 0x14

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v2, v12, 0x2

    mul-int/lit8 v2, v2, 0x8

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2486
    add-int v2, p2, p4

    add-int/lit8 v2, v2, 0x11

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0xa

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v12, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2487
    const/4 v3, 0x2

    .line 2488
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    .line 2489
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFight;->tempItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v9, v9, v12

    iget-byte v9, v9, Lcom/jarworld/rpg/sanguocollege/Item;->m_byte_drawRNum:B

    const/4 v10, -0x1

    .line 2484
    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2477
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method

.method public drawRoleLabel(II[[Z)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "button"    # [[Z

    .prologue
    .line 1520
    const/4 v12, 0x0

    .line 1521
    .local v12, "idx":I
    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v11, v1, -0x1

    .local v11, "i":I
    :goto_0
    if-gez v11, :cond_2

    .line 1535
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    mul-int/lit8 v3, v12, 0x4

    add-int/2addr v3, p1

    mul-int/lit8 v4, v12, 0x3c

    add-int v5, p2, v4

    aget-object v4, p3, v12

    const/4 v6, 0x0

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_6

    const/4 v4, -0x5

    :goto_1
    add-int/2addr v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0x4f

    mul-int/lit8 v7, v12, 0x2e

    aget-object v8, p3, v12

    const/4 v9, 0x0

    aget-boolean v8, v8, v9

    if-nez v8, :cond_0

    aget-object v8, p3, v12

    const/4 v9, 0x1

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_7

    :cond_0
    const/4 v8, 0x0

    :goto_2
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1537
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1538
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    mul-int/lit8 v3, v12, 0x37

    aget-object v4, p3, v12

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    aget-object v4, p3, v12

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_8

    :cond_1
    const/16 v4, 0x36

    :goto_3
    const/16 v5, 0x37

    const/16 v6, 0x36

    const/4 v7, 0x2

    mul-int/lit8 v8, v12, 0x4

    add-int/2addr v8, p1

    add-int/lit8 v8, v8, -0x7

    mul-int/lit8 v9, v12, 0x3c

    add-int v9, v9, p2

    add-int/lit8 v10, v9, 0x11

    aget-object v9, p3, v12

    const/4 v13, 0x0

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_9

    const/4 v9, -0x5

    :goto_4
    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 1540
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, -0x16

    add-int/lit8 v4, p2, 0x12

    const/16 v5, 0x1e

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1541
    return-void

    .line 1522
    :cond_2
    aget-object v1, p3, v11

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    aget-object v1, p3, v11

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    .line 1523
    :cond_3
    move v12, v11

    .line 1521
    :cond_4
    :goto_5
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 1527
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    mul-int/lit8 v3, v11, 0x4

    add-int/2addr v3, p1

    mul-int/lit8 v4, v11, 0x3c

    add-int v4, v4, p2

    const/16 v5, 0x2e

    const/16 v6, 0x4f

    mul-int/lit8 v7, v11, 0x2e

    const/16 v8, 0x4f

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1529
    sget v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-ge v11, v1, :cond_4

    .line 1530
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1531
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    mul-int/lit8 v3, v11, 0x37

    const/16 v4, 0x6c

    const/16 v5, 0x37

    const/16 v6, 0x36

    const/4 v7, 0x2

    mul-int/lit8 v8, v11, 0x4

    add-int/2addr v8, p1

    add-int/lit8 v8, v8, -0x7

    mul-int/lit8 v9, v11, 0x3c

    add-int v9, v9, p2

    add-int/lit8 v9, v9, 0x11

    const/4 v10, 0x0

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_5

    .line 1535
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v8, 0x4f

    goto/16 :goto_2

    .line 1538
    :cond_8
    const/16 v4, 0x6c

    goto/16 :goto_3

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method public drawSLMenu(IIZ)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isRead"    # Z

    .prologue
    .line 2759
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2762
    const/4 v3, 0x6

    new-array v4, v3, [[Z

    const/4 v5, 0x0

    .line 2763
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_1

    const/16 v3, 0x4a

    :goto_0
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    const/4 v5, 0x1

    .line 2764
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_2

    const/16 v3, 0x4a

    :goto_1
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xb

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    const/4 v5, 0x2

    .line 2765
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_3

    const/16 v3, 0x4a

    :goto_2
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xc

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    const/4 v5, 0x3

    .line 2766
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_4

    const/16 v3, 0x4a

    :goto_3
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xd

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    const/4 v5, 0x4

    .line 2767
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_5

    const/16 v3, 0x4a

    :goto_4
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xe

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    const/4 v5, 0x5

    .line 2768
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz p3, :cond_6

    const/16 v3, 0x4a

    :goto_5
    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xf

    aget-object v3, v3, v6

    aput-object v3, v4, v5

    .line 2761
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2772
    const/4 v4, 0x1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v5, v3, v5

    if-eqz p3, :cond_7

    const/16 v3, 0x4a

    :goto_6
    aget-object v3, v5, v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    aget-boolean v3, v3, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2838
    :cond_0
    :goto_7
    return-void

    .line 2763
    :cond_1
    const/16 v3, 0x46

    goto/16 :goto_0

    .line 2764
    :cond_2
    const/16 v3, 0x46

    goto/16 :goto_1

    .line 2765
    :cond_3
    const/16 v3, 0x46

    goto :goto_2

    .line 2766
    :cond_4
    const/16 v3, 0x46

    goto :goto_3

    .line 2767
    :cond_5
    const/16 v3, 0x46

    goto :goto_4

    .line 2768
    :cond_6
    const/16 v3, 0x46

    goto :goto_5

    .line 2772
    :cond_7
    const/16 v3, 0x46

    goto :goto_6

    .line 2776
    :cond_8
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x2b

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    add-int/lit8 v7, p1, 0x19

    add-int/lit8 v8, p2, 0xd

    const/16 v9, 0x7a

    const/16 v10, 0xe3

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2777
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    add-int/lit8 v5, p1, 0x1c

    add-int/lit8 v6, p2, 0x1b

    const/16 v7, 0x74

    const/16 v8, 0xc7

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2779
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    const/4 v3, 0x6

    move/from16 v0, v16

    if-lt v0, v3, :cond_9

    .line 2789
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0x99

    add-int/lit8 v8, p2, 0x28

    const/16 v9, 0xf1

    const/16 v10, 0xab

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2790
    const/16 v16, 0x0

    :goto_9
    const/4 v3, 0x3

    move/from16 v0, v16

    if-lt v0, v3, :cond_e

    .line 2817
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0xfc

    add-int/lit8 v8, p2, 0x31

    const/16 v9, 0x87

    const/16 v10, 0x99

    const v11, 0x593f2c

    const v12, 0x79582b

    const v13, 0x8d6a3e

    const v14, 0xad8463

    const v15, 0xad8463

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2818
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x10c

    add-int/lit8 v6, p2, 0x3b

    const/16 v7, 0x67

    const/16 v8, 0x30

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2819
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xe9c898

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x10d

    add-int/lit8 v6, p2, 0x3c

    const/16 v7, 0x65

    const/16 v8, 0x2e

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2820
    sget-byte v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    if-ltz v3, :cond_0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    sget-byte v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-byte v3, v3, v4

    if-lez v3, :cond_0

    .line 2822
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    sget-byte v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v16, v3, -0x1

    :goto_a
    if-gez v16, :cond_15

    .line 2828
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_NPCFLOORID:[S

    sget-byte v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-short v5, v5, v6

    aget-object v4, v4, v5

    .line 2829
    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x10e

    .line 2830
    add-int/lit8 v6, p2, 0x6c

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    rsub-int/lit8 v7, v7, 0x32

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 2831
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x71381c

    const v11, 0xffffff

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    .line 2828
    invoke-virtual/range {v3 .. v14}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2833
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x10e

    move/from16 v0, p2

    add-int/lit16 v6, v0, 0x9d

    const/16 v7, 0x19

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2834
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    sget-byte v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-byte v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x12e

    move/from16 v0, p2

    add-int/lit16 v6, v0, 0x9f

    const/4 v7, 0x0

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0x13

    aget-object v8, v8, v9

    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2836
    move/from16 v0, p1

    add-int/lit16 v3, v0, 0x10e

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xb1

    const/4 v5, 0x0

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_MONEY:[I

    sget-byte v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    goto/16 :goto_7

    .line 2780
    :cond_9
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz p3, :cond_c

    const/16 v3, 0x4a

    :goto_b
    aget-object v3, v4, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_a

    .line 2781
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz p3, :cond_d

    const/16 v3, 0x4a

    :goto_c
    aget-object v3, v4, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_b

    .line 2782
    :cond_a
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xf6ff

    add-int/lit8 v5, p1, 0x1f

    add-int/lit8 v6, p2, 0x1e

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6e

    const/16 v8, 0x21

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2783
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xffffff

    add-int/lit8 v5, p1, 0x20

    add-int/lit8 v6, p2, 0x1f

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6c

    const/16 v8, 0x1f

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2785
    :cond_b
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x21

    add-int/lit8 v8, p2, 0x20

    mul-int/lit8 v9, v16, 0x20

    add-int/2addr v8, v9

    const/16 v9, 0x6a

    const/16 v10, 0x1d

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2786
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x30

    add-int/lit8 v6, p2, 0x24

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x4c

    const/16 v8, 0x15

    const/4 v9, 0x0

    add-int/lit8 v10, v16, 0x2

    mul-int/lit8 v10, v10, 0x15

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2779
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 2780
    :cond_c
    const/16 v3, 0x46

    goto/16 :goto_b

    .line 2781
    :cond_d
    const/16 v3, 0x46

    goto/16 :goto_c

    .line 2791
    :cond_e
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz p3, :cond_11

    const/16 v3, 0x4a

    :goto_d
    aget-object v3, v4, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x7

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_f

    .line 2792
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz p3, :cond_12

    const/16 v3, 0x4a

    :goto_e
    aget-object v3, v4, v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x7

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_10

    .line 2793
    :cond_f
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xf6ff

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x9f

    add-int/lit8 v6, p2, 0x2f

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/16 v7, 0x5b

    const/16 v8, 0x33

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2794
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xffffff

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xa0

    add-int/lit8 v6, p2, 0x30

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/16 v7, 0x59

    const/16 v8, 0x31

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2796
    :cond_10
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0xa1

    add-int/lit8 v8, p2, 0x31

    mul-int/lit8 v9, v16, 0x35

    add-int/2addr v8, v9

    const/16 v9, 0x57

    const/16 v10, 0x2f

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2798
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xbd

    add-int/lit8 v6, p2, 0x3b

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/16 v7, 0x1f

    const/16 v8, 0xd

    const/4 v9, 0x0

    mul-int/lit8 v10, v16, 0xd

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2800
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xc0

    add-int/lit8 v6, p2, 0x4e

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2801
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xd6

    add-int/lit8 v6, p2, 0x4e

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2802
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    aget-wide v3, v3, v16

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 2804
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_f
    const/4 v3, 0x3

    move/from16 v0, v17

    if-lt v0, v3, :cond_13

    .line 2790
    .end local v17    # "j":I
    :goto_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 2791
    :cond_11
    const/16 v3, 0x46

    goto/16 :goto_d

    .line 2792
    :cond_12
    const/16 v3, 0x46

    goto/16 :goto_e

    .line 2805
    .restart local v17    # "j":I
    :cond_13
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xb2

    mul-int/lit8 v6, v17, 0x16

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4d

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2804
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 2809
    .end local v17    # "j":I
    :cond_14
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    aget-wide v4, v4, v16

    const-wide/16 v6, 0x19

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xeb

    add-int/lit8 v6, p2, 0x4d

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0x13

    aget-object v8, v8, v9

    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2811
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    aget-wide v4, v4, v16

    const-wide/16 v6, 0x5dc

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xd5

    add-int/lit8 v6, p2, 0x4d

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0x13

    aget-object v8, v8, v9

    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2813
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    aget-wide v4, v4, v16

    const-wide/32 v6, 0x15f90

    div-long/2addr v4, v6

    long-to-int v4, v4

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xbf

    add-int/lit8 v6, p2, 0x4d

    mul-int/lit8 v7, v16, 0x35

    add-int/2addr v6, v7

    const/4 v7, 0x0

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0x13

    aget-object v8, v8, v9

    invoke-static/range {v3 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto/16 :goto_10

    .line 2823
    :cond_15
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    sget-byte v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-object v3, v3, v4

    aget-short v3, v3, v16

    if-ltz v3, :cond_16

    .line 2824
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x26

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0x108

    mul-int/lit8 v6, v16, 0x1e

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x34

    const/16 v7, 0x37

    const/16 v8, 0x36

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    sget-byte v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_byt_recordIndex:B

    aget-object v9, v9, v10

    aget-short v9, v9, v16

    mul-int/lit8 v9, v9, 0x37

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2822
    :cond_16
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_a
.end method

.method public drawSMStor(II)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2847
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    const/16 v6, 0xc8

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x14

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    array-length v5, v5

    mul-int/2addr v4, v5

    add-int/lit8 v7, v4, 0x28

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move v4, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2848
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0xe

    const/16 v4, 0xc2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x14

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    array-length v6, v6

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2850
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x28

    add-int/lit8 v5, p2, -0x10

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2851
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x40

    add-int/lit8 v3, p2, -0xd

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0x12c

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2853
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sMStoreMenu:[I

    array-length v0, v0

    if-lt v13, v0, :cond_0

    .line 2865
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x1f

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 2866
    return-void

    .line 2854
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v1, v13, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 2855
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xf6ff

    add-int/lit8 v2, p1, 0x17

    add-int/lit8 v3, p2, 0x17

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x14

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x9a

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xe

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2856
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    add-int/lit8 v2, p1, 0x18

    add-int/lit8 v3, p2, 0x18

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x14

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x98

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2858
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x19

    add-int/lit8 v5, p2, 0x19

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x14

    mul-int/2addr v6, v13

    add-int/2addr v5, v6

    const/16 v6, 0x96

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xa

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2859
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    aget-object v1, v1, v13

    .line 2860
    add-int/lit8 v2, p1, 0x64

    .line 2861
    add-int/lit8 v3, p2, 0x1e

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x14

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 2862
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ne v13, v8, :cond_3

    sget v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->expMtp:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    const v8, 0x666666

    :goto_1
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2859
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2853
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2862
    :cond_2
    const/16 v8, 0x243e

    goto :goto_1

    :cond_3
    const/16 v8, 0x243e

    goto :goto_1
.end method

.method public drawSSOption(IIII)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 2156
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2158
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v13, v0, :cond_0

    .line 2171
    return-void

    .line 2160
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x23

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v13

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 2161
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xf6ff

    add-int/lit8 v2, p3, -0x71

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    add-int/lit8 v3, p2, 0xa

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x71

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xe

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2162
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    add-int/lit8 v2, p3, -0x6f

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    add-int/lit8 v3, p2, 0xb

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    const/16 v4, 0x6f

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2164
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p3, -0x6e

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v5, p2, 0xc

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x16

    mul-int/2addr v6, v13

    add-int/2addr v5, v6

    .line 2165
    const/16 v6, 0x6e

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, 0xa

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    .line 2164
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2166
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v2, v1, v2

    if-nez v13, :cond_2

    const/4 v1, 0x4

    :goto_1
    aget-object v1, v2, v1

    .line 2167
    div-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p1

    .line 2168
    add-int/lit8 v3, p2, 0xc

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x16

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 2169
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0x283e4a

    const v8, 0xdd7d37

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 2166
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 2158
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2166
    :cond_2
    const/4 v1, 0x1

    if-ne v13, v1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public drawScreenCover()V
    .locals 20

    .prologue
    .line 2957
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->sCManager:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 2958
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 2959
    const/4 v3, 0x0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    neg-int v4, v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_sCTimer:B

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xf

    .line 2960
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    .line 2961
    const/4 v7, 0x0

    .line 2958
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2962
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 2963
    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_sCTimer:B

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xf

    .line 2964
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    .line 2965
    const/4 v7, 0x0

    .line 2962
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2966
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v1, 0x78

    add-int/lit8 v11, v1, 0x1

    .line 2967
    .local v11, "col":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_2

    .line 2979
    .end local v11    # "col":I
    .end local v12    # "i":I
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->sCManager:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 2980
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeType:B

    packed-switch v1, :pswitch_data_0

    .line 3049
    :cond_1
    :goto_1
    return-void

    .line 2968
    .restart local v11    # "col":I
    .restart local v12    # "i":I
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    .line 2969
    mul-int/lit8 v3, v12, 0x78

    .line 2970
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sub-int/2addr v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_sCTimer:B

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xf

    .line 2971
    const/16 v5, 0x78

    const/16 v6, 0x2d

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2968
    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2972
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 2973
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x78

    const/16 v6, 0x2d

    const/4 v7, 0x3

    .line 2974
    mul-int/lit8 v8, v12, 0x78

    .line 2975
    sget-short v9, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v9, v9, -0x2d

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v10, v10, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-short v10, v10, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_sCLength:S

    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_sCTimer:B

    move/from16 v19, v0

    mul-int v10, v10, v19

    div-int/lit8 v10, v10, 0xa

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xf

    .line 2976
    const/4 v10, 0x0

    .line 2973
    invoke-interface/range {v1 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 2967
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2983
    .end local v11    # "col":I
    .end local v12    # "i":I
    :pswitch_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_3

    .line 2984
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 2985
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x14

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v4, v4, 0x14

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x1e

    add-int/2addr v3, v4

    .line 2986
    const/4 v4, 0x0

    .line 2987
    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    .line 2988
    const/4 v7, 0x0

    .line 2984
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2989
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 2990
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v3, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1e

    add-int/lit8 v3, v3, -0x11

    .line 2991
    const/4 v4, 0x0

    .line 2992
    const/16 v5, 0x8

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    .line 2993
    const/4 v7, 0x0

    .line 2989
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2994
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 2995
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v3, 0x14

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x1e

    add-int/lit8 v3, v3, -0x3

    .line 2996
    const/4 v4, 0x0

    .line 2997
    const/4 v5, 0x3

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    .line 2998
    const/4 v7, 0x0

    .line 2994
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_1

    .line 3000
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_1

    .line 3005
    :pswitch_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    const/16 v2, 0xf

    if-gt v1, v2, :cond_4

    .line 3006
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/2addr v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/jarworld/rpg/sanguocollege/Tool;->sqrt(I)I

    move-result v1

    div-int/lit8 v14, v1, 0x2

    .line 3007
    .local v14, "l":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 3008
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 3009
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    const/16 v1, 0x8

    if-ge v12, v1, :cond_1

    .line 3010
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v14

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v14

    mul-int/lit8 v4, v14, 0x2

    mul-int/lit8 v5, v14, 0x2

    mul-int/lit8 v6, v12, 0x2d

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/lit8 v7, v7, -0x2d

    div-int/lit8 v7, v7, 0xf

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    .line 3009
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3013
    .end local v12    # "i":I
    .end local v14    # "l":I
    :cond_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_1

    .line 3018
    :pswitch_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_6

    .line 3019
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x18

    add-int/lit8 v17, v1, 0x1

    .line 3020
    .local v17, "n":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    const/4 v2, 0x1

    mul-int/lit8 v3, v17, 0x4

    div-int/lit8 v3, v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int v16, v1, v2

    .line 3021
    .local v16, "m":I
    const/4 v15, 0x1

    .line 3022
    .local v15, "len":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    move/from16 v0, v16

    if-gt v12, v0, :cond_1

    .line 3023
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    sub-int v1, v16, v12

    if-le v13, v1, :cond_5

    .line 3022
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3024
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    .line 3025
    mul-int/lit8 v3, v13, 0x18

    add-int/lit8 v3, v3, 0xc

    sub-int v4, v16, v12

    sub-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v15

    sub-int/2addr v3, v4

    .line 3026
    add-int/lit8 v4, v17, -0x1

    sub-int/2addr v4, v12

    mul-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, 0xc

    sub-int v5, v16, v12

    sub-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v15

    sub-int/2addr v4, v5

    .line 3027
    sub-int v5, v16, v12

    sub-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v15

    mul-int/lit8 v5, v5, 0x2

    sub-int v6, v16, v12

    sub-int/2addr v6, v13

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    .line 3024
    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 3023
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 3031
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v15    # "len":I
    .end local v16    # "m":I
    .end local v17    # "n":I
    :cond_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_1

    .line 3036
    :pswitch_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    const/16 v2, 0xf

    if-gt v1, v2, :cond_7

    .line 3037
    const/16 v18, 0x14

    .line 3038
    .local v18, "singleHeight":I
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int v1, v1, v18

    add-int/lit8 v17, v1, 0x1

    .line 3039
    .restart local v17    # "n":I
    const/4 v15, 0x1

    .line 3040
    .restart local v15    # "len":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_1

    .line 3041
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int v4, v12, v18

    add-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v5, v5, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/2addr v5, v15

    sub-int/2addr v4, v5

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_byt_fadeTimer:B

    mul-int/2addr v6, v15

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 3040
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 3044
    .end local v12    # "i":I
    .end local v15    # "len":I
    .end local v17    # "n":I
    .end local v18    # "singleHeight":I
    :cond_7
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_1

    .line 2980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public drawSet(II)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2630
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2633
    const/4 v3, 0x6

    new-array v3, v3, [[Z

    const/4 v4, 0x0

    .line 2634
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xb

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2635
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xc

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2636
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xd

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 2637
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xe

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2638
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0xf

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2639
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x4d

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x10

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 2632
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2643
    const/4 v3, 0x1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x4d

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2672
    :cond_0
    return-void

    .line 2647
    :cond_1
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x2b

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    add-int/lit8 v7, p1, 0x19

    add-int/lit8 v8, p2, 0xd

    const/16 v9, 0x7a

    const/16 v10, 0xe3

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2648
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    add-int/lit8 v5, p1, 0x1c

    add-int/lit8 v6, p2, 0x1b

    const/16 v7, 0x74

    const/16 v8, 0xc7

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2650
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v3, 0x6

    move/from16 v0, v16

    if-lt v0, v3, :cond_2

    .line 2659
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0x99

    add-int/lit8 v8, p2, 0x28

    const/16 v9, 0xf1

    const/16 v10, 0xab

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2661
    const/16 v16, 0x0

    :goto_1
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    .line 2662
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0x593f2c

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xa2

    add-int/lit8 v6, p2, 0x37

    mul-int/lit8 v7, v16, 0x50

    add-int/2addr v6, v7

    const/16 v7, 0xdf

    const/16 v8, 0x1f

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2663
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move/from16 v0, p1

    add-int/lit16 v7, v0, 0xbb

    add-int/lit8 v8, p2, 0x3a

    mul-int/lit8 v9, v16, 0x50

    add-int/2addr v8, v9

    const/16 v9, 0xad

    const/16 v10, 0x19

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2664
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xec

    add-int/lit8 v6, p2, 0x3c

    mul-int/lit8 v7, v16, 0x50

    add-int/2addr v6, v7

    const/16 v7, 0x4c

    const/16 v8, 0x15

    const/4 v9, 0x0

    mul-int/lit8 v10, v16, 0x15

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2665
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    const/4 v3, 0x2

    move/from16 v0, v17

    if-lt v0, v3, :cond_5

    .line 2670
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x32

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v6, v0, 0xd6

    if-nez v16, :cond_9

    sget-boolean v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->music:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x60

    mul-int/lit8 v7, v16, 0x50

    add-int/2addr v6, v7

    const/16 v7, 0x15

    const/16 v8, 0x13

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2661
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 2651
    .end local v17    # "j":I
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x4d

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x4d

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    .line 2652
    :cond_3
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xf6ff

    add-int/lit8 v5, p1, 0x1f

    add-int/lit8 v6, p2, 0x1e

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6e

    const/16 v8, 0x21

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2653
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v4, 0xffffff

    add-int/lit8 v5, p1, 0x20

    add-int/lit8 v6, p2, 0x1f

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x6c

    const/16 v8, 0x1f

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2655
    :cond_4
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x21

    add-int/lit8 v8, p2, 0x20

    mul-int/lit8 v9, v16, 0x20

    add-int/2addr v8, v9

    const/16 v9, 0x6a

    const/16 v10, 0x1d

    const v11, 0x633e21

    const v12, 0x855d43

    const v13, 0xbf9c76

    const v14, 0x7a582b

    const v15, 0xd4b386

    invoke-static/range {v3 .. v15}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2656
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    add-int/lit8 v5, p1, 0x30

    add-int/lit8 v6, p2, 0x24

    mul-int/lit8 v7, v16, 0x20

    add-int/2addr v6, v7

    const/16 v7, 0x4c

    const/16 v8, 0x15

    const/4 v9, 0x0

    add-int/lit8 v10, v16, 0x2

    mul-int/lit8 v10, v10, 0x15

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2650
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 2666
    .restart local v17    # "j":I
    :cond_5
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x30

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xbb

    mul-int/lit8 v6, v17, 0x7e

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5d

    mul-int/lit8 v7, v16, 0x50

    add-int/2addr v6, v7

    const/16 v7, 0x16

    const/16 v8, 0x19

    const/4 v9, 0x0

    mul-int/lit8 v10, v17, 0x19

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2667
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x31

    aget-object v4, v4, v5

    move/from16 v0, p1

    add-int/lit16 v5, v0, 0xd1

    mul-int/lit8 v6, v17, 0x7e

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5b

    mul-int/lit8 v7, v16, 0x50

    add-int/2addr v6, v7

    const/16 v7, 0x1f

    const/16 v8, 0x1d

    const/4 v9, 0x0

    .line 2668
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x4d

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    mul-int/lit8 v11, v16, 0x2

    add-int/lit8 v11, v11, 0x7

    add-int v11, v11, v17

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-nez v10, :cond_6

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x4d

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    mul-int/lit8 v11, v16, 0x2

    add-int/lit8 v11, v11, 0x7

    add-int v11, v11, v17

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_7

    :cond_6
    const/4 v10, 0x0

    .line 2667
    :goto_4
    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2665
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 2668
    :cond_7
    const/16 v10, 0x1d

    goto :goto_4

    .line 2670
    :cond_8
    const/16 v5, 0x7e

    goto/16 :goto_3

    :cond_9
    sget-boolean v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->dummy:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v5, 0x7e

    goto/16 :goto_3
.end method

.method public drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "maxValue"    # I
    .param p6, "viewValue"    # I
    .param p7, "mSId"    # I
    .param p8, "img"    # Ljavax/microedition/lcdui/Image;
    .param p9, "button"    # [Z

    .prologue
    .line 1493
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0x593f2c

    const/16 v8, 0x8

    const/16 v9, 0x8

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 1495
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x3

    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, p2, 0x4

    add-int/lit8 v7, p4, -0x8

    const/16 v8, 0x10

    const/4 v3, 0x0

    aget-boolean v3, p9, v3

    if-eqz v3, :cond_1

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v3, p8

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 1496
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v4, 0x3

    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, p2, 0x4

    add-int/lit8 v7, p4, -0x8

    const/16 v8, 0x20

    const/4 v3, 0x1

    aget-boolean v3, p9, v3

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v3, p8

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 1498
    move/from16 v0, p5

    move/from16 v1, p6

    if-le v0, v1, :cond_0

    .line 1500
    add-int/lit8 v6, p3, -0xe

    .line 1502
    .local v6, "iw":I
    add-int/lit8 v2, p4, -0x46

    mul-int v2, v2, p6

    div-int v2, v2, p5

    if-lez v2, :cond_3

    add-int/lit8 v2, p4, -0x46

    mul-int v2, v2, p6

    div-int v7, v2, p5

    .line 1504
    .local v7, "ih":I
    :goto_2
    sub-int v2, p5, p6

    move/from16 v0, p7

    if-ne v0, v2, :cond_4

    add-int/lit8 v2, p4, -0x46

    sub-int v15, v2, v7

    .line 1505
    .local v15, "offset":I
    :goto_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v3, 0x49697f

    sub-int v4, p3, v6

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p1

    add-int/lit8 v5, p2, 0x23

    add-int/2addr v5, v15

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1506
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/high16 v9, 0x630000

    sub-int v2, p3, v6

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, p1

    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v2, p2, 0x23

    add-int v11, v2, v15

    add-int/lit8 v12, v6, -0x2

    const/4 v14, 0x0

    move v13, v7

    invoke-static/range {v8 .. v14}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1507
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v9, 0xba5711

    sub-int v2, p3, v6

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, p1

    add-int/lit8 v10, v2, 0x2

    add-int/lit8 v2, p2, 0x23

    add-int v11, v2, v15

    add-int/lit8 v12, v6, -0x4

    const/4 v14, 0x0

    move v13, v7

    invoke-static/range {v8 .. v14}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1508
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v9, 0xff6a00

    sub-int v2, p3, v6

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, p1

    add-int/lit8 v10, v2, 0x3

    add-int/lit8 v2, p2, 0x23

    add-int v11, v2, v15

    add-int/lit8 v12, v6, -0x6

    const/4 v14, 0x0

    move v13, v7

    invoke-static/range {v8 .. v14}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1509
    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v9, 0xffab00

    sub-int v2, p3, v6

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, p1

    add-int/lit8 v10, v2, 0x4

    add-int/lit8 v2, p2, 0x23

    add-int v11, v2, v15

    add-int/lit8 v12, v6, -0x8

    const/4 v14, 0x0

    move v13, v7

    invoke-static/range {v8 .. v14}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 1511
    .end local v6    # "iw":I
    .end local v7    # "ih":I
    .end local v15    # "offset":I
    :cond_0
    return-void

    .line 1495
    :cond_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1496
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1502
    .restart local v6    # "iw":I
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1504
    .restart local v7    # "ih":I
    :cond_4
    add-int/lit8 v2, p4, -0x46

    mul-int v2, v2, p7

    div-int v15, v2, p5

    goto/16 :goto_3
.end method

.method public drawSkillMenu(IILcom/jarworld/rpg/sanguocollege/GameCharacter;[S)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "someone"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skCanUse"    # [S

    .prologue
    .line 2222
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2225
    const/4 v1, 0x6

    new-array v1, v1, [[Z

    const/4 v2, 0x0

    .line 2226
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2227
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x7

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 2228
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x8

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 2229
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x9

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 2230
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xa

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 2231
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x3e

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xb

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 2224
    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2235
    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    move/from16 v0, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x4

    const/16 v5, 0xa4

    const/16 v6, 0x105

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, p2

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2240
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    add-int/lit8 v2, p1, 0xa

    add-int/lit8 v3, p2, 0x5

    move-object/from16 v0, p3

    iget-short v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_headImgIdx:S

    add-int/lit16 v4, v4, 0x12d

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 2242
    add-int/lit8 v2, p1, 0x5a

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xb9

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const v7, 0x513828

    const v8, 0xffffff

    move-object v1, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawName(IIIIIIILcom/jarworld/rpg/sanguocollege/GameCharacter;)V

    .line 2244
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, 0x27

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xbc

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/16 v8, 0x27

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2245
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x11553

    add-int/lit8 v3, p1, 0x41

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xc5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x51

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2246
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x42

    move/from16 v0, p2

    add-int/lit16 v4, v0, 0xc6

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x4f

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2247
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x42

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xc6

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p3

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    const/4 v6, 0x0

    const v7, 0x3399ff

    const v8, 0x3333ff

    const/16 v9, 0x4f

    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-static/range {v1 .. v11}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2248
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v2, p1, 0x64

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xba

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

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

    .line 2250
    add-int/lit16 v1, p1, 0x198

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v2, p2, 0x2d

    .line 2251
    const/4 v3, 0x3

    new-array v3, v3, [[Z

    const/4 v4, 0x0

    .line 2252
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2253
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2254
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 2250
    invoke-virtual {p0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawRoleLabel(II[[Z)V

    .line 2258
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    add-int/lit16 v5, p1, 0x99

    add-int/lit8 v6, p2, 0x5

    const/16 v7, 0xf2

    const/16 v8, 0xfa

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2259
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v2, 0x593f2c

    add-int/lit16 v3, p1, 0x9c

    add-int/lit8 v4, p2, 0x14

    const/16 v5, 0xec

    const/16 v6, 0xdc

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2260
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    add-int/lit16 v3, p1, 0x9c

    add-int/lit8 v4, p2, 0x14

    const/16 v5, 0xec

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2261
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    add-int/lit16 v5, p1, 0x9e

    move/from16 v0, p2

    add-int/lit16 v6, v0, 0xa2

    const/16 v7, 0xe8

    const/16 v8, 0x4c

    const v9, 0x593f2c

    const v10, 0x79582b

    const v11, 0x8d6a3e

    const v12, 0xad8463

    const v13, 0xad8463

    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2263
    add-int/lit16 v2, p1, 0x16a

    add-int/lit8 v3, p2, 0x27

    const/16 v4, 0x1a

    const/16 v5, 0x78

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v9, 0xc

    aget-object v9, v1, v9

    .line 2264
    const/4 v1, 0x2

    new-array v10, v1, [Z

    const/4 v1, 0x0

    .line 2265
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/16 v12, 0x3e

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x4

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    const/4 v1, 0x1

    .line 2266
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/16 v12, 0x3e

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    move-object v1, p0

    .line 2263
    invoke-virtual/range {v1 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2270
    if-eqz p4, :cond_0

    .line 2271
    add-int/lit16 v2, p1, 0x9c

    add-int/lit8 v3, p2, 0x23

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/16 v5, 0x3e

    aget-object v1, v1, v5

    const/4 v5, 0x1

    aget-object v5, v1, v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->sGInfo:[[S

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawOGForSk(III[[Z[[S[SI)V

    .line 2273
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2274
    add-int/lit16 v1, p1, 0xb2

    .line 2275
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0xa7

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 2276
    const/16 v3, 0xc0

    .line 2277
    const/16 v4, 0x42

    .line 2278
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const v10, 0xfffed2

    .line 2279
    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    add-int/lit16 v13, p1, 0xb2

    aput v13, v11, v12

    const/4 v12, 0x1

    move/from16 v0, p2

    add-int/lit16 v13, v0, 0xa7

    aput v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0xc0

    aput v13, v11, v12

    const/4 v12, 0x3

    const/16 v13, 0x42

    aput v13, v11, v12

    .line 2280
    const/4 v12, -0x1

    const/4 v13, 0x1

    .line 2274
    invoke-static/range {v1 .. v13}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    goto/16 :goto_0
.end method

.method public drawSomeOneState(IIBBZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "idx"    # B
    .param p4, "eqIdx"    # B
    .param p5, "isShowPop"    # Z

    .prologue
    .line 2077
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2080
    const/4 v0, 0x6

    new-array v0, v0, [[Z

    const/4 v1, 0x0

    .line 2081
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xa

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2082
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xb

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2083
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xc

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2084
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xd

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2085
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xe

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2086
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x20

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xf

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 2079
    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2090
    const/4 v0, 0x1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x20

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    :goto_0
    return-void

    .line 2094
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    add-int/lit8 v4, p1, 0x19

    add-int/lit8 v5, p2, 0x11

    const/16 v6, 0xc0

    const/16 v7, 0xde

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2095
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x1c

    add-int/lit8 v3, p2, 0x1f

    const/16 v4, 0xba

    const/16 v5, 0xc2

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2096
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x24

    add-int/lit8 v5, p2, 0x25

    const/16 v6, 0xaa

    const/16 v7, 0x58

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2097
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x24

    add-int/lit16 v5, p2, 0x83

    const/16 v6, 0xaa

    const/16 v7, 0x58

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2099
    add-int/lit16 v0, p1, 0x198

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v1, p2, 0x2d

    .line 2100
    const/4 v2, 0x3

    new-array v2, v2, [[Z

    const/4 v3, 0x0

    .line 2101
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x20

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2102
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x20

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 2103
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x20

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 2099
    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawRoleLabel(II[[Z)V

    .line 2107
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit8 v3, p2, 0x2c

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x1a

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2108
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x530201

    add-int/lit8 v2, p1, 0x55

    add-int/lit8 v3, p2, 0x36

    const/16 v4, 0x67

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2109
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x56

    add-int/lit8 v3, p2, 0x37

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2110
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v1, p1, 0x56

    add-int/lit8 v2, p2, 0x37

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v4, v4, p3

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v5, v5, p3

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    const/4 v5, 0x0

    const/high16 v6, 0xff0000

    const/high16 v7, 0xcc0000

    const/16 v8, 0x65

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2111
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit16 v1, p1, 0x82

    add-int/lit8 v2, p2, 0x2b

    const/4 v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x3

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v10, v10, p3

    aget-object v9, v9, v10

    iget v9, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v11, v11, p3

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2113
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit8 v3, p2, 0x48

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x27

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2114
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x11553

    add-int/lit8 v2, p1, 0x55

    add-int/lit8 v3, p2, 0x52

    const/16 v4, 0x67

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2115
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x56

    add-int/lit8 v3, p2, 0x53

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2116
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v1, p1, 0x56

    add-int/lit8 v2, p2, 0x53

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v4, v4, p3

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v5, v5, p3

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    const/4 v5, 0x0

    const v6, 0x3399ff

    const v7, 0x3333ff

    const/16 v8, 0x65

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2117
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit16 v1, p1, 0x82

    add-int/lit8 v2, p2, 0x47

    const/4 v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x3

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v10, v10, p3

    aget-object v9, v9, v10

    iget v9, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v11, v11, p3

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2119
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit8 v3, p2, 0x64

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0xd

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2120
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x1c5301

    add-int/lit8 v2, p1, 0x55

    add-int/lit8 v3, p2, 0x6e

    const/16 v4, 0x67

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2121
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x56

    add-int/lit8 v3, p2, 0x6f

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 2122
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit8 v1, p1, 0x56

    add-int/lit8 v2, p2, 0x6f

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v4, v4, p3

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v5, v5, p3

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_nextExp:I

    const/4 v5, 0x0

    const v6, 0x99ff99

    const v7, 0x66cc00

    const/16 v8, 0x65

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V

    .line 2123
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    add-int/lit16 v1, p1, 0x82

    add-int/lit8 v2, p2, 0x63

    const/4 v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x3

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v10, v10, p3

    aget-object v9, v9, v10

    iget v9, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v11, v11, p3

    aget-object v10, v10, v11

    iget v10, v10, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_nextExp:I

    invoke-static/range {v0 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V

    .line 2125
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit16 v3, p2, 0x8d

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2126
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v2, v2, p3

    aget-object v1, v1, v2

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    add-int/lit8 v2, p1, 0x51

    add-int/lit16 v3, p2, 0x8f

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2128
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x7b

    add-int/lit16 v3, p2, 0x8d

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x34

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2129
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v2, v2, p3

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    add-int/lit16 v2, p1, 0x9b

    add-int/lit16 v3, p2, 0x8f

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2131
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit16 v3, p2, 0x9f

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x41

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2132
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v2, v2, p3

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    add-int/lit8 v2, p1, 0x51

    add-int/lit16 v3, p2, 0xa1

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2134
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x7b

    add-int/lit16 v3, p2, 0x9f

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x4e

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2135
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v2, v2, p3

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->agility:S

    add-int/lit16 v2, p1, 0x9b

    add-int/lit16 v3, p2, 0xa1

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2137
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x31

    add-int/lit16 v3, p2, 0xb1

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/16 v7, 0x5b

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 2138
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v2, v2, p3

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->luck:S

    add-int/lit8 v2, p1, 0x51

    add-int/lit16 v3, p2, 0xb3

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 2140
    add-int/lit8 v0, p1, 0x7b

    add-int/lit16 v1, p2, 0xb1

    const/4 v2, 0x1

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 2142
    add-int/lit8 v0, p1, 0x31

    add-int/lit16 v1, p2, 0xc3

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 2144
    add-int/lit16 v1, p1, 0xde

    add-int/lit8 v2, p2, 0x2d

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v3, v3, p3

    aget-object v3, v0, v3

    move-object v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawEqNotch(IILcom/jarworld/rpg/sanguocollege/LeadingActor;IZ)V

    goto/16 :goto_0
.end method

.method public drawSunshine()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3468
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x18d

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->shineFrame:I

    move v2, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->shineFrame:I

    .line 3469
    return-void
.end method

.method public drawSwitch(IIII)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v10, 0x0

    .line 3269
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xe

    aget-object v8, v1, v2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2d

    aget-object v9, v1, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 3271
    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x2

    aget-object v0, v0, v1

    aget-object v4, v0, v10

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawOGForMS(III[[ZI)V

    .line 3272
    return-void
.end method

.method public drawTask(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2576
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V

    .line 2579
    const/4 v0, 0x6

    new-array v0, v0, [[Z

    const/4 v1, 0x0

    .line 2580
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2581
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2582
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2583
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x6

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 2584
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x7

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 2585
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x45

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x8

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 2578
    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMainMenu([[Z)V

    .line 2589
    const/4 v0, 0x1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x45

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawBaseFrame(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2621
    :cond_0
    :goto_0
    return-void

    .line 2593
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    add-int/lit8 v4, p1, 0x2f

    add-int/lit8 v5, p2, 0x7

    const/16 v6, 0x144

    const/16 v7, 0xf6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2594
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    add-int/lit8 v2, p1, 0x32

    add-int/lit8 v3, p2, 0x15

    const/16 v4, 0x11e

    const/16 v5, 0xda

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 2595
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x35

    add-int/lit16 v5, p2, 0xa0

    const/16 v6, 0x118

    const/16 v7, 0x4c

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 2597
    add-int/lit16 v1, p1, 0x154

    add-int/lit8 v2, p2, 0x15

    const/16 v3, 0x1a

    const/16 v4, 0xda

    sget v5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v8, 0xc

    aget-object v8, v0, v8

    .line 2598
    const/4 v0, 0x2

    new-array v9, v0, [Z

    const/4 v0, 0x0

    .line 2599
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x45

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    const/4 v0, 0x1

    .line 2600
    sget-object v10, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/16 v11, 0x45

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    aput-boolean v10, v9, v0

    move-object v0, p0

    .line 2597
    invoke-virtual/range {v0 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawShaft(IIIIIIILjavax/microedition/lcdui/Image;[Z)V

    .line 2604
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->branchMison:[S

    array-length v0, v0

    if-lez v0, :cond_2

    .line 2606
    add-int/lit8 v1, p1, 0x32

    add-int/lit8 v2, p2, 0x15

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x45

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-object v4, v0, v4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v5, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->branchMison:[S

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawOGForTask(III[[Z[SI)V

    .line 2608
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mId_y:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2609
    add-int/lit8 v0, p1, 0x49

    .line 2610
    add-int/lit16 v1, p2, 0xa5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 2611
    const/16 v2, 0xf0

    .line 2612
    const/16 v3, 0x42

    .line 2613
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffed2

    .line 2614
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    add-int/lit8 v12, p1, 0x49

    aput v12, v10, v11

    const/4 v11, 0x1

    add-int/lit16 v12, p2, 0xa5

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0xf0

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x42

    aput v12, v10, v11

    .line 2615
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 2609
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    goto/16 :goto_0

    .line 2619
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x30

    aget-object v1, v1, v2

    add-int/lit16 v2, p1, 0xc1

    add-int/lit16 v3, p2, 0xa0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x4c

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0
.end method

.method public drawTipWith1D(Ljava/util/Vector;)V
    .locals 12
    .param p1, "idx"    # Ljava/util/Vector;

    .prologue
    .line 1561
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 1563
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v0, 0x8

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v2, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    add-int/lit8 v4, v0, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1565
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1566
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0xb

    sub-int/2addr v1, v2

    div-int/lit8 v2, v1, 0x2

    .line 1567
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    sub-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    .line 1568
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1565
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1569
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->curItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v2

    .line 1570
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0xb

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 1571
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1572
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1569
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1643
    :goto_0
    return-void

    .line 1573
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 1575
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v1, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x50

    div-int/lit8 v2, v0, 0x2

    const/16 v3, 0x106

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x50

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xfffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1577
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 1578
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1579
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x50

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x12

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 1580
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1577
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1582
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayCost:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayCost:S

    add-int/2addr v1, v2

    .line 1583
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x50

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x12

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    .line 1582
    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 1585
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1586
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v1, 0x2

    .line 1587
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x12

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    .line 1588
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1585
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1590
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5f

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x3a

    const/4 v2, 0x0

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawMOA(IIII)V

    .line 1592
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0xe

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x12

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 1593
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, 0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x44

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/16 v4, 0x12

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    goto/16 :goto_0

    .line 1594
    :cond_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_2

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 1596
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v0, 0x8

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v2, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1598
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1599
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v1, 0x2

    .line 1600
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    .line 1601
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1598
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1603
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    const/16 v2, 0x19

    aget-object v1, v1, v2

    .line 1604
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1605
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 1606
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1603
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1607
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlaedItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aget-object v1, v1, v2

    .line 1608
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    .line 1609
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    .line 1610
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1607
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0

    .line 1611
    :cond_2
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    .line 1613
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v0, 0x8

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v2, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    add-int/lit8 v4, v0, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1615
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1616
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x9

    sub-int/2addr v1, v2

    div-int/lit8 v2, v1, 0x2

    .line 1617
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    sub-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    .line 1618
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1615
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1619
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    aget-object v1, v1, v2

    .line 1620
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x9

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 1621
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1622
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1619
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0

    .line 1623
    :cond_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x47

    if-eq v0, v1, :cond_4

    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_5

    .line 1625
    :cond_4
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v1, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x3c

    div-int/lit8 v2, v0, 0x2

    const/16 v3, 0x106

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    add-int/lit8 v4, v0, 0x3c

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xfffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1627
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1628
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v1, 0x2

    .line 1629
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3c

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x12

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    .line 1630
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1627
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1632
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0xe

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v0, v0, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    .line 1633
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, 0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x44

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x2a

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v0, v0, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawYON(IIIZZ)V

    goto/16 :goto_0

    .line 1636
    :cond_5
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v0, 0x8

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v2, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    add-int/lit8 v4, v0, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1638
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    .line 1639
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v1, 0x2

    .line 1640
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    sub-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    .line 1641
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v1, p1

    .line 1638
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto/16 :goto_0
.end method

.method public drawTipWith2D([Ljava/util/Vector;)V
    .locals 13
    .param p1, "idx"    # [Ljava/util/Vector;

    .prologue
    .line 1651
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v0, 0x8

    .line 1652
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    array-length v2, p1

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v2, v0, 0x2

    .line 1653
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    array-length v0, p1

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v0, v4

    add-int/lit8 v4, v0, 0xa

    const v5, 0x65fff6

    const v6, 0xf6ff

    const v7, 0xffffff

    move-object v0, p0

    .line 1651
    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->drawInfoFrame(IIIIIII)V

    .line 1655
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, p1

    if-lt v12, v0, :cond_0

    .line 1661
    return-void

    .line 1656
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    aget-object v1, p1, v12

    .line 1657
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    .line 1658
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    array-length v4, p1

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    .line 1659
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xffc501

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1656
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 1655
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public drawWind()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3475
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    if-nez v0, :cond_0

    .line 3476
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    .line 3477
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 3482
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    array-length v0, v0

    if-lt v8, v0, :cond_4

    .line 3494
    return-void

    .line 3478
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    aput v1, v0, v6

    .line 3479
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v1, v0, v8

    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v0

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_2

    move v0, v6

    :goto_2
    add-int/2addr v2, v0

    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v0, v0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_3

    move v0, v6

    :goto_3
    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    aput v0, v1, v9

    .line 3477
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3479
    :cond_2
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 3483
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v2, v2, v8

    aget v2, v2, v6

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v3, v3, v8

    aget v3, v3, v9

    sget v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    const/16 v4, 0x9a

    const/16 v5, 0x31

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 3484
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v0, v0, v8

    aget v1, v0, v6

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v6

    .line 3485
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v0, v0, v8

    aget v0, v0, v6

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    add-int/lit16 v1, v1, -0x9a

    if-ge v0, v1, :cond_5

    .line 3486
    invoke-static {v6, v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 3487
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 3491
    :goto_4
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v1, v0, v8

    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v2, v0

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_7

    move v0, v6

    :goto_5
    add-int/2addr v2, v0

    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v0, v0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_8

    move v0, v6

    :goto_6
    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    aput v0, v1, v9

    .line 3482
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 3489
    :cond_6
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->windPos:[[I

    aget-object v0, v0, v8

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v1, v2

    aput v1, v0, v6

    goto :goto_4

    .line 3491
    :cond_7
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_8
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v0, v0, 0x2

    goto :goto_6
.end method

.method public drawYON(IIIZZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "YON"    # I
    .param p4, "isPressed"    # Z
    .param p5, "isBig"    # Z

    .prologue
    const/16 v4, 0x36

    const/16 v5, 0x32

    const/4 v6, 0x0

    .line 1947
    if-eqz p5, :cond_1

    .line 1948
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/16 v4, 0x3a

    if-eqz p4, :cond_0

    move v7, v6

    :goto_0
    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 1952
    :goto_1
    return-void

    :cond_0
    move v7, v5

    .line 1948
    goto :goto_0

    .line 1950
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const/16 v5, 0x25

    if-eqz p4, :cond_2

    :goto_2
    mul-int/lit8 v7, p3, 0x25

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2
.end method

.method public drawheadImg(IILcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "someOne"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "type"    # I

    .prologue
    .line 1225
    packed-switch p4, :pswitch_data_0

    .line 1246
    :goto_0
    return-void

    .line 1228
    :pswitch_0
    iget-byte v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v0, :cond_0

    .line 1230
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 1231
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    iget-short v2, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_headImgIdx:S

    mul-int/lit8 v2, v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x67

    const/4 v6, 0x2

    const/4 v9, 0x0

    move v7, p1

    move v8, p2

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    .line 1234
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    const/16 v4, 0x64

    const/16 v5, 0x67

    const/16 v6, 0x12c

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 1239
    :pswitch_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    const/16 v4, 0x64

    const/16 v5, 0x67

    iget-short v2, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_headImgIdx:S

    mul-int/lit8 v6, v2, 0x64

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 1243
    :pswitch_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_headImgIdx:S

    add-int/lit16 v3, v1, 0x12e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    goto :goto_0

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public engineRoll(ZII)V
    .locals 7
    .param p1, "isWork"    # Z
    .param p2, "idx"    # I
    .param p3, "speed"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 3596
    if-eqz p1, :cond_0

    .line 3597
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 3598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 3621
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 3599
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    if-lez v1, :cond_3

    .line 3600
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 3598
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3601
    :cond_3
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    if-nez v1, :cond_2

    .line 3602
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    if-le v1, v2, :cond_4

    .line 3603
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    aget v2, v1, v3

    sub-int/2addr v2, p3

    aput v2, v1, v3

    goto :goto_2

    .line 3605
    :cond_4
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, v0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, v0

    aget v2, v2, v5

    aput v2, v1, v3

    goto :goto_2

    .line 3610
    .end local v0    # "i":I
    :cond_5
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    aget v1, v1, v4

    if-lez v1, :cond_6

    .line 3611
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    goto :goto_1

    .line 3612
    :cond_6
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    aget v1, v1, v4

    if-nez v1, :cond_0

    .line 3613
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    aget v1, v1, v3

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p2

    aget v2, v2, v6

    if-le v1, v2, :cond_7

    .line 3614
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    aget v2, v1, v3

    sub-int/2addr v2, p3

    aput v2, v1, v3

    goto :goto_1

    .line 3616
    :cond_7
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v1, v1, p2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p2

    aget v2, v2, v5

    aput v2, v1, v3

    goto/16 :goto_1
.end method

.method public getAdvalue()V
    .locals 1

    .prologue
    .line 1115
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    add-int/lit8 v0, v0, 0x32

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    .line 1116
    return-void
.end method

.method public getCurMusicIndex(I)B
    .locals 2
    .param p1, "npcFloorID"    # I

    .prologue
    .line 4333
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public getDialog(Ljava/lang/Object;SLjava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "dialogID"    # S
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4149
    instance-of v0, p1, Lcom/jarworld/rpg/sanguocollege/Dialog;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 4150
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Dialog;

    invoke-direct {p0, p2, p3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->loadDialog(SLjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    .line 4151
    check-cast p1, Lcom/jarworld/rpg/sanguocollege/Dialog;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->loadDialog(SLjava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/util/Vector;

    iput-object v0, p1, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    .line 4156
    :cond_0
    :goto_0
    return-void

    .line 4152
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/jarworld/rpg/sanguocollege/Teacher;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 4153
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/Teacher;

    invoke-direct {p0, p2, p3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->loadDialog(SLjava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->option:[[S

    .line 4154
    check-cast p1, Lcom/jarworld/rpg/sanguocollege/Teacher;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->loadDialog(SLjava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/util/Vector;

    iput-object v0, p1, Lcom/jarworld/rpg/sanguocollege/Teacher;->content:[[Ljava/util/Vector;

    goto :goto_0
.end method

.method public getExpMultiple()V
    .locals 1

    .prologue
    .line 1120
    const/4 v0, 0x2

    sput v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->expMtp:I

    .line 1121
    return-void
.end method

.method public getLvl()V
    .locals 5

    .prologue
    .line 1125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v0, v2, :cond_0

    .line 1132
    return-void

    .line 1126
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v3, v3, v0

    aget-object v2, v2, v3

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v4, 0x16

    aget-short v3, v3, v4

    if-ge v2, v3, :cond_2

    .line 1128
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->levelUp()V

    .line 1126
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMoney()V
    .locals 1

    .prologue
    .line 1110
    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    add-int/lit16 v0, v0, 0x1770

    sput v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    .line 1111
    return-void
.end method

.method public abstract lastWork(II)V
.end method

.method public loadDialogHead(S)V
    .locals 3
    .param p1, "headIdx"    # S

    .prologue
    .line 4276
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 4277
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    const/4 v1, -0x1

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    .line 4278
    const/16 v0, 0x12d

    if-le p1, v0, :cond_0

    .line 4279
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iput-short p1, v0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    .line 4280
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/s/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".otr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 4282
    :cond_0
    return-void
.end method

.method public loadDlgBubbleInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 4247
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    if-eqz v1, :cond_0

    .line 4248
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    const/4 v2, -0x1

    iput-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_bubbleBrowID:B

    .line 4249
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput v5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    .line 4252
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v1, v1, v2

    aget-short v1, v1, v6

    if-ltz v1, :cond_1

    .line 4254
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v1, v1, v2

    const/4 v2, 0x5

    aget-short v1, v1, v2

    if-nez v1, :cond_2

    .line 4255
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v3, v3, v4

    aget-short v3, v3, v6

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 4256
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-short v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_bubbleBrowID:B

    .line 4257
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput v5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    .line 4269
    :cond_1
    :goto_0
    return-void

    .line 4259
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4260
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v1, v1, v0

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-short v2, v2, v6

    if-ne v1, v2, :cond_3

    .line 4261
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 4262
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    aget-object v2, v2, v3

    aget-short v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_bubbleBrowID:B

    .line 4263
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->m_dialog:Lcom/jarworld/rpg/sanguocollege/Dialog;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    iput v5, v1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->bbFrameIndex:I

    goto :goto_0

    .line 4259
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public loadRecord(I)Z
    .locals 28
    .param p1, "iRecordIdx"    # I

    .prologue
    .line 3897
    const/16 v23, 0x0

    .line 3900
    .local v23, "rs":Ljavax/microedition/rms/RecordStore;
    :try_start_0
    const-string v2, "RMS"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v23

    .line 3901
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 3910
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3902
    :goto_0
    const/4 v2, 0x0

    .line 4139
    :goto_1
    return v2

    .line 3911
    :catch_0
    move-exception v10

    .line 3912
    .local v10, "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_0

    .line 3913
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_1
    move-exception v10

    .line 3914
    .local v10, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_0

    .line 3904
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreException;
    :cond_0
    add-int/lit8 v2, p1, 0x1

    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B
    :try_end_2
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    .line 3910
    .local v22, "record":[B
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3 .. :try_end_3} :catch_8

    .line 3918
    :goto_2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3919
    .local v8, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3922
    .local v9, "dis":Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    .line 3923
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    sput-wide v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->totalTime:J

    .line 3924
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    .line 3925
    .local v19, "npcFloorID":S
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    .line 3926
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v2, v2, p1

    array-length v2, v2

    if-lt v11, v2, :cond_3

    .line 3929
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    .line 3930
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    .line 3931
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    .line 3933
    const/4 v11, 0x0

    :goto_4
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v2, v2

    if-lt v11, v2, :cond_4

    .line 3937
    sget-boolean v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v2, :cond_1

    .line 3938
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setSpeed(BZ)V

    .line 3940
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    .line 3941
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    .line 3942
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v2, v2, v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    .line 3943
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v24

    .line 3946
    .local v24, "sceneID":S
    const/4 v11, 0x0

    :goto_5
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScLAInfo:[S

    array-length v2, v2

    if-lt v11, v2, :cond_5

    .line 3949
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v16

    .line 3950
    .local v16, "l":S
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 3951
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v2, 0x2

    move/from16 v0, v16

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    .line 3952
    const/4 v11, 0x0

    :goto_6
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    array-length v2, v2

    if-lt v11, v2, :cond_6

    .line 3960
    :cond_2
    const/4 v11, 0x0

    :goto_7
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->UIONOFF:[Z

    array-length v2, v2

    if-lt v11, v2, :cond_8

    .line 3965
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sput v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    .line 3967
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sput v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fightRoleCount:I

    .line 3969
    const/4 v11, 0x0

    :goto_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    array-length v2, v2

    if-lt v11, v2, :cond_9

    .line 3974
    const/4 v11, 0x0

    :goto_9
    sget v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v11, v2, :cond_a

    .line 3978
    const/4 v11, 0x0

    :goto_a
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v2, v2

    if-lt v11, v2, :cond_b

    .line 4032
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sput-byte v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->love:B

    .line 4035
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 4036
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v21

    .line 4037
    .local v21, "pocketSize":S
    const/4 v11, 0x0

    :goto_b
    move/from16 v0, v21

    if-lt v11, v0, :cond_12

    .line 4046
    const/4 v11, 0x0

    :goto_c
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    array-length v2, v2

    if-lt v11, v2, :cond_13

    .line 4049
    const/4 v11, 0x0

    :goto_d
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    array-length v2, v2

    if-lt v11, v2, :cond_14

    .line 4052
    const/4 v11, 0x0

    :goto_e
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    array-length v2, v2

    if-lt v11, v2, :cond_15

    .line 4060
    const/4 v11, 0x0

    :goto_f
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    array-length v2, v2

    if-lt v11, v2, :cond_17

    .line 4064
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 4066
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->mapItemVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 4067
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v3, -0x1

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_i_mapItemVecIdx:I

    .line 4069
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v17

    .line 4071
    .local v17, "len":S
    const/4 v11, 0x0

    :goto_10
    move/from16 v0, v17

    if-lt v11, v0, :cond_18

    .line 4077
    const/4 v11, 0x0

    :goto_11
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    array-length v2, v2

    if-lt v11, v2, :cond_19

    .line 4081
    const/4 v11, 0x0

    :goto_12
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    array-length v2, v2

    if-lt v11, v2, :cond_1a

    .line 4084
    const/4 v11, 0x0

    :goto_13
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    array-length v2, v2

    if-lt v11, v2, :cond_1b

    .line 4101
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameScene;->changeScene(SS)V

    .line 4102
    const/4 v11, 0x0

    :goto_14
    sget v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v11, v2, :cond_1f

    .line 4108
    const/4 v11, 0x0

    :goto_15
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    array-length v2, v2

    if-lt v11, v2, :cond_20

    .line 4117
    const/4 v11, 0x0

    :goto_16
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    array-length v2, v2

    if-lt v11, v2, :cond_21

    .line 4130
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 4131
    const/4 v9, 0x0

    .line 4132
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 4133
    const/4 v8, 0x0

    .line 4139
    .end local v11    # "i":I
    .end local v16    # "l":S
    .end local v17    # "len":S
    .end local v19    # "npcFloorID":S
    .end local v21    # "pocketSize":S
    .end local v24    # "sceneID":S
    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3905
    .end local v8    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "dis":Ljava/io/DataInputStream;
    .end local v22    # "record":[B
    :catch_2
    move-exception v2

    .line 3910
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_5
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3906
    :goto_18
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3911
    :catch_3
    move-exception v10

    .line 3912
    .local v10, "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_18

    .line 3913
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_4
    move-exception v10

    .line 3914
    .local v10, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_18

    .line 3907
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreException;
    :catchall_0
    move-exception v2

    .line 3910
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_6
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3916
    :goto_19
    throw v2

    .line 3911
    :catch_5
    move-exception v10

    .line 3912
    .local v10, "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto :goto_19

    .line 3913
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_6
    move-exception v10

    .line 3914
    .local v10, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_19

    .line 3911
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreException;
    .restart local v22    # "record":[B
    :catch_7
    move-exception v10

    .line 3912
    .local v10, "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V

    goto/16 :goto_2

    .line 3913
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreNotOpenException;
    :catch_8
    move-exception v10

    .line 3914
    .local v10, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v10}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto/16 :goto_2

    .line 3927
    .end local v10    # "e":Ljavax/microedition/rms/RecordStoreException;
    .restart local v8    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "i":I
    .restart local v19    # "npcFloorID":S
    :cond_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    .line 3926
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 3934
    :cond_4
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;-><init>()V

    aput-object v3, v2, v11

    .line 3933
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 3947
    .restart local v24    # "sceneID":S
    :cond_5
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScLAInfo:[S

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v11

    .line 3946
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 3953
    .restart local v16    # "l":S
    :cond_6
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1a
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    aget-object v2, v2, v11

    array-length v2, v2

    if-lt v14, v2, :cond_7

    .line 3952
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 3954
    :cond_7
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v14

    .line 3953
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    .line 3961
    .end local v14    # "j":I
    :cond_8
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->UIONOFF:[Z

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    aput-boolean v3, v2, v11

    .line 3960
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 3970
    :cond_9
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v11

    .line 3969
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 3975
    :cond_a
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v3, v3, v11

    aget-object v2, v2, v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    .line 3974
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 3979
    :cond_b
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v11

    int-to-short v4, v11

    iput-short v4, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_nameImgIndex:S

    iput-short v4, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    .line 3981
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_headImgIdx:S

    .line 3982
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    .line 3983
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    .line 3985
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_phySGID:S

    .line 3987
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanEat:Z

    .line 3989
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    .line 3991
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v2, v11

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v4, 0x8

    aget-short v2, v2, v4

    const/4 v4, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    .line 3992
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_1b
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    array-length v2, v2

    if-lt v14, v2, :cond_c

    .line 3998
    const/4 v14, 0x0

    :goto_1c
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    array-length v2, v2

    if-lt v14, v2, :cond_e

    .line 4002
    const/4 v14, 0x0

    :goto_1d
    const/4 v2, 0x5

    if-lt v14, v2, :cond_f

    .line 4008
    const/4 v14, 0x0

    :goto_1e
    const/4 v2, 0x5

    if-lt v14, v2, :cond_10

    .line 4011
    const/4 v14, 0x0

    :goto_1f
    const/4 v2, 0x5

    if-lt v14, v2, :cond_11

    .line 4016
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->init()V

    .line 4018
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 4019
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 4021
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_element:B

    .line 4022
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_elementLvl:B

    .line 4024
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    .line 4025
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_nextExp:I

    .line 4027
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    .line 4029
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isInTeam:Z

    .line 4030
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isToFight:Z

    .line 3978
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 3993
    :cond_c
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_20
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v14

    array-length v2, v2

    if-lt v15, v2, :cond_d

    .line 3992
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1b

    .line 3994
    :cond_d
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v14

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v15

    .line 3993
    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    .line 3999
    .end local v15    # "k":I
    :cond_e
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v14

    .line 3998
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1c

    .line 4003
    :cond_f
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v14

    .line 4004
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    aput-object v3, v2, v14

    .line 4005
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v14

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v11

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v3, v3, v14

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 4002
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1d

    .line 4009
    :cond_10
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v14

    .line 4008
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1e

    .line 4012
    :cond_11
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v14

    .line 4011
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1f

    .line 4038
    .end local v14    # "j":I
    .restart local v21    # "pocketSize":S
    :cond_12
    new-instance v13, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v13}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    .line 4039
    .local v13, "item":Lcom/jarworld/rpg/sanguocollege/Item;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    .line 4040
    iget-short v2, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-virtual {v13, v2}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 4041
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput-byte v2, v13, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    .line 4042
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v2, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4037
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 4047
    .end local v13    # "item":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_13
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    aput-boolean v3, v2, v11

    .line 4046
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 4050
    :cond_14
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    aput-boolean v3, v2, v11

    .line 4049
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_d

    .line 4053
    :cond_15
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_21
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v2, v2, v11

    array-length v2, v2

    if-lt v14, v2, :cond_16

    .line 4056
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v11

    .line 4052
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 4054
    :cond_16
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v14

    .line 4053
    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    .line 4061
    .end local v14    # "j":I
    :cond_17
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v2, v2, v11

    const/4 v3, 0x0

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_flag:B

    .line 4060
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 4072
    .restart local v17    # "len":S
    :cond_18
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 4074
    .local v12, "id":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v2, v12}, Lcom/jarworld/rpg/sanguocollege/GameScene;->addMission(I)V

    .line 4071
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    .line 4078
    .end local v12    # "id":I
    :cond_19
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_preOverNum:B

    .line 4077
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 4082
    :cond_1a
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v11

    .line 4081
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_12

    .line 4085
    :cond_1b
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/ArrayList;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/ArrayList;-><init>()V

    aput-object v3, v2, v11

    .line 4086
    div-int/lit8 v26, v11, 0x1f

    .line 4087
    .local v26, "tidx":I
    rem-int/lit8 v20, v11, 0x1f

    .line 4088
    .local v20, "off":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    aget v2, v2, v26

    const/high16 v3, 0x40000000    # 2.0f

    ushr-int v3, v3, v20

    and-int v25, v2, v3

    .line 4089
    .local v25, "t":I
    if-lez v25, :cond_1c

    .line 4090
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    .line 4091
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 4092
    .local v18, "length":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v3, v2, v11

    const/4 v2, 0x5

    move/from16 v0, v18

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, v3, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    .line 4093
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_22
    move/from16 v0, v18

    if-lt v14, v0, :cond_1d

    .line 4084
    .end local v14    # "j":I
    .end local v18    # "length":I
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 4094
    .restart local v14    # "j":I
    .restart local v18    # "length":I
    :cond_1d
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_23
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v2, v2, v14

    array-length v2, v2

    if-lt v15, v2, :cond_1e

    .line 4093
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 4095
    :cond_1e
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v2, v2, v11

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v2, v2, v14

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v15

    .line 4094
    add-int/lit8 v15, v15, 0x1

    goto :goto_23

    .line 4103
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v18    # "length":I
    .end local v20    # "off":I
    .end local v25    # "t":I
    .end local v26    # "tidx":I
    :cond_1f
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v3, v3, v11

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    .line 4104
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    .line 4105
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v6, v6, v7

    iget v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v27, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v7, v7, v27

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    .line 4103
    invoke-virtual/range {v2 .. v7}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setPos(SSFFB)V

    .line 4102
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_14

    .line 4109
    :cond_20
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    .line 4110
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    .line 4112
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v11

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_verIdx:S

    .line 4113
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v2, v2, v11

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_horIdx:S

    .line 4108
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_15

    .line 4119
    :cond_21
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v11

    const/4 v3, 0x1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v3

    .line 4121
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v11

    const/4 v3, 0x2

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v3

    .line 4123
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v11

    const/4 v3, 0x6

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v3

    .line 4125
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v11

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x5

    if-lt v2, v3, :cond_22

    .line 4126
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v11

    const/4 v3, 0x7

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v2, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 4117
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16

    .line 4134
    .end local v11    # "i":I
    .end local v16    # "l":S
    .end local v17    # "len":S
    .end local v19    # "npcFloorID":S
    .end local v21    # "pocketSize":S
    .end local v24    # "sceneID":S
    :catch_9
    move-exception v10

    .line 4135
    .local v10, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 4136
    const/4 v8, 0x0

    .line 4137
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17
.end method

.method public loadRecordList()V
    .locals 14

    .prologue
    .line 3624
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    array-length v11, v11

    if-lt v6, v11, :cond_0

    .line 3627
    const/4 v6, 0x0

    :goto_1
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    array-length v11, v11

    if-lt v6, v11, :cond_1

    .line 3632
    const/4 v9, 0x0

    .line 3633
    .local v9, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v8, 0x0

    check-cast v8, [B

    .line 3636
    .local v8, "recordBytes":[B
    :try_start_0
    const-string v11, "RMS"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v9

    .line 3637
    invoke-virtual {v9}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v11

    if-nez v11, :cond_4

    .line 3638
    const/4 v6, 0x0

    :goto_2
    const/4 v11, 0x3

    if-lt v6, v11, :cond_3

    .line 3643
    invoke-virtual {v9}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    .line 3644
    const/4 v11, 0x0

    move-object v0, v11

    check-cast v0, [B

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3685
    :goto_3
    return-void

    .line 3625
    .end local v8    # "recordBytes":[B
    .end local v9    # "rs":Ljavax/microedition/rms/RecordStore;
    :cond_0
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    const/4 v12, -0x1

    aput-byte v12, v11, v6

    .line 3624
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3628
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v11, v11, v6

    array-length v11, v11

    if-lt v7, v11, :cond_2

    .line 3627
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3629
    :cond_2
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v11, v11, v6

    const/4 v12, -0x1

    aput-short v12, v11, v7

    .line 3628
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3639
    .end local v7    # "j":I
    .restart local v8    # "recordBytes":[B
    .restart local v9    # "rs":Ljavax/microedition/rms/RecordStore;
    :cond_3
    const/4 v11, 0x1

    :try_start_1
    new-array v8, v11, [B

    .line 3640
    const/4 v11, 0x0

    const/4 v12, -0x1

    aput-byte v12, v8, v11

    .line 3641
    const/4 v11, 0x0

    array-length v12, v8

    invoke-virtual {v9, v8, v11, v12}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3638
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3647
    :catch_0
    move-exception v10

    .line 3648
    .local v10, "rse":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3652
    .end local v10    # "rse":Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    .line 3653
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 3655
    .local v3, "dis":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    move-object v4, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dis":Ljava/io/DataInputStream;
    move-object v2, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    :goto_5
    const/4 v11, 0x3

    if-lt v6, v11, :cond_5

    .line 3670
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 3671
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3672
    const/4 v3, 0x0

    .line 3673
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3674
    const/4 v1, 0x0

    .line 3676
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :goto_6
    :try_start_4
    invoke-virtual {v9}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3683
    const/4 v9, 0x0

    .line 3684
    const/4 v8, 0x0

    check-cast v8, [B

    .line 3685
    goto :goto_3

    .line 3656
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :cond_5
    add-int/lit8 v11, v6, 0x1

    :try_start_5
    invoke-virtual {v9, v11}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v8

    .line 3657
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    const/4 v12, 0x0

    aget-byte v12, v8, v12

    aput-byte v12, v11, v6

    .line 3658
    array-length v11, v8

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 3659
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 3660
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :try_start_6
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3661
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    const/4 v11, 0x1

    :try_start_7
    invoke-virtual {v3, v11}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 3662
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    aput-wide v12, v11, v6

    .line 3663
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_NPCFLOORID:[S

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    aput-short v12, v11, v6

    .line 3664
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_MONEY:[I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    aput v12, v11, v6

    .line 3665
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_7
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v11, v11, v6

    array-length v11, v11

    if-lt v7, v11, :cond_6

    .line 3655
    .end local v7    # "j":I
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object v4, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v2, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 3666
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "j":I
    :cond_6
    sget-object v11, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v11, v11, v6

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    aput-short v12, v11, v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3665
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3677
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "j":I
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 3678
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    const/4 v3, 0x0

    .line 3679
    const/4 v1, 0x0

    .line 3680
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 3677
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_9

    :catch_3
    move-exception v5

    goto :goto_9

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :cond_8
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_8
.end method

.method public abstract loadRes(B)V
.end method

.method public loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V
    .locals 4
    .param p1, "imgArray"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "idxArray"    # [I
    .param p3, "imgArrayPath"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 352
    return-void

    .line 345
    :cond_0
    aget v1, p2, v0

    if-gez v1, :cond_2

    .line 344
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_2
    aget v1, p2, v0

    aget-object v1, p1, v1

    if-nez v1, :cond_1

    .line 349
    aget v1, p2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_1
.end method

.method public menuDragged(IIII)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "maxValue"    # I
    .param p3, "viewMaxMenu"    # I
    .param p4, "num"    # I

    .prologue
    .line 712
    if-le p2, p3, :cond_0

    .line 713
    packed-switch p1, :pswitch_data_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 716
    :pswitch_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sub-int/2addr v0, p4

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    sub-int/2addr v0, p4

    goto :goto_1

    .line 721
    :pswitch_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/2addr v0, p4

    sub-int v1, p2, p3

    if-le v0, v1, :cond_2

    sub-int v0, p2, p3

    :goto_2
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/2addr v0, p4

    goto :goto_2

    .line 713
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuScroll(III)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "maxValue"    # I
    .param p3, "viewMaxMenu"    # I

    .prologue
    .line 689
    if-le p2, p3, :cond_0

    .line 690
    packed-switch p1, :pswitch_data_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 693
    :pswitch_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    sub-int v0, p2, p3

    :goto_1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 698
    :pswitch_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p2, p3

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->mSId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 690
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onKeyDown(I)V
.end method

.method public abstract onKeyUp(I)V
.end method

.method public abstract onPointerDragged(II)V
.end method

.method public abstract onPointerPressed(II)V
.end method

.method public abstract onPointerReleased(II)V
.end method

.method public playGamePlayerArray(II)V
    .locals 2
    .param p1, "i1"    # I
    .param p2, "loop"    # I

    .prologue
    .line 4311
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->music:Z

    if-nez v0, :cond_0

    .line 4318
    :goto_0
    return-void

    .line 4314
    :cond_0
    sput p1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingPlayerID:I

    .line 4315
    sput p2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->currentPlayingLoop:I

    .line 4316
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->stopMusic()V

    .line 4317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sound/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->playMusic(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public playMusic(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    .line 4292
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->music:Z

    if-nez v0, :cond_0

    .line 4303
    :goto_0
    return-void

    .line 4295
    :cond_0
    const-string v0, "assets/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 4296
    const-string v0, "assets/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4298
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->dispose()V

    .line 4299
    invoke-static {p1}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->newMusic(Ljava/lang/String;)Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    move-result-object v0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    .line 4300
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-virtual {v0, p2}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->setLooping(Z)V

    .line 4301
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musicsVolume:B

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->setVolume(F)V

    .line 4302
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->play()V

    goto :goto_0
.end method

.method public pointerPressedGrid(IIIIIIII)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "posX"    # I
    .param p4, "posY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "countY"    # I
    .param p8, "countX"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p7, :cond_0

    .line 392
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 386
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, p8, :cond_1

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    div-int v2, p5, p8

    mul-int/2addr v2, v1

    add-int/2addr v2, p3

    if-lt p1, v2, :cond_2

    div-int v2, p5, p8

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, p3

    if-gt p1, v2, :cond_2

    div-int v2, p6, p7

    mul-int/2addr v2, v0

    add-int/2addr v2, p4

    if-lt p2, v2, :cond_2

    div-int v2, p6, p7

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, p4

    if-gt p2, v2, :cond_2

    .line 388
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    goto :goto_1

    .line 386
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public pointerPressedItem(IIIIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "posX"    # I
    .param p4, "posY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 396
    if-lt p1, p3, :cond_0

    add-int v0, p3, p5

    if-gt p1, v0, :cond_0

    if-lt p2, p4, :cond_0

    add-int v0, p4, p6

    if-gt p2, v0, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointerPressedMenu(IIIIIIIZ)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "posX"    # I
    .param p4, "posY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "count"    # I
    .param p8, "isLengthways"    # Z

    .prologue
    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p7, :cond_1

    .line 381
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 371
    .restart local v0    # "i":I
    :cond_1
    if-eqz p8, :cond_3

    .line 372
    if-lt p1, p3, :cond_2

    add-int v1, p3, p5

    if-gt p1, v1, :cond_2

    div-int v1, p6, p7

    mul-int/2addr v1, v0

    add-int/2addr v1, p4

    if-lt p2, v1, :cond_2

    div-int v1, p6, p7

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, p4

    if-le p2, v1, :cond_0

    .line 370
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_3
    div-int v1, p5, p7

    mul-int/2addr v1, v0

    add-int/2addr v1, p3

    if-lt p1, v1, :cond_2

    div-int v1, p5, p7

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt p1, v1, :cond_2

    if-lt p2, p4, :cond_2

    add-int v1, p4, p6

    if-gt p2, v1, :cond_2

    goto :goto_1
.end method

.method public pressButton([I[I[[I)V
    .locals 7
    .param p1, "id"    # [I
    .param p2, "rId"    # [I
    .param p3, "rButton"    # [[I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 595
    if-eqz p3, :cond_0

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-lt v0, v3, :cond_1

    .line 606
    .end local v0    # "i":I
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v3, v3, v4

    aget v4, p1, v5

    aget-object v3, v3, v4

    aget v4, p1, v6

    aget-object v3, v3, v4

    aput-boolean v6, v3, v5

    .line 608
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v4, p1, v5

    aput v4, v3, v5

    .line 609
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v4, p1, v6

    aput v4, v3, v6

    .line 610
    return-void

    .line 597
    .restart local v0    # "i":I
    :cond_1
    aget-object v3, p3, v0

    if-eqz v3, :cond_2

    .line 598
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v3, p3, v0

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 596
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .restart local v1    # "j":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v3, v3, v4

    aget v4, p2, v0

    aget-object v3, v3, v4

    aget-object v4, p3, v0

    aget v4, v4, v1

    aget-object v3, v3, v4

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 600
    :cond_4
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v3, v3, v4

    aget v4, p2, v0

    aget-object v3, v3, v4

    aget-object v4, p3, v0

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-boolean v5, v3, v2

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public abstract release()V
.end method

.method public releaseButton(Z)V
    .locals 4
    .param p1, "isHold"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 617
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v0, v0, v3

    if-gez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-boolean v2, v0, v2

    .line 622
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->btId:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-boolean p1, v0, v3

    .line 624
    sput-boolean v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->isDelayWork:Z

    goto :goto_0
.end method

.method public abstract releaseRes(B)V
.end method

.method public releaseResArray([Ljavax/microedition/lcdui/Image;[I)V
    .locals 3
    .param p1, "imgArray"    # [Ljavax/microedition/lcdui/Image;
    .param p2, "idxArray"    # [I

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 335
    return-void

    .line 330
    :cond_0
    aget v1, p2, v0

    if-gez v1, :cond_1

    .line 329
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    aget v1, p2, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1
.end method

.method public saveRecord(I)V
    .locals 21
    .param p1, "iRecordIdx"    # I

    .prologue
    .line 3688
    const/4 v13, 0x0

    check-cast v13, [B

    .line 3689
    .local v13, "recordBytes":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3690
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3692
    .local v4, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v20, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    move/from16 v19, v0

    aput-byte v19, v18, p1

    .line 3693
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    sget-wide v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->totalTime:J

    aput-wide v19, v18, p1

    .line 3694
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_NPCFLOORID:[S

    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    move/from16 v19, v0

    aput-short v19, v18, p1

    .line 3695
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_MONEY:[I

    sget v19, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    aput v19, v18, p1

    .line 3696
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_0

    .line 3704
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_LEVEL:[B

    aget-byte v18, v18, p1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3705
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_TIME:[J

    aget-wide v18, v18, p1

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 3706
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_NPCFLOORID:[S

    aget-short v18, v18, p1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3707
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_MONEY:[I

    aget v18, v18, p1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3708
    const/4 v6, 0x0

    :goto_1
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_2

    .line 3711
    sget-short v18, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3712
    sget-short v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3713
    sget-boolean v18, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3715
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 3716
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 3717
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3718
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3721
    const/4 v6, 0x0

    :goto_2
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScLAInfo:[S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_3

    .line 3724
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 3725
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3726
    const/4 v6, 0x0

    :goto_3
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_4

    .line 3736
    :goto_4
    const/4 v6, 0x0

    :goto_5
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->UIONOFF:[Z

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_7

    .line 3741
    sget v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3743
    sget v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fightRoleCount:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3745
    const/4 v6, 0x0

    :goto_6
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_8

    .line 3750
    const/4 v6, 0x0

    :goto_7
    sget v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    move/from16 v0, v18

    if-lt v6, v0, :cond_9

    .line 3754
    const/4 v6, 0x0

    :goto_8
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_a

    .line 3800
    sget-byte v18, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->love:B

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3803
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    int-to-short v12, v0

    .line 3805
    .local v12, "pocketSize":S
    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3806
    const/4 v6, 0x0

    :goto_9
    if-lt v6, v12, :cond_11

    .line 3812
    const/4 v6, 0x0

    :goto_a
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_12

    .line 3815
    const/4 v6, 0x0

    :goto_b
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_13

    .line 3818
    const/4 v6, 0x0

    :goto_c
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_14

    .line 3826
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3828
    const/4 v6, 0x0

    :goto_d
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_16

    .line 3833
    const/4 v6, 0x0

    :goto_e
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_17

    .line 3837
    const/4 v6, 0x0

    :goto_f
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_18

    .line 3840
    const/4 v6, 0x0

    :goto_10
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_19

    .line 3855
    const/4 v6, 0x0

    :goto_11
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_1d

    .line 3861
    const/4 v6, 0x0

    :goto_12
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_1e

    .line 3874
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 3875
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 3876
    const/4 v4, 0x0

    .line 3877
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3878
    const/4 v3, 0x0

    .line 3887
    .end local v6    # "i":I
    .end local v12    # "pocketSize":S
    :goto_13
    :try_start_1
    const-string v18, "RMS"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v14

    .line 3888
    .local v14, "rs":Ljavax/microedition/rms/RecordStore;
    add-int/lit8 v18, p1, 0x1

    const/16 v19, 0x0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v13, v1, v2}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V

    .line 3889
    invoke-virtual {v14}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3893
    const/4 v14, 0x0

    .line 3894
    .end local v14    # "rs":Ljavax/microedition/rms/RecordStore;
    :goto_14
    return-void

    .line 3697
    .restart local v6    # "i":I
    :cond_0
    :try_start_2
    sget v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 3698
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v18, v18, p1

    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v20, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v20, v20, v6

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_headImgIdx:S

    move/from16 v19, v0

    aput-short v19, v18, v6

    .line 3696
    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3700
    :cond_1
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v18, v18, p1

    const/16 v19, -0x1

    aput-short v19, v18, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_15

    .line 3879
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 3880
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 3881
    const/4 v3, 0x0

    .line 3882
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 3709
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    :cond_2
    :try_start_3
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->RECORD_SPX:[[S

    aget-object v18, v18, p1

    aget-short v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3708
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3722
    :cond_3
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScLAInfo:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3721
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 3727
    :cond_4
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_16
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    .line 3726
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 3728
    :cond_5
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->lastScNPCInfo:[[F

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    aget v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 3727
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 3732
    .end local v9    # "j":I
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto/16 :goto_4

    .line 3737
    :cond_7
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->UIONOFF:[Z

    aget-boolean v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3736
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 3746
    :cond_8
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3745
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 3751
    :cond_9
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v19, v19, v6

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3750
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 3755
    :cond_a
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_headImgIdx:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3756
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3757
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3759
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_phySGID:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3761
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanEat:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3763
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3765
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_17
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_b

    .line 3771
    const/4 v9, 0x0

    :goto_18
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_d

    .line 3775
    const/4 v9, 0x0

    :goto_19
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v9, v0, :cond_e

    .line 3779
    const/4 v9, 0x0

    :goto_1a
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v9, v0, :cond_f

    .line 3782
    const/4 v9, 0x0

    :goto_1b
    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v9, v0, :cond_10

    .line 3786
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3787
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3789
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_element:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3790
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_elementLvl:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3792
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3793
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_nextExp:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3795
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3797
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isInTeam:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3798
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isToFight:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3754
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 3766
    :cond_b
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1c
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_c

    .line 3765
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_17

    .line 3767
    :cond_c
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    aget-short v18, v18, v10

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3766
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    .line 3772
    .end local v10    # "k":I
    :cond_d
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3771
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_18

    .line 3776
    :cond_e
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3775
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_19

    .line 3780
    :cond_f
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3779
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a

    .line 3783
    :cond_10
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3782
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    .line 3807
    .end local v9    # "j":I
    .restart local v12    # "pocketSize":S
    :cond_11
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jarworld/rpg/sanguocollege/Item;

    .line 3808
    .local v8, "item":Lcom/jarworld/rpg/sanguocollege/Item;
    iget-short v0, v8, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3809
    iget-byte v0, v8, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3806
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 3813
    .end local v8    # "item":Lcom/jarworld/rpg/sanguocollege/Item;
    :cond_12
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    aget-boolean v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3812
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 3816
    :cond_13
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    aget-boolean v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 3815
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 3819
    :cond_14
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_1d
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_15

    .line 3822
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    aget-byte v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3818
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    .line 3820
    :cond_15
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v18, v18, v6

    aget-short v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3819
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 3829
    .end local v9    # "j":I
    :cond_16
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3830
    .local v7, "id":I
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3828
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 3834
    .end local v7    # "id":I
    :cond_17
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_preOverNum:B

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3833
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 3838
    :cond_18
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    aget v18, v18, v6

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3837
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 3841
    :cond_19
    div-int/lit8 v17, v6, 0x1f

    .line 3842
    .local v17, "tidx":I
    rem-int/lit8 v11, v6, 0x1f

    .line 3843
    .local v11, "off":I
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    aget v18, v18, v17

    const/high16 v19, 0x40000000    # 2.0f

    ushr-int v19, v19, v11

    and-int v16, v18, v19

    .line 3844
    .local v16, "t":I
    if-lez v16, :cond_1a

    .line 3845
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3846
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3847
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_1e
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_1b

    .line 3840
    .end local v9    # "j":I
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    .line 3848
    .restart local v9    # "j":I
    :cond_1b
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_1f
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_1c

    .line 3847
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 3849
    :cond_1c
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    aget-short v18, v18, v10

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3848
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 3856
    .end local v9    # "j":I
    .end local v10    # "k":I
    .end local v11    # "off":I
    .end local v16    # "t":I
    .end local v17    # "tidx":I
    :cond_1d
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posX:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 3857
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_f_posY:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 3855
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    .line 3863
    :cond_1e
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v18, v18, v6

    const/16 v19, 0x1

    aget-byte v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3865
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v18, v18, v6

    const/16 v19, 0x2

    aget-byte v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3867
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v18, v18, v6

    const/16 v19, 0x6

    aget-byte v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3869
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v18, v18, v6

    const/16 v19, 0x6

    aget-byte v18, v18, v19

    rem-int/lit8 v18, v18, 0x7

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f

    .line 3870
    sget-object v18, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v18, v18, v6

    const/16 v19, 0x7

    aget-byte v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3861
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    .line 3890
    .end local v6    # "i":I
    .end local v12    # "pocketSize":S
    :catch_1
    move-exception v15

    .line 3891
    .local v15, "rse":Ljava/lang/Exception;
    goto/16 :goto_14
.end method

.method public setCanUseSk(Lcom/jarworld/rpg/sanguocollege/LeadingActor;)V
    .locals 5
    .param p1, "role"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .prologue
    const/4 v4, 0x1

    .line 1072
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1073
    .local v1, "skillVec":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1083
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1084
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->skCanUse:[S

    .line 1085
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->skCanUse:[S

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 1091
    :goto_2
    const/4 v1, 0x0

    .line 1092
    return-void

    .line 1075
    :cond_0
    iget-object v2, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-short v2, v2, v3

    if-ltz v2, :cond_3

    .line 1077
    iget-object v2, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v4

    iget-byte v3, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    if-le v2, v3, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v4

    if-gez v2, :cond_3

    .line 1079
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1073
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :cond_4
    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->skCanUse:[S

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v3, v0

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1089
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->skCanUse:[S

    goto :goto_2
.end method

.method public abstract show()V
.end method

.method public stopGamePlayerArray()V
    .locals 0

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->stopMusic()V

    .line 4287
    return-void
.end method

.method public stopMusic()V
    .locals 1

    .prologue
    .line 4306
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->musics:Lcom/jarworld/rpg/sanguocollege/AndroidMusic;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/AndroidMusic;->dispose()V

    .line 4307
    return-void
.end method

.method public updateButton(II[I[[I[[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "aId"    # [I
    .param p4, "range"    # [[I
    .param p5, "hold"    # [[I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-lt v0, v3, :cond_0

    .line 660
    return-void

    .line 638
    :cond_0
    aget-object v3, p4, v0

    if-nez v3, :cond_4

    .line 639
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 637
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput-boolean v5, v3, v5

    .line 641
    aget-object v3, p5, v0

    if-eqz v3, :cond_3

    aget-object v3, p5, v0

    array-length v3, v3

    if-ge v1, v3, :cond_3

    aget-object v3, p5, v0

    aget v3, v3, v1

    if-ne v2, v3, :cond_3

    .line 642
    add-int/lit8 v1, v1, 0x1

    .line 643
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput-boolean v6, v3, v6

    .line 639
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    :cond_3
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    aput-boolean v5, v3, v6

    goto :goto_2

    .line 649
    .end local v1    # "idx":I
    .end local v2    # "j":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "j":I
    const/4 v1, 0x0

    .restart local v1    # "idx":I
    :goto_3
    aget-object v3, p4, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 650
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v4, p4, v0

    aget v4, v4, v2

    aget-object v3, v3, v4

    aput-boolean v5, v3, v5

    .line 651
    aget-object v3, p5, v0

    if-eqz v3, :cond_5

    aget-object v3, p5, v0

    array-length v3, v3

    if-ge v1, v3, :cond_5

    aget-object v3, p4, v0

    aget v3, v3, v2

    aget-object v4, p5, v0

    aget v4, v4, v1

    if-ne v3, v4, :cond_5

    .line 652
    add-int/lit8 v1, v1, 0x1

    .line 653
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v4, p4, v0

    aget v4, v4, v2

    aget-object v3, v3, v4

    aput-boolean v6, v3, v6

    .line 649
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 655
    :cond_5
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->button:[[[[[Z

    aget-object v3, v3, p1

    aget-object v3, v3, p2

    aget v4, p3, v0

    aget-object v3, v3, v4

    aget-object v4, p4, v0

    aget v4, v4, v2

    aget-object v3, v3, v4

    aput-boolean v5, v3, v6

    goto :goto_4
.end method

.method public useMedicine(Ljava/util/Vector;Lcom/jarworld/rpg/sanguocollege/Item;)V
    .locals 9
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "it"    # Lcom/jarworld/rpg/sanguocollege/Item;

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 998
    if-eqz p1, :cond_0

    .line 1000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1043
    .end local v1    # "i":I
    :cond_0
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-static {v2}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->removeItem(S)V

    .line 1044
    return-void

    .line 1001
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1002
    .local v0, "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 1003
    iput-boolean v7, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isAlive:Z

    .line 1005
    :cond_2
    iget-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 1006
    iget-byte v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->characterType:B

    if-nez v2, :cond_b

    .line 1007
    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 1008
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v3, v2, v6

    iget v4, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 1010
    :cond_3
    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 1011
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v3, v2, v7

    iget v4, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 1013
    :cond_4
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 1014
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1016
    :cond_5
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 1017
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1019
    :cond_6
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    if-eqz v2, :cond_7

    move-object v2, v0

    .line 1020
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1022
    :cond_7
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    if-eqz v2, :cond_8

    move-object v2, v0

    .line 1023
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x5

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1025
    :cond_8
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    if-eqz v2, :cond_9

    move-object v2, v0

    .line 1026
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1028
    :cond_9
    iget-short v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    if-eqz v2, :cond_a

    move-object v2, v0

    .line 1029
    check-cast v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x7

    aget v4, v2, v3

    iget-short v5, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1031
    :cond_a
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    add-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-short v2, v2

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    .line 1033
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    .end local v0    # "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->updateAtt()V

    .line 1000
    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1036
    .restart local v0    # "c":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    :cond_c
    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    if-ne v2, v8, :cond_d

    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    neg-int v2, v2

    :goto_2
    add-int/2addr v2, v3

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1037
    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    iget-byte v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    if-ne v2, v8, :cond_e

    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    neg-int v2, v2

    :goto_3
    add-int/2addr v2, v3

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 1038
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1039
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    goto :goto_1

    .line 1036
    :cond_d
    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x64

    goto :goto_2

    .line 1037
    :cond_e
    iget v2, p2, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxMp:I

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x64

    goto :goto_3
.end method

.method public useSkillInNormal(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Ljava/util/Vector;I)V
    .locals 8
    .param p1, "c"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "vec"    # Ljava/util/Vector;
    .param p3, "skillID"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1054
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 1064
    iget v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    aget-object v5, v5, p3

    iget-short v5, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_s_costMp:S

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->mp:I

    .line 1065
    return-void

    .line 1055
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .line 1056
    .local v2, "r":Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const/4 v3, 0x0

    .line 1057
    .local v3, "totalValue":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->m_byt_skillNum:B

    if-lt v1, v4, :cond_1

    .line 1062
    iget v4, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    iget v5, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    :cond_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill;

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    aget-object v5, v5, p3

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    aget-object v5, v5, v1

    aget-short v5, v5, v6

    aget-object v4, v4, v5

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/Skill;->m_byt_type:B

    if-ne v4, v7, :cond_2

    .line 1059
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup;

    aget-object v4, v4, p3

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/SkillGroup;->sKInfo:[[S

    aget-object v4, v4, v1

    aget-short v4, v4, v7

    invoke-static {v2, v4}, Lcom/jarworld/rpg/sanguocollege/Formular;->magicCure(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)I

    move-result v4

    add-int/2addr v3, v4

    .line 1057
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
