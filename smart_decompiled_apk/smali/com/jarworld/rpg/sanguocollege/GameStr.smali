.class public Lcom/jarworld/rpg/sanguocollege/GameStr;
.super Ljava/lang/Object;
.source "GameStr.java"


# static fields
.field static sColor:[I


# instance fields
.field private rcolor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawChar(CLjavax/microedition/lcdui/Font;III[I)V
    .locals 6
    .param p1, "c"    # C
    .param p2, "f"    # Ljavax/microedition/lcdui/Font;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "color"    # I
    .param p6, "showSize"    # [I

    .prologue
    const/4 v5, 0x0

    .line 227
    if-eqz p6, :cond_0

    .line 228
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    aget v1, p6, v5

    const/4 v2, 0x1

    aget v2, p6, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    const/4 v4, 0x3

    aget v4, p6, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 232
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 233
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    invoke-interface {v0, p2}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 234
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 235
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v5, v5, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0
.end method

.method private drawChar1F(CLjavax/microedition/lcdui/Font;IIII[I)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "f"    # Ljavax/microedition/lcdui/Font;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "colorBg"    # I
    .param p6, "colorMid"    # I
    .param p7, "showSize"    # [I

    .prologue
    .line 248
    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p7

    .line 249
    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 250
    return-void
.end method

.method private drawCharAF(CLjavax/microedition/lcdui/Font;IIII[I)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "f"    # Ljavax/microedition/lcdui/Font;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "colorBg"    # I
    .param p6, "colorMid"    # I
    .param p7, "showSize"    # [I

    .prologue
    .line 263
    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 264
    add-int/lit8 v3, p3, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 265
    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 266
    add-int/lit8 v4, p4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 267
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 268
    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 269
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 270
    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p7

    .line 271
    invoke-direct/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    .line 272
    return-void
.end method


# virtual methods
.method public drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V
    .locals 17
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "fId"    # I
    .param p5, "anchor"    # I
    .param p6, "type"    # I
    .param p7, "colorBg"    # I
    .param p8, "colorMid"    # I
    .param p9, "showSize"    # [I
    .param p10, "showCont"    # I
    .param p11, "isSeldefault"    # Z

    .prologue
    .line 289
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 290
    .local v11, "col":[I
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 291
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 292
    .local v13, "len":I
    const/16 v16, 0x0

    .line 293
    .local v16, "temp":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 294
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/jarworld/rpg/sanguocollege/GameStr;->getPixlength(Ljava/util/Vector;I)I

    move-result v3

    div-int v3, v3, p5

    sub-int p2, p2, v3

    .line 299
    :cond_0
    const/4 v3, -0x1

    move/from16 v0, p10

    if-eq v0, v3, :cond_1

    .line 301
    move/from16 v0, p10

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 306
    .local v14, "num":I
    :goto_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v14, :cond_2

    .line 334
    return-void

    .line 304
    .end local v12    # "i":I
    .end local v14    # "num":I
    :cond_1
    move v14, v13

    .restart local v14    # "num":I
    goto :goto_0

    .line 307
    .restart local v12    # "i":I
    :cond_2
    packed-switch p6, :pswitch_data_0

    .line 332
    :goto_2
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v3, v3, p4

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    add-int v16, v16, v3

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 309
    :pswitch_0
    if-nez p11, :cond_3

    .line 310
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    goto :goto_2

    .line 312
    :cond_3
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1, v11, v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->selColor(I[II)I

    move-result v8

    move-object/from16 v3, p0

    move/from16 v7, p3

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar(CLjavax/microedition/lcdui/Font;III[I)V

    goto :goto_2

    .line 317
    :pswitch_1
    if-nez p11, :cond_4

    .line 318
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar1F(CLjavax/microedition/lcdui/Font;IIII[I)V

    goto :goto_2

    .line 320
    :cond_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1, v11, v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->selColor(I[II)I

    move-result v9

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawChar1F(CLjavax/microedition/lcdui/Font;IIII[I)V

    goto :goto_2

    .line 325
    :pswitch_2
    if-nez p11, :cond_5

    .line 326
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawCharAF(CLjavax/microedition/lcdui/Font;IIII[I)V

    goto/16 :goto_2

    .line 328
    :cond_5
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v5, v3, p4

    add-int v6, p2, v16

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v1, v11, v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->selColor(I[II)I

    move-result v9

    move-object/from16 v3, p0

    move/from16 v7, p3

    move/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawCharAF(CLjavax/microedition/lcdui/Font;IIII[I)V

    goto/16 :goto_2

    .line 307
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawGStrs([Ljava/util/Vector;IIIIIIIII[IIZ)V
    .locals 17
    .param p1, "vec"    # [Ljava/util/Vector;
    .param p2, "row"    # I
    .param p3, "idx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "fId"    # I
    .param p7, "anchor"    # I
    .param p8, "type"    # I
    .param p9, "colorBg"    # I
    .param p10, "colorMid"    # I
    .param p11, "showSize"    # [I
    .param p12, "showCont"    # I
    .param p13, "isSeldefault"    # Z

    .prologue
    .line 354
    add-int v1, p3, p2

    move-object/from16 v0, p1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 356
    .local v16, "lastIdx":I
    const/4 v11, -0x1

    .line 357
    .local v11, "singleCont":I
    move/from16 v13, p3

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v13, v0, :cond_0

    .line 372
    return-void

    .line 358
    :cond_0
    const/4 v1, -0x1

    move/from16 v0, p12

    if-eq v0, v1, :cond_2

    .line 360
    const/4 v15, 0x0

    .line 361
    .local v15, "l":I
    move/from16 v14, p3

    .local v14, "j":I
    :goto_1
    if-lt v14, v13, :cond_1

    .line 364
    sub-int v11, p12, v15

    .line 366
    if-gtz v11, :cond_2

    .line 357
    .end local v14    # "j":I
    .end local v15    # "l":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 362
    .restart local v14    # "j":I
    .restart local v15    # "l":I
    :cond_1
    aget-object v1, p1, v14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v15, v1

    .line 361
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 370
    .end local v14    # "j":I
    .end local v15    # "l":I
    :cond_2
    aget-object v2, p1, v13

    sub-int v1, v13, p3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, p6

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    mul-int/2addr v1, v3

    add-int v4, p5, v1

    move-object/from16 v1, p0

    move/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v12, p13

    invoke-virtual/range {v1 .. v12}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    goto :goto_2
.end method

.method public format(Ljava/util/Vector;II)[Ljava/util/Vector;
    .locals 22
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "fId"    # I
    .param p3, "maxWidth"    # I

    .prologue
    .line 82
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 83
    .local v3, "col":[I
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 84
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 85
    .local v10, "len":I
    new-array v0, v10, [I

    move-object/from16 v16, v0

    .line 86
    .local v16, "temp":[I
    const/4 v6, 0x0

    .line 88
    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    const/16 v17, 0x0

    .local v17, "w":I
    :goto_0
    if-lt v6, v10, :cond_3

    .line 107
    :cond_0
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 108
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    new-array v12, v0, [Ljava/util/Vector;

    .line 109
    .local v12, "result":[Ljava/util/Vector;
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 110
    .local v11, "lineColorNum":[I
    const/4 v5, 0x0

    .local v5, "colorStart":I
    const/4 v4, 0x0

    .line 112
    .local v4, "colorEnd":I
    array-length v0, v3

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3

    if-lez v19, :cond_1

    .line 113
    const/16 v19, 0x1

    aget v5, v3, v19

    .line 114
    const/16 v19, 0x2

    aget v19, v3, v19

    add-int v4, v19, v5

    .line 116
    :cond_1
    const/4 v14, 0x0

    .line 118
    .local v14, "sum":I
    const/4 v6, 0x0

    :goto_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v6, v0, :cond_7

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 146
    const/16 v19, 0x1

    aget v5, v3, v19

    .line 147
    const/16 v19, 0x2

    aget v19, v3, v19

    add-int v4, v19, v5

    .line 150
    :cond_2
    const/4 v14, 0x0

    .line 151
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 153
    const/4 v6, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v6, v0, :cond_c

    .line 182
    return-object v12

    .line 89
    .end local v4    # "colorEnd":I
    .end local v5    # "colorStart":I
    .end local v11    # "lineColorNum":[I
    .end local v12    # "result":[Ljava/util/Vector;
    .end local v14    # "sum":I
    :cond_3
    const/16 v18, 0x0

    .line 90
    .local v18, "wrap":Z
    const/4 v9, 0x0

    .local v9, "l":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_4
    if-lt v8, v10, :cond_4

    move v7, v8

    .line 99
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :goto_5
    if-nez v18, :cond_6

    .line 100
    aput v9, v16, v6

    .line 101
    if-nez v9, :cond_0

    .line 102
    add-int/lit8 v6, v6, -0x1

    .line 104
    goto :goto_1

    .line 91
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_4
    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v19, v19, p2

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v19

    add-int v17, v17, v19

    .line 92
    sget-object v19, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v19, v19, p2

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    add-int v19, v19, v17

    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    .line 93
    add-int/lit8 v19, v9, 0x1

    aput v19, v16, v6

    .line 94
    const/16 v17, 0x0

    .line 95
    const/16 v18, 0x1

    .line 96
    goto :goto_5

    .line 90
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_4

    .line 88
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 119
    .end local v9    # "l":I
    .end local v18    # "wrap":Z
    .restart local v4    # "colorEnd":I
    .restart local v5    # "colorStart":I
    .restart local v11    # "lineColorNum":[I
    .restart local v12    # "result":[Ljava/util/Vector;
    .restart local v14    # "sum":I
    :cond_7
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    aput-object v19, v12, v6

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    array-length v0, v3

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 118
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 127
    :cond_8
    aget v19, v11, v6

    add-int/lit8 v19, v19, 0x1

    aput v19, v11, v6

    .line 129
    aget v19, v16, v6

    add-int v19, v19, v14

    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    array-length v0, v3

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 142
    :cond_9
    :goto_7
    aget v19, v16, v6

    add-int v14, v14, v19

    goto :goto_6

    .line 136
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v5, v3, v19

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v3, v19

    add-int v4, v19, v5

    .line 125
    :cond_b
    aget v19, v16, v6

    add-int v19, v19, v14

    move/from16 v0, v19

    if-le v5, v0, :cond_8

    goto :goto_7

    .line 154
    :cond_c
    aget v19, v11, v6

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    new-array v15, v0, [I

    .line 155
    .local v15, "tC":[I
    aget v2, v11, v6

    .line 157
    .local v2, "cNum":I
    :goto_8
    if-gtz v2, :cond_e

    .line 177
    :cond_d
    aget-object v19, v12, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    aget-object v19, v12, v6

    aget v20, v16, v6

    add-int v20, v20, v14

    move/from16 v0, v20

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 180
    aget v19, v16, v6

    add-int v14, v14, v19

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 159
    :cond_e
    aget v19, v11, v6

    sub-int v19, v19, v2

    mul-int/lit8 v19, v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    aget v20, v3, v20

    aput v20, v15, v19

    .line 161
    aget v19, v11, v6

    sub-int v19, v19, v2

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v20, v3, v20

    sub-int v20, v20, v14

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    aput v20, v15, v19

    .line 163
    aget v19, v11, v6

    sub-int v19, v19, v2

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v20, v3, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x2

    aget v21, v3, v21

    add-int v20, v20, v21

    sub-int v20, v20, v14

    aget v21, v16, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    aget v21, v11, v6

    sub-int v21, v21, v2

    mul-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x1

    aget v21, v15, v21

    sub-int v20, v20, v21

    aput v20, v15, v19

    .line 165
    aget v19, v16, v6

    add-int v19, v19, v14

    move/from16 v0, v19

    if-ge v4, v0, :cond_f

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    array-length v0, v3

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v5, v3, v19

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v3, v19

    add-int v4, v19, v5

    .line 174
    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_8
.end method

.method public getPixlength(Ljava/util/Vector;I)I
    .locals 6
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "fId"    # I

    .prologue
    .line 65
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    .local v1, "len":I
    const/4 v3, 0x0

    .line 68
    .local v3, "w":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 71
    return v3

    .line 69
    :cond_0
    sget-object v4, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v4, v4, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v4

    add-int/2addr v3, v4

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowNum(II)I
    .locals 2
    .param p1, "fId"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    div-int v0, p2, v0

    return v0
.end method

.method public loadSpecBin(Ljava/lang/String;)[Ljava/util/Vector;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v6, 0x0

    check-cast v6, [Ljava/util/Vector;

    .line 29
    .local v6, "result":[Ljava/util/Vector;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 33
    .local v8, "size":S
    new-array v6, v8, [Ljava/util/Vector;

    .line 36
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-lt v5, v8, :cond_0

    .line 49
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 50
    const/4 v2, 0x0

    .line 55
    .end local v5    # "j":I
    .end local v8    # "size":S
    :goto_1
    return-object v6

    .line 37
    .restart local v5    # "j":I
    .restart local v8    # "size":S
    :cond_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    aput-object v9, v6, v5

    .line 39
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 40
    .local v1, "colorInfoLen":I
    new-array v0, v1, [I

    .line 41
    .local v0, "c":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v1, :cond_1

    .line 45
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "s":Ljava/lang/String;
    aget-object v9, v6, v5

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    aget-object v9, v6, v5

    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    aput v9, v0, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 51
    .end local v0    # "c":[I
    .end local v1    # "colorInfoLen":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "size":S
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public selColor(I[II)I
    .locals 3
    .param p1, "color"    # I
    .param p2, "linecolor"    # [I
    .param p3, "wIndex"    # I

    .prologue
    .line 203
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    .line 204
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    add-int/2addr v1, v2

    if-ne p3, v1, :cond_0

    .line 205
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    .line 206
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_0

    move v0, p1

    .line 214
    .end local p1    # "color":I
    .local v0, "color":I
    :goto_0
    return v0

    .line 210
    .end local v0    # "color":I
    .restart local p1    # "color":I
    :cond_0
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    if-lt p3, v1, :cond_1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    add-int/2addr v1, v2

    if-ge p3, v1, :cond_1

    .line 211
    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/GameStr;->rcolor:I

    mul-int/lit8 v1, v1, 0x3

    aget p1, p2, v1

    :cond_1
    move v0, p1

    .line 214
    .end local p1    # "color":I
    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setColor([I)V
    .locals 0
    .param p1, "color"    # [I

    .prologue
    .line 19
    sput-object p1, Lcom/jarworld/rpg/sanguocollege/GameStr;->sColor:[I

    .line 20
    return-void
.end method
