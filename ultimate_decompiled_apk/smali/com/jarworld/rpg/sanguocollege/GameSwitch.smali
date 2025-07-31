.class public Lcom/jarworld/rpg/sanguocollege/GameSwitch;
.super Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
.source "GameSwitch.java"


# instance fields
.field GageTime:I

.field isShowLd:Z

.field lHelpIdx:I

.field nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

.field previousFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;-><init>()V

    .line 34
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->sType:B

    .line 35
    return-void
.end method

.method private drawLoading(Z)V
    .locals 15
    .param p1, "isShowLd"    # Z

    .prologue
    .line 332
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 333
    if-eqz p1, :cond_1

    .line 335
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 336
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 337
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    mul-int/lit8 v2, v2, 0xc

    .line 338
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0x6

    .line 339
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, -0x1

    const v9, 0xffffff

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 335
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 341
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_load:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0x12c

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x78

    const/16 v4, 0x114

    const/16 v5, 0x76

    const/4 v6, 0x0

    const/16 v7, 0x76

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 343
    const/4 v14, 0x0

    .line 344
    .local v14, "maxGageTime":I
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_load:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0x12c

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x78

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    mul-int/lit16 v4, v4, 0x114

    div-int/2addr v4, v14

    const/16 v5, 0x76

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 363
    .end local v14    # "maxGageTime":I
    :cond_0
    return-void

    .line 346
    .restart local v14    # "maxGageTime":I
    :pswitch_0
    const/4 v14, 0x4

    .line 347
    goto :goto_0

    .line 349
    :pswitch_1
    const/4 v14, 0x7

    .line 350
    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v14, 0x3

    goto :goto_0

    .line 358
    .end local v14    # "maxGageTime":I
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xab

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x54

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xab

    const/16 v5, 0x54

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 359
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    if-ge v13, v0, :cond_0

    .line 360
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xe9cc29

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xab

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x66

    mul-int/lit8 v3, v13, 0x8

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v3, v3, -0x54

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x51

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 359
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private gotoNextFrame()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 369
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-virtual {v0, v1}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V

    .line 371
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 372
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_0

    .line 373
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameScene;->checkMission(I)Z

    .line 378
    :cond_0
    sput-boolean v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isRepaint:Z

    .line 380
    sput-boolean v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isCanKP:Z

    .line 383
    :cond_1
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->music:Z

    if-eqz v0, :cond_2

    .line 384
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 385
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    if-eq v0, v4, :cond_2

    .line 386
    sput-byte v4, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    .line 387
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->playGamePlayerArray(II)V

    .line 401
    :cond_2
    :goto_0
    return-void

    .line 389
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v0, :cond_4

    .line 390
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->getCurMusicIndex(I)B

    move-result v1

    if-eq v0, v1, :cond_2

    .line 391
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->getCurMusicIndex(I)B

    move-result v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    .line 392
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->playGamePlayerArray(II)V

    goto :goto_0

    .line 394
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v0, v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 395
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    if-eqz v0, :cond_2

    .line 396
    sput-byte v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    .line 397
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->curMusicIndex:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->playGamePlayerArray(II)V

    goto :goto_0
.end method

.method private initMonsterInfo([Lcom/jarworld/rpg/sanguocollege/Monster;)V
    .locals 3
    .param p1, "enemy"    # [Lcom/jarworld/rpg/sanguocollege/Monster;

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 263
    return-void

    .line 261
    :cond_0
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_ID:S

    invoke-virtual {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Monster;->init(S)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadSurfaces()Z
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    .line 121
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-nez v7, :cond_9

    .line 122
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v5, :cond_4

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 252
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v5

    .line 126
    .restart local v0    # "i":I
    :cond_1
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isInTeam:Z

    if-eqz v6, :cond_3

    .line 127
    :cond_2
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/s/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v8, v8, v0

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".otr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v8, v8, v0

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 124
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_4
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v9, :cond_5

    .line 133
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    invoke-virtual {v7}, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->initScene()V

    .line 135
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v7, v7, v8

    aget-byte v7, v7, v5

    packed-switch v7, :pswitch_data_0

    .line 153
    :goto_2
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v7, v7, v8

    aget-byte v7, v7, v10

    rem-int/lit8 v7, v7, 0x7

    packed-switch v7, :pswitch_data_1

    .line 160
    :goto_3
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v7, "/s/393.otr"

    const/16 v8, 0x189

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    goto :goto_1

    .line 137
    :pswitch_0
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v8, "/s/397.otr"

    const/16 v9, 0x18d

    invoke-virtual {v7, v8, v9}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    goto :goto_2

    .line 140
    :pswitch_1
    new-array v2, v5, [I

    const/4 v7, 0x7

    aput v7, v2, v6

    .line 141
    .local v2, "idx0":[I
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v8, "n"

    invoke-virtual {p0, v7, v2, v8}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_2

    .line 144
    .end local v2    # "idx0":[I
    :pswitch_2
    new-array v3, v5, [I

    const/16 v7, 0x9

    aput v7, v3, v6

    .line 145
    .local v3, "idx1":[I
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v8, "n"

    invoke-virtual {p0, v7, v3, v8}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v3    # "idx1":[I
    :pswitch_3
    new-array v4, v5, [I

    const/16 v7, 0x1d

    aput v7, v4, v6

    .line 149
    .local v4, "idx2":[I
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v8, "n"

    invoke-virtual {p0, v7, v4, v8}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_2

    .line 155
    .end local v4    # "idx2":[I
    :pswitch_4
    new-array v4, v5, [I

    const/16 v7, 0x1c

    aput v7, v4, v6

    .line 156
    .restart local v4    # "idx2":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v4, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_3

    .line 164
    .end local v4    # "idx2":[I
    :cond_5
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v8, :cond_6

    .line 165
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    if-eqz v6, :cond_0

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 167
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/s/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v8, v8, v0

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".otr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v8, v8, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->npc:[Lcom/jarworld/rpg/sanguocollege/GameNPC;

    aget-object v8, v8, v0

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_sSpxIndex:S

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 172
    .end local v0    # "i":I
    :cond_6
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 174
    new-array v2, v9, [I

    fill-array-data v2, :array_0

    .line 175
    .restart local v2    # "idx0":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v2, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    .line 176
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v7, "/s/395.otr"

    const/16 v8, 0x18b

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 177
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v7, "/s/399.otr"

    const/16 v8, 0x18f

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 181
    .end local v2    # "idx0":[I
    :cond_7
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_8
    move v5, v6

    .line 252
    goto/16 :goto_1

    .line 182
    :cond_9
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-ne v7, v9, :cond_10

    .line 183
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v5, :cond_a

    .line 185
    const/4 v6, 0x0

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    .line 186
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 187
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x0

    aput-object v7, v6, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 191
    .end local v0    # "i":I
    :cond_a
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v9, :cond_b

    .line 193
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    invoke-direct {p0, v6}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->initMonsterInfo([Lcom/jarworld/rpg/sanguocollege/Monster;)V

    goto/16 :goto_1

    .line 196
    :cond_b
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v8, :cond_c

    .line 198
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadFighterSpx()V

    goto/16 :goto_1

    .line 201
    :cond_c
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    .line 203
    const/16 v6, 0xb

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 204
    .restart local v2    # "idx0":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_fight:[Ljavax/microedition/lcdui/Image;

    const-string v7, "b"

    invoke-virtual {p0, v6, v2, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_1

    .line 207
    .end local v2    # "idx0":[I
    :cond_d
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_e

    .line 209
    new-array v3, v10, [I

    fill-array-data v3, :array_2

    .line 210
    .restart local v3    # "idx1":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_1

    .line 213
    .end local v3    # "idx1":[I
    :cond_e
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v10, :cond_f

    .line 215
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v7, "/s/300.otr"

    const/16 v8, 0x12c

    invoke-virtual {v6, v7, v8}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 218
    :cond_f
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_8

    .line 220
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    if-nez v7, :cond_0

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/bg/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v9, v9, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v8, v8, v9

    aget-byte v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/GameFight;->s_img_Bg:Ljavax/microedition/lcdui/Image;

    goto/16 :goto_1

    .line 225
    :cond_10
    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v7, v7, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    if-ne v7, v5, :cond_8

    .line 226
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v5, :cond_11

    .line 228
    const/4 v6, 0x0

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    .line 229
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    if-eqz v6, :cond_0

    .line 230
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 231
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x0

    aput-object v7, v6, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 236
    .end local v0    # "i":I
    :cond_11
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v9, :cond_12

    .line 238
    const/16 v6, 0x8

    new-array v1, v6, [I

    aput v5, v1, v5

    aput v9, v1, v9

    aput v8, v1, v8

    const/4 v6, 0x4

    const/4 v7, 0x4

    aput v7, v1, v6

    const/4 v6, 0x5

    const/4 v7, 0x5

    aput v7, v1, v6

    aput v10, v1, v10

    const/4 v6, 0x7

    const/4 v7, 0x7

    aput v7, v1, v6

    .line 239
    .local v1, "idx":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const-string v7, "sm"

    invoke-virtual {p0, v6, v1, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_1

    .line 242
    .end local v1    # "idx":[I
    :cond_12
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    if-ne v7, v8, :cond_8

    .line 244
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v8, "/s/392.otr"

    const/16 v9, 0x188

    invoke-virtual {v7, v8, v9}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 245
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const-string v8, "/s/394.otr"

    const/16 v9, 0x18a

    invoke-virtual {v7, v8, v9}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 247
    new-array v3, v5, [I

    const/16 v7, 0x9

    aput v7, v3, v6

    .line 248
    .restart local v3    # "idx1":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch

    .line 174
    :array_0
    .array-data 4
        0x1
        0x27
    .end array-data

    .line 203
    :array_1
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

    .line 209
    :array_2
    .array-data 4
        0x4
        0x5
        0x13
        0x14
        0x1c
        0x21
    .end array-data
.end method


# virtual methods
.method public control()V
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadSurfaces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const/4 v1, 0x0

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->GageTime:I

    .line 287
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->gotoNextFrame()V

    .line 289
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 290
    .local v0, "idx0":[I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_load:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 292
    .end local v0    # "idx0":[I
    :cond_0
    return-void
.end method

.method public create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V
    .locals 0
    .param p1, "view"    # Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .prologue
    .line 38
    sput-object p1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .line 39
    return-void
.end method

.method public delayWork()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public disposeRes(BB)V
    .locals 0
    .param p1, "curframeState"    # B
    .param p2, "nextframeState"    # B

    .prologue
    .line 300
    return-void
.end method

.method public lastWork(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 421
    return-void
.end method

.method public loadFighterSpx()V
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 273
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 277
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 278
    return-void

    .line 269
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/s/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".otr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->heros:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    .line 269
    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/s/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_fSpxIndex:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".otr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameFight:Lcom/jarworld/rpg/sanguocollege/GameFight;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameFight;->enemy:[Lcom/jarworld/rpg/sanguocollege/Monster;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_fSpxIndex:S

    .line 274
    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->createSpriteData(Ljava/lang/String;I)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public loadRes(B)V
    .locals 0
    .param p1, "nextframeState"    # B

    .prologue
    .line 308
    return-void
.end method

.method public onKeyDown(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 316
    return-void
.end method

.method public onKeyUp(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 324
    return-void
.end method

.method public onPointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 413
    return-void
.end method

.method public onPointerPressed(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 405
    return-void
.end method

.method public onPointerReleased(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 409
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public releaseRes(B)V
    .locals 0
    .param p1, "curframeState"    # B

    .prologue
    .line 304
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isShowLd:Z

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->drawLoading(Z)V

    .line 282
    return-void
.end method

.method public switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z
    .locals 11
    .param p1, "preFrame"    # Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
    .param p2, "nexFrame"    # Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
    .param p3, "nexFS"    # B
    .param p4, "isShowLoading"    # Z

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const/4 v6, 0x0

    .line 112
    :goto_0
    return v6

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->previousFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 55
    iput-object p2, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 56
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iput-byte p3, v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    .line 57
    iput-boolean p4, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isShowLd:Z

    .line 58
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v7, v7, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    if-ne v6, v7, :cond_3

    .line 59
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    iget-boolean v6, v6, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->xs:Z

    if-nez v6, :cond_1

    .line 60
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    invoke-virtual {v6}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->destroy1()V

    .line 68
    :cond_1
    :goto_1
    const/4 v6, 0x1

    new-array v2, v6, [I

    .line 69
    .local v2, "idx0":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_img_load:[Ljavax/microedition/lcdui/Image;

    const-string v7, "l"

    invoke-virtual {p0, v6, v2, v7}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    .line 70
    sput-object p0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    .line 72
    const/4 v6, 0x0

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_i_ui:[[Ljava/util/Vector;

    const/16 v8, 0x12

    aget-object v7, v7, v8

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v6

    iput v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->lHelpIdx:I

    .line 73
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPixCont(I)V

    .line 74
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->s_i_ui:[[Ljava/util/Vector;

    const/16 v7, 0x12

    aget-object v6, v6, v7

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->lHelpIdx:I

    aget-object v6, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    mul-int/lit8 v9, v9, 0x6

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    .line 76
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->previousFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    if-eqz v6, :cond_2

    .line 77
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->previousFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    invoke-virtual {v6}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->release()V

    .line 78
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->previousFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->nextFrame:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->sType:B

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/mg/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    .line 81
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/man/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-short v8, v8, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ff"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v4, "input":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 86
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 88
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    .line 90
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 92
    .local v5, "resCount":S
    const/4 v6, 0x0

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    .line 93
    new-array v6, v5, [Ljavax/microedition/lcdui/Image;

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v5, :cond_4

    .line 100
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v4, 0x0

    .line 109
    .end local v1    # "i":I
    .end local v4    # "input":Ljava/io/DataInputStream;
    .end local v5    # "resCount":S
    :cond_2
    :goto_3
    const/4 v6, 0x0

    sput-boolean v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isRepaint:Z

    .line 111
    const/4 v6, 0x0

    sput-boolean v6, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->isCanKP:Z

    .line 112
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 63
    .end local v2    # "idx0":[I
    :cond_3
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    iget-boolean v6, v6, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->xs:Z

    if-eqz v6, :cond_1

    .line 64
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_App:Lcom/jarworld/rpg/sanguocollege/GameAppBase;

    invoke-virtual {v6}, Lcom/jarworld/rpg/sanguocollege/GameAppBase;->setupAds1()V

    goto/16 :goto_1

    .line 96
    .restart local v1    # "i":I
    .restart local v2    # "idx0":[I
    .restart local v4    # "input":Ljava/io/DataInputStream;
    .restart local v5    # "resCount":S
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 98
    .local v3, "imgIndex":S
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/mg/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    aput-object v7, v6, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    .end local v1    # "i":I
    .end local v3    # "imgIndex":S
    .end local v5    # "resCount":S
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
