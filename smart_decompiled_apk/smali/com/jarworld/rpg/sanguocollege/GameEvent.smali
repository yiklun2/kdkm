.class public Lcom/jarworld/rpg/sanguocollege/GameEvent;
.super Ljava/lang/Object;
.source "GameEvent.java"


# static fields
.field public static final EVENT_TYPE_APPEAR:S = 0x2s

.field public static final EVENT_TYPE_BLACKBG:S = 0x9s

.field public static final EVENT_TYPE_BROW:S = 0x15s

.field public static final EVENT_TYPE_BUSINESS:S = 0x10s

.field public static final EVENT_TYPE_CHANGEATT:S = 0x16s

.field public static final EVENT_TYPE_CHANGEFIGHTSTATE:S = 0x7s

.field public static final EVENT_TYPE_CHANGEMONSTER:S = 0x19s

.field public static final EVENT_TYPE_CHANGESCENE:S = 0xds

.field public static final EVENT_TYPE_CLEAR:S = 0x3s

.field public static final EVENT_TYPE_DIALOG:S = 0x8s

.field public static final EVENT_TYPE_FADEIO:S = 0x1ds

.field public static final EVENT_TYPE_FIGHT:S = 0xcs

.field public static final EVENT_TYPE_FLYORNOT:S = 0x1es

.field public static final EVENT_TYPE_GAMEOVER:S = 0x14s

.field public static final EVENT_TYPE_LEVELUP:S = 0x13s

.field public static final EVENT_TYPE_MIAVALUE:S = 0x11s

.field public static final EVENT_TYPE_MOVE_CTRL:S = 0x0s

.field public static final EVENT_TYPE_MOVE_FREE:S = 0x1s

.field public static final EVENT_TYPE_ONOFFUI:S = 0x1cs

.field public static final EVENT_TYPE_PARTER_JOIN:S = 0x5s

.field public static final EVENT_TYPE_PARTER_LEAVE:S = 0x6s

.field public static final EVENT_TYPE_SCENE_EFFECT:S = 0xes

.field public static final EVENT_TYPE_SCREENCOVER:S = 0x1bs

.field public static final EVENT_TYPE_SCREENMOVE_DIR:S = 0xbs

.field public static final EVENT_TYPE_SCREENMOVE_MAPIT:S = 0x1as

.field public static final EVENT_TYPE_SETFIGHTNPC:S = 0x17s

.field public static final EVENT_TYPE_SHOWSPX_ONMAPITEM:S = 0xfs

.field public static final EVENT_TYPE_SHOWSPX_ONSCREEN:S = 0x18s

.field public static final EVENT_TYPE_SORTTEAM:S = 0x4s

.field public static final EVENT_TYPE_SOW:S = 0x12s

.field public static final EVENT_TYPE_TEACH:S = 0x1fs

.field public static final EVENT_TYPE_TIP:S = 0xas


# instance fields
.field public isCanSkip:Z

.field public m_b_new:Z

.field public m_b_over:Z

.field public m_s_eventType:S

.field public m_s_synTime:S

.field public param:[I

.field public timer:S

.field public var:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jarworld/rpg/sanguocollege/GameEvent;->m_b_new:Z

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GameEvent;->var:[F

    .line 3
    return-void
.end method
