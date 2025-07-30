.class public Lcom/jarworld/rpg/sanguocollege/Formular;
.super Ljava/lang/Object;
.source "Formular.java"


# static fields
.field static final E_ATT:[[B

.field static final E_WORSE:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x6

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 9
    new-array v2, v3, [B

    aput-byte v4, v2, v4

    aput-object v2, v0, v1

    .line 10
    new-array v1, v3, [B

    aput-byte v4, v1, v5

    aput-object v1, v0, v4

    .line 11
    new-array v1, v3, [B

    aput-byte v4, v1, v6

    aput-object v1, v0, v5

    .line 12
    new-array v1, v3, [B

    aput-byte v4, v1, v7

    aput-object v1, v0, v6

    .line 13
    new-array v1, v3, [B

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    aput-object v1, v0, v7

    .line 7
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    .line 19
    new-array v0, v3, [[B

    const/4 v1, 0x0

    .line 21
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    .line 22
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    .line 23
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    .line 24
    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    .line 25
    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 26
    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Formular;->E_WORSE:[[B

    .line 3
    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
    .end array-data

    .line 22
    nop

    :array_1
    .array-data 1
        0xat
        0xat
        0x6t
        0xat
        0xft
        0xat
    .end array-data

    .line 23
    nop

    :array_2
    .array-data 1
        0xat
        0xft
        0xat
        0xat
        0xat
        0x6t
    .end array-data

    .line 24
    nop

    :array_3
    .array-data 1
        0xat
        0xat
        0xat
        0xat
        0x6t
        0xft
    .end array-data

    .line 25
    nop

    :array_4
    .array-data 1
        0xat
        0x6t
        0xat
        0xft
        0xat
        0xat
    .end array-data

    .line 26
    nop

    :array_5
    .array-data 1
        0xat
        0xat
        0xft
        0x6t
        0xat
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fightExp([Lcom/jarworld/rpg/sanguocollege/Monster;I)I
    .locals 3
    .param p0, "enemy"    # [Lcom/jarworld/rpg/sanguocollege/Monster;
    .param p1, "leftNum"    # I

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 201
    if-eqz v1, :cond_1

    if-ge v1, p1, :cond_1

    .line 202
    const/4 v1, 0x1

    .line 206
    :goto_1
    return v1

    .line 198
    :cond_0
    aget-object v2, p0, v0

    iget v2, v2, Lcom/jarworld/rpg/sanguocollege/Monster;->m_i_dropExperience:I

    add-int/2addr v1, v2

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    div-int/2addr v1, p1

    goto :goto_1
.end method

.method public static fightMoney([Lcom/jarworld/rpg/sanguocollege/GameCharacter;[Lcom/jarworld/rpg/sanguocollege/Monster;)S
    .locals 5
    .param p0, "hero"    # [Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p1, "enemy"    # [Lcom/jarworld/rpg/sanguocollege/Monster;

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "sum":S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "maxLvl_h":I
    const/4 v2, 0x0

    .line 177
    .local v2, "maxLvl_m":I
    const/4 v0, 0x0

    :goto_1
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 180
    const/4 v0, 0x0

    :goto_2
    array-length v4, p1

    if-lt v0, v4, :cond_3

    .line 183
    if-le v1, v2, :cond_0

    .line 184
    sub-int v4, v1, v2

    mul-int/lit8 v4, v4, 0x5

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x64

    int-to-short v3, v4

    .line 186
    :cond_0
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-short v4, v4

    return v4

    .line 173
    .end local v1    # "maxLvl_h":I
    .end local v2    # "maxLvl_m":I
    :cond_1
    aget-object v4, p1, v0

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_dropMoney:S

    add-int/2addr v4, v3

    int-to-short v3, v4

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .restart local v1    # "maxLvl_h":I
    .restart local v2    # "maxLvl_m":I
    :cond_2
    aget-object v4, p0, v0

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_3
    aget-object v4, p1, v0

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/Monster;->m_byt_level:B

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static magicCure(Lcom/jarworld/rpg/sanguocollege/GameCharacter;I)I
    .locals 2
    .param p0, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p1, "baseVal"    # I

    .prologue
    .line 161
    const/4 v0, 0x1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->maxHp:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static magicHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;IZ)I
    .locals 8
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p1, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "baseVal"    # I
    .param p3, "crit"    # Z

    .prologue
    const/16 v5, 0x14

    .line 125
    invoke-static {p0}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalMagicAtt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v4

    .line 126
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Formular;->E_WORSE:[[B

    iget-byte v7, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-object v6, v6, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v6, v6, v7

    .line 125
    mul-int/2addr v6, v4

    .line 127
    if-eqz p3, :cond_0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v7, 0x3

    aget-object v4, v4, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v4, v4, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v4, v7

    add-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0x3

    .line 125
    :goto_0
    mul-int/2addr v6, v4

    .line 128
    iget-boolean v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 125
    :goto_1
    mul-int/2addr v4, v6

    .line 129
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x5a

    .line 125
    mul-int/2addr v4, v5

    .line 130
    invoke-static {p1}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalMagicDef(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v5

    const v6, 0x9c40

    mul-int/2addr v5, v6

    .line 125
    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 131
    .local v2, "temp":J
    int-to-long v4, p2

    mul-long/2addr v4, v2

    const-wide/32 v6, 0x3d0900

    div-long v0, v4, v6

    .line 132
    .local v0, "hurt":J
    const/16 v4, 0xa

    long-to-int v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .end local v0    # "hurt":J
    .end local v2    # "temp":J
    :cond_0
    move v4, v5

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public static magicPhyHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;IZ)I
    .locals 8
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p1, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "baseVal"    # I
    .param p3, "crit"    # Z

    .prologue
    const/16 v5, 0x14

    .line 144
    invoke-static {p0}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalAttack(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v4

    .line 145
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Formular;->E_WORSE:[[B

    iget-byte v7, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-object v6, v6, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v6, v6, v7

    .line 144
    mul-int/2addr v6, v4

    .line 146
    if-eqz p3, :cond_0

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v7, 0x3

    aget-object v4, v4, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v4, v4, v7

    iget-byte v7, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v4, v7

    add-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0x3

    .line 144
    :goto_0
    mul-int/2addr v6, v4

    .line 147
    iget-boolean v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 144
    :goto_1
    mul-int/2addr v4, v6

    .line 148
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x5a

    .line 144
    mul-int/2addr v4, v5

    .line 149
    invoke-static {p1}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalDefence(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v5

    const v6, 0x9c40

    mul-int/2addr v5, v6

    .line 144
    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 150
    .local v2, "temp":J
    int-to-long v4, p2

    mul-long/2addr v4, v2

    const-wide/32 v6, 0x3d0900

    div-long v0, v4, v6

    .line 151
    .local v0, "hurt":J
    const/16 v4, 0xa

    long-to-int v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .end local v0    # "hurt":J
    .end local v2    # "temp":J
    :cond_0
    move v4, v5

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public static nextExp(I)I
    .locals 3
    .param p0, "level"    # I

    .prologue
    .line 215
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 216
    mul-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 238
    :goto_0
    return v0

    .line 217
    :cond_0
    const/4 v0, 0x6

    if-lt p0, v0, :cond_1

    const/16 v0, 0x13

    if-gt p0, v0, :cond_1

    .line 218
    add-int/lit8 v0, p0, -0x5

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x50

    goto :goto_0

    .line 219
    :cond_1
    const/16 v0, 0x14

    if-lt p0, v0, :cond_2

    const/16 v0, 0x18

    if-gt p0, v0, :cond_2

    .line 220
    add-int/lit8 v0, p0, -0x14

    mul-int/lit8 v0, v0, 0x19

    add-int/lit16 v0, v0, 0xfa

    goto :goto_0

    .line 221
    :cond_2
    const/16 v0, 0x19

    if-lt p0, v0, :cond_3

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_3

    .line 222
    add-int/lit8 v0, p0, -0x18

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0x15e

    goto :goto_0

    .line 223
    :cond_3
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_4

    const/16 v0, 0x27

    if-gt p0, v0, :cond_4

    .line 224
    add-int/lit8 v0, p0, -0x1d

    mul-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 225
    :cond_4
    const/16 v0, 0x28

    if-lt p0, v0, :cond_5

    const/16 v0, 0x31

    if-gt p0, v0, :cond_5

    .line 226
    add-int/lit8 v0, p0, -0x27

    mul-int/lit16 v0, v0, 0x12c

    add-int/lit16 v0, v0, 0xbb8

    goto :goto_0

    .line 227
    :cond_5
    const/16 v0, 0x32

    if-lt p0, v0, :cond_6

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_6

    .line 228
    add-int/lit8 v0, p0, -0x31

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x2328

    goto :goto_0

    .line 229
    :cond_6
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_7

    const/16 v0, 0x45

    if-gt p0, v0, :cond_7

    .line 230
    const v0, 0x8ca0

    add-int/lit8 v1, p0, -0x3b

    mul-int/lit16 v1, v1, 0x7d0

    add-int/2addr v0, v1

    goto :goto_0

    .line 231
    :cond_7
    const/16 v0, 0x46

    if-lt p0, v0, :cond_8

    const/16 v0, 0x4f

    if-gt p0, v0, :cond_8

    .line 232
    const v0, 0x186a0

    add-int/lit8 v1, p0, -0x45

    mul-int/lit16 v1, v1, 0x7d0

    add-int/2addr v0, v1

    goto :goto_0

    .line 233
    :cond_8
    const/16 v0, 0x50

    if-lt p0, v0, :cond_9

    const/16 v0, 0x59

    if-gt p0, v0, :cond_9

    .line 234
    const v0, 0x30d40

    add-int/lit8 v1, p0, -0x4f

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 235
    :cond_9
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_a

    const/16 v0, 0x63

    if-gt p0, v0, :cond_a

    .line 236
    const v0, 0x927c0

    const v1, 0x9c40

    add-int/lit8 v2, p0, -0x59

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 238
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static phyHurt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;Lcom/jarworld/rpg/sanguocollege/GameCharacter;Z)I
    .locals 5
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p1, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;
    .param p2, "crit"    # Z

    .prologue
    const/16 v2, 0x14

    .line 107
    invoke-static {p0}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalAttack(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v1

    .line 108
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Formular;->E_WORSE:[[B

    iget-byte v4, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v3, v3, v4

    .line 107
    mul-int/2addr v3, v1

    .line 109
    if-eqz p2, :cond_0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v4, 0x3

    aget-object v1, v1, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v1, v1, v4

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    .line 107
    :goto_0
    mul-int/2addr v3, v1

    .line 110
    iget-boolean v1, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_b_isRecovery:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 107
    :goto_1
    mul-int/2addr v1, v3

    .line 111
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x5a

    .line 107
    mul-int/2addr v1, v2

    .line 112
    const v2, 0x9c40

    .line 107
    div-int/2addr v1, v2

    .line 112
    invoke-static {p1}, Lcom/jarworld/rpg/sanguocollege/Formular;->totalDefence(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I

    move-result v2

    .line 107
    sub-int v0, v1, v2

    .line 113
    .local v0, "hurt":I
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .end local v0    # "hurt":I
    :cond_0
    move v1, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public static poisonHurt(ILcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 1
    .param p0, "baseValue"    # I
    .param p1, "man"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 273
    iget v0, p1, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->hp:I

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method public static totalAttack(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 57
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->phyAttack:S

    .line 58
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    .line 57
    mul-int/2addr v0, v1

    .line 59
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upAtt:S

    add-int/lit8 v1, v1, 0x64

    .line 57
    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static totalDefence(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p0, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 81
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->phyDefend:S

    .line 82
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    .line 81
    mul-int/2addr v0, v1

    .line 83
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upDef:S

    add-int/lit8 v1, v1, 0x64

    .line 81
    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static totalMagicAtt(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 69
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->magAttack:S

    .line 70
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    .line 69
    mul-int/2addr v0, v1

    .line 71
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upAtt:S

    add-int/lit8 v1, v1, 0x64

    .line 69
    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static totalMagicDef(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p0, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 93
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->magDefend:S

    .line 94
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Formular;->E_ATT:[[B

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_element:B

    aget-byte v1, v1, v2

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_elementLvl:B

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    .line 93
    mul-int/2addr v0, v1

    .line 95
    iget-short v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_s_upDef:S

    add-int/lit8 v1, v1, 0x64

    .line 93
    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static upLevel(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)I
    .locals 3
    .param p0, "attack"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    .line 248
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    .line 249
    .local v0, "level":I
    const/4 v1, 0x0

    .line 251
    .local v1, "reqExp":I
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 252
    const/16 v1, 0xa

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_nextExp:I

    .line 256
    :goto_1
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_curExp:I

    if-ge v2, v1, :cond_1

    .line 263
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_byt_level:B

    sub-int v2, v0, v2

    return v2

    .line 254
    :cond_0
    invoke-static {v0}, Lcom/jarworld/rpg/sanguocollege/Formular;->nextExp(I)I

    move-result v1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_nextExp:I

    goto :goto_1

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 260
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_curExp:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->m_i_curExp:I

    goto :goto_0
.end method

.method public static willJook(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z
    .locals 4
    .param p0, "defence"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v2, 0x1

    .line 46
    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->agility:S

    rsub-int/lit8 v0, v3, 0x64

    .line 47
    .local v0, "hitTarget":I
    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v1

    .line 48
    .local v1, "rand":I
    if-le v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static willPower(Lcom/jarworld/rpg/sanguocollege/GameCharacter;)Z
    .locals 3
    .param p0, "actor"    # Lcom/jarworld/rpg/sanguocollege/GameCharacter;

    .prologue
    const/4 v1, 0x1

    .line 36
    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v0

    .line 37
    .local v0, "rand":I
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/GameCharacter;->luck:S

    if-gt v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
