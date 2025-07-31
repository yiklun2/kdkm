.class public Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;
.super Ljava/lang/Object;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jarworld/rpg/sanguocollege/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scene"
.end annotation


# instance fields
.field public m_lastMap:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

.field public m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

.field public m_s_npcFloorID:S

.field public m_s_sceneID:S

.field public mapBoard:Ljavax/microedition/lcdui/Image;

.field final synthetic this$0:Lcom/jarworld/rpg/sanguocollege/GameScene;


# direct methods
.method public constructor <init>(Lcom/jarworld/rpg/sanguocollege/GameScene;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->this$0:Lcom/jarworld/rpg/sanguocollege/GameScene;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(II)V
    .locals 11
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->mapBoard:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_gph:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->mapBoard:Ljavax/microedition/lcdui/Image;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move v3, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 451
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    neg-int v5, p1

    neg-int v6, p2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    move v9, v2

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 452
    return-void
.end method

.method public initScene()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    .line 428
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v0, v0, v1

    aget-byte v0, v0, v4

    if-ltz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/d/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    aget-object v1, v1, v2

    aget-byte v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->mapBoard:Ljavax/microedition/lcdui/Image;

    .line 432
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_s_controlID:S

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    if-nez v0, :cond_1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_s_controlID:S

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    if-nez v0, :cond_1

    .line 433
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->selfRoleCount:I

    if-lt v6, v0, :cond_2

    .line 437
    .end local v6    # "i":I
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 438
    return-void

    .line 434
    .restart local v6    # "i":I
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/4 v2, 0x2

    aget-short v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/4 v4, 0x3

    aget-short v2, v2, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/4 v5, 0x4

    aget-short v4, v4, v5

    int-to-byte v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setPos(SSFFB)V

    .line 433
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public loadMap(SS)V
    .locals 8
    .param p1, "id"    # S
    .param p2, "npcFloorID"    # S

    .prologue
    .line 399
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, "isEffected":Z
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_3

    .line 416
    :cond_0
    if-nez v2, :cond_1

    .line 417
    iput-short p2, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    if-nez v4, :cond_2

    .line 421
    const/4 v4, 0x0

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/mg/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    sput-object v4, Lcom/jarworld/rpg/sanguocollege/Cover;->floorImg:Ljavax/microedition/lcdui/Image;

    .line 423
    new-instance v4, Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/man/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v6, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/man/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v7, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".npc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/GameMapManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    .line 425
    :cond_2
    return-void

    .line 403
    :cond_3
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 405
    .local v1, "idx":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 412
    :goto_2
    if-nez v2, :cond_0

    .line 402
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 406
    :cond_4
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget-short v4, v4, v5

    iget-short v5, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_sceneID:S

    if-ne v4, v5, :cond_5

    .line 407
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_affectMap:[[S

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget-short v4, v4, v5

    iput-short v4, p0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_s_npcFloorID:S

    .line 408
    const/4 v2, 0x1

    .line 409
    goto :goto_2

    .line 405
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
