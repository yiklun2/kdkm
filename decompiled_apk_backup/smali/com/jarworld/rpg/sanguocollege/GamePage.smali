.class public Lcom/jarworld/rpg/sanguocollege/GamePage;
.super Lcom/jarworld/rpg/sanguocollege/GameFrameBase;
.source "GamePage.java"


# static fields
.field public static final MENU_ABOUT:B = 0x4t

.field public static final MENU_EXIT:B = 0x5t

.field public static final MENU_HELP:B = 0x3t

.field public static final MENU_PLAY:B = 0x0t

.field public static final MENU_RECORD:B = 0x1t

.field public static final MENU_SETTING:B = 0x2t

.field public static final PAGES_ABOUT:B = 0x4t

.field public static final PAGES_EXIT:B = 0x7t

.field public static final PAGES_HELP:B = 0x2t

.field public static final PAGES_MAIN_MENU:B = 0x1t

.field public static final PAGES_MUSIC_OPEN:B = 0x6t

.field public static final PAGES_RECORD:B = 0x3t

.field public static final PAGES_SETTING:B = 0x5t

.field public static final PAGES_SPLASH_MONTERNET:B = 0x0t

.field public static final PAGES_TO_MENU:B = 0x8t

.field public static backImg:[I


# instance fields
.field public cSpxMer:[[I

.field private mIdx1:I

.field private mIdx2:I

.field public offsetColor:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 81
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;-><init>()V

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 70
    const/high16 v2, -0x1000000

    aput v2, v0, v1

    const/high16 v1, -0x11000000

    aput v1, v0, v4

    const/high16 v1, -0x34000000    # -3.3554432E7f

    aput v1, v0, v3

    const/4 v1, 0x3

    const/high16 v2, -0x4e000000

    aput v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, -0x67000000

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 71
    const/high16 v2, 0x7f000000

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x66000000

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x33000000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->offsetColor:[I

    .line 79
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    .line 82
    iput-byte v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->sType:B

    .line 83
    return-void
.end method

.method private aboutDelayWork()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 915
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 916
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 918
    :cond_0
    return-void
.end method

.method private aboutPPressed(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    .line 700
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 703
    :cond_0
    return-void
.end method

.method private aboutPReleased()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 777
    return-void
.end method

.method private drawAbout()V
    .locals 14

    .prologue
    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 447
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xde

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xf1

    const/16 v7, 0xde

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 449
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v4, v4, -0x78

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xde

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 450
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v2, v2, -0x48

    div-int/lit8 v2, v2, 0x2

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xde

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x9

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0x190

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 452
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xcf

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xde

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x28

    const/16 v6, 0xcf

    const/16 v7, 0xa9

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 454
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    array-length v0, v0

    if-lt v13, v0, :cond_0

    .line 461
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x4

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawYON(IIIZZ)V

    .line 462
    return-void

    .line 455
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    aget-object v1, v1, v13

    .line 456
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0x2

    .line 457
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xde

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x28

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    array-length v4, v4

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    mul-int/2addr v4, v5

    rsub-int v4, v4, 0xa9

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    mul-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 458
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffed2

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 455
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 454
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method private drawBackground(Z)V
    .locals 10
    .param p1, "isDrawSpx"    # Z

    .prologue
    .line 283
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x215

    const/16 v5, 0x140

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 285
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawPaperStreamer()V

    .line 287
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    div-int/lit8 v2, v2, 0xa

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0x11a

    const/16 v4, 0x12e

    const/16 v5, 0x11a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 288
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 289
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x75

    const/16 v5, 0x4f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 290
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x75

    const/16 v5, 0x4f

    const/4 v6, 0x2

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v7, v7, -0x75

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 291
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x70

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v8, v8, -0x5a

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 292
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x70

    const/16 v5, 0x5a

    const/4 v6, 0x2

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v7, v7, -0x70

    sget-short v8, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v8, v8, -0x5a

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v1, v1, -0x111

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x18a

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 296
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v2, 0x18a

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 306
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v1, v1, -0x178

    div-int/lit8 v1, v1, 0x2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v2, v2, -0x4c

    const/16 v3, 0x188

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->drawSpriteX(IIIIIZ)I

    .line 307
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v2, 0x188

    iget-object v3, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->getSequenceLength(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 318
    :cond_0
    :goto_1
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 301
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x18a

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->nextFrame(III)I

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 312
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    goto :goto_1

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x188

    iget-object v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->nextFrame(III)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1
.end method

.method private drawCover()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 323
    return-void
.end method

.method private drawFadeCover()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-direct {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 327
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v2, v2, v1, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 329
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    const/4 v8, 0x1

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    .line 331
    :cond_0
    return-void
.end method

.method private drawLogo(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 273
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move v3, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 274
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    aget-object v4, v0, v2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    move v5, p1

    move v6, p2

    move v9, v2

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 275
    return-void
.end method

.method private drawMusicOpen()V
    .locals 14

    .prologue
    const/16 v13, 0x28

    const/4 v12, 0x1

    const/16 v10, 0x30

    const/4 v11, 0x6

    const/4 v1, 0x0

    .line 407
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move v2, v1

    move v3, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 408
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x7

    aget-object v3, v0, v3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xb1

    div-int/lit8 v4, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v0, v0, -0x2d

    div-int/lit8 v5, v0, 0x2

    const/16 v6, 0xb1

    const/16 v7, 0x2d

    move v8, v1

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 409
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawFirebug()V

    .line 410
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    const/16 v4, 0x18

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v5, v0, -0x3c

    const/16 v6, 0x34

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    aget-object v0, v0, v12

    aget-object v0, v0, v11

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    move v9, v1

    :goto_0
    move v7, v10

    move v8, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 411
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v4, v0, -0x4c

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v5, v0, -0x3c

    const/16 v6, 0x34

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    aget-object v0, v0, v12

    aget-object v0, v0, v11

    aget-object v0, v0, v1

    aget-object v0, v0, v12

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    move v9, v1

    :goto_1
    move v7, v10

    move v8, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 412
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v0, v11

    const/16 v4, 0x1c

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v5, v0, -0x38

    const/16 v6, 0x2c

    move v7, v13

    move v8, v1

    move v9, v13

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 413
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v0, v11

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v4, v0, -0x48

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v5, v0, -0x38

    const/16 v6, 0x2c

    move v7, v13

    move v8, v1

    move v9, v1

    invoke-static/range {v2 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 414
    return-void

    :cond_0
    move v9, v10

    .line 410
    goto :goto_0

    :cond_1
    move v9, v10

    .line 411
    goto :goto_1
.end method

.method private drawPageHelp()V
    .locals 15

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 421
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf0

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xdf

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xf0

    const/16 v7, 0xdf

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 423
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf0

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3b

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xdf

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    const/16 v6, 0x78

    const/16 v7, 0x1a

    const v8, 0x145d64

    const v9, 0x593f2c

    const v10, 0x593f2c

    const v11, 0x593f2c

    const v12, 0xa58252

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 424
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf0

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x53

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xdf

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x9

    const/16 v4, 0x48

    const/16 v5, 0x14

    const/4 v6, 0x0

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    add-int/lit8 v7, v7, 0x5

    mul-int/lit8 v7, v7, 0x14

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 426
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    const/4 v2, 0x1

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v3, v3, -0xf0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v4, v4, -0xdf

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0xb6

    const/4 v6, 0x4

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 427
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    const/4 v2, 0x1

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v3, v3, -0xf0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1c

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v4, v4, -0xdf

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0xb6

    const/16 v6, 0x8

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V

    .line 429
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf0

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x11

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xdf

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x28

    const/16 v6, 0xce

    const/16 v7, 0xa9

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 431
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x22

    .line 432
    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0xdf

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2c

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 433
    const/16 v2, 0xac

    .line 434
    const/16 v3, 0xa1

    .line 435
    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffed2

    .line 436
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v12, v12, -0xf0

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x22

    aput v12, v10, v11

    const/4 v11, 0x1

    sget-short v12, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v12, v12, -0xdf

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x2c

    sget-object v13, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    iget v14, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    aput v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0xac

    aput v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0xa1

    aput v12, v10, v11

    .line 437
    const/4 v11, -0x1

    const/4 v12, 0x1

    .line 431
    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawStrs(IIIIIIIIII[IIZ)V

    .line 439
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawYON(IIIZZ)V

    .line 440
    return-void

    .line 426
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 427
    :cond_1
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method private drawRecord()V
    .locals 15

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 336
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xab

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xf1

    const/16 v7, 0xab

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 337
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v13, v0, :cond_1

    .line 363
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x63

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xab

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x9

    const/16 v6, 0x87

    const/16 v7, 0x99

    const v8, 0x593f2c

    const v9, 0x79582b

    const v10, 0x8d6a3e

    const v11, 0xad8463

    const v12, 0xad8463

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 364
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x73

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x13

    const/16 v4, 0x67

    const/16 v5, 0x30

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 365
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xe9c898

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x74

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x14

    const/16 v4, 0x65

    const/16 v5, 0x2e

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 366
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    if-ltz v0, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_LEVEL:[B

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-byte v0, v0, v1

    if-lez v0, :cond_0

    .line 368
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_SPX:[[S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v13, v0, -0x1

    :goto_1
    if-gez v13, :cond_6

    .line 374
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_NPCFLOORID:[S

    sget-byte v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-short v2, v2, v3

    aget-object v1, v1, v2

    .line 375
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x75

    .line 376
    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x44

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x32

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 377
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x71381c

    const v8, 0xffffff

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 374
    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 379
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x75

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x75

    const/16 v4, 0x19

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 380
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_LEVEL:[B

    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-byte v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x95

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x77

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 382
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x75

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v1, v1, -0xab

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x89

    const/4 v2, 0x0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_MONEY:[I

    sget-byte v4, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawMOA(IIII)V

    .line 385
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x3

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawYON(IIIZZ)V

    .line 386
    return-void

    .line 338
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v1, v13, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v1, v13, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 339
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xf6ff

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/16 v4, 0x5b

    const/16 v5, 0x33

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 340
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0xffffff

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/16 v4, 0x59

    const/16 v5, 0x31

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 342
    :cond_3
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xab

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x9

    mul-int/lit8 v6, v13, 0x35

    add-int/2addr v5, v6

    const/16 v6, 0x57

    const/16 v7, 0x2f

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 344
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x24

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x13

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    mul-int/lit8 v7, v13, 0xd

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 346
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x27

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x26

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 347
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3d

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x26

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 348
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_TIME:[J

    aget-wide v0, v0, v13

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 350
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    const/4 v0, 0x3

    if-lt v14, v0, :cond_4

    .line 337
    .end local v14    # "j":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 351
    .restart local v14    # "j":I
    :cond_4
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x19

    mul-int/lit8 v3, v14, 0x16

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x25

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/16 v4, 0xc

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 350
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 355
    .end local v14    # "j":I
    :cond_5
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_TIME:[J

    aget-wide v1, v1, v13

    const-wide/16 v3, 0x19

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    long-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x52

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x25

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 357
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_TIME:[J

    aget-wide v1, v1, v13

    const-wide/16 v3, 0x5dc

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    long-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3c

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x25

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 359
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_TIME:[J

    aget-wide v1, v1, v13

    const-wide/32 v3, 0x15f90

    div-long/2addr v1, v3

    long-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x26

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x25

    mul-int/lit8 v4, v13, 0x35

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto/16 :goto_3

    .line 369
    :cond_6
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_SPX:[[S

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-object v0, v0, v1

    aget-short v0, v0, v13

    if-ltz v0, :cond_7

    .line 370
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6f

    mul-int/lit8 v3, v13, 0x1e

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xc

    const/16 v4, 0x37

    const/16 v5, 0x36

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_SPX:[[S

    sget-byte v7, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-object v6, v6, v7

    aget-short v6, v6, v13

    mul-int/lit8 v6, v6, 0x37

    const/16 v7, 0x36

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 368
    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1
.end method

.method private drawSetting()V
    .locals 14

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawBackground(Z)V

    .line 391
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xab

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xf1

    const/16 v7, 0xab

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 393
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const v1, 0x593f2c

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x9

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2d

    const/16 v4, 0xdf

    const/16 v5, 0x1f

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 394
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    sget-short v4, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v4, v4, -0xf1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x22

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v5, v5, -0xab

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x30

    const/16 v6, 0xad

    const/16 v7, 0x19

    const v8, 0x633e21

    const v9, 0x855d43

    const v10, 0xbf9c76

    const v11, 0x7a582b

    const v12, 0xd4b386

    invoke-static/range {v0 .. v12}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    .line 395
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x53

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x32

    const/16 v4, 0x4c

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 396
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v0, 0x2

    if-lt v13, v0, :cond_0

    .line 401
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, 0x3d

    sget-boolean v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6a

    const/16 v4, 0x15

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 403
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v1, v0, -0x55

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x5

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawYON(IIIZZ)V

    .line 404
    return-void

    .line 397
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x22

    mul-int/lit8 v3, v13, 0x7e

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x67

    const/16 v4, 0x16

    const/16 v5, 0x19

    const/4 v6, 0x0

    mul-int/lit8 v7, v13, 0x19

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 398
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v2, v2, -0xf1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x38

    mul-int/lit8 v3, v13, 0x7e

    add-int/2addr v2, v3

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v3, v3, -0xab

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x65

    const/16 v4, 0x1f

    const/16 v5, 0x1d

    const/4 v6, 0x0

    .line 399
    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x5

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    add-int/lit8 v8, v13, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-nez v7, :cond_1

    sget-object v7, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x5

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    add-int/lit8 v8, v13, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x0

    .line 398
    :goto_2
    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 396
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 399
    :cond_2
    const/16 v7, 0x1d

    goto :goto_2

    .line 401
    :cond_3
    const/16 v2, 0x7e

    goto/16 :goto_1
.end method

.method private enginePTM()V
    .locals 4

    .prologue
    .line 161
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 165
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    .line 170
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 163
    .restart local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->offsetColor:[I

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    aget v2, v2, v3

    aput v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    .line 168
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_1
.end method

.method private engineSplash()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 153
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    .line 154
    iput v2, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    .line 155
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gamePage:Lcom/jarworld/rpg/sanguocollege/GamePage;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    .line 157
    :cond_0
    return-void
.end method

.method private exitDelayWork()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 951
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 959
    :goto_0
    return-void

    .line 953
    :pswitch_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    invoke-virtual {v0}, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->exitApp()V

    goto :goto_0

    .line 956
    :pswitch_1
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_0

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private exitPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v5, 0x36

    const/16 v6, 0x25

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 715
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0xe

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x2a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    new-array v0, v8, [I

    invoke-virtual {p0, v0, v9, v9}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 718
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, 0x106

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x44

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v1, v1, v7

    aget-byte v1, v1, v8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x2a

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    new-array v0, v8, [I

    aput v7, v0, v7

    invoke-virtual {p0, v0, v9, v9}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 721
    :cond_1
    return-void
.end method

.method private exitPReleased()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 793
    return-void
.end method

.method private helpDelayWork()V
    .locals 7

    .prologue
    const/16 v6, 0xac

    const/16 v5, 0xa1

    const/16 v4, 0x11

    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 903
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 904
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-ne v0, v2, :cond_2

    .line 906
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v1, v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v1, v1, v3

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    .line 907
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    invoke-static {v0, v2, v6, v5, v1}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    goto :goto_0

    .line 908
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 909
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v1, v1, v3

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    .line 910
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    aget-object v0, v0, v4

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    invoke-static {v0, v2, v6, v5, v1}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    goto :goto_0
.end method

.method private helpPPressed(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v11, 0x1c

    const/16 v10, 0x1b

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 688
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    new-array v0, v8, [I

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 691
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1c

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xdf

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    new-array v0, v8, [I

    aput v9, v0, v9

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 694
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf0

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xb7

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xdf

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    new-array v0, v8, [I

    aput v8, v0, v9

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 697
    :cond_2
    return-void
.end method

.method private helpPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 768
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 769
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 771
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    goto :goto_0
.end method

.method private initInNew()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x5

    .line 466
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v6, v6

    if-lt v2, v6, :cond_0

    .line 469
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "/bin/general.bin"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 471
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 473
    .local v5, "playerNum":S
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 474
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_1

    .line 522
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v0, 0x0

    .line 528
    .end local v5    # "playerNum":S
    :goto_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initLAInfo()V

    .line 529
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initItemInfo()V

    .line 530
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initVTInfo()V

    .line 531
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initMissionInfo()V

    .line 532
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initSIFS()V

    .line 533
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->totalTime:J

    .line 534
    return-void

    .line 467
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :cond_0
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    new-instance v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    invoke-direct {v9}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;-><init>()V

    aput-object v9, v6, v2

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "playerNum":S
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 478
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v9, v9, v2

    int-to-byte v10, v2

    iput-short v10, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_nameImgIndex:S

    iput-short v10, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    .line 479
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    iput-short v9, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_headImgIdx:S

    .line 480
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    iput-short v9, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_sSpxIndex:S

    .line 481
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    iput-short v9, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_fSpxIndex:S

    .line 483
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    iput-short v9, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_phySGID:S

    .line 485
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v9, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_3
    iput-boolean v6, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isCanEat:Z

    .line 487
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput-byte v9, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    .line 488
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    aput v10, v6, v9

    .line 489
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    aput v10, v6, v9

    .line 491
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 492
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 493
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 494
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 495
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 496
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->nudeAtt:[I

    const/4 v9, 0x7

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    aput v10, v6, v9

    .line 498
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-lt v3, v11, :cond_3

    .line 501
    const/4 v3, 0x0

    :goto_5
    if-lt v3, v11, :cond_4

    .line 504
    const/4 v3, 0x0

    :goto_6
    if-lt v3, v11, :cond_5

    .line 515
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v9, v6, v2

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v10, 0x8

    aget-short v6, v6, v10

    const/4 v10, 0x2

    filled-new-array {v6, v10}, [I

    move-result-object v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    iput-object v6, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    .line 516
    const/4 v3, 0x0

    :goto_7
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    array-length v6, v6

    if-lt v3, v6, :cond_7

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v3    # "j":I
    :cond_2
    move v6, v8

    .line 485
    goto/16 :goto_3

    .line 499
    .restart local v3    # "j":I
    :cond_3
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->usableEqp:[B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-byte v9, v6, v3

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 502
    :cond_4
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v3

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 505
    :cond_5
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v3

    .line 507
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v6, v6, v3

    if-gez v6, :cond_6

    .line 508
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->noneEqID:[S

    aget-short v9, v9, v3

    aput-short v9, v6, v3

    .line 510
    :cond_6
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    new-instance v9, Lcom/jarworld/rpg/sanguocollege/Item;

    invoke-direct {v9}, Lcom/jarworld/rpg/sanguocollege/Item;-><init>()V

    aput-object v9, v6, v3

    .line 511
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqp:[Lcom/jarworld/rpg/sanguocollege/Item;

    aget-object v6, v6, v3

    sget-object v9, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v9, v9, v3

    invoke-virtual {v6, v9}, Lcom/jarworld/rpg/sanguocollege/Item;->init(S)V

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 517
    :cond_7
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_8
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v6, v6, v3

    array-length v6, v6

    if-lt v4, v6, :cond_8

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 518
    :cond_8
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->sGInfo:[[S

    aget-object v6, v6, v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aput-short v9, v6, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 524
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "playerNum":S
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private initItemInfo()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method private initLAInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 545
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->parter:[S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v2, v4

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_s_ID:S

    sput-short v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_s_controlID:S

    aput-short v2, v1, v4

    .line 546
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->parter:[S

    aget-short v2, v2, v4

    aget-object v1, v1, v2

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->parter:[S

    aget-short v3, v3, v4

    aget-object v2, v2, v3

    iput-boolean v5, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isToFight:Z

    iput-boolean v5, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isInTeam:Z

    .line 547
    sget v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRoleCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRoleCount:I

    .line 548
    sget v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->fightRoleCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->fightRoleCount:I

    .line 549
    return-void

    .line 539
    :cond_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->init()V

    .line 540
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    .line 541
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v2, v1, v0

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    if-le v1, v5, :cond_1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    invoke-static {v1}, Lcom/jarworld/rpg/sanguocollege/Formular;->nextExp(I)I

    move-result v1

    :goto_1
    iput v1, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_nextExp:I

    .line 542
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    aget-object v1, v1, v0

    iput-byte v4, v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const/16 v1, 0xa

    goto :goto_1
.end method

.method private initMissionInfo()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 563
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->openedMissionList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 565
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->mapItemVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 566
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iput v7, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_i_mapItemVecIdx:I

    .line 568
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 572
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->INITMISSIOM:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 586
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iput-short v7, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->m_s_mHIdx:S

    .line 587
    return-void

    .line 560
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-byte v3, v2, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_flag:B

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    new-instance v3, Lcom/jarworld/rpg/sanguocollege/ArrayList;

    invoke-direct {v3}, Lcom/jarworld/rpg/sanguocollege/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_2
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->INITMISSIOM:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 575
    .local v1, "missionID":I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v2, v1}, Lcom/jarworld/rpg/sanguocollege/GameScene;->addMission(I)V

    .line 577
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v2, v2, v1

    iget-short v2, v2, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCID:S

    if-ltz v2, :cond_3

    .line 578
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameScene;->s_arrayList:[Lcom/jarworld/rpg/sanguocollege/ArrayList;

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCID:S

    aget-object v2, v2, v3

    .line 579
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v3, v3, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCID:S

    .line 580
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v4, v4, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v4, v4, v1

    iget-short v4, v4, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_s_bubbleNPCFloorID:S

    .line 581
    int-to-short v5, v1

    .line 582
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    iget-object v6, v6, Lcom/jarworld/rpg/sanguocollege/GameScene;->missionArray:[Lcom/jarworld/rpg/sanguocollege/GameMission;

    aget-object v6, v6, v1

    iget-byte v6, v6, Lcom/jarworld/rpg/sanguocollege/GameMission;->m_byt_bubbleBrowID:B

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    .line 578
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jarworld/rpg/sanguocollege/ArrayList;->setMissionID(SSSB)V

    .line 572
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private initSIFS()V
    .locals 7

    .prologue
    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 616
    return-void

    .line 611
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 614
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x6

    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v4, v4, v0

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    aput-byte v6, v2, v3

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS:[[B

    aget-object v2, v2, v0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->SIFS_INI:[[B

    aget-object v3, v3, v0

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initVTInfo()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 591
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->selfRole:[Lcom/jarworld/rpg/sanguocollege/LeadingActor;

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_s_controlID:S

    aget-object v2, v2, v3

    iput-boolean v4, v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_b_isExist:Z

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 595
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 599
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 606
    return-void

    .line 593
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_EXIST:[Z

    aput-boolean v4, v2, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_TOUCH:[Z

    aput-boolean v4, v2, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 604
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONNUM:[B

    aput-byte v5, v2, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 602
    :cond_3
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GameNPC;->NPC_MONID:[[S

    aget-object v2, v2, v0

    aput-short v5, v2, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private mainMenuDelayWork()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 832
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 885
    :goto_0
    return-void

    .line 834
    :pswitch_0
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 836
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->initInNew()V

    .line 837
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v2, v2, v9

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    aget-short v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameScene;->changeScene(SS)V

    .line 838
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v2, v2, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    invoke-virtual {v1, p0, v2, v9, v0}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    goto :goto_0

    .line 842
    :pswitch_2
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadRecordList()V

    .line 843
    const/4 v1, -0x1

    sput-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    .line 844
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->sType:B

    new-array v3, v0, [I

    new-array v4, v0, [[I

    new-array v5, v0, [[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->updateButton(II[I[[I[[I)V

    .line 845
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_0

    .line 849
    :pswitch_3
    iget-byte v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->sType:B

    new-array v3, v0, [I

    new-array v4, v0, [[I

    new-array v5, v0, [[I

    new-array v2, v0, [I

    sget-boolean v8, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    if-eqz v8, :cond_0

    :goto_1
    aput v0, v2, v9

    aput-object v2, v5, v9

    move-object v0, p0

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/GamePage;->updateButton(II[I[[I[[I)V

    .line 850
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v10}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_0

    :cond_0
    move v0, v7

    .line 849
    goto :goto_1

    .line 854
    :pswitch_4
    iput v9, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    .line 855
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GC;->ZX:[S

    const/16 v2, 0x10

    aget-short v1, v1, v2

    invoke-static {v1}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPixCont(I)V

    .line 856
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    array-length v1, v1

    if-lt v6, v1, :cond_1

    .line 862
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_0

    .line 857
    :cond_1
    rem-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_2

    .line 856
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 860
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    aget-object v1, v1, v6

    const/16 v2, 0xac

    const/16 v3, 0xa1

    div-int/lit8 v4, v6, 0x2

    invoke-static {v1, v0, v2, v3, v4}, Lcom/jarworld/rpg/sanguocollege/Tool;->initPix(Ljava/util/Vector;IIII)V

    goto :goto_3

    .line 866
    .end local v6    # "i":I
    :pswitch_5
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto/16 :goto_0

    .line 870
    :pswitch_6
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto/16 :goto_0

    .line 875
    :pswitch_7
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    .line 876
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v9

    .line 877
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    aget-object v1, v1, v0

    aput v9, v1, v0

    goto/16 :goto_0

    .line 880
    :pswitch_8
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    .line 881
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx1:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v9

    .line 882
    iget-object v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    aget-object v1, v1, v0

    aput v9, v1, v0

    goto/16 :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 834
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private mainMenuPPressed(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x34

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 651
    iget-object v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->cSpxMer:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 652
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x8c

    div-int/lit8 v3, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v4, v0, -0x4c

    const/16 v5, 0x8c

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-array v0, v9, [I

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 655
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0x178

    div-int/lit8 v3, v0, 0x2

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v4, v0, -0x45

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v11

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    new-array v0, v9, [I

    aput v8, v0, v8

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 658
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, 0x178

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, -0x39

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v4, v0, -0x45

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v11

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    new-array v0, v9, [I

    aput v9, v0, v8

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 662
    :cond_2
    return-void
.end method

.method private mainMenuPReleased()V
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 757
    return-void
.end method

.method private musicOpenDelayWork()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 935
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 936
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    if-nez v0, :cond_0

    .line 937
    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    .line 938
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->playGamePlayerArray(II)V

    .line 940
    :cond_0
    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    .line 941
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 948
    :cond_1
    :goto_0
    return-void

    .line 942
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-ne v0, v2, :cond_1

    .line 943
    sput-boolean v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    .line 944
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->stopGamePlayerArray()V

    .line 945
    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->m_i_FrameTimer:I

    .line 946
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    goto :goto_0
.end method

.method private musicOpenPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v5, 0x34

    const/16 v6, 0x30

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 706
    const/16 v3, 0x18

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v4, v0, -0x3c

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-array v0, v9, [I

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 709
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x4c

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit8 v4, v0, -0x3c

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    new-array v0, v9, [I

    aput v8, v0, v8

    invoke-virtual {p0, v0, v7, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 712
    :cond_1
    return-void
.end method

.method private musicOpenPReleased()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 789
    return-void
.end method

.method private recordDelayWork()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 888
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v3

    if-nez v0, :cond_1

    .line 889
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v3

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 891
    sget v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->delayIY:I

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    if-eq v0, v1, :cond_2

    .line 892
    sget v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->delayIY:I

    int-to-byte v0, v0

    sput-byte v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    goto :goto_0

    .line 894
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->RECORD_LEVEL:[B

    sget-byte v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 895
    sget-byte v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_byt_recordIndex:B

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadRecord(I)Z

    .line 896
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameSwitch:Lcom/jarworld/rpg/sanguocollege/GameSwitch;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget-object v1, v1, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->m_pge_gameScene:Lcom/jarworld/rpg/sanguocollege/GameScene;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/jarworld/rpg/sanguocollege/GameSwitch;->switchFrame(Lcom/jarworld/rpg/sanguocollege/GameFrameBase;Lcom/jarworld/rpg/sanguocollege/GameFrameBase;BZ)Z

    goto :goto_0
.end method

.method private recordPPressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 665
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 668
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x8

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xab

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x7

    const/16 v5, 0x57

    const/16 v6, 0x9f

    const/4 v7, 0x3

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedMenu(IIIIIIIZ)I

    move-result v9

    .line 669
    .local v9, "result":I
    if-ltz v9, :cond_1

    .line 670
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    add-int/lit8 v2, v9, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 671
    sput v9, Lcom/jarworld/rpg/sanguocollege/GamePage;->delayIY:I

    .line 673
    :cond_1
    return-void
.end method

.method private recordPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 760
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 763
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    goto :goto_0
.end method

.method private settingDelayWork()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 921
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 922
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->changeState(BB)V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    if-ne v0, v1, :cond_2

    .line 924
    sget-boolean v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    if-nez v0, :cond_0

    .line 925
    sput-boolean v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    .line 926
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->playGamePlayerArray(II)V

    goto :goto_0

    .line 928
    :cond_2
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 929
    sput-boolean v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->music:Z

    .line 930
    invoke-virtual {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->stopGamePlayerArray()V

    goto :goto_0
.end method

.method private settingPPressed(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 676
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit8 v3, v0, -0x55

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x32

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 679
    :cond_0
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x38

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xab

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x65

    const/16 v5, 0x1f

    const/16 v6, 0x1d

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 682
    :cond_1
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/lit16 v0, v0, -0xf1

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v3, v0, 0xb6

    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/lit16 v0, v0, -0xab

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x65

    const/16 v5, 0x1f

    const/16 v6, 0x1d

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pointerPressedItem(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIntAry(II)[I

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->pressButton([I[I[[I)V

    .line 685
    :cond_2
    return-void
.end method

.method private settingPReleased()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 780
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->btId:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 783
    invoke-virtual {p0, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseButton(Z)V

    goto :goto_0
.end method


# virtual methods
.method public control()V
    .locals 3

    .prologue
    .line 135
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    sparse-switch v0, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 137
    :sswitch_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->engineSplash()V

    goto :goto_0

    .line 141
    :sswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->enginePTM()V

    goto :goto_0

    .line 145
    :sswitch_2
    const/4 v0, 0x1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->mIdx2:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->engineRoll(ZII)V

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public create(Lcom/jarworld/rpg/sanguocollege/GameViewBase;)V
    .locals 0
    .param p1, "view"    # Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .prologue
    .line 173
    sput-object p1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    .line 174
    return-void
.end method

.method public delayWork()V
    .locals 1

    .prologue
    .line 800
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 829
    :goto_0
    return-void

    .line 802
    :pswitch_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->mainMenuDelayWork()V

    goto :goto_0

    .line 806
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->recordDelayWork()V

    goto :goto_0

    .line 810
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->helpDelayWork()V

    goto :goto_0

    .line 814
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->aboutDelayWork()V

    goto :goto_0

    .line 818
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->settingDelayWork()V

    goto :goto_0

    .line 822
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->musicOpenDelayWork()V

    goto :goto_0

    .line 826
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->exitDelayWork()V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public disposeRes(BB)V
    .locals 0
    .param p1, "curframeState"    # B
    .param p2, "nextframeState"    # B

    .prologue
    .line 187
    sparse-switch p2, :sswitch_data_0

    .line 193
    :goto_0
    invoke-virtual {p0, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadRes(B)V

    .line 194
    return-void

    .line 190
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseRes(B)V

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public lastWork(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 963
    return-void
.end method

.method public loadRes(B)V
    .locals 12
    .param p1, "nextframeState"    # B

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    return-void

    .line 233
    :pswitch_1
    new-array v0, v8, [I

    .line 234
    .local v0, "idx0":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    const-string v7, "logo"

    invoke-virtual {p0, v6, v0, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    .line 236
    const/16 v6, 0x12

    new-array v1, v6, [I

    .line 237
    aput v9, v1, v8

    aput v10, v1, v9

    const/16 v6, 0xc

    aput v6, v1, v10

    const/16 v6, 0xd

    aput v6, v1, v11

    const/4 v6, 0x5

    .line 238
    const/16 v7, 0xe

    aput v7, v1, v6

    const/4 v6, 0x6

    const/16 v7, 0xf

    aput v7, v1, v6

    const/4 v6, 0x7

    const/16 v7, 0x10

    aput v7, v1, v6

    const/16 v6, 0x8

    const/16 v7, 0x12

    aput v7, v1, v6

    const/16 v6, 0x9

    const/16 v7, 0x18

    aput v7, v1, v6

    const/16 v6, 0xa

    .line 239
    const/16 v7, 0x28

    aput v7, v1, v6

    const/16 v6, 0xb

    const/16 v7, 0x29

    aput v7, v1, v6

    const/16 v6, 0xc

    const/16 v7, 0x2a

    aput v7, v1, v6

    const/16 v6, 0xd

    const/16 v7, 0x2b

    aput v7, v1, v6

    const/16 v6, 0xe

    const/16 v7, 0x2c

    aput v7, v1, v6

    const/16 v6, 0xf

    .line 240
    const/16 v7, 0x2d

    aput v7, v1, v6

    const/16 v6, 0x10

    const/16 v7, 0x33

    aput v7, v1, v6

    const/16 v6, 0x11

    const/16 v7, 0x34

    aput v7, v1, v6

    .line 242
    .local v1, "idx1":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v1, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0    # "idx0":[I
    .end local v1    # "idx1":[I
    :pswitch_2
    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v7, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    sput-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    goto :goto_0

    .line 250
    :pswitch_3
    const/4 v6, 0x6

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 251
    .local v2, "idx2":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v2, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .end local v2    # "idx2":[I
    :pswitch_4
    new-array v3, v11, [I

    fill-array-data v3, :array_1

    .line 256
    .local v3, "idx3":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v3, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v3    # "idx3":[I
    :pswitch_5
    new-array v4, v8, [I

    const/16 v6, 0x2e

    aput v6, v4, v7

    .line 261
    .local v4, "idx4":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v4, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 265
    .end local v4    # "idx4":[I
    :pswitch_6
    new-array v5, v8, [I

    const/16 v6, 0x2e

    aput v6, v5, v7

    .line 266
    .local v5, "idx5":[I
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    const-string v7, "n"

    invoke-virtual {p0, v6, v5, v7}, Lcom/jarworld/rpg/sanguocollege/GamePage;->loadResArray([Ljavax/microedition/lcdui/Image;[ILjava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 250
    :array_0
    .array-data 4
        0x5
        0x13
        0x16
        0x1e
        0x21
        0x26
    .end array-data

    .line 255
    :array_1
    .array-data 4
        0x1b
        0x30
        0x31
        0x32
    .end array-data
.end method

.method public onKeyDown(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onKeyUp(I)V
    .locals 0
    .param p1, "iScanCode"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onPointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 797
    return-void
.end method

.method public onPointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 619
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 648
    :goto_0
    return-void

    .line 621
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->mainMenuPPressed(II)V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->recordPPressed(II)V

    goto :goto_0

    .line 629
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->settingPPressed(II)V

    goto :goto_0

    .line 633
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->helpPPressed(II)V

    goto :goto_0

    .line 637
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->aboutPPressed(II)V

    goto :goto_0

    .line 641
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->musicOpenPPressed(II)V

    goto :goto_0

    .line 645
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->exitPPressed(II)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPointerReleased(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 724
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 753
    :goto_0
    return-void

    .line 726
    :pswitch_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->mainMenuPReleased()V

    goto :goto_0

    .line 730
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->recordPReleased()V

    goto :goto_0

    .line 734
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->helpPReleased()V

    goto :goto_0

    .line 738
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->aboutPReleased()V

    goto :goto_0

    .line 742
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->settingPReleased()V

    goto :goto_0

    .line 746
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->musicOpenPReleased()V

    goto :goto_0

    .line 750
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->exitPReleased()V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    .line 177
    const/16 v2, 0x8

    new-array v0, v2, [I

    aput v3, v0, v3

    aput v5, v0, v5

    aput v6, v0, v6

    aput v7, v0, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aput v3, v0, v2

    aput v4, v0, v4

    .line 178
    .local v0, "idx0":[I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_page:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 179
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 180
    .local v1, "idx1":[I
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v2, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    .line 182
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x188

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 183
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/SpriteX;->sprite:Lcom/jarworld/rpg/sanguocollege/SpriteX;

    const/16 v3, 0x18a

    invoke-virtual {v2, v3}, Lcom/jarworld/rpg/sanguocollege/SpriteX;->deleteResource(I)V

    .line 184
    return-void

    .line 179
    nop

    :array_0
    .array-data 4
        0x5
        0x9
        0x13
        0x16
        0x1e
        0x21
        0x26
    .end array-data
.end method

.method public releaseRes(B)V
    .locals 8
    .param p1, "curframeState"    # B

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    new-array v0, v5, [I

    .line 200
    .local v0, "idx0":[I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v5, v0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 204
    .end local v0    # "idx0":[I
    :pswitch_2
    const/4 v5, 0x0

    sput-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->backImg:[I

    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v5, 0x6

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 209
    .local v1, "idx2":[I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v5, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 213
    .end local v1    # "idx2":[I
    :pswitch_4
    const/4 v5, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 214
    .local v2, "idx3":[I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v5, v2}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 218
    .end local v2    # "idx3":[I
    :pswitch_5
    new-array v3, v5, [I

    aput v7, v3, v6

    .line 219
    .local v3, "idx4":[I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v5, v3}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 223
    .end local v3    # "idx4":[I
    :pswitch_6
    new-array v4, v5, [I

    aput v7, v4, v6

    .line 224
    .local v4, "idx5":[I
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_com:[Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, v5, v4}, Lcom/jarworld/rpg/sanguocollege/GamePage;->releaseResArray([Ljavax/microedition/lcdui/Image;[I)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 208
    :array_0
    .array-data 4
        0x5
        0x13
        0x16
        0x1e
        0x21
        0x26
    .end array-data

    .line 213
    :array_1
    .array-data 4
        0x1b
        0x30
        0x31
        0x32
    .end array-data
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-byte v0, p0, Lcom/jarworld/rpg/sanguocollege/GamePage;->fState:B

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawCover()V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawRecord()V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawMusicOpen()V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawSetting()V

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawPageHelp()V

    goto :goto_0

    .line 116
    :pswitch_5
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawAbout()V

    goto :goto_0

    .line 120
    :pswitch_6
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawCover()V

    .line 121
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_i_ui:[[Ljava/util/Vector;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    const/16 v1, 0x23

    aget-object v0, v0, v1

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->button:[[[[[Z

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x7

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawExit(Ljava/util/Vector;[[Z)V

    goto :goto_0

    .line 125
    :pswitch_7
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/GamePage;->s_img_logo:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawLogo(II)V

    goto :goto_0

    .line 129
    :pswitch_8
    invoke-direct {p0}, Lcom/jarworld/rpg/sanguocollege/GamePage;->drawFadeCover()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
