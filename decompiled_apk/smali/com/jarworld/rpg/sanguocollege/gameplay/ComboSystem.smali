.class public Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;
.super Ljava/lang/Object;
.source "ComboSystem.java"

.field private comboCount:I
.field private maxCombo:I
.field private comboMultiplier:F
.field private lastComboTime:J
.field private comboWindow:J
.field private comboRewards:Ljava/util/Map;

.method public constructor <init>()V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    const/16 v0, 0xa
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->maxCombo:I
    const/high16 v0, 0x3f800000    # 1.0f
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboMultiplier:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->lastComboTime:J
    const-wide/16 v0, 0xbb8
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboWindow:J
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboRewards:Ljava/util/Map;
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->initializeComboRewards()V
    return-void
.end method

.method private initializeComboRewards()V
    .locals 2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboRewards:Ljava/util/Map;
    const/4 v1, 0x3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "Triple Strike"
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboRewards:Ljava/util/Map;
    const/4 v1, 0x5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "Combo Master"
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method public addCombo()I
    .locals 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->lastComboTime:J
    sub-long/2addr v0, v2
    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboWindow:J
    cmp-long v0, v0, v2
    if-lez v0, :cond_0
    const/4 v0, 0x1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->lastComboTime:J
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->maxCombo:I
    if-le v0, v1, :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->maxCombo:I
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    :cond_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    return v0
    :cond_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    goto :goto_0
.end method

.method public getComboMultiplier()F
    .locals 2
    const/high16 v0, 0x3f800000    # 1.0f
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    int-to-float v1, v1
    const v2, 0x3e4ccccd    # 0.2f
    mul-float/2addr v1, v2
    add-float/2addr v0, v1
    return v0
.end method

.method public getComboReward()Ljava/lang/String;
    .locals 2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboRewards:Ljava/util/Map;
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    if-nez v0, :cond_0
    const-string v0, "Combo!"
    :cond_0
    return-object v0
.end method

.method public resetCombo()V
    .locals 1
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    return-void
.end method

.method public getComboCount()I
    .locals 1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/gameplay/ComboSystem;->comboCount:I
    return v0
.end method