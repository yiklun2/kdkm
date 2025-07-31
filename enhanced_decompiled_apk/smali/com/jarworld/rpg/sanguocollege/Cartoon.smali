.class public Lcom/jarworld/rpg/sanguocollege/Cartoon;
.super Ljava/lang/Object;
.source "Cartoon.java"


# instance fields
.field public actionIndex:B

.field public actionLoop:S

.field public actionTurn:B

.field public frameIndex:I

.field public lastActionIndex:S

.field public m_b_isExist:Z

.field public m_s_eventIdx:S

.field public m_s_posX:S

.field public m_s_posY:S

.field public m_s_spxIdx:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->lastActionIndex:S

    .line 22
    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionLoop:S

    .line 3
    return-void
.end method


# virtual methods
.method public draw(Z)V
    .locals 8
    .param p1, "isOnScreen"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_b_isExist:Z

    if-eqz v0, :cond_1

    .line 36
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->lastActionIndex:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    if-eq v0, v1, :cond_0

    .line 37
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->lastActionIndex:S

    .line 38
    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    .line 40
    :cond_0
    if-nez p1, :cond_3

    .line 41
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionTurn:B

    if-ne v0, v6, :cond_2

    .line 42
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posX:S

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posY:S

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_spxIdx:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    .line 54
    :goto_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionLoop:S

    if-lez v0, :cond_1

    .line 55
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    if-nez v0, :cond_1

    .line 56
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionLoop:S

    .line 60
    :cond_1
    return-void

    .line 44
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posX:S

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posY:S

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_spxIdx:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    goto :goto_0

    .line 47
    :cond_3
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionTurn:B

    if-ne v0, v6, :cond_4

    .line 48
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posX:S

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posY:S

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_spxIdx:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    goto :goto_0

    .line 50
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posX:S

    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_posY:S

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->m_s_spxIdx:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cartoon;->frameIndex:I

    goto :goto_0
.end method
