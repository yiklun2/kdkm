.class public Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;
.super Ljava/lang/Object;
.source "ComboSystem.java"

.field private comboData:Ljava/util/Map;
.field private static final MAX_COMBO_COUNT:I = 0xa
.field private static final COMBO_DAMAGE_MULTIPLIER:F = 0.2f

.method public constructor <init>()V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    return-void
.end method

.method public getComboCount(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 2
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;
    if-nez v0, :cond_0
    const/4 v0, 0x0
    :goto_0
    return v0
    :cond_0
    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    goto :goto_0
.end method

.method public updateCombo(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;
    if-nez v0, :cond_0
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;
    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;-><init>()V
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_0
    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    iput-wide v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->lastComboTime:J
    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    const/16 v2, 0xa
    if-le v1, v2, :cond_1
    const/16 v1, 0xa
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    :cond_1
    return-void
.end method

.method public resetCombo(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;
    if-eqz v0, :cond_0
    const/4 v1, 0x0
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
    const-wide/16 v1, 0x0
    iput-wide v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->lastComboTime:J
    :cond_0
    return-void
.end method

.method public getComboDamageMultiplier(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)F
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    invoke-virtual {p0, p1}, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->getComboCount(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    move-result v0
    const/high16 v1, 0x3f800000    # 1.0f
    int-to-float v2, v0
    const v3, 0x3e4ccccd    # 0.2f
    mul-float/2addr v2, v3
    add-float/2addr v1, v2
    return v1
.end method

.method public isComboValid(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z
    .locals 6
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;
    if-nez v0, :cond_0
    const/4 v0, 0x0
    :goto_0
    return v0
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    iget-wide v3, v0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->lastComboTime:J
    sub-long/2addr v1, v3
    const-wide/16 v3, 0xbb8
    cmp-long v0, v1, v3
    if-gez v0, :cond_1
    const/4 v0, 0x1
    goto :goto_0
    :cond_1
    const/4 v0, 0x0
    goto :goto_0
.end method

.method public reset()V
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem;->comboData:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    return-void
.end method

.method public static class ComboData
    .field comboCount:I
    .field lastComboTime:J
    .field previousComboTime:J
    .field consecutiveCriticals:I
    
    .method public constructor <init>()V
        .locals 2
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->comboCount:I
        const-wide/16 v0, 0x0
        iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->lastComboTime:J
        const-wide/16 v0, 0x0
        iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->previousComboTime:J
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/ComboSystem$ComboData;->consecutiveCriticals:I
        return-void
    .end method
.end method