.class public Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;
.super Ljava/lang/Object;
.source "BattleEffectOptimizer.java"

.field private effectCache:Ljava/util/Map;
.field private animationPool:Ljava/util/Map;
.field private frameSkipCounter:I
.field private lastFrameTime:J
.field private targetFPS:I
.field private currentFPS:I
.field private effectQuality:I
.field private enableParticleEffects:Z
.field private enableScreenShake:Z
.field private enableBlurEffects:Z

.method public constructor <init>()V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->effectCache:Ljava/util/Map;
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->animationPool:Ljava/util/Map;
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->frameSkipCounter:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->lastFrameTime:J
    const/16 v0, 0x3c
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->targetFPS:I
    const/16 v0, 0x3c
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->currentFPS:I
    const/4 v0, 0x2
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->effectQuality:I
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableParticleEffects:Z
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableScreenShake:Z
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableBlurEffects:Z
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->initializeEffectCache()V
    return-void
.end method

.method private initializeEffectCache()V
    .locals 0
    return-void
.end method

.method public optimizeBattleAnimation(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 6
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skillId"    # I
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->shouldSkipFrame()Z
    move-result v0
    if-eqz v0, :cond_0
    return-void
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->renderAttackAnimation(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->renderHitEffect(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->renderDamageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->updateFrameTiming()V
    return-void
.end method

.method private shouldSkipFrame()Z
    .locals 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->lastFrameTime:J
    sub-long/2addr v0, v2
    const-wide/16 v2, 0x0
    cmp-long v2, v0, v2
    if-lez v2, :cond_0
    const-wide/16 v2, 0x3e8
    div-long/2addr v2, v0
    long-to-int v2, v2
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->currentFPS:I
    :cond_0
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->currentFPS:I
    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->targetFPS:I
    if-le v2, v3, :cond_1
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->frameSkipCounter:I
    add-int/lit8 v2, v2, 0x1
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->frameSkipCounter:I
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->frameSkipCounter:I
    rem-int/lit8 v2, v2, 0x2
    if-nez v2, :cond_1
    const/4 v2, 0x1
    :goto_0
    return v2
    :cond_1
    const/4 v2, 0x0
    goto :goto_0
.end method

.method private renderAttackAnimation(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skillId"    # I
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableParticleEffects:Z
    if-eqz v0, :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->renderParticleTrail(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    :cond_0
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableScreenShake:Z
    if-eqz v0, :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->renderScreenShake(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    :cond_1
    return-void
.end method

.method private renderHitEffect(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skillId"    # I
    const/high16 v0, -0x10000
    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    iget v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->x:I
    add-int/lit8 v0, v0, 0x20
    iget v1, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->y:I
    add-int/lit8 v1, v1, 0x20
    const/16 v2, 0x8
    const/16 v3, 0x8
    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V
    return-void
.end method

.method private renderDamageNumber(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p4, "skillId"    # I
    const/high16 v0, -0x1
    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    iget v0, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->x:I
    add-int/lit8 v0, v0, 0x10
    iget v1, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->y:I
    add-int/lit8 v1, v1, -0x10
    const-string v2, "999"
    const/4 v3, 0x0
    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V
    return-void
.end method

.method private renderParticleTrail(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 4
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    const v0, -0xff0100
    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V
    iget v0, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->x:I
    add-int/lit8 v0, v0, 0x10
    iget v1, p2, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->y:I
    add-int/lit8 v1, v1, 0x10
    iget v2, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->x:I
    add-int/lit8 v2, v2, 0x10
    iget v3, p3, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->y:I
    add-int/lit8 v3, v3, 0x10
    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V
    return-void
.end method

.method private renderScreenShake(Ljavax/microedition/lcdui/Graphics;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "attacker"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p3, "target"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    return-void
.end method

.method private updateFrameTiming()V
    .locals 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->lastFrameTime:J
    return-void
.end method

.method public setEffectQuality(I)V
    .locals 0
    .param p1, "quality"    # I
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->effectQuality:I
    return-void
.end method

.method public setTargetFPS(I)V
    .locals 0
    .param p1, "fps"    # I
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->targetFPS:I
    return-void
.end method

.method public enableParticleEffects(Z)V
    .locals 0
    .param p1, "enable"    # Z
    iput-boolean p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableParticleEffects:Z
    return-void
.end method

.method public enableScreenShake(Z)V
    .locals 0
    .param p1, "enable"    # Z
    iput-boolean p1, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->enableScreenShake:Z
    return-void
.end method

.method public getCurrentFPS()I
    .locals 1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->currentFPS:I
    return v0
.end method

.method public reset()V
    .locals 2
    const/4 v0, 0x0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->frameSkipCounter:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/jarworld/rpg/sanguocollege/optimization/BattleEffectOptimizer;->lastFrameTime:J
    return-void
.end method