.class public Lcom/jarworld/rpg/sanguocollege/Monster;
.super Lcom/jarworld/rpg/sanguocollege/GameCharacter;
.source "Monster.java"


# static fields
.field public static s_byt_monster:[B

.field public static s_dropExpTotal:I

.field public static s_dropItem:[Lcom/jarworld/rpg/sanguocollege/Item;

.field public static s_dropMoneyTotal:S

.field public static s_s_byteForOne:S


# instance fields
.field public dropItem:[[S

.field public m_i_dropExperience:I

.field public m_s_dropMoney:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 33
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;-><init>()V

    .line 31
    const/4 v0, 0x3

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    .line 34
    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->characterType:B

    .line 35
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public init(S)V
    .locals 6
    .param p1, "monID"    # S

    .prologue
    const/4 v2, 0x1

    .line 43
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    .line 45
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_nameImgIndex:S

    .line 47
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v3

    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_fSpxIndex:S

    .line 49
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v3

    iput-short v3, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_phySGID:S

    .line 51
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x6

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_byt_element:B

    .line 52
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x7

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_byt_elementLvl:B

    .line 54
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_byt_level:B

    .line 55
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x9

    aget-byte v3, v3, v4

    if-ne v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_b_immunity:Z

    .line 57
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->maxHp:I

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->hp:I

    .line 58
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0xe

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->maxMp:I

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->mp:I

    .line 60
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x12

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->phyAttack:S

    .line 61
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x14

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->phyDefend:S

    .line 62
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->magAttack:S

    .line 63
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x18

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->magDefend:S

    .line 64
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->agility:S

    .line 65
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->luck:S

    .line 67
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_i_dropExperience:I

    .line 68
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->m_s_dropMoney:S

    .line 70
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v3, 0x9

    aget-short v2, v2, v3

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->sGInfo:[[S

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->sGInfo:[[S

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 83
    return-void

    .line 55
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 72
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->sGInfo:[[S

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->sGInfo:[[S

    aget-object v2, v2, v0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x24

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v3

    aput-short v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 78
    .end local v1    # "j":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v2, v2, v0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Monster;->s_byt_monster:[B

    .line 80
    sget-short v4, Lcom/jarworld/rpg/sanguocollege/Monster;->s_s_byteForOne:S

    mul-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x24

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->sGInfo:[[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/Monster;->dropItem:[[S

    aget-object v5, v5, v0

    array-length v5, v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 79
    invoke-static {v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v3

    aput-short v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
