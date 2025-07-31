.class public Lcom/jarworld/rpg/sanguocollege/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# instance fields
.field content:[[Ljava/util/Vector;

.field m_dlgBubbleRole:Lcom/jarworld/rpg/sanguocollege/GameCharacter;

.field m_s_dialogHeadIdx:S

.field m_s_sectIdx:S

.field m_s_sentIdx:S

.field m_str_dialogContent:[[Ljava/lang/String;

.field option:[[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_dialogHeadIdx:S

    .line 5
    return-void
.end method


# virtual methods
.method public releaseDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/Dialog;->option:[[S

    .line 31
    iput-object v1, p0, Lcom/jarworld/rpg/sanguocollege/Dialog;->content:[[Ljava/util/Vector;

    .line 32
    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sectIdx:S

    .line 33
    iput-short v0, p0, Lcom/jarworld/rpg/sanguocollege/Dialog;->m_s_sentIdx:S

    .line 34
    return-void
.end method
