.class public Lcom/jarworld/rpg/sanguocollege/GC;
.super Ljava/lang/Object;
.source "GC.java"


# static fields
.field static final ACTION_BEATTACK:B = 0x2t

.field static final ACTION_CAST:B = 0x6t

.field static final ACTION_DEAD:B = 0x3t

.field static final ACTION_MOVE:B = 0x1t

.field static final ACTION_PHYATTACK:B = 0x4t

.field static final ACTION_RECOVERY:B = 0x5t

.field static final ACTION_WAIT:B = 0x0t

.field static ADVINFO:[[S = null

.field static ATTUP:[[S = null

.field static final BACKIDX:B = 0x0t

.field static final BASEBOOK:S = 0x18bs

.field static final BF_H:S = 0xfas

.field static final BF_W:S = 0x198s

.field static BF_X:S = 0x0s

.field static BF_Y:S = 0x0s

.field static final BUBBLEBROW:S = 0x18fs

.field static final COLIT_H:B = 0x10t

.field static final COLIT_W:B = 0x10t

.field static final COLIT_X:B = 0x0t

.field static final COLIT_Y:B = 0x0t

.field static final DEATH:S = 0x12ds

.field static final DIR4_X:[B

.field static final DIR4_Y:[B

.field static final DIR8_X:[B

.field static final DIR8_Y:[B

.field static final DIR_DOWN:B = 0x2t

.field static final DIR_LEFT:B = 0x3t

.field static final DIR_RIGHT:B = 0x1t

.field static final DIR_UP:B = 0x0t

.field static final DLGHEADOFFSET:S = 0x12ds

.field static final EVENTTYPELEN:[B

.field static final EVEPARAMNUM:[B

.field static final F09:I = 0x0

.field static final F12:I = 0x1

.field static final F16:I = 0x2

.field static final F18:I = 0x3

.field static final F21:I = 0x4

.field static final F24:I = 0x5

.field static final F28:I = 0x6

.field static final F30:I = 0x7

.field static final FIGHTFETTLE:S = 0x12cs

.field static FIGHTSHOP:B = 0x0t

.field static final FIGHT_SE_BLUR:B = 0x4t

.field static final FIGHT_SE_NOEFFECT:B = 0x6t

.field static final FIGHT_SE_NORMAL:B = 0x0t

.field static final FIGHT_SE_PARALYSIS:B = 0x5t

.field static final FIGHT_SE_POISON:B = 0x3t

.field static final FIGHT_SE_UPATT:B = 0x1t

.field static final FIGHT_SE_UPDEF:B = 0x2t

.field static final FONT:[Ljavax/microedition/lcdui/Font;

.field static final FRAME_STATE_NULL:B = -0x80t

.field static final FRONTIDX:B = 0x1t

.field static final FTS:[[B

.field static final GAMECOVER1:S = 0x188s

.field static final GAMECOVER2:S = 0x18as

.field static final GAREA:[B

.field static final GPOFFSET:[B

.field static final GSIZE:[B

.field static final GSPACE:[B

.field static final HEAD_H:S = 0xb4s

.field static final HEAD_W:S = 0x96s

.field static INITMISSIOM:Ljava/util/Vector; = null

.field static INLAYINFO:[[S = null

.field static final MAPIT_H:B = 0x10t

.field static final MAPIT_W:B = 0x10t

.field static final MAXHOLDNUM:S = 0x28s

.field static final MINHOLDNUM:S = 0xas

.field static final MINIMAP:S = 0x18cs

.field static final NPCRL:S = 0x189s

.field static final POPPLY:B = 0x3t

.field static final POPWTH:S

.field static final RMSNAME:Ljava/lang/String; = "RMS"

.field static SBOINFO:[[B = null

.field static SBUSEINFO:[[[S = null

.field static final SCREEN_BLACK:B = 0x2t

.field static final SCREEN_FLASHFLOOR:B = 0x6t

.field static final SCREEN_FOCUS:B = 0x4t

.field static final SCREEN_NOFLOOR:B = 0x5t

.field static final SCREEN_NONE:B = 0x0t

.field static final SCREEN_RED:B = 0x1t

.field static final SCREEN_SHAKE:B = 0x7t

.field static final SCREEN_WHITE:B = 0x3t

.field static SCR_H:S = 0x0s

.field static SCR_W:S = 0x0s

.field static SIFS:[[B = null

.field static SIFS_INI:[[B = null

.field static SKILL:[Lcom/jarworld/rpg/sanguocollege/Skill; = null

.field static SKILL_GROUP:[Lcom/jarworld/rpg/sanguocollege/SkillGroup; = null

.field static final SPEED_FLY:B = 0x8t

.field static final SPEED_HIGH:B = 0x4t

.field static final SPEED_LOW:B = 0x1t

.field static final SPEED_MID:B = 0x2t

.field static STORESELLITEM:[[S = null

.field static SUITINFO:[[S = null

.field static final SUNSHINE:S = 0x18ds

.field static TAKESHOP:B = 0x0t

.field static final TIPIDX:[I

.field static UIONOFF:[Z = null

.field public static final USE_TARGET_ALL:B = 0x2t

.field public static final USE_TARGET_EVERY:B = 0x1t

.field public static final USE_TARGET_NONE:B = 0x3t

.field public static final USE_TARGET_SINGLE:B = 0x0t

.field static final USE_TYPE_ATTACK:B = 0x0t

.field static final USE_TYPE_CURE:B = 0x1t

.field static final USE_TYPE_NONE:B = 0x2t

.field static ZX:[S

.field static final bgColor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljavax/microedition/lcdui/Font;

    .line 35
    const/16 v1, 0x9

    invoke-static {v5, v5, v1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    aput-object v1, v0, v5

    .line 36
    const/16 v1, 0xc

    invoke-static {v5, v5, v1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    aput-object v1, v0, v7

    .line 37
    const/16 v1, 0x10

    invoke-static {v5, v5, v1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    aput-object v1, v0, v6

    .line 38
    const/16 v1, 0x12

    invoke-static {v5, v5, v1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    aput-object v1, v0, v8

    .line 39
    const/16 v1, 0x15

    invoke-static {v5, v5, v1}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 40
    const/16 v2, 0x18

    invoke-static {v5, v5, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 41
    const/16 v2, 0x1c

    invoke-static {v5, v5, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 42
    const/16 v2, 0x1e

    invoke-static {v5, v5, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [[B

    .line 51
    new-array v1, v9, [B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v5

    const/16 v3, 0x6b63

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    aput-object v1, v0, v5

    .line 52
    new-array v1, v9, [B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v7

    const/16 v3, 0x6b63

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    aput-object v1, v0, v7

    .line 53
    new-array v1, v9, [B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v6

    const/16 v3, 0x6b63

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    .line 54
    new-array v1, v9, [B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v8

    const/16 v3, 0x6b63

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    aput-object v1, v0, v8

    .line 55
    new-array v1, v9, [B

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v9

    const/16 v3, 0x6b63

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v6, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 56
    new-array v2, v9, [B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/16 v4, 0x6b63

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    aput-byte v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 57
    new-array v2, v9, [B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/16 v4, 0x6b63

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    aput-byte v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 58
    new-array v2, v9, [B

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/16 v4, 0x6b63

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    aput-byte v6, v2, v8

    aput-object v2, v0, v1

    .line 50
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    .line 94
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    .line 96
    new-array v0, v6, [B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v1, v1, v5

    add-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v1, v1, v7

    add-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    .line 98
    new-array v0, v6, [B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v2, v2, v5

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GAREA:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v2, v2, v7

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->GSPACE:[B

    .line 101
    new-array v0, v6, [B

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v1, v1, v5

    add-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->GSIZE:[B

    aget-byte v1, v1, v7

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->GPOFFSET:[B

    .line 104
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, v7

    aget-byte v0, v0, v5

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    int-to-short v0, v0

    sput-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->POPWTH:S

    .line 112
    new-array v0, v9, [B

    aput-byte v7, v0, v7

    const/4 v1, -0x1

    aput-byte v1, v0, v8

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_X:[B

    .line 113
    new-array v0, v9, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v5

    aput-byte v7, v0, v6

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR4_Y:[B

    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v5

    aput-byte v7, v0, v6

    aput-byte v7, v0, v8

    aput-byte v7, v0, v9

    const/4 v1, 0x6

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR8_X:[B

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v5

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    const/4 v1, -0x1

    aput-byte v1, v0, v6

    aput-byte v7, v0, v9

    const/4 v1, 0x5

    aput-byte v7, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->DIR8_Y:[B

    .line 204
    new-array v0, v8, [I

    .line 205
    const/high16 v1, 0xff0000

    aput v1, v0, v5

    .line 207
    const v1, 0xffffff

    aput v1, v0, v6

    .line 204
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->bgColor:[I

    .line 232
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->EVENTTYPELEN:[B

    .line 242
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 243
    const/16 v1, 0x9

    aput-byte v1, v0, v5

    const/4 v1, 0x6

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    aput-byte v1, v0, v6

    aput-byte v8, v0, v8

    aput-byte v8, v0, v9

    const/4 v1, 0x5

    .line 244
    aput-byte v7, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/4 v1, 0x7

    aput-byte v6, v0, v1

    const/16 v1, 0x8

    aput-byte v6, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 245
    aput-byte v6, v0, v1

    const/16 v1, 0xb

    aput-byte v8, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    .line 246
    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v6, v0, v1

    const/16 v1, 0x11

    aput-byte v9, v0, v1

    const/16 v1, 0x12

    aput-byte v8, v0, v1

    const/16 v1, 0x13

    aput-byte v6, v0, v1

    const/16 v1, 0x15

    .line 247
    aput-byte v9, v0, v1

    const/16 v1, 0x16

    aput-byte v9, v0, v1

    const/16 v1, 0x17

    aput-byte v7, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    .line 248
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v8, v0, v1

    const/16 v1, 0x1b

    aput-byte v8, v0, v1

    const/16 v1, 0x1c

    aput-byte v6, v0, v1

    const/16 v1, 0x1d

    aput-byte v6, v0, v1

    const/16 v1, 0x1e

    .line 249
    aput-byte v6, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 242
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->EVEPARAMNUM:[B

    .line 253
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->INITMISSIOM:Ljava/util/Vector;

    .line 269
    const/16 v0, 0x2b

    new-array v0, v0, [I

    .line 270
    aput v7, v0, v7

    aput v6, v0, v6

    aput v8, v0, v8

    aput v9, v0, v9

    const/4 v1, 0x5

    .line 271
    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 272
    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 273
    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 274
    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 275
    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 276
    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 277
    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 278
    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 269
    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->TIPIDX:[I

    .line 285
    new-array v0, v8, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->UIONOFF:[Z

    .line 294
    sput-byte v5, Lcom/jarworld/rpg/sanguocollege/GC;->TAKESHOP:B

    .line 296
    sput-byte v7, Lcom/jarworld/rpg/sanguocollege/GC;->FIGHTSHOP:B

    .line 7
    return-void

    .line 94
    nop

    :array_0
    .array-data 1
        0x21t
        0x1et
    .end array-data

    .line 232
    nop

    :array_1
    .array-data 1
        0x10t
        0xet
        0x12t
        0x9t
        0xbt
        0x7t
        0x7t
        0x8t
        0x8t
        0xdt
        0x8t
        0x9t
        0x11t
        0xet
        0xct
        0xft
        0x7t
        0xdt
        0x9t
        0xbt
        0x5t
        0xbt
        0xet
        0x6t
        0xft
        0xet
        0xat
        0x8t
        0x7t
        0x7t
        0x7t
        0xdt
    .end array-data

    .line 285
    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
