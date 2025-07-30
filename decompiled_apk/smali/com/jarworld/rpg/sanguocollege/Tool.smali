.class public Lcom/jarworld/rpg/sanguocollege/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field static drawRowNum:[I

.field static factNum:[[I

.field static maxNumY:I

.field static mirrorrgb:[I

.field static oneScreenNumX:I

.field static oneScreenNumY:I

.field static opOffsetX:I

.field static opOffsetY:I

.field static picRGBH:I

.field static picRGBW:I

.field static random:Ljava/util/Random;

.field static result:[[Ljava/util/Vector;

.field static rgborign:[I

.field static roller:[[I

.field static rowIdx:[I

.field static s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->random:Ljava/util/Random;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static drawARGBFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)V
    .locals 18
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "c1"    # I
    .param p6, "c2"    # I
    .param p7, "c3"    # I
    .param p8, "img1"    # Ljavax/microedition/lcdui/Image;
    .param p9, "img2"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 830
    invoke-virtual/range {p8 .. p8}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v14

    .line 831
    .local v14, "img1W":I
    invoke-virtual/range {p8 .. p8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v13

    .line 832
    .local v13, "img1H":I
    if-nez p9, :cond_7

    .line 833
    move/from16 v0, p4

    if-gt v0, v13, :cond_1

    const/16 v16, 0x1

    .line 834
    .local v16, "len1":I
    :goto_0
    move/from16 v0, p3

    if-gt v0, v14, :cond_3

    const/16 v17, 0x1

    .line 835
    .local v17, "len2":I
    :goto_1
    invoke-interface/range {p0 .. p4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 836
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    if-lt v12, v0, :cond_5

    .line 877
    :cond_0
    :goto_3
    return-void

    .line 833
    .end local v12    # "i":I
    .end local v16    # "len1":I
    .end local v17    # "len2":I
    :cond_1
    rem-int v2, p4, v13

    if-eqz v2, :cond_2

    div-int v2, p4, v13

    add-int/lit8 v16, v2, 0x1

    goto :goto_0

    :cond_2
    div-int v16, p4, v13

    goto :goto_0

    .line 834
    .restart local v16    # "len1":I
    :cond_3
    rem-int v2, p3, v14

    if-eqz v2, :cond_4

    div-int v2, p3, v14

    add-int/lit8 v17, v2, 0x1

    goto :goto_1

    :cond_4
    div-int v17, p3, v14

    goto :goto_1

    .line 837
    .restart local v12    # "i":I
    .restart local v17    # "len2":I
    :cond_5
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, v17

    if-lt v15, v0, :cond_6

    .line 836
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 838
    :cond_6
    mul-int v2, v15, v14

    add-int v2, v2, p1

    mul-int v3, v12, v13

    add-int v3, v3, p2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 837
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 842
    .end local v12    # "i":I
    .end local v15    # "j":I
    .end local v16    # "len1":I
    .end local v17    # "len2":I
    :cond_7
    add-int/lit8 v2, p4, -0x6

    if-gt v2, v13, :cond_a

    const/16 v16, 0x1

    .line 843
    .restart local v16    # "len1":I
    :goto_5
    add-int/lit8 v2, p3, -0x6

    if-gt v2, v14, :cond_c

    const/16 v17, 0x1

    .line 844
    .restart local v17    # "len2":I
    :goto_6
    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x6

    add-int/lit8 v5, p4, -0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 845
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v16

    if-lt v12, v0, :cond_e

    .line 850
    invoke-interface/range {p0 .. p4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 851
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 852
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x2

    add-int v2, p1, p3

    add-int/lit8 v9, v2, -0x7

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    move/from16 v10, p2

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 853
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x1

    add-int v2, p2, p4

    add-int/lit8 v10, v2, -0x7

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    move/from16 v9, p1

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 854
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x3

    add-int v2, p1, p3

    add-int/lit8 v9, v2, -0x7

    add-int v2, p2, p4

    add-int/lit8 v10, v2, -0x7

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 855
    const/4 v2, -0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_8

    .line 856
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 857
    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v3, p3, -0xe

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v2, v1, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 858
    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p2, 0x7

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 859
    add-int/lit8 v2, p1, 0x7

    add-int v3, p2, p4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, p3, -0xe

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 860
    add-int/lit8 v2, p2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v4, p4, -0xe

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 862
    :cond_8
    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_9

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 864
    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0xe

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 865
    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, p2, 0x7

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 866
    add-int/lit8 v2, p1, 0x7

    add-int v3, p2, p4

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, p3, -0xe

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 867
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x7

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 869
    :cond_9
    const/4 v2, -0x1

    move/from16 v0, p7

    if-eq v0, v2, :cond_0

    .line 870
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-interface {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 871
    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0xe

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 872
    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v3, p2, 0x7

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 873
    add-int/lit8 v2, p1, 0x7

    add-int v3, p2, p4

    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v4, p3, -0xe

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 874
    add-int/lit8 v2, p1, 0x2

    add-int/lit8 v3, p2, 0x7

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_3

    .line 842
    .end local v12    # "i":I
    .end local v16    # "len1":I
    .end local v17    # "len2":I
    :cond_a
    add-int/lit8 v2, p4, -0x6

    rem-int/2addr v2, v13

    if-eqz v2, :cond_b

    add-int/lit8 v2, p4, -0x6

    div-int/2addr v2, v13

    add-int/lit8 v16, v2, 0x1

    goto/16 :goto_5

    :cond_b
    add-int/lit8 v2, p4, -0x6

    div-int v16, v2, v13

    goto/16 :goto_5

    .line 843
    .restart local v16    # "len1":I
    :cond_c
    add-int/lit8 v2, p3, -0x6

    rem-int/2addr v2, v14

    if-eqz v2, :cond_d

    add-int/lit8 v2, p3, -0x6

    div-int/2addr v2, v14

    add-int/lit8 v17, v2, 0x1

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v2, p3, -0x6

    div-int v17, v2, v14

    goto/16 :goto_6

    .line 846
    .restart local v12    # "i":I
    .restart local v17    # "len2":I
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_8
    move/from16 v0, v17

    if-lt v15, v0, :cond_f

    .line 845
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 847
    :cond_f
    add-int/lit8 v2, p1, 0x3

    mul-int v3, v15, v14

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    mul-int v4, v12, v13

    add-int/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 846
    add-int/lit8 v15, v15, 0x1

    goto :goto_8
.end method

.method public static drawBar(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;IIIII)V
    .locals 8
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "curVal"    # I
    .param p4, "maxVal"    # I
    .param p5, "img"    # Ljavax/microedition/lcdui/Image;
    .param p6, "color1"    # I
    .param p7, "color2"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "offset"    # I

    .prologue
    .line 736
    if-eqz p5, :cond_0

    .line 737
    mul-int v0, p8, p3

    div-int v4, v0, p4

    const/4 v6, 0x0

    mul-int v7, p10, p9

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move/from16 v5, p9

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    mul-int v0, p8, p3

    div-int v4, v0, p4

    div-int/lit8 v5, p9, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p6

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 740
    div-int/lit8 v0, p9, 0x2

    add-int v3, p2, v0

    mul-int v0, p8, p3

    div-int v4, v0, p4

    div-int/lit8 v5, p9, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p7

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto :goto_0
.end method

.method public static drawIconWithStr(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;IIIILjavax/microedition/lcdui/Image;IIIILjava/util/Vector;BIII)V
    .locals 12
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fId"    # I
    .param p4, "icon1"    # Ljavax/microedition/lcdui/Image;
    .param p5, "icon1Width"    # I
    .param p6, "icon1Hight"    # I
    .param p7, "icon1OffsetX"    # I
    .param p8, "icon1OffsetY"    # I
    .param p9, "icon2"    # Ljavax/microedition/lcdui/Image;
    .param p10, "icon2Width"    # I
    .param p11, "icon2Hight"    # I
    .param p12, "icon2OffsetX"    # I
    .param p13, "icon2OffsetY"    # I
    .param p14, "vec"    # Ljava/util/Vector;
    .param p15, "strHight"    # B
    .param p16, "dis"    # I
    .param p17, "anchor"    # I
    .param p18, "color"    # I

    .prologue
    .line 907
    move-object v0, p0

    move-object/from16 v1, p4

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 909
    if-eqz p9, :cond_0

    .line 910
    sub-int v0, p5, p10

    div-int/lit8 v0, v0, 0x2

    add-int v2, p1, v0

    sub-int v0, p6, p11

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    move-object v0, p0

    move-object/from16 v1, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p13

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 913
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    add-int v1, p1, p5

    add-int v2, v1, p16

    sub-int v1, p6, p15

    div-int/lit8 v1, v1, 0x2

    add-int v3, p2, v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object/from16 v1, p14

    move v4, p3

    move/from16 v5, p17

    move/from16 v8, p18

    invoke-virtual/range {v0 .. v11}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStr(Ljava/util/Vector;IIIIIII[IIZ)V

    .line 914
    return-void
.end method

.method public static drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V
    .locals 3
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "vx"    # I
    .param p3, "vy"    # I
    .param p4, "vw"    # I
    .param p5, "vh"    # I
    .param p6, "rx"    # I
    .param p7, "ry"    # I

    .prologue
    .line 420
    invoke-interface {p0, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 421
    sub-int v0, p2, p6

    sub-int v1, p3, p7

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 422
    return-void
.end method

.method public static drawImgWithDir(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIZ)V
    .locals 12
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "dir"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "wh"    # I
    .param p6, "lor"    # I
    .param p7, "isAct"    # Z

    .prologue
    .line 436
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    .local v4, "iw":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    .line 437
    .local v5, "ih":I
    if-eqz p7, :cond_4

    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_View:Lcom/jarworld/rpg/sanguocollege/GameViewBase;

    iget v0, v0, Lcom/jarworld/rpg/sanguocollege/GameViewBase;->FPSTimer:I

    div-int/lit8 v0, v0, 0x3

    rem-int/lit8 v10, v0, 0x5

    .line 438
    .local v10, "fxy":I
    :goto_0
    rsub-int/lit8 v0, v10, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 439
    const/16 v0, 0x8

    new-array v11, v0, [I

    const/4 v0, 0x1

    const/4 v1, 0x2

    aput v1, v11, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    aput v1, v11, v0

    const/4 v0, 0x4

    const/4 v1, 0x5

    aput v1, v11, v0

    const/4 v0, 0x5

    const/4 v1, 0x6

    aput v1, v11, v0

    const/4 v0, 0x6

    const/4 v1, 0x7

    aput v1, v11, v0

    const/4 v0, 0x7

    const/4 v1, 0x4

    aput v1, v11, v0

    .line 440
    .local v11, "transform":[I
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v3, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 441
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int/lit8 v0, p2, 0x2

    aget v6, v11, v0

    div-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v10

    sub-int v7, p3, v0

    div-int/lit8 v0, p2, 0x2

    mul-int/2addr v0, v10

    sub-int v8, p4, v0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 444
    :cond_1
    and-int/lit8 v0, p6, 0x8

    if-nez v0, :cond_2

    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_3

    .line 445
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v6, v11, v0

    sub-int v0, p5, v4

    add-int/2addr v0, v10

    div-int/lit8 v1, p2, 0x2

    rsub-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    add-int v7, p3, v0

    sub-int v0, p5, v5

    add-int/2addr v0, v10

    div-int/lit8 v1, p2, 0x2

    mul-int/2addr v0, v1

    add-int v8, p4, v0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 447
    :cond_3
    return-void

    .line 437
    .end local v10    # "fxy":I
    .end local v11    # "transform":[I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static drawNormalFrame(Ljavax/microedition/lcdui/Graphics;ILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIIIIIII)V
    .locals 19
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "type"    # I
    .param p2, "img1"    # Ljavax/microedition/lcdui/Image;
    .param p3, "img2"    # Ljavax/microedition/lcdui/Image;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "c1"    # I
    .param p9, "c2"    # I
    .param p10, "c3"    # I
    .param p11, "c4"    # I
    .param p12, "c5"    # I

    .prologue
    .line 761
    packed-switch p1, :pswitch_data_0

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 764
    :pswitch_0
    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v3, p0

    move/from16 v4, p8

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 765
    add-int/lit8 v5, p4, 0x1

    add-int/lit8 v6, p5, 0x1

    add-int/lit8 v7, p6, -0x2

    add-int/lit8 v8, p7, -0x2

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v3, p0

    move/from16 v4, p9

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 766
    add-int/lit8 v5, p4, 0x2

    add-int/lit8 v6, p5, 0x2

    add-int/lit8 v7, p6, -0x4

    add-int/lit8 v8, p7, -0x4

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v3, p0

    move/from16 v4, p10

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 767
    add-int/lit8 v5, p4, 0x3

    add-int/lit8 v6, p5, 0x3

    add-int/lit8 v7, p6, -0x6

    add-int/lit8 v8, p7, -0x6

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v3, p0

    move/from16 v4, p11

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 768
    add-int/lit8 v5, p4, 0x4

    add-int/lit8 v6, p5, 0x4

    add-int/lit8 v7, p6, -0x8

    add-int/lit8 v8, p7, -0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v3, p0

    move/from16 v4, p12

    invoke-static/range {v3 .. v10}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    .line 770
    if-eqz p2, :cond_1

    .line 771
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 772
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 773
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    const/4 v9, 0x2

    add-int v3, p4, p6

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sub-int v10, v3, v4

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 774
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    add-int v3, p5, p7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    sub-int v11, v3, v4

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v10, p4

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 775
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    const/4 v9, 0x3

    add-int v3, p4, p6

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sub-int v10, v3, v4

    add-int v3, p5, p7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    sub-int v11, v3, v4

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 778
    :cond_1
    if-eqz p3, :cond_0

    .line 779
    invoke-virtual/range {p3 .. p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    .line 780
    .local v15, "imgW":I
    invoke-virtual/range {p3 .. p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    .line 781
    .local v14, "imgH":I
    add-int/lit8 v3, p7, -0x8

    if-gt v3, v14, :cond_2

    const/16 v17, 0x1

    .line 782
    .local v17, "len1":I
    :goto_1
    add-int/lit8 v3, p6, -0x8

    if-gt v3, v15, :cond_4

    const/16 v18, 0x1

    .line 783
    .local v18, "len2":I
    :goto_2
    add-int/lit8 v3, p6, -0x8

    add-int/lit8 v4, p7, -0x8

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 784
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 785
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 784
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 781
    .end local v13    # "i":I
    .end local v16    # "j":I
    .end local v17    # "len1":I
    .end local v18    # "len2":I
    :cond_2
    add-int/lit8 v3, p7, -0x8

    rem-int/2addr v3, v14

    if-eqz v3, :cond_3

    add-int/lit8 v3, p7, -0x8

    div-int/2addr v3, v14

    add-int/lit8 v17, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, p7, -0x8

    div-int v17, v3, v14

    goto :goto_1

    .line 782
    .restart local v17    # "len1":I
    :cond_4
    add-int/lit8 v3, p6, -0x8

    rem-int/2addr v3, v15

    if-eqz v3, :cond_5

    add-int/lit8 v3, p6, -0x8

    div-int/2addr v3, v15

    add-int/lit8 v18, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, p6, -0x8

    div-int v18, v3, v15

    goto :goto_2

    .line 786
    .restart local v13    # "i":I
    .restart local v16    # "j":I
    .restart local v18    # "len2":I
    :cond_6
    add-int/lit8 v3, p4, 0x4

    mul-int v4, v16, v15

    add-int/2addr v3, v4

    add-int/lit8 v4, p5, 0x4

    mul-int v5, v13, v14

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    .line 785
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 793
    .end local v13    # "i":I
    .end local v14    # "imgH":I
    .end local v15    # "imgW":I
    .end local v16    # "j":I
    .end local v17    # "len1":I
    .end local v18    # "len2":I
    :pswitch_1
    const v4, 0x593f2c

    add-int/lit8 v6, p5, 0x8

    add-int/lit8 v8, p7, -0x10

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-static/range {v3 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 794
    const v4, 0xad8c6b

    add-int/lit8 v5, p4, 0x1

    add-int/lit8 v6, p5, 0x8

    add-int/lit8 v7, p6, -0x2

    add-int/lit8 v8, p7, -0x10

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    .line 796
    if-eqz p2, :cond_7

    .line 797
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 798
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 799
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x2

    add-int v3, p4, p6

    add-int/lit8 v10, v3, -0xc

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 800
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x1

    add-int v3, p5, p7

    add-int/lit8 v11, v3, -0x8

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v10, p4

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 801
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x3

    add-int v3, p4, p6

    add-int/lit8 v10, v3, -0xc

    add-int v3, p5, p7

    add-int/lit8 v11, v3, -0x8

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 802
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 803
    const/16 v5, 0xc

    const/4 v6, 0x0

    add-int/lit8 v7, p6, -0x18

    const/16 v8, 0x8

    const/4 v9, 0x0

    add-int/lit8 v10, p4, 0xc

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 804
    const/16 v5, 0xc

    const/4 v6, 0x0

    add-int/lit8 v7, p6, -0x18

    const/16 v8, 0x8

    const/4 v9, 0x1

    add-int/lit8 v10, p4, 0xc

    add-int v3, p5, p7

    add-int/lit8 v11, v3, -0x8

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 807
    :cond_7
    if-eqz p3, :cond_0

    .line 808
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-short v5, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v6, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 809
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x21

    const/16 v8, 0xc

    const/4 v9, 0x0

    add-int/lit8 v10, p4, 0xc

    add-int/lit8 v11, p5, -0x6

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 810
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x21

    const/16 v8, 0xc

    const/4 v9, 0x2

    add-int v3, p4, p6

    add-int/lit8 v10, v3, -0x2d

    add-int/lit8 v11, p5, -0x6

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto/16 :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V
    .locals 10
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "num"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dir"    # I
    .param p5, "e"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v7, 0x0

    .line 595
    if-gez p1, :cond_0

    .line 596
    mul-int/lit8 p1, p1, -0x1

    .line 598
    :cond_0
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0xa

    .line 599
    .local v4, "temp1":I
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    .line 601
    .local v5, "temp2":I
    if-nez p1, :cond_2

    .line 602
    sub-int v2, p2, v4

    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 615
    :cond_1
    return-void

    .line 604
    :cond_2
    const/4 v8, 0x0

    .local v8, "i1":I
    :goto_0
    if-lez p1, :cond_1

    .line 605
    rem-int/lit8 v9, p1, 0xa

    .line 606
    .local v9, "temp3":I
    div-int/lit8 p1, p1, 0xa

    .line 607
    add-int v0, v4, p4

    sub-int/2addr p2, v0

    .line 608
    if-eqz v9, :cond_3

    .line 609
    add-int/lit8 v0, v9, -0x1

    mul-int v6, v0, v4

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 604
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 611
    :cond_3
    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1
.end method

.method public static drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V
    .locals 10
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "num"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dir"    # I
    .param p5, "e"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v7, 0x0

    .line 627
    if-gez p1, :cond_0

    .line 628
    mul-int/lit8 p1, p1, -0x1

    .line 630
    :cond_0
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0xa

    .line 631
    .local v4, "temp1":I
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    .line 633
    .local v5, "temp2":I
    invoke-static {p1}, Lcom/jarworld/rpg/sanguocollege/Tool;->getNumWay(I)I

    move-result v9

    .line 634
    .local v9, "temp4":I
    if-nez p1, :cond_2

    .line 635
    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 649
    :cond_1
    return-void

    .line 637
    :cond_2
    add-int v0, v9, p4

    mul-int/2addr v0, v4

    add-int/2addr p2, v0

    .line 638
    :goto_0
    if-lez p1, :cond_1

    .line 639
    rem-int/lit8 v8, p1, 0xa

    .line 640
    .local v8, "temp3":I
    div-int/lit8 p1, p1, 0xa

    .line 641
    add-int v0, v4, p4

    sub-int/2addr p2, v0

    .line 642
    if-eqz v8, :cond_3

    .line 643
    add-int/lit8 v0, v8, -0x1

    mul-int v6, v0, v4

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 645
    :cond_3
    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0
.end method

.method public static drawNumStringTime(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V
    .locals 10
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "num"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dir"    # I
    .param p5, "e"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v7, 0x0

    .line 560
    if-gez p1, :cond_0

    .line 561
    mul-int/lit8 p1, p1, -0x1

    .line 563
    :cond_0
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0xa

    .line 564
    .local v4, "temp1":I
    invoke-virtual {p5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    .line 566
    .local v5, "temp2":I
    div-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_1

    .line 567
    sub-int v0, p2, v4

    sub-int v2, v0, v4

    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 569
    :cond_1
    if-nez p1, :cond_3

    .line 570
    sub-int v2, p2, v4

    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 583
    :cond_2
    return-void

    .line 572
    :cond_3
    const/4 v8, 0x0

    .local v8, "i1":I
    :goto_0
    if-lez p1, :cond_2

    .line 573
    rem-int/lit8 v9, p1, 0xa

    .line 574
    .local v9, "temp3":I
    div-int/lit8 p1, p1, 0xa

    .line 575
    add-int v0, v4, p4

    sub-int/2addr p2, v0

    .line 576
    if-eqz v9, :cond_4

    .line 577
    add-int/lit8 v0, v9, -0x1

    mul-int v6, v0, v4

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 572
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 579
    :cond_4
    mul-int/lit8 v6, v4, 0x9

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_1
.end method

.method public static drawNumWithSymbol(Ljavax/microedition/lcdui/Graphics;IIILjavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;IIIII)V
    .locals 13
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "anchor"    # I
    .param p4, "num"    # Ljavax/microedition/lcdui/Image;
    .param p5, "symbol"    # Ljavax/microedition/lcdui/Image;
    .param p6, "type"    # I
    .param p7, "dir"    # I
    .param p8, "st"    # I
    .param p9, "num1"    # I
    .param p10, "num2"    # I

    .prologue
    .line 667
    if-gez p9, :cond_0

    .line 668
    mul-int/lit8 p9, p9, -0x1

    .line 670
    :cond_0
    if-gez p10, :cond_1

    .line 671
    mul-int/lit8 p10, p10, -0x1

    .line 673
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    div-int/lit8 v11, v1, 0xa

    .line 674
    .local v11, "w1":I
    invoke-virtual/range {p5 .. p5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    div-int/lit8 v12, v1, 0x4

    .line 675
    .local v12, "w2":I
    invoke-virtual/range {p5 .. p5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    .line 676
    .local v9, "h":I
    packed-switch p3, :pswitch_data_0

    .line 719
    :goto_0
    :pswitch_0
    return-void

    .line 678
    :pswitch_1
    invoke-static/range {p9 .. p9}, Lcom/jarworld/rpg/sanguocollege/Tool;->getNumWay(I)I

    move-result v10

    .line 679
    .local v10, "n":I
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    .line 680
    if-nez p7, :cond_2

    .line 682
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v3, p1

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 684
    mul-int v1, v10, v11

    add-int v3, p1, v1

    mul-int v7, p8, v12

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p5

    move v4, p2

    move v5, v12

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    .line 687
    :cond_2
    mul-int v7, p8, v12

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, v12

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 689
    add-int v3, p1, v12

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto :goto_0

    .line 693
    :cond_3
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v3, p1

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 695
    mul-int v1, v10, v11

    add-int v3, p1, v1

    mul-int v7, p8, v12

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p5

    move v4, p2

    move v5, v12

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 697
    mul-int v1, v10, v11

    add-int/2addr v1, p1

    add-int v3, v1, v12

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p10

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto :goto_0

    .line 702
    .end local v10    # "n":I
    :pswitch_2
    mul-int v7, p8, v12

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, v12

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawImg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    .line 703
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_5

    .line 704
    if-nez p7, :cond_4

    .line 706
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v3, p1

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto/16 :goto_0

    .line 709
    :cond_4
    add-int v3, p1, v12

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto/16 :goto_0

    .line 713
    :cond_5
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p9

    move v3, p1

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringL2R(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    .line 715
    add-int v3, p1, v12

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p10

    move v4, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/jarworld/rpg/sanguocollege/Tool;->drawNumStringR2L(Ljavax/microedition/lcdui/Graphics;IIIILjavax/microedition/lcdui/Image;)V

    goto/16 :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static drawRect(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 3
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "anchor"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {p0, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 523
    invoke-interface {p0, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 524
    if-nez p6, :cond_0

    .line 525
    invoke-interface {p0, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    div-int/lit8 v0, p4, 0x2

    sub-int v0, p2, v0

    invoke-interface {p0, v0, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0
.end method

.method public static drawRoundRect(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 7
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "radian1"    # I
    .param p7, "radian2"    # I

    .prologue
    const/4 v2, 0x0

    .line 506
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {p0, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 507
    invoke-interface {p0, p1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 508
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillRoundRect(IIIIII)V

    .line 509
    return-void
.end method

.method public static drawStr(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIII)V
    .locals 3
    .param p0, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "fId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    const/4 v2, 0x0

    .line 460
    sget-short v0, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {p0, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 461
    invoke-interface {p0, p2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 462
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GC;->FONT:[Ljavax/microedition/lcdui/Font;

    aget-object v0, v0, p3

    invoke-interface {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 463
    if-nez p6, :cond_0

    .line 464
    invoke-interface {p0, p1, p4, p5, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    const/16 v0, 0x11

    invoke-interface {p0, p1, p4, p5, v0}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static drawStrs(IIIIIIIIII[IIZ)V
    .locals 14
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "areaWidth"    # I
    .param p3, "areaHeight"    # I
    .param p4, "idx"    # I
    .param p5, "fId"    # I
    .param p6, "anchor"    # I
    .param p7, "type"    # I
    .param p8, "colorBg"    # I
    .param p9, "colorMid"    # I
    .param p10, "showSize"    # [I
    .param p11, "showCont"    # I
    .param p12, "isSeldefault"    # Z

    .prologue
    .line 488
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v1, v1, p4

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    aget v2, v2, p4

    :goto_0
    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    aget v3, v3, p4

    .line 489
    if-nez p6, :cond_1

    move v4, p0

    .line 490
    :goto_1
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v5, v5, p4

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v5, v5, p4

    array-length v5, v5

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    aget v6, v6, p4

    if-ge v5, v6, :cond_2

    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v5, v5, p4

    array-length v5, v5

    :goto_2
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p5

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    mul-int/2addr v5, v6

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v6, v6, p5

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 488
    invoke-virtual/range {v0 .. v13}, Lcom/jarworld/rpg/sanguocollege/GameStr;->drawGStrs([Ljava/util/Vector;IIIIIIIII[IIZ)V

    .line 492
    return-void

    .line 488
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v2, v2, p4

    array-length v2, v2

    goto :goto_0

    .line 489
    :cond_1
    div-int/lit8 v4, p2, 0x2

    add-int/2addr v4, p0

    goto :goto_1

    .line 490
    :cond_2
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    aget v5, v5, p4

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static getDRandom(DD)D
    .locals 4
    .param p0, "nMin"    # D
    .param p2, "nMax"    # D

    .prologue
    .line 129
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 130
    .local v0, "iRet":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 131
    sub-double v2, p2, p0

    mul-double/2addr v2, v0

    add-double/2addr p0, v2

    .line 133
    .end local p0    # "nMin":D
    :cond_0
    return-wide p0
.end method

.method public static getDirect(FFFF)B
    .locals 2
    .param p0, "sx"    # F
    .param p1, "sy"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 200
    sub-float v0, p2, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 201
    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 207
    :cond_1
    cmpl-float v0, p3, p1

    if-lez v0, :cond_2

    .line 208
    const/4 v0, 0x2

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIRandom(II)I
    .locals 2
    .param p0, "nMin"    # I
    .param p1, "nMax"    # I

    .prologue
    .line 114
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 115
    .local v0, "iRet":I
    if-gez v0, :cond_0

    .line 116
    neg-int v0, v0

    .line 118
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p0

    rem-int v1, v0, v1

    add-int v0, v1, p0

    .line 119
    return v0
.end method

.method public static getIntAry(II)[I
    .locals 3
    .param p0, "s"    # I
    .param p1, "e"    # I

    .prologue
    .line 180
    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 181
    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    .line 182
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 187
    .end local v0    # "a":[I
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 183
    .restart local v0    # "a":[I
    .restart local v1    # "i":I
    :cond_0
    add-int v2, p0, v1

    aput v2, v0, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "a":[I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getLen(FFFF)D
    .locals 3
    .param p0, "sx"    # F
    .param p1, "sy"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 224
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p2, p0

    sub-float v2, p2, p0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getNumWay(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 537
    if-gez p0, :cond_0

    .line 538
    mul-int/lit8 p0, p0, -0x1

    .line 541
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gtz p0, :cond_2

    .line 544
    if-nez v0, :cond_1

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 547
    :cond_1
    return v0

    .line 542
    :cond_2
    div-int/lit8 p0, p0, 0xa

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRandArray(I)[I
    .locals 6
    .param p0, "arrayLen"    # I

    .prologue
    .line 143
    new-array v0, p0, [I

    .line 144
    .local v0, "a":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 148
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_1

    .line 154
    return-object v0

    .line 145
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aput v4, v0, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    aget v2, v0, v1

    .line 150
    .local v2, "temp1":I
    const/4 v4, 0x0

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->getIRandom(II)I

    move-result v3

    .line 151
    .local v3, "temp2":I
    aget v4, v0, v3

    aput v4, v0, v1

    .line 152
    aput v2, v0, v3

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getSlope(FFFFI)F
    .locals 4
    .param p0, "sx"    # F
    .param p1, "sy"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "type"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 237
    packed-switch p4, :pswitch_data_0

    .line 265
    sub-float v0, p2, p0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    .line 240
    :pswitch_0
    sub-float v2, p2, p0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 241
    cmpl-float v2, p3, p1

    if-gtz v2, :cond_0

    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :cond_1
    sub-float v0, p3, p1

    float-to-double v0, v0

    invoke-static {p0, p1, p2, p3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 251
    :pswitch_1
    sub-float v2, p3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 252
    cmpl-float v2, p2, p0

    if-gtz v2, :cond_0

    move v0, v1

    .line 255
    goto :goto_0

    .line 258
    :cond_2
    sub-float v0, p2, p0

    float-to-double v0, v0

    invoke-static {p0, p1, p2, p3}, Lcom/jarworld/rpg/sanguocollege/Tool;->getLen(FFFF)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 262
    :pswitch_2
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static initFNCont(I)V
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 389
    const/4 v0, 0x2

    filled-new-array {p0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    .line 390
    return-void
.end method

.method public static initFactNum(I)V
    .locals 6
    .param p0, "idx"    # I

    .prologue
    const/4 v5, 0x0

    .line 376
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v2, v2, p0

    aput v5, v2, v5

    .line 378
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    aget v0, v2, p0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    aget v2, v2, p0

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    aget v3, v3, p0

    add-int/2addr v2, v3

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v3, v3, p0

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 382
    return-void

    .line 379
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v2, v2, p0

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->factNum:[[I

    aget-object v2, v2, p0

    aget v3, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static initOptionUI(IIIIII)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "areaWidth"    # I
    .param p2, "areaHeight"    # I
    .param p3, "optionWidth"    # I
    .param p4, "optionHight"    # I
    .param p5, "wholeSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    packed-switch p0, :pswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 282
    :pswitch_0
    div-int v2, p2, p4

    sput v2, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    .line 283
    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    .line 284
    sub-int v2, p1, p3

    div-int/lit8 v2, v2, 0x2

    if-gez v2, :cond_0

    :goto_1
    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    .line 285
    rem-int v1, p2, p4

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    .line 286
    sput p5, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    goto :goto_0

    .line 284
    :cond_0
    sub-int v1, p1, p3

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 290
    :pswitch_1
    div-int v1, p2, p4

    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    .line 291
    div-int v1, p1, p3

    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    .line 292
    rem-int v1, p1, p3

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetX:I

    .line 293
    rem-int v1, p2, p4

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/jarworld/rpg/sanguocollege/Tool;->opOffsetY:I

    .line 294
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    if-gt p5, v1, :cond_2

    sget v0, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    .line 295
    .local v0, "temp":I
    :goto_2
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    if-gt v0, v1, :cond_1

    sget v0, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumY:I

    .end local v0    # "temp":I
    :cond_1
    sput v0, Lcom/jarworld/rpg/sanguocollege/Tool;->maxNumY:I

    goto :goto_0

    .line 294
    :cond_2
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    rem-int v1, p5, v1

    if-lez v1, :cond_3

    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    div-int v1, p5, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    sget v1, Lcom/jarworld/rpg/sanguocollege/Tool;->oneScreenNumX:I

    div-int v0, p5, v1

    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initPix(Ljava/util/Vector;IIII)V
    .locals 6
    .param p0, "sindex"    # Ljava/util/Vector;
    .param p1, "fId"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "idx"    # I

    .prologue
    .line 354
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    invoke-virtual {v1, p0, p1, p2}, Lcom/jarworld/rpg/sanguocollege/GameStr;->format(Ljava/util/Vector;II)[Ljava/util/Vector;

    move-result-object v1

    aput-object v1, v0, p4

    .line 355
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    invoke-virtual {v1, p1, p3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->getRowNum(II)I

    move-result v1

    aput v1, v0, p4

    .line 356
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    const/4 v1, 0x0

    aput v1, v0, p4

    .line 357
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    aget-object v2, v2, p4

    move v3, p1

    move v4, p4

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRoll(ILjava/util/Vector;[Ljava/util/Vector;III)V

    .line 358
    return-void
.end method

.method public static initPixCont(I)V
    .locals 1
    .param p0, "len"    # I

    .prologue
    .line 365
    new-array v0, p0, [[Ljava/util/Vector;

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->result:[[Ljava/util/Vector;

    .line 366
    new-array v0, p0, [I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->drawRowNum:[I

    .line 367
    new-array v0, p0, [I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->rowIdx:[I

    .line 368
    invoke-static {p0}, Lcom/jarworld/rpg/sanguocollege/Tool;->initRollCont(I)V

    .line 369
    return-void
.end method

.method public static initRoll(ILjava/util/Vector;[Ljava/util/Vector;III)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "sindex0"    # Ljava/util/Vector;
    .param p2, "sindex1"    # [Ljava/util/Vector;
    .param p3, "fId"    # I
    .param p4, "idx"    # I
    .param p5, "maxSize"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "len":I
    packed-switch p0, :pswitch_data_0

    .line 323
    :goto_0
    if-gt v1, p5, :cond_1

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 335
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 315
    :pswitch_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->s_sFont:Lcom/jarworld/rpg/sanguocollege/GameStr;

    invoke-virtual {v2, p1, p3}, Lcom/jarworld/rpg/sanguocollege/GameStr;->getPixlength(Ljava/util/Vector;I)I

    move-result v1

    .line 316
    goto :goto_0

    .line 320
    :pswitch_1
    array-length v2, p2

    sget-object v3, Lcom/jarworld/rpg/sanguocollege/GC;->FTS:[[B

    aget-object v3, v3, p3

    aget-byte v3, v3, v5

    mul-int v1, v2, v3

    goto :goto_0

    .line 326
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    aput v4, v2, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    aput v4, v2, v4

    .line 331
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    const/4 v3, 0x1

    aput p5, v2, v3

    .line 332
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    neg-int v3, v1

    aput v3, v2, v5

    .line 333
    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    aget-object v2, v2, p4

    const/4 v3, 0x3

    const/16 v4, 0xf

    aput v4, v2, v3

    goto :goto_2

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initRollCont(I)V
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 342
    const/4 v0, 0x4

    filled-new-array {p0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/Tool;->roller:[[I

    .line 343
    return-void
.end method

.method public static judgeAtt(Lcom/jarworld/rpg/sanguocollege/LeadingActor;II)Z
    .locals 3
    .param p0, "role"    # Lcom/jarworld/rpg/sanguocollege/LeadingActor;
    .param p1, "attType"    # I
    .param p2, "attValue"    # I

    .prologue
    const/4 v1, 0x1

    .line 961
    packed-switch p1, :pswitch_data_0

    .line 1061
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 964
    :pswitch_0
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_element:B

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 970
    :pswitch_1
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_byt_level:B

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 976
    :pswitch_2
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxHp:I

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 982
    :pswitch_3
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->maxMp:I

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 988
    :pswitch_4
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyAttack:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 994
    :pswitch_5
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->phyDefend:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1000
    :pswitch_6
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magAttack:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1006
    :pswitch_7
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->magDefend:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1012
    :pswitch_8
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->agility:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1018
    :pswitch_9
    iget-short v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->luck:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1024
    :pswitch_a
    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->m_i_curExp:I

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1030
    :pswitch_b
    sget-byte v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->love:B

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1036
    :pswitch_c
    sget v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->money:I

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1042
    :pswitch_d
    sget-short v2, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advalue:S

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1048
    :pswitch_e
    iget-byte v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->advLvl:B

    if-lt v2, p2, :cond_0

    goto :goto_0

    .line 1054
    :pswitch_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->curEqID:[S

    aget-short v2, v2, v0

    if-eq v2, p2, :cond_1

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static judgeItem(III)Z
    .locals 3
    .param p0, "itemID"    # I
    .param p1, "itemNum"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 924
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "totalNum":I
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_vec_pocket:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    .line 927
    :cond_0
    :goto_0
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2

    .line 933
    const/4 v1, 0x0

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 934
    packed-switch p2, :pswitch_data_0

    .line 949
    .end local v0    # "totalNum":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 928
    .restart local v0    # "totalNum":I
    :cond_2
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_enu_pocket:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jarworld/rpg/sanguocollege/Item;

    sput-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    .line 929
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-short v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_s_ID:S

    if-ne p0, v1, :cond_0

    .line 930
    sget-object v1, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->tempItem:Lcom/jarworld/rpg/sanguocollege/Item;

    iget-byte v1, v1, Lcom/jarworld/rpg/sanguocollege/Item;->m_byt_itemNum:B

    add-int/2addr v0, v1

    goto :goto_0

    .line 936
    :pswitch_0
    if-gt v0, p1, :cond_1

    move v1, v2

    .line 937
    goto :goto_1

    .line 941
    :pswitch_1
    if-lt v0, p1, :cond_1

    move v1, v2

    .line 942
    goto :goto_1

    .line 946
    .end local v0    # "totalNum":I
    :cond_3
    if-nez p1, :cond_1

    move v1, v2

    .line 947
    goto :goto_1

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static readInt([BI)I
    .locals 3
    .param p0, "a"    # [B
    .param p1, "offSet"    # I

    .prologue
    .line 85
    aget-byte v1, p0, p1

    .line 86
    .local v1, "result":I
    and-int/lit16 v1, v1, 0xff

    .line 87
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 91
    return v1

    .line 88
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    .line 89
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readShort([BI)S
    .locals 2
    .param p0, "a"    # [B
    .param p1, "offSet"    # I

    .prologue
    .line 71
    aget-byte v0, p0, p1

    .line 72
    .local v0, "result":S
    and-int/lit16 v1, v0, 0xff

    int-to-short v0, v1

    .line 73
    shl-int/lit8 v1, v0, 0x8

    int-to-short v0, v1

    .line 74
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 75
    return v0
.end method

.method public static sqrt(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i1":I
    const/4 v1, 0x3

    .line 164
    .local v1, "i2":I
    add-int/lit8 p0, p0, -0x1

    .line 165
    :goto_0
    if-gez p0, :cond_0

    .line 170
    return v0

    .line 166
    :cond_0
    sub-int/2addr p0, v1

    .line 167
    add-int/lit8 v1, v1, 0x2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static wave(IFIZ)V
    .locals 9
    .param p0, "counter"    # I
    .param p1, "wavelengh"    # F
    .param p2, "waveSpeed"    # I
    .param p3, "isPositive"    # Z

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "wave":I
    int-to-double v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 402
    .local v0, "angle":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBH:I

    if-lt v2, v4, :cond_0

    .line 406
    return-void

    .line 403
    :cond_0
    int-to-float v4, v2

    div-float/2addr v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBH:I

    int-to-float v6, v6

    div-float/2addr v6, p1

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBH:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 404
    sget-object v5, Lcom/jarworld/rpg/sanguocollege/Tool;->rgborign:[I

    if-eqz p3, :cond_1

    move v4, v2

    :goto_1
    add-int/2addr v4, v3

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBH:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget v6, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBW:I

    mul-int/2addr v4, v6

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Tool;->mirrorrgb:[I

    sget v7, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBW:I

    mul-int/2addr v7, v2

    sget v8, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBW:I

    invoke-static {v5, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_1
    sget v4, Lcom/jarworld/rpg/sanguocollege/Tool;->picRGBH:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method
