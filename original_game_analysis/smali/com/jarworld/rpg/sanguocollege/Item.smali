.class public Lcom/jarworld/rpg/sanguocollege/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field static final CLOTHING:B = 0x6t

.field static final EVERYMED:B = 0xbt

.field static final FAN:B = 0x2t

.field static final FARMET:B = 0x3t

.field static final FSHOE:B = 0x7t

.field static final GLAIVE:B = 0x0t

.field static final HURT:B = 0xet

.field static final LORICAE:B = 0x5t

.field static final MEDICATION:B = 0xat

.field static final MISSIONITEM:B = 0x11t

.field static final NAIL:B = 0x1t

.field static final PEARL:B = 0xft

.field static final RETREAT:B = 0x13t

.field static final RLMEDICATION:B = 0xdt

.field static final SKBOOK:B = 0x10t

.field static final SPEMEDICATION:B = 0xct

.field static final SUIT:B = 0x12t

.field static final TREASURE:B = 0x9t

.field static final WARMET:B = 0x4t

.field static final WSHOE:B = 0x8t

.field static s_byt_equipment:[B

.field static s_s_byteForOne:S


# instance fields
.field m_b_isCanSell:Z

.field m_byt_element:B

.field m_byt_elementLvl:B

.field m_byt_itemImgIndex:B

.field m_byt_itemNum:B

.field m_byt_level:B

.field m_byt_round:B

.field m_byt_state:B

.field m_byt_stateRate:B

.field m_byt_type:B

.field m_byt_useType:B

.field m_byt_usetarget:B

.field m_byte_drawRNum:B

.field m_i_hp:I

.field m_i_mp:I

.field m_s_ID:S

.field m_s_agility:S

.field m_s_buyCost:S

.field m_s_inlayCost:S

.field m_s_inlayXID:S

.field m_s_inlayYID:S

.field m_s_luck:S

.field m_s_magAttack:S

.field m_s_magDefend:S

.field m_s_phyAttack:S

.field m_s_phyDefend:S

.field m_s_sellCost:S

.field m_s_singleID:S

.field m_s_stateBase:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(S)V
    .locals 4
    .param p1, "itemID"    # S

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 128
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    .line 130
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    .line 132
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    .line 133
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    packed-switch v2, :pswitch_data_0

    .line 152
    const/4 v2, 0x2

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 153
    const/4 v2, 0x3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    .line 156
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemImgIndex:B

    .line 158
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_element:B

    .line 159
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x5

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_elementLvl:B

    .line 161
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_level:B

    .line 162
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x7

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    .line 163
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0xb

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readInt([BI)I

    move-result v2

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    .line 165
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0xf

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    .line 166
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x11

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    .line 167
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x13

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    .line 168
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x15

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    .line 169
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x17

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    .line 170
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x19

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    .line 172
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1b

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_state:B

    .line 173
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1c

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_round:B

    .line 174
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_stateBase:S

    .line 175
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_stateRate:B

    .line 177
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x20

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_singleID:S

    .line 179
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_buyCost:S

    .line 180
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_sellCost:S

    .line 181
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x26

    invoke-static {v2, v3}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayCost:S

    .line 183
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x28

    aget-byte v2, v2, v3

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_b_isCanSell:Z

    .line 185
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x29

    invoke-static {v0, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayXID:S

    .line 186
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Item;->s_byt_equipment:[B

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/Item;->s_s_byteForOne:S

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2b

    invoke-static {v0, v2}, Lcom/jarworld/rpg/sanguocollege/Tool;->readShort([BI)S

    move-result v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_inlayYID:S

    .line 188
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    .line 189
    return-void

    .line 137
    :pswitch_0
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 138
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    goto/16 :goto_0

    .line 142
    :pswitch_1
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 143
    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    goto/16 :goto_0

    .line 147
    :pswitch_2
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_useType:B

    .line 148
    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_usetarget:B

    goto/16 :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
