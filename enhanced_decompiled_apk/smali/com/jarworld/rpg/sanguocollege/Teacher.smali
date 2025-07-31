.class public Lcom/jarworld/rpg/sanguocollege/Teacher;
.super Ljava/lang/Object;
.source "Teacher.java"


# static fields
.field static final CONTIDX:[[S

.field static final TEACH_ADV:B = 0x1t

.field static final TEACH_EQ:B = 0x0t

.field static final TEACH_INY:B = 0x2t

.field static final TEACH_ITM:B = 0x3t


# instance fields
.field contIdx:S

.field content:[[Ljava/util/Vector;

.field onTeaching:Z

.field option:[[S

.field teachInfo:[S

.field teachType:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 51
    new-array v0, v9, [[S

    const/4 v1, 0x0

    .line 52
    new-array v2, v5, [S

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-short v4, v2, v3

    aput-object v2, v0, v1

    .line 53
    new-array v1, v8, [S

    aput-short v5, v1, v5

    aput-short v6, v1, v6

    aput-short v7, v1, v7

    aput-object v1, v0, v5

    .line 54
    new-array v1, v8, [S

    aput-short v5, v1, v5

    aput-short v6, v1, v6

    aput-short v7, v1, v7

    aput-object v1, v0, v6

    .line 55
    const/4 v1, 0x6

    new-array v1, v1, [S

    aput-short v5, v1, v5

    aput-short v6, v1, v6

    aput-short v7, v1, v7

    aput-short v8, v1, v8

    aput-short v9, v1, v9

    aput-object v1, v0, v7

    .line 56
    new-array v1, v8, [S

    aput-short v5, v1, v5

    aput-short v6, v1, v6

    aput-short v7, v1, v7

    aput-object v1, v0, v8

    .line 51
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v1

    aget-short v0, v0, v1

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    .line 4
    return-void
.end method


# virtual methods
.method public changeCont(S)V
    .locals 0
    .param p1, "idx"    # S

    .prologue
    .line 64
    iput-short p1, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    .line 65
    return-void
.end method

.method public releaseTeach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->teachInfo:[S

    .line 70
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->option:[[S

    .line 71
    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->content:[[Ljava/util/Vector;

    .line 72
    return-void
.end method

.method public teachSwitch()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 76
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->teachType:B

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v4

    aget-short v1, v1, v4

    if-ne v0, v1, :cond_0

    .line 80
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v4

    aget-short v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto :goto_0

    .line 81
    :cond_0
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v4

    aget-short v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 82
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    .line 83
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    invoke-virtual {v0, v1, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->changeState(BB)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v5

    aget-short v1, v1, v4

    if-ne v0, v1, :cond_2

    .line 91
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v5

    aget-short v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto :goto_0

    .line 92
    :cond_2
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v5

    aget-short v1, v1, v2

    if-ne v0, v1, :cond_3

    .line 93
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    .line 94
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    invoke-virtual {v0, v1, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->changeState(BB)V

    goto :goto_0

    .line 96
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v3

    aget-short v1, v1, v4

    if-ne v0, v1, :cond_5

    .line 102
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->inlayItem:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    .line 103
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v3

    aget-short v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto/16 :goto_0

    .line 105
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v3

    aget-short v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto/16 :goto_0

    .line 107
    :cond_5
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v3

    aget-short v1, v1, v2

    if-ne v0, v1, :cond_6

    .line 108
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    .line 109
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    invoke-virtual {v0, v1, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->changeState(BB)V

    goto/16 :goto_0

    .line 111
    :cond_6
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v6

    aget-short v1, v1, v4

    if-ne v0, v1, :cond_7

    .line 117
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v6

    aget-short v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto/16 :goto_0

    .line 118
    :cond_7
    iget-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Teacher;->contIdx:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v1, v1, v6

    aget-short v1, v1, v2

    if-ne v0, v1, :cond_8

    .line 119
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    .line 120
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->s_pge_CurrentPage:Lcom/jarworld/rpg/sanguocollege/GameFrameBase;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->fState:B

    invoke-virtual {v0, v1, v3}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->changeState(BB)V

    goto/16 :goto_0

    .line 122
    :cond_8
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Teacher;->CONTIDX:[[S

    aget-object v0, v0, v2

    aget-short v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/Teacher;->changeCont(S)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
