.class public Lcom/jarworld/rpg/sanguocollege/LeadingActor;
.super Lcom/jarworld/rpg/sanguocollege/GameCharacter;
.source "LeadingActor.java"


# static fields
.field public static advalue:S

.field public static dest:[S

.field public static isSMove:Z

.field public static love:B

.field public static money:I

.field public static s_b_isFly:Z

.field public static screenX:F

.field public static screenY:F

.field public static toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;


# instance fields
.field public advLvl:B

.field public curEqID:[S

.field public curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

.field public followInfo:[[F

.field public hIdx:S

.field public m_b_isCanEat:Z

.field public m_b_isExist:Z

.field public m_b_isInTeam:Z

.field public m_b_isToFight:Z

.field public meetRoleType:B

.field public noneEqID:[S

.field public nudeAtt:[I

.field public tIdx:S

.field public usableEqp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [S

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->dest:[S

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 119
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameCharacter;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->meetRoleType:B

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jarworld/rpg/sanguocollege/Item;

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    .line 66
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    .line 76
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    .line 101
    const/16 v0, 0x9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    .line 121
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->characterType:B

    .line 123
    sput v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 124
    sput v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 126
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setSpeed(BZ)V

    .line 128
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    aget-byte v0, v0, v2

    int-to-float v0, v0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 129
    invoke-virtual {p0, v4, v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeRoleState(BZ)V

    .line 131
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->cleanFollowInfo()V

    .line 132
    return-void
.end method

.method private approach(FFFF[[F)V
    .locals 9
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "speedX"    # F
    .param p4, "speedY"    # F
    .param p5, "pc"    # [[F

    .prologue
    .line 208
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .local v5, "vec":Ljava/util/Vector;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    .line 210
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0, p3, p4}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->move(FF)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x4

    new-array v7, v0, [I

    .line 217
    .local v7, "extremum":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v7

    if-lt v8, v0, :cond_2

    .line 224
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 225
    .local v6, "barPos":[[I
    const/4 v8, 0x0

    :goto_2
    array-length v0, v6

    if-lt v8, v0, :cond_3

    .line 240
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_9

    .line 242
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_8

    .line 244
    const/4 v0, 0x0

    aget v0, v7, v0

    int-to-float v0, v0

    const/4 v1, 0x2

    aget-object v1, p5, v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    aget v0, v7, v0

    add-int/lit8 v0, v0, -0x10

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setLocus(FF)V

    goto :goto_0

    .line 218
    .end local v6    # "barPos":[[I
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    aput v1, v7, v0

    .line 219
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v7, v0

    .line 220
    const/4 v0, 0x2

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    aput v1, v7, v0

    .line 221
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v7, v0

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 226
    .restart local v6    # "barPos":[[I
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v6, v8

    .line 227
    const/4 v0, 0x0

    aget v0, v7, v0

    aget-object v1, v6, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    if-le v0, v1, :cond_4

    .line 228
    const/4 v0, 0x0

    aget-object v1, v6, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v7, v0

    .line 230
    :cond_4
    const/4 v0, 0x1

    aget v0, v7, v0

    aget-object v1, v6, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_5

    .line 231
    const/4 v0, 0x1

    aget-object v1, v6, v8

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x10

    aput v1, v7, v0

    .line 233
    :cond_5
    const/4 v0, 0x2

    aget v0, v7, v0

    aget-object v1, v6, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    if-le v0, v1, :cond_6

    .line 234
    const/4 v0, 0x2

    aget-object v1, v6, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v7, v0

    .line 236
    :cond_6
    const/4 v0, 0x3

    aget v0, v7, v0

    aget-object v1, v6, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_7

    .line 237
    const/4 v0, 0x3

    aget-object v1, v6, v8

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x10

    aput v1, v7, v0

    .line 225
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 249
    :cond_8
    const/4 v0, 0x1

    aget v0, v7, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    aget-object v1, p5, v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    aget v0, v7, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setLocus(FF)V

    goto/16 :goto_0

    .line 255
    :cond_9
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_a

    .line 257
    const/4 v0, 0x2

    aget v0, v7, v0

    int-to-float v0, v0

    const/4 v1, 0x2

    aget-object v1, p5, v1

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 258
    const/4 v0, 0x2

    aget v0, v7, v0

    add-int/lit8 v0, v0, -0x10

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setLocus(FF)V

    goto/16 :goto_0

    .line 262
    :cond_a
    const/4 v0, 0x3

    aget v0, v7, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    aget-object v1, p5, v1

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 263
    const/4 v0, 0x3

    aget v0, v7, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setLocus(FF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public FollowMove([F)[F
    .locals 11
    .param p1, "par"    # [F

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 449
    const/4 v2, 0x5

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 450
    .local v1, "result":[F
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    if-ne v2, v3, :cond_0

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 454
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    .line 456
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    array-length v3, v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 457
    iput-short v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    .line 461
    .end local v0    # "i":I
    :cond_0
    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_1

    .line 462
    iput-byte v8, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_state:B

    .line 463
    aget v2, p1, v6

    float-to-int v2, v2

    int-to-byte v2, v2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    aget v4, p1, v6

    float-to-int v4, v4

    aget-byte v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    aget v5, p1, v6

    float-to-int v5, v5

    aget-byte v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 464
    aget v2, p1, v8

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    .line 465
    aget v2, p1, v9

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    .line 466
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    .line 467
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    .line 468
    aget v2, p1, v10

    float-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    .line 469
    const/4 v2, 0x4

    aget v2, p1, v2

    float-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionTurn:B

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    aget-object v3, v2, v3

    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_4

    aget v2, p1, v6

    :goto_1
    aput v2, v3, v6

    .line 473
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    aget-object v3, v2, v3

    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_5

    aget v2, p1, v8

    :goto_2
    aput v2, v3, v8

    .line 474
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    aget-object v3, v2, v3

    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_6

    aget v2, p1, v9

    :goto_3
    aput v2, v3, v9

    .line 475
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    aget-object v3, v2, v3

    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_7

    aget v2, p1, v10

    :goto_4
    aput v2, v3, v10

    .line 476
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    aget-object v3, v2, v3

    const/4 v4, 0x4

    aget v2, p1, v6

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    aget v2, p1, v2

    :goto_5
    aput v2, v3, v4

    .line 477
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    .line 479
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    array-length v3, v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 480
    iput-short v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    .line 482
    :cond_2
    return-object v1

    .line 452
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    aget-object v2, v2, v3

    aget v2, v2, v0

    aput v2, v1, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 472
    .end local v0    # "i":I
    :cond_4
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    int-to-float v2, v2

    goto :goto_1

    .line 473
    :cond_5
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    goto :goto_2

    .line 474
    :cond_6
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    goto :goto_3

    .line 475
    :cond_7
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    int-to-float v2, v2

    goto :goto_4

    .line 476
    :cond_8
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionTurn:B

    int-to-float v2, v2

    goto :goto_5

    .line 449
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public advanceLvlUp()V
    .locals 5

    .prologue
    .line 624
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->updateAtt()V

    .line 631
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 632
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 633
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v1, v0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ADVINFO:[[S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x1

    aget-short v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public attManage()V
    .locals 5

    .prologue
    const v4, 0x1869f

    const/16 v3, 0x64

    const/16 v2, 0x270f

    const/4 v1, 0x0

    .line 774
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    .line 775
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    .line 776
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    .line 777
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    .line 778
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magAttack:S

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magAttack:S

    .line 779
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magDefend:S

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magDefend:S

    .line 780
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->agility:S

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->agility:S

    .line 781
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->luck:S

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->luck:S

    .line 782
    return-void
.end method

.method public backToSceneRelive()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    if-nez v0, :cond_0

    .line 602
    iput-boolean v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isAlive:Z

    .line 603
    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 605
    :cond_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 606
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 607
    return-void
.end method

.method public checkNPC([Lcom/jarworld/rpg/sanguocollege/GameNPC;)V
    .locals 10
    .param p1, "role"    # [Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 150
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 151
    .local v2, "lastNpc":Lcom/jarworld/rpg/sanguocollege/GameNPC;
    const/4 v3, 0x0

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 152
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    if-eqz v3, :cond_5

    .line 154
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    invoke-virtual {p0, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    invoke-virtual {p0, v3, v7, v7}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 157
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->toTouchNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->npcType:B

    if-ne v3, v6, :cond_4

    .line 158
    iput-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->meetRoleType:B

    .line 185
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    if-eq v2, v3, :cond_2

    iget-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->npcType:B

    if-eqz v3, :cond_2

    .line 186
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    iget-short v4, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getMissionID()S

    move-result v3

    if-ltz v3, :cond_9

    .line 187
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    iget-short v4, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->getBubbleBrowID()B

    move-result v3

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    .line 191
    :goto_1
    iput v8, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->bbFrameIndex:I

    .line 194
    :cond_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->npcType:B

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_dlgBb:B

    if-ne v3, v6, :cond_3

    .line 195
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    iput-byte v8, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    .line 197
    :cond_3
    return-void

    .line 160
    :cond_4
    iput-byte v9, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->meetRoleType:B

    goto :goto_0

    .line 165
    :cond_5
    if-eqz p1, :cond_1

    .line 166
    array-length v1, p1

    .line 167
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_1

    .line 169
    aget-object v3, p1, v0

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_canAssault:B

    if-nez v3, :cond_8

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    aget-object v4, p1, v0

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_s_ID:S

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_8

    .line 170
    aget-object v3, p1, v0

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    invoke-virtual {p0, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v3

    if-nez v3, :cond_6

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v7, v7}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->collisionItemCheck(Lcom/jarworld/rpg/sanguocollege/GameCharacter;FF)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 172
    :cond_6
    aget-object v3, p1, v0

    sput-object v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentNPC:Lcom/jarworld/rpg/sanguocollege/GameNPC;

    .line 173
    aget-object v3, p1, v0

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/GameNPC;->npcType:B

    if-ne v3, v6, :cond_7

    .line 174
    iput-byte v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->meetRoleType:B

    goto :goto_0

    .line 176
    :cond_7
    iput-byte v9, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->meetRoleType:B

    goto :goto_0

    .line 167
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "i":I
    .end local v1    # "l":I
    :cond_9
    const/4 v3, -0x1

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->m_byt_bubbleBrowID:B

    goto :goto_1
.end method

.method public checkSuit()V
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 716
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 718
    .local v5, "vec1":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v9, :cond_1

    .line 723
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v6, v8, :cond_a

    .line 725
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v3, v6, [I

    .line 726
    .local v3, "temp1":[I
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x2

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 727
    .local v4, "temp2":[[I
    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-lt v1, v6, :cond_3

    .line 733
    const/4 v1, 0x0

    :goto_2
    array-length v6, v3

    if-lt v1, v6, :cond_4

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "found":Z
    const/4 v1, 0x0

    :goto_3
    array-length v6, v4

    if-lt v1, v6, :cond_8

    .line 761
    :goto_4
    if-nez v0, :cond_0

    .line 762
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aput-short v12, v6, v9

    .line 763
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v7, 0x0

    aput-object v7, v6, v9

    .line 770
    .end local v0    # "found":Z
    .end local v3    # "temp1":[I
    .end local v4    # "temp2":[[I
    :cond_0
    :goto_5
    return-void

    .line 719
    :cond_1
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v6, v6, v1

    iget-short v6, v6, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_singleID:S

    if-ltz v6, :cond_2

    .line 720
    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v7, v7, v1

    iget-short v7, v7, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_singleID:S

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 718
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .restart local v3    # "temp1":[I
    .restart local v4    # "temp2":[[I
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v1

    .line 729
    aget-object v6, v4, v1

    aput v12, v6, v10

    .line 730
    aget-object v6, v4, v1

    aput v10, v6, v11

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 735
    :cond_4
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_6
    array-length v6, v4

    if-lt v2, v6, :cond_5

    .line 733
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 736
    :cond_5
    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v6, v12, :cond_6

    .line 738
    aget-object v6, v4, v2

    aget v7, v3, v1

    aput v7, v6, v10

    .line 739
    aget-object v6, v4, v2

    aput v11, v6, v11

    goto :goto_7

    .line 741
    :cond_6
    aget-object v6, v4, v2

    aget v6, v6, v10

    aget v7, v3, v1

    if-ne v6, v7, :cond_7

    .line 743
    aget-object v6, v4, v2

    aget v7, v6, v11

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v11

    goto :goto_7

    .line 735
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 752
    .end local v2    # "j":I
    .restart local v0    # "found":Z
    :cond_8
    aget-object v6, v4, v1

    aget v6, v6, v11

    if-lt v6, v8, :cond_9

    .line 753
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GC;->SUITINFO:[[S

    aget-object v8, v4, v1

    aget v8, v8, v10

    aget-object v7, v7, v8

    aget-object v8, v4, v1

    aget v8, v8, v11

    add-int/lit8 v8, v8, -0x3

    aget-short v7, v7, v8

    aput-short v7, v6, v9

    .line 754
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    new-instance v7, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v7}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    aput-object v7, v6, v9

    .line 755
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v7, v7, v9

    invoke-virtual {v6, v7}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 756
    const/4 v0, 0x1

    .line 757
    goto/16 :goto_4

    .line 750
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 767
    .end local v0    # "found":Z
    .end local v3    # "temp1":[I
    .end local v4    # "temp2":[[I
    :cond_a
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aput-short v12, v6, v9

    .line 768
    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    const/4 v7, 0x0

    aput-object v7, v6, v9

    goto/16 :goto_5
.end method

.method public cleanFollowInfo()V
    .locals 4

    .prologue
    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 492
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->tIdx:S

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hIdx:S

    .line 493
    return-void

    .line 488
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->followInfo:[[F

    aget-object v2, v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v1

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 537
    iget-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    if-eqz v0, :cond_2

    .line 539
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->lastActionIndex:S

    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    if-eq v0, v1, :cond_0

    .line 540
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->lastActionIndex:S

    .line 541
    iput v7, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    .line 543
    :cond_0
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionTurn:B

    if-ne v0, v6, :cond_3

    .line 544
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    float-to-int v2, v2

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    .line 549
    :goto_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionLoop:S

    if-lez v0, :cond_1

    .line 550
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    if-nez v0, :cond_1

    .line 551
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionLoop:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionLoop:S

    .line 555
    :cond_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_bubbleBrowID:B

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->drawBubble(B)V

    .line 557
    :cond_2
    return-void

    .line 546
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    float-to-int v1, v1

    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    float-to-int v2, v2

    sget v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    iget-short v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    iget-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->actionIndex:B

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->frameIndex:I

    goto :goto_0
.end method

.method public dressEquip(Lcom/jarworld/rpg/sanguocollege/Item;)V
    .locals 8
    .param p1, "it"    # Lcom/jarworld/rpg/sanguocollege/Item;

    .prologue
    const/4 v7, 0x0

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "curEq":Lcom/jarworld/rpg/sanguocollege/Item;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 683
    :goto_1
    if-eqz v0, :cond_1

    .line 684
    const/4 v3, 0x0

    .line 685
    .local v3, "isNone":Z
    const/4 v2, 0x0

    .line 686
    .local v2, "isBreak":Z
    const/4 v1, 0x0

    :goto_2
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v5, v5

    if-lt v1, v5, :cond_4

    .line 699
    :cond_0
    if-nez v3, :cond_1

    .line 700
    iget-short v5, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-static {v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->getItem(S)V

    .line 704
    .end local v2    # "isBreak":Z
    .end local v3    # "isNone":Z
    :cond_1
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->checkSuit()V

    .line 706
    iget-short v5, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    invoke-static {v5}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->removeItem(S)V

    .line 708
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->updateAtt()V

    .line 710
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 711
    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    iget v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 712
    return-void

    .line 675
    :cond_2
    iget-byte v5, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_type:B

    iget-object v6, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    aget-byte v6, v6, v1

    if-ne v5, v6, :cond_3

    .line 676
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v0, v5, v1

    .line 677
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aput-object p1, v5, v1

    .line 678
    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    iget-short v6, p1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    aput-short v6, v5, v1

    goto :goto_1

    .line 674
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    .restart local v2    # "isBreak":Z
    .restart local v3    # "isNone":Z
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    array-length v5, v5

    if-lt v4, v5, :cond_5

    .line 694
    :goto_4
    if-nez v2, :cond_0

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 688
    :cond_5
    iget-short v5, v0, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v6, v6, v4

    if-ne v5, v6, :cond_6

    .line 689
    const/4 v3, 0x1

    .line 690
    const/4 v2, 0x1

    .line 691
    goto :goto_4

    .line 687
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public glide()V
    .locals 22

    .prologue
    .line 273
    const/4 v1, 0x5

    new-array v14, v1, [[F

    const/4 v1, 0x0

    .line 274
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    aput-object v2, v14, v1

    const/4 v1, 0x1

    .line 275
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    aput-object v2, v14, v1

    const/4 v1, 0x2

    .line 276
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    aput-object v2, v14, v1

    const/4 v1, 0x3

    .line 277
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    aput-object v2, v14, v1

    const/4 v1, 0x4

    .line 278
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    aput-object v2, v14, v1

    .line 281
    .local v14, "pc":[[F
    const/4 v1, 0x2

    new-array v12, v1, [F

    .line 283
    .local v12, "firSpeed":[F
    const/4 v1, 0x2

    new-array v15, v1, [F

    .line 285
    .local v15, "secSpeed":[F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v1

    xor-int v1, v1, v21

    if-nez v1, :cond_2

    .line 287
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 288
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    aput v2, v12, v1

    .line 289
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v12, v1

    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 291
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    aput v2, v15, v1

    .line 324
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v1, 0x0

    aget v4, v12, v1

    const/4 v1, 0x1

    aget v5, v12, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v1, 0x0

    aget v4, v15, v1

    const/4 v1, 0x1

    aget v5, v15, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 326
    const/4 v8, 0x0

    check-cast v8, [F

    .line 327
    .local v8, "alley":[F
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19

    .line 329
    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/4 v13, 0x2

    .line 331
    .local v13, "idx":I
    :goto_1
    aget-object v1, v14, v13

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v12, v2

    add-float v16, v1, v2

    .line 332
    .local v16, "t1":F
    aget-object v1, v14, v13

    const/4 v2, 0x0

    aget v17, v1, v2

    .line 333
    .local v17, "t2":F
    aget-object v1, v14, v13

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v15, v2

    add-float v18, v1, v2

    .line 334
    .local v18, "t3":F
    aget-object v1, v14, v13

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    const/16 v1, -0x10

    :goto_2
    int-to-float v1, v1

    add-float v19, v2, v1

    .line 335
    .local v19, "t4":F
    aget-object v1, v14, v13

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    const/16 v1, -0x10

    :goto_3
    int-to-float v1, v1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v15, v2

    add-float v20, v1, v2

    .line 336
    .local v20, "t5":F
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    const/4 v1, -0x1

    :goto_4
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_5
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 337
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v17, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_c

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    const/4 v1, -0x1

    :goto_6
    int-to-float v1, v1

    add-float v1, v1, v17

    :goto_7
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 336
    add-int v7, v2, v1

    .line 338
    .local v7, "a":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    const/4 v1, -0x1

    :goto_8
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_9
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 339
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v18, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_10

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f

    const/4 v1, -0x1

    :goto_a
    int-to-float v1, v1

    add-float v1, v1, v18

    :goto_b
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 338
    add-int v9, v2, v1

    .line 340
    .local v9, "b":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    const/4 v1, -0x1

    :goto_c
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_d
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 341
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v19, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_14

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_13

    const/4 v1, 0x1

    :goto_e
    int-to-float v1, v1

    add-float v1, v1, v19

    :goto_f
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 340
    add-int v10, v2, v1

    .line 342
    .local v10, "c":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_16

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    const/4 v1, -0x1

    :goto_10
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_11
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 343
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v20, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_18

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_12
    int-to-float v1, v1

    add-float v1, v1, v20

    :goto_13
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 342
    add-int v11, v2, v1

    .line 346
    .local v11, "d":I
    if-ltz v7, :cond_0

    .line 347
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v7, v1, :cond_0

    .line 348
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_0

    .line 350
    if-ltz v9, :cond_0

    .line 351
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 352
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v9

    if-nez v1, :cond_0

    .line 354
    if-ltz v10, :cond_0

    .line 355
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v10, v1, :cond_0

    .line 356
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v10

    if-nez v1, :cond_0

    .line 358
    if-ltz v11, :cond_0

    .line 359
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v11, v1, :cond_0

    .line 360
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x2

    new-array v8, v1, [F

    .line 403
    :cond_0
    :goto_14
    if-eqz v8, :cond_32

    .line 405
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 407
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2f

    .line 409
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    aput v2, v8, v1

    .line 414
    :goto_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v3, 0x1

    aget v3, v12, v3

    add-float/2addr v2, v3

    aput v2, v8, v1

    .line 427
    :goto_16
    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeAction(II)V

    .line 429
    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setLocus(FF)V

    .line 440
    .end local v7    # "a":I
    .end local v8    # "alley":[F
    .end local v9    # "b":I
    .end local v10    # "c":I
    .end local v11    # "d":I
    .end local v13    # "idx":I
    .end local v16    # "t1":F
    .end local v17    # "t2":F
    .end local v18    # "t3":F
    .end local v19    # "t4":F
    .end local v20    # "t5":F
    :goto_17
    return-void

    .line 293
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v12, v1

    .line 294
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    aput v2, v12, v1

    .line 295
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    aput v2, v15, v1

    .line 296
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v15, v1

    goto/16 :goto_0

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    aput v2, v12, v1

    .line 301
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v12, v1

    .line 302
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 303
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    aput v2, v15, v1

    goto/16 :goto_0

    .line 306
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v12, v1

    .line 307
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedY:F

    aput v2, v12, v1

    .line 308
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_speedX:F

    aput v2, v15, v1

    .line 309
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v15, v1

    goto/16 :goto_0

    .line 329
    .restart local v8    # "alley":[F
    :cond_4
    const/4 v13, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v13    # "idx":I
    .restart local v16    # "t1":F
    .restart local v17    # "t2":F
    .restart local v18    # "t3":F
    :cond_7
    const/16 v1, 0x10

    goto/16 :goto_2

    .line 335
    .restart local v19    # "t4":F
    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_3

    .line 336
    .restart local v20    # "t5":F
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_a
    move/from16 v1, v16

    goto/16 :goto_5

    .line 337
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_c
    move/from16 v1, v17

    goto/16 :goto_7

    .line 338
    .restart local v7    # "a":I
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_e
    move/from16 v1, v16

    goto/16 :goto_9

    .line 339
    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_a

    :cond_10
    move/from16 v1, v18

    goto/16 :goto_b

    .line 340
    .restart local v9    # "b":I
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_c

    :cond_12
    move/from16 v1, v16

    goto/16 :goto_d

    .line 341
    :cond_13
    const/4 v1, -0x1

    goto/16 :goto_e

    :cond_14
    move/from16 v1, v19

    goto/16 :goto_f

    .line 342
    .restart local v10    # "c":I
    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_10

    :cond_16
    move/from16 v1, v16

    goto/16 :goto_11

    .line 343
    :cond_17
    const/4 v1, -0x1

    goto/16 :goto_12

    :cond_18
    move/from16 v1, v20

    goto/16 :goto_13

    .line 367
    .end local v7    # "a":I
    .end local v9    # "b":I
    .end local v10    # "c":I
    .end local v13    # "idx":I
    .end local v16    # "t1":F
    .end local v17    # "t2":F
    .end local v18    # "t3":F
    .end local v19    # "t4":F
    .end local v20    # "t5":F
    :cond_19
    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    const/4 v13, 0x2

    .line 369
    .restart local v13    # "idx":I
    :goto_18
    aget-object v1, v14, v13

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v12, v2

    add-float v16, v1, v2

    .line 370
    .restart local v16    # "t1":F
    aget-object v1, v14, v13

    const/4 v2, 0x1

    aget v17, v1, v2

    .line 371
    .restart local v17    # "t2":F
    aget-object v1, v14, v13

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v15, v2

    add-float v18, v1, v2

    .line 372
    .restart local v18    # "t3":F
    aget-object v1, v14, v13

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    const/16 v1, -0x10

    :goto_19
    int-to-float v1, v1

    add-float v19, v2, v1

    .line 373
    .restart local v19    # "t4":F
    aget-object v1, v14, v13

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1e

    const/16 v1, -0x10

    :goto_1a
    int-to-float v1, v1

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v15, v2

    add-float v20, v1, v2

    .line 374
    .restart local v20    # "t5":F
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v17, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_20

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f

    const/4 v1, -0x1

    :goto_1b
    int-to-float v1, v1

    add-float v1, v1, v17

    :goto_1c
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 375
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_21

    const/4 v1, -0x1

    :goto_1d
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_1e
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 374
    add-int v7, v2, v1

    .line 376
    .restart local v7    # "a":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v18, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_24

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23

    const/4 v1, -0x1

    :goto_1f
    int-to-float v1, v1

    add-float v1, v1, v18

    :goto_20
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 377
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_25

    const/4 v1, -0x1

    :goto_21
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_22
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 376
    add-int v9, v2, v1

    .line 378
    .restart local v9    # "b":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v19, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_28

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_27

    const/4 v1, 0x1

    :goto_23
    int-to-float v1, v1

    add-float v1, v1, v19

    :goto_24
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 379
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_29

    const/4 v1, -0x1

    :goto_25
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_26
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 378
    add-int v10, v2, v1

    .line 380
    .restart local v10    # "c":I
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v20, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    const/4 v1, 0x1

    :goto_27
    int-to-float v1, v1

    add-float v1, v1, v20

    :goto_28
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_byt_verNum:B

    mul-int/2addr v2, v1

    .line 381
    const/high16 v1, 0x41800000    # 16.0f

    rem-float v1, v16, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    aget v1, v12, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    const/4 v1, -0x1

    :goto_29
    int-to-float v1, v1

    add-float v1, v1, v16

    :goto_2a
    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x10

    .line 380
    add-int v11, v2, v1

    .line 384
    .restart local v11    # "d":I
    if-ltz v7, :cond_0

    .line 385
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v7, v1, :cond_0

    .line 386
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_0

    .line 388
    if-ltz v9, :cond_0

    .line 389
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v9, v1, :cond_0

    .line 390
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v9

    if-nez v1, :cond_0

    .line 392
    if-ltz v10, :cond_0

    .line 393
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v10, v1, :cond_0

    .line 394
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v10

    if-nez v1, :cond_0

    .line 396
    if-ltz v11, :cond_0

    .line 397
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    array-length v1, v1

    if-ge v11, v1, :cond_0

    .line 398
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_mapBarrier:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x2

    new-array v8, v1, [F

    goto/16 :goto_14

    .line 367
    .end local v7    # "a":I
    .end local v9    # "b":I
    .end local v10    # "c":I
    .end local v11    # "d":I
    .end local v13    # "idx":I
    .end local v16    # "t1":F
    .end local v17    # "t2":F
    .end local v18    # "t3":F
    .end local v19    # "t4":F
    .end local v20    # "t5":F
    :cond_1a
    const/4 v13, 0x1

    goto/16 :goto_18

    :cond_1b
    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1c

    const/4 v13, 0x3

    goto/16 :goto_18

    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_18

    .line 372
    .restart local v13    # "idx":I
    .restart local v16    # "t1":F
    .restart local v17    # "t2":F
    .restart local v18    # "t3":F
    :cond_1d
    const/16 v1, 0x10

    goto/16 :goto_19

    .line 373
    .restart local v19    # "t4":F
    :cond_1e
    const/16 v1, 0x10

    goto/16 :goto_1a

    .line 374
    .restart local v20    # "t5":F
    :cond_1f
    const/4 v1, 0x1

    goto/16 :goto_1b

    :cond_20
    move/from16 v1, v17

    goto/16 :goto_1c

    .line 375
    :cond_21
    const/4 v1, 0x1

    goto/16 :goto_1d

    :cond_22
    move/from16 v1, v16

    goto/16 :goto_1e

    .line 376
    .restart local v7    # "a":I
    :cond_23
    const/4 v1, 0x1

    goto/16 :goto_1f

    :cond_24
    move/from16 v1, v18

    goto/16 :goto_20

    .line 377
    :cond_25
    const/4 v1, 0x1

    goto/16 :goto_21

    :cond_26
    move/from16 v1, v16

    goto/16 :goto_22

    .line 378
    .restart local v9    # "b":I
    :cond_27
    const/4 v1, -0x1

    goto/16 :goto_23

    :cond_28
    move/from16 v1, v19

    goto/16 :goto_24

    .line 379
    :cond_29
    const/4 v1, 0x1

    goto/16 :goto_25

    :cond_2a
    move/from16 v1, v16

    goto/16 :goto_26

    .line 380
    .restart local v10    # "c":I
    :cond_2b
    const/4 v1, -0x1

    goto/16 :goto_27

    :cond_2c
    move/from16 v1, v20

    goto/16 :goto_28

    .line 381
    :cond_2d
    const/4 v1, 0x1

    goto/16 :goto_29

    :cond_2e
    move/from16 v1, v16

    goto/16 :goto_2a

    .line 412
    .restart local v11    # "d":I
    :cond_2f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    aput v2, v8, v1

    goto/16 :goto_15

    .line 417
    :cond_30
    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    aput v2, v8, v1

    .line 424
    :goto_2b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    const/4 v3, 0x0

    aget v3, v12, v3

    add-float/2addr v2, v3

    aput v2, v8, v1

    goto/16 :goto_16

    .line 422
    :cond_31
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    aput v2, v8, v1

    goto :goto_2b

    .line 435
    .end local v7    # "a":I
    .end local v8    # "alley":[F
    .end local v9    # "b":I
    .end local v10    # "c":I
    .end local v11    # "d":I
    .end local v13    # "idx":I
    .end local v16    # "t1":F
    .end local v17    # "t2":F
    .end local v18    # "t3":F
    .end local v19    # "t4":F
    .end local v20    # "t5":F
    :cond_32
    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeAction(II)V

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v1, 0x0

    aget v4, v12, v1

    const/4 v1, 0x1

    aget v5, v12, v1

    move-object/from16 v1, p0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->approach(FFFF[[F)V

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v1, 0x0

    aget v4, v15, v1

    const/4 v1, 0x1

    aget v5, v15, v1

    move-object/from16 v1, p0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->approach(FFFF[[F)V

    goto/16 :goto_17
.end method

.method public init()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->checkSuit()V

    .line 139
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->updateAtt()V

    .line 141
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 142
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 143
    return-void
.end method

.method public levelUp()V
    .locals 5

    .prologue
    .line 611
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->updateAtt()V

    .line 618
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->hp:I

    .line 619
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->mp:I

    .line 620
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v1, v0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ATTUP:[[S

    iget-short v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    aget-object v3, v3, v4

    aget-short v3, v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFlyOrNot()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 497
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->CheckBarrier(FFFFLjava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v9

    .line 499
    .local v7, "isCannotDown":Z
    :goto_0
    if-nez v7, :cond_0

    .line 500
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v0, :cond_3

    move v0, v8

    :goto_1
    sput-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    .line 502
    :cond_0
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->s_b_isFly:Z

    if-eqz v0, :cond_6

    .line 504
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v9}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setSpeed(BZ)V

    .line 505
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 507
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-lt v6, v0, :cond_4

    .line 533
    :cond_1
    invoke-virtual {p0, v10, v10}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeAction(II)V

    .line 534
    return-void

    .end local v6    # "i":I
    .end local v7    # "isCannotDown":Z
    :cond_2
    move v7, v8

    .line 497
    goto :goto_0

    .restart local v7    # "isCannotDown":Z
    :cond_3
    move v0, v9

    .line 500
    goto :goto_1

    .line 508
    .restart local v6    # "i":I
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v6

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-eq v0, v1, :cond_5

    .line 509
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    iput-boolean v8, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    .line 507
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 514
    .end local v6    # "i":I
    :cond_6
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v9}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->setSpeed(BZ)V

    .line 515
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    iget-byte v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 517
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    sget v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRoleCount:I

    if-ge v6, v0, :cond_1

    .line 518
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v0, v0, v6

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    if-eq v0, v1, :cond_7

    .line 519
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    iput-boolean v9, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    .line 520
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    .line 521
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v1, v1, v2

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    .line 522
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v3, v3, v4

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v2, v2, v3

    int-to-float v2, v2

    .line 523
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v4, v4, v5

    iget-byte v4, v4, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_direct:B

    aget-byte v3, v3, v4

    int-to-float v3, v3

    .line 520
    invoke-virtual {v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 524
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    .line 525
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v1, v1, v2

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    iput-short v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    .line 526
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    .line 527
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_s_controlID:S

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    iput v1, v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    .line 528
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    invoke-virtual {v0, v8, v9}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeRoleState(BZ)V

    .line 530
    :cond_7
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->parter:[S

    aget-short v1, v1, v6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->cleanFollowInfo()V

    .line 517
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3
.end method

.method public setPos(SSFFB)V
    .locals 5
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "pX"    # F
    .param p4, "pY"    # F
    .param p5, "direct"    # B

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 568
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    aget-byte v0, v0, p5

    int-to-float v0, v0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    aget-byte v1, v1, p5

    int-to-float v1, v1

    invoke-virtual {p0, p5, v0, v1}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->turn(BFF)V

    .line 569
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->changeRoleState(BZ)V

    .line 570
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    .line 571
    iput-short p2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    .line 573
    cmpl-float v0, p3, v3

    if-eqz v0, :cond_0

    cmpl-float v0, p4, v3

    if-nez v0, :cond_3

    .line 574
    :cond_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_verIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    .line 575
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_horIdx:S

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    .line 581
    :goto_0
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v4

    sput v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 582
    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 583
    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    .line 588
    :cond_1
    :goto_1
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v4

    sput v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 589
    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 590
    sput v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    .line 596
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->cleanFollowInfo()V

    .line 597
    return-void

    .line 577
    :cond_3
    iput p3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posX:F

    .line 578
    iput p4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_f_posY:F

    goto :goto_0

    .line 584
    :cond_4
    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 585
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapWidth:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    goto :goto_1

    .line 591
    :cond_5
    sget v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 592
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_currentScene:Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameScene$Scene;->m_map:Lcom/jarworld/rpg/sanguocollege/GameMapManager;

    iget-short v0, v0, Lcom/jarworld/rpg/sanguocollege/GameMapManager;->m_sMapHeight:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    goto :goto_2
.end method

.method public updateAtt()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 638
    const/16 v2, 0x8

    new-array v1, v2, [I

    .line 639
    .local v1, "temp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v2, v6

    aget v3, v1, v6

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    .line 657
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v2, v7

    aget v3, v1, v7

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    .line 658
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v2, v8

    aget v3, v1, v8

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    .line 659
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v2, v9

    aget v3, v1, v9

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    .line 660
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    aget v2, v2, v5

    aget v3, v1, v5

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magAttack:S

    .line 661
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    const/4 v3, 0x5

    aget v3, v1, v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magDefend:S

    .line 662
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    const/4 v3, 0x6

    aget v3, v1, v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->agility:S

    .line 663
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const/4 v3, 0x7

    aget v3, v1, v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->luck:S

    .line 665
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->attManage()V

    .line 666
    return-void

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 641
    aget v2, v1, v6

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_hp:I

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 642
    aget v2, v1, v7

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_i_mp:I

    add-int/2addr v2, v3

    aput v2, v1, v7

    .line 643
    aget v2, v1, v8

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyAttack:S

    add-int/2addr v2, v3

    aput v2, v1, v8

    .line 644
    aget v2, v1, v9

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_phyDefend:S

    add-int/2addr v2, v3

    aput v2, v1, v9

    .line 645
    aget v2, v1, v5

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magAttack:S

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 646
    const/4 v2, 0x5

    aget v3, v1, v2

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v4, v4, v0

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_magDefend:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 647
    const/4 v2, 0x6

    aget v3, v1, v2

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v4, v4, v0

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_agility:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 648
    const/4 v2, 0x7

    aget v3, v1, v2

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v4, v4, v0

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_luck:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 650
    :cond_1
    if-ne v0, v5, :cond_2

    .line 651
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v2, v2, v0

    iget-byte v2, v2, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_element:B

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_element:B

    .line 652
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_elementLvl:B

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v3, v3, v0

    iget-byte v3, v3, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_elementLvl:B

    add-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_elementLvl:B

    .line 639
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
