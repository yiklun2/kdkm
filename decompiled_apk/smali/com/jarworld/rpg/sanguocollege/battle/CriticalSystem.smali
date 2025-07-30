.class public Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;
.super Ljava/lang/Object;
.source "CriticalSystem.java"

.field private random:Ljava/util/Random;
.field private criticalData:Ljava/util/Map;
.field private static final BASE_CRITICAL_RATE:F = 0.05f
.field private static final CRITICAL_DAMAGE_MULTIPLIER:F = 1.5f

.method public constructor <init>()V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/util/Random;
    invoke-direct {v0}, Ljava/util/Random;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->random:Ljava/util/Random;
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->criticalData:Ljava/util/Map;
    return-void
.end method

.method public checkCritical(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z
    .locals 4
    .param p1, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    invoke-direct {p0, p1}, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->calculateCriticalRate(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)F
    move-result v0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->random:Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F
    move-result v1
    cmpg-float v2, v1, v0
    if-gez v2, :cond_0
    invoke-direct {p0, p1}, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->recordCritical(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    const/4 v2, 0x1
    :goto_0
    return v2
    :cond_0
    const/4 v2, 0x0
    goto :goto_0
.end method

.method private calculateCriticalRate(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)F
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const v0, 0x3d4ccccd    # 0.05f
    iget v1, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->luck:I
    int-to-float v1, v1
    const v2, 0x3c23d70a    # 0.01f
    mul-float/2addr v1, v2
    add-float/2addr v0, v1
    iget v1, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->level:I
    int-to-float v1, v1
    const v2, 0x3a83126f    # 0.001f
    mul-float/2addr v1, v2
    add-float/2addr v0, v1
    const/high16 v1, 0x3f800000    # 1.0f
    cmpl-float v2, v0, v1
    if-lez v2, :cond_0
    const/high16 v0, 0x3f800000    # 1.0f
    :cond_0
    return v0
.end method

.method private recordCritical(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->criticalData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;
    if-nez v0, :cond_0
    new-instance v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;
    invoke-direct {v0}, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;-><init>()V
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->criticalData:Ljava/util/Map;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :cond_0
    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->criticalHits:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->criticalHits:I
    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    iput-wide v1, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->lastCriticalTime:J
    return-void
.end method

.method public getCriticalDamageMultiplier(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)F
    .locals 3
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const v0, 0x3fc00000    # 1.5f
    iget v1, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->strength:I
    int-to-float v1, v1
    const v2, 0x3a83126f    # 0.001f
    mul-float/2addr v1, v2
    add-float/2addr v0, v1
    return v0
.end method

.method public getCriticalStatistics(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;
    .locals 4
    .param p1, "character"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->criticalData:Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;
    if-nez v0, :cond_0
    new-instance v1, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;
    invoke-direct {v1}, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;-><init>()V
    :goto_0
    return-object v1
    :cond_0
    new-instance v1, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;
    invoke-direct {v1}, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;-><init>()V
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->criticalHits:I
    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->criticalHits:I
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->totalHits:I
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
    if-lez v2, :cond_1
    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->criticalHits:I
    int-to-float v2, v2
    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
    int-to-float v3, v3
    div-float/2addr v2, v3
    iput v2, v1, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->criticalRate:F
    :cond_1
    goto :goto_0
.end method

.method public reset()V
    .locals 1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem;->criticalData:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    return-void
.end method

.method public static class CriticalData
    .field criticalHits:I
    .field totalHits:I
    .field lastCriticalTime:J
    .field consecutiveCriticals:I
    
    .method public constructor <init>()V
        .locals 2
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->criticalHits:I
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->totalHits:I
        const-wide/16 v0, 0x0
        iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->lastCriticalTime:J
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalData;->consecutiveCriticals:I
        return-void
    .end method
.end method

.method public static class CriticalStatistics
    .field criticalHits:I
    .field totalHits:I
    .field criticalRate:F
    
    .method public constructor <init>()V
        .locals 1
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->criticalHits:I
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->totalHits:I
        const/4 v0, 0x0
        iput v0, p0, Lcom/jarworld/rpg/sanguocollege/battle/CriticalSystem$CriticalStatistics;->criticalRate:F
        return-void
    .end method
.end method