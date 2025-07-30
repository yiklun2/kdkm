.class public Lcom/jarworld/rpg/sanguocollege/ArrayList;
.super Ljava/lang/Object;
.source "ArrayList.java"


# instance fields
.field curIdx:I

.field index:I

.field res:[[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->createRes(I)V

    .line 15
    return-void
.end method

.method private createRes(I)V
    .locals 5
    .param p1, "l"    # I

    .prologue
    const/4 v4, 0x5

    .line 136
    filled-new-array {p1, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 142
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v2, v2, v0

    const/4 v3, -0x1

    aput-short v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getUpdata()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v0, v0

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updataArrayList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v1, v1

    const/4 v2, 0x5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 126
    .local v0, "temp":[[S
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->createRes(I)V

    .line 128
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-void
.end method


# virtual methods
.method public add(SSSBSBZ)V
    .locals 2
    .param p1, "npcID"    # S
    .param p2, "npcPlayer"    # S
    .param p3, "missionID"    # S
    .param p4, "bubbleBrowID"    # B
    .param p5, "eventID"    # S
    .param p6, "binIdx"    # B
    .param p7, "isLoadMap"    # Z

    .prologue
    .line 54
    const/4 v1, 0x5

    new-array v0, v1, [S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    const/4 v1, 0x1

    aput-short p3, v0, v1

    const/4 v1, 0x2

    aput-short p4, v0, v1

    const/4 v1, 0x3

    aput-short p5, v0, v1

    const/4 v1, 0x4

    aput-short p6, v0, v1

    .line 55
    .local v0, "r":[S
    invoke-virtual {p0, v0, p7}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->add([SZ)V

    .line 56
    return-void
.end method

.method public add([SZ)V
    .locals 6
    .param p1, "r"    # [S
    .param p2, "isLoadMap"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 24
    if-eqz p2, :cond_2

    .line 25
    aget-short v1, p1, v4

    invoke-virtual {p0, v1}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getIndex(S)I

    move-result v0

    .line 26
    .local v0, "result":I
    if-ltz v0, :cond_1

    .line 28
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, v3

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 29
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v1, v1, v0

    aget-short v2, p1, v3

    aput-short v2, v1, v3

    .line 30
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v1, v1, v0

    aget-short v2, p1, v5

    aput-short v2, v1, v5

    .line 32
    :cond_0
    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    .line 41
    .end local v0    # "result":I
    :goto_0
    return-void

    .line 35
    .restart local v0    # "result":I
    :cond_1
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    .line 37
    .end local v0    # "result":I
    :cond_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getUpdata()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->updataArrayList()V

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getBubbleBrowID()B
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v0, v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, -0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-short v0, v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public getEventBinID()B
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v0, v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, -0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-short v0, v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public getEventID()S
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v0, v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-short v0, v0, v1

    goto :goto_0
.end method

.method public getIndex(S)I
    .locals 4
    .param p1, "npcPlayer"    # S

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 112
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 106
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v3

    if-eq v2, p1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v3

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 109
    goto :goto_1

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMissionID()S
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    array-length v0, v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->curIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-short v0, v0, v1

    goto :goto_0
.end method

.method public setEvent(SSSB)V
    .locals 11
    .param p1, "npcID"    # S
    .param p2, "npcPlayer"    # S
    .param p3, "eventID"    # S
    .param p4, "binIdx"    # B

    .prologue
    const/4 v3, -0x1

    .line 87
    invoke-virtual {p0, p2}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getIndex(S)I

    move-result v8

    .line 88
    .local v8, "i":I
    if-ltz v8, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v0, v0, v8

    const/4 v1, 0x3

    aput-short p3, v0, v1

    .line 90
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v0, v0, v8

    const/4 v1, 0x4

    aput-short p4, v0, v1

    .line 94
    :goto_0
    div-int/lit8 v10, p1, 0x1f

    .line 95
    .local v10, "tidx":I
    rem-int/lit8 v9, p1, 0x1f

    .line 96
    .local v9, "off":I
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    aget v1, v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    ushr-int/2addr v2, v9

    or-int/2addr v1, v2

    aput v1, v0, v10

    .line 97
    return-void

    .line 92
    .end local v9    # "off":I
    .end local v10    # "tidx":I
    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->add(SSSBSBZ)V

    goto :goto_0
.end method

.method public setMissionID(SSSB)V
    .locals 11
    .param p1, "npcID"    # S
    .param p2, "npcPlayer"    # S
    .param p3, "missionID"    # S
    .param p4, "bubbleBrowID"    # B

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getIndex(S)I

    move-result v8

    .line 67
    .local v8, "i":I
    if-ltz v8, :cond_0

    .line 68
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v0, v0, v8

    const/4 v1, 0x1

    aput-short p3, v0, v1

    .line 69
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/ArrayList;->res:[[S

    aget-object v0, v0, v8

    const/4 v1, 0x2

    aput-short p4, v0, v1

    .line 74
    :goto_0
    div-int/lit8 v10, p1, 0x1f

    .line 75
    .local v10, "tidx":I
    rem-int/lit8 v9, p1, 0x1f

    .line 76
    .local v9, "off":I
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_validAL:[I

    aget v1, v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    ushr-int/2addr v2, v9

    or-int/2addr v1, v2

    aput v1, v0, v10

    .line 77
    return-void

    .line 72
    .end local v9    # "off":I
    .end local v10    # "tidx":I
    :cond_0
    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->add(SSSBSBZ)V

    goto :goto_0
.end method
