.class public Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
.super Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
.source "Rectangle.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/geom/Shape;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c4f95fae535958cL


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 166
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 229
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;-><init>()V

    .line 211
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 212
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 213
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 214
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Dimension;)V
    .locals 3
    .param p1, "d"    # Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    .prologue
    const/4 v2, 0x0

    .line 268
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->width:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->height:I

    invoke-direct {p0, v2, v2, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 3
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    const/4 v2, 0x0

    .line 256
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Point;Lorg/loon/framework/android/game/core/graphics/geom/Dimension;)V
    .locals 4
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;
    .param p2, "d"    # Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    .prologue
    .line 244
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    iget v2, p2, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->width:I

    iget v3, p2, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V
    .locals 4
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 178
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    .line 179
    return-void
.end method

.method private static clip(DZ)I
    .locals 2
    .param p0, "v"    # D
    .param p2, "doceil"    # Z

    .prologue
    .line 436
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 437
    const/high16 v0, -0x80000000

    .line 442
    :goto_0
    return v0

    .line 439
    :cond_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 440
    const v0, 0x7fffffff

    goto :goto_0

    .line 442
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_1
    double-to-int v0, v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_1
.end method


# virtual methods
.method public add(II)V
    .locals 10
    .param p1, "newx"    # I
    .param p2, "newy"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1004
    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    or-int/2addr v6, v7

    if-gez v6, :cond_0

    .line 1005
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 1006
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 1007
    const/4 v6, 0x0

    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    iput v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 1031
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 1011
    .local v0, "x1":I
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 1012
    .local v3, "y1":I
    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v1, v6

    .line 1013
    .local v1, "x2":J
    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v4, v6

    .line 1014
    .local v4, "y2":J
    int-to-long v6, v0

    add-long/2addr v1, v6

    .line 1015
    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 1016
    if-le v0, p1, :cond_1

    .line 1017
    move v0, p1

    .line 1018
    :cond_1
    if-le v3, p2, :cond_2

    .line 1019
    move v3, p2

    .line 1020
    :cond_2
    int-to-long v6, p1

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 1021
    int-to-long v1, p1

    .line 1022
    :cond_3
    int-to-long v6, p2

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 1023
    int-to-long v4, p2

    .line 1024
    :cond_4
    int-to-long v6, v0

    sub-long/2addr v1, v6

    .line 1025
    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 1026
    cmp-long v6, v1, v8

    if-lez v6, :cond_5

    .line 1027
    const-wide/32 v1, 0x7fffffff

    .line 1028
    :cond_5
    cmp-long v6, v4, v8

    if-lez v6, :cond_6

    .line 1029
    const-wide/32 v4, 0x7fffffff

    .line 1030
    :cond_6
    long-to-int v6, v1

    long-to-int v7, v4

    invoke-virtual {p0, v0, v3, v6, v7}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    goto :goto_0
.end method

.method public add(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 2
    .param p1, "pt"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 1061
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->add(II)V

    .line 1062
    return-void
.end method

.method public add(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V
    .locals 21
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v12, v0

    .line 1089
    .local v12, "tx2":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v15, v0

    .line 1090
    .local v15, "ty2":J
    or-long v17, v12, v15

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gez v17, :cond_0

    .line 1091
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    .line 1093
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v6, v0

    .line 1094
    .local v6, "rx2":J
    move-object/from16 v0, p1

    iget v0, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v9, v0

    .line 1095
    .local v9, "ry2":J
    or-long v17, v6, v9

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gez v17, :cond_1

    .line 1124
    :goto_0
    return-void

    .line 1098
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 1099
    .local v11, "tx1":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 1100
    .local v14, "ty1":I
    int-to-long v0, v11

    move-wide/from16 v17, v0

    add-long v12, v12, v17

    .line 1101
    int-to-long v0, v14

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    .line 1102
    move-object/from16 v0, p1

    iget v5, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 1103
    .local v5, "rx1":I
    move-object/from16 v0, p1

    iget v8, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 1104
    .local v8, "ry1":I
    int-to-long v0, v5

    move-wide/from16 v17, v0

    add-long v6, v6, v17

    .line 1105
    int-to-long v0, v8

    move-wide/from16 v17, v0

    add-long v9, v9, v17

    .line 1106
    if-le v11, v5, :cond_2

    .line 1107
    move v11, v5

    .line 1108
    :cond_2
    if-le v14, v8, :cond_3

    .line 1109
    move v14, v8

    .line 1110
    :cond_3
    cmp-long v17, v12, v6

    if-gez v17, :cond_4

    .line 1111
    move-wide v12, v6

    .line 1112
    :cond_4
    cmp-long v17, v15, v9

    if-gez v17, :cond_5

    .line 1113
    move-wide v15, v9

    .line 1114
    :cond_5
    int-to-long v0, v11

    move-wide/from16 v17, v0

    sub-long v12, v12, v17

    .line 1115
    int-to-long v0, v14

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    .line 1119
    const-wide/32 v17, 0x7fffffff

    cmp-long v17, v12, v17

    if-lez v17, :cond_6

    .line 1120
    const-wide/32 v12, 0x7fffffff

    .line 1121
    :cond_6
    const-wide/32 v17, 0x7fffffff

    cmp-long v17, v15, v17

    if-lez v17, :cond_7

    .line 1122
    const-wide/32 v15, 0x7fffffff

    .line 1123
    :cond_7
    long-to-int v0, v12

    move/from16 v17, v0

    long-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v14, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    goto :goto_0
.end method

.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 723
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->inside(II)Z

    move-result v0

    return v0
.end method

.method public contains(IIII)Z
    .locals 6
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "W"    # I
    .param p4, "H"    # I

    .prologue
    const/4 v4, 0x0

    .line 760
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 761
    .local v1, "w":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 762
    .local v0, "h":I
    or-int v5, v1, v0

    or-int/2addr v5, p3

    or-int/2addr v5, p4

    if-gez v5, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v4

    .line 767
    :cond_1
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 768
    .local v2, "x":I
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 769
    .local v3, "y":I
    if-lt p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    .line 772
    add-int/2addr v1, v2

    .line 773
    add-int/2addr p3, p1

    .line 774
    if-gt p3, p1, :cond_4

    .line 779
    if-ge v1, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 788
    :cond_2
    add-int/2addr v0, v3

    .line 789
    add-int/2addr p4, p2

    .line 790
    if-gt p4, p2, :cond_5

    .line 791
    if-ge v0, v3, :cond_0

    if-gt p4, v0, :cond_0

    .line 797
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 785
    :cond_4
    if-lt v1, v2, :cond_2

    if-le p3, v1, :cond_2

    goto :goto_0

    .line 794
    :cond_5
    if-lt v0, v3, :cond_3

    if-le p4, v0, :cond_3

    goto :goto_0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Point;)Z
    .locals 2
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 707
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->contains(II)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Z
    .locals 4
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 738
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method public createIntersection(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 2
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1263
    instance-of v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-eqz v1, :cond_0

    .line 1264
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .end local p1    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->intersection(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    .line 1268
    :goto_0
    return-object v0

    .line 1266
    .restart local p1    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>()V

    .line 1267
    .local v0, "dest":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->intersect(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V

    goto :goto_0
.end method

.method public createUnion(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 2
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;

    .prologue
    .line 1277
    instance-of v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-eqz v1, :cond_0

    .line 1278
    check-cast p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .end local p1    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->union(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-result-object v0

    .line 1282
    :goto_0
    return-object v0

    .line 1280
    .restart local p1    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    :cond_0
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D$Double;-><init>()V

    .line 1281
    .local v0, "dest":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->union(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1299
    instance-of v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1300
    check-cast v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .line 1301
    .local v0, "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    iget v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 1303
    .end local v0    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    :goto_0
    return v1

    .line 1301
    .restart local v0    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1303
    .end local v0    # "r":Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    :cond_1
    invoke-super {p0, p1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 5

    .prologue
    .line 325
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getBounds2D()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle2D;
    .locals 5

    .prologue
    .line 334
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getLocation()Lorg/loon/framework/android/game/core/graphics/geom/Point;
    .locals 3

    .prologue
    .line 486
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Point;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Point;-><init>(II)V

    return-object v0
.end method

.method public getSize()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
    .locals 3

    .prologue
    .line 639
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public grow(II)V
    .locals 12
    .param p1, "h"    # I
    .param p2, "v"    # I

    .prologue
    .line 1150
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    int-to-long v0, v8

    .line 1151
    .local v0, "x0":J
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    int-to-long v4, v8

    .line 1152
    .local v4, "y0":J
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v2, v8

    .line 1153
    .local v2, "x1":J
    iget v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v6, v8

    .line 1154
    .local v6, "y1":J
    add-long/2addr v2, v0

    .line 1155
    add-long/2addr v6, v4

    .line 1157
    int-to-long v8, p1

    sub-long/2addr v0, v8

    .line 1158
    int-to-long v8, p2

    sub-long/2addr v4, v8

    .line 1159
    int-to-long v8, p1

    add-long/2addr v2, v8

    .line 1160
    int-to-long v8, p2

    add-long/2addr v6, v8

    .line 1162
    cmp-long v8, v2, v0

    if-gez v8, :cond_5

    .line 1167
    sub-long/2addr v2, v0

    .line 1168
    const-wide/32 v8, -0x80000000

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 1169
    const-wide/32 v2, -0x80000000

    .line 1170
    :cond_0
    const-wide/32 v8, -0x80000000

    cmp-long v8, v0, v8

    if-gez v8, :cond_4

    .line 1171
    const-wide/32 v0, -0x80000000

    .line 1192
    :cond_1
    :goto_0
    cmp-long v8, v6, v4

    if-gez v8, :cond_a

    .line 1194
    sub-long/2addr v6, v4

    .line 1195
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 1196
    const-wide/32 v6, -0x80000000

    .line 1197
    :cond_2
    const-wide/32 v8, -0x80000000

    cmp-long v8, v4, v8

    if-gez v8, :cond_9

    .line 1198
    const-wide/32 v4, -0x80000000

    .line 1213
    :cond_3
    :goto_1
    long-to-int v8, v0

    long-to-int v9, v4

    long-to-int v10, v2

    long-to-int v11, v6

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    .line 1214
    return-void

    .line 1172
    :cond_4
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    .line 1173
    const-wide/32 v0, 0x7fffffff

    goto :goto_0

    .line 1177
    :cond_5
    const-wide/32 v8, -0x80000000

    cmp-long v8, v0, v8

    if-gez v8, :cond_7

    .line 1178
    const-wide/32 v0, -0x80000000

    .line 1181
    :cond_6
    :goto_2
    sub-long/2addr v2, v0

    .line 1186
    const-wide/32 v8, -0x80000000

    cmp-long v8, v2, v8

    if-gez v8, :cond_8

    .line 1187
    const-wide/32 v2, -0x80000000

    goto :goto_0

    .line 1179
    :cond_7
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v0, v8

    if-lez v8, :cond_6

    .line 1180
    const-wide/32 v0, 0x7fffffff

    goto :goto_2

    .line 1188
    :cond_8
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_1

    .line 1189
    const-wide/32 v2, 0x7fffffff

    goto :goto_0

    .line 1199
    :cond_9
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 1200
    const-wide/32 v4, 0x7fffffff

    goto :goto_1

    .line 1202
    :cond_a
    const-wide/32 v8, -0x80000000

    cmp-long v8, v4, v8

    if-gez v8, :cond_c

    .line 1203
    const-wide/32 v4, -0x80000000

    .line 1206
    :cond_b
    :goto_3
    sub-long/2addr v6, v4

    .line 1207
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-gez v8, :cond_d

    .line 1208
    const-wide/32 v6, -0x80000000

    goto :goto_1

    .line 1204
    :cond_c
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_b

    .line 1205
    const-wide/32 v4, 0x7fffffff

    goto :goto_3

    .line 1209
    :cond_d
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 1210
    const-wide/32 v6, 0x7fffffff

    goto :goto_1
.end method

.method public inside(II)Z
    .locals 6
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 815
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 816
    .local v1, "w":I
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 817
    .local v0, "h":I
    or-int v5, v1, v0

    if-gez v5, :cond_1

    .line 830
    :cond_0
    :goto_0
    return v4

    .line 822
    :cond_1
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 823
    .local v2, "x":I
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 824
    .local v3, "y":I
    if-lt p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    .line 827
    add-int/2addr v1, v2

    .line 828
    add-int/2addr v0, v3

    .line 830
    if-lt v1, v2, :cond_2

    if-le v1, p1, :cond_0

    :cond_2
    if-lt v0, v3, :cond_3

    if-le v0, p2, :cond_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public intersection(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 16
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 880
    .local v7, "tx1":I
    move-object/from16 v0, p0

    iget v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 881
    .local v10, "ty1":I
    move-object/from16 v0, p1

    iget v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 882
    .local v1, "rx1":I
    move-object/from16 v0, p1

    iget v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 883
    .local v4, "ry1":I
    int-to-long v8, v7

    .line 884
    .local v8, "tx2":J
    move-object/from16 v0, p0

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v13, v13

    add-long/2addr v8, v13

    .line 885
    int-to-long v11, v10

    .line 886
    .local v11, "ty2":J
    move-object/from16 v0, p0

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 887
    int-to-long v2, v1

    .line 888
    .local v2, "rx2":J
    move-object/from16 v0, p1

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v13, v13

    add-long/2addr v2, v13

    .line 889
    int-to-long v5, v4

    .line 890
    .local v5, "ry2":J
    move-object/from16 v0, p1

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v13, v13

    add-long/2addr v5, v13

    .line 891
    if-ge v7, v1, :cond_0

    .line 892
    move v7, v1

    .line 893
    :cond_0
    if-ge v10, v4, :cond_1

    .line 894
    move v10, v4

    .line 895
    :cond_1
    cmp-long v13, v8, v2

    if-lez v13, :cond_2

    .line 896
    move-wide v8, v2

    .line 897
    :cond_2
    cmp-long v13, v11, v5

    if-lez v13, :cond_3

    .line 898
    move-wide v11, v5

    .line 899
    :cond_3
    int-to-long v13, v7

    sub-long/2addr v8, v13

    .line 900
    int-to-long v13, v10

    sub-long/2addr v11, v13

    .line 904
    const-wide/32 v13, -0x80000000

    cmp-long v13, v8, v13

    if-gez v13, :cond_4

    .line 905
    const-wide/32 v8, -0x80000000

    .line 906
    :cond_4
    const-wide/32 v13, -0x80000000

    cmp-long v13, v11, v13

    if-gez v13, :cond_5

    .line 907
    const-wide/32 v11, -0x80000000

    .line 908
    :cond_5
    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    long-to-int v14, v8

    long-to-int v15, v11

    invoke-direct {v13, v7, v10, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    return-object v13
.end method

.method public intersects(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Z
    .locals 9
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    const/4 v8, 0x0

    .line 845
    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 846
    .local v5, "tw":I
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 847
    .local v4, "th":I
    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 848
    .local v1, "rw":I
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 849
    .local v0, "rh":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    if-lez v5, :cond_0

    if-gtz v4, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v8

    .line 852
    :cond_1
    iget v6, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 853
    .local v6, "tx":I
    iget v7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 854
    .local v7, "ty":I
    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 855
    .local v2, "rx":I
    iget v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 856
    .local v3, "ry":I
    add-int/2addr v1, v2

    .line 857
    add-int/2addr v0, v3

    .line 858
    add-int/2addr v5, v6

    .line 859
    add-int/2addr v4, v7

    .line 861
    if-lt v1, v2, :cond_2

    if-le v1, v6, :cond_0

    :cond_2
    if-lt v0, v3, :cond_3

    if-le v0, v7, :cond_0

    .line 862
    :cond_3
    if-lt v5, v6, :cond_4

    if-le v5, v2, :cond_0

    :cond_4
    if-lt v4, v7, :cond_5

    if-le v4, v3, :cond_0

    :cond_5
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public move(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 538
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 539
    return-void
.end method

.method public outcode(DD)I
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "out":I
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-gtz v1, :cond_2

    .line 1241
    or-int/lit8 v0, v0, 0x5

    .line 1247
    :cond_0
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-gtz v1, :cond_4

    .line 1248
    or-int/lit8 v0, v0, 0xa

    .line 1254
    :cond_1
    :goto_1
    return v0

    .line 1242
    :cond_2
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    int-to-double v1, v1

    cmpg-double v1, p1, v1

    if-gez v1, :cond_3

    .line 1243
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    :cond_3
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    int-to-double v1, v1

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    cmpl-double v1, p1, v1

    if-lez v1, :cond_0

    .line 1245
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1249
    :cond_4
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    int-to-double v1, v1

    cmpg-double v1, p3, v1

    if-gez v1, :cond_5

    .line 1250
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1251
    :cond_5
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    int-to-double v1, v1

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    cmpl-double v1, p3, v1

    if-lez v1, :cond_1

    .line 1252
    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public reshape(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 467
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 468
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 469
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 470
    return-void
.end method

.method public resize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 692
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 693
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 694
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    .line 378
    return-void
.end method

.method public setBounds(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V
    .locals 4
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 351
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iget v2, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iget v3, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->setBounds(IIII)V

    .line 352
    return-void
.end method

.method public setLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 521
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->move(II)V

    .line 522
    return-void
.end method

.method public setLocation(Lorg/loon/framework/android/game/core/graphics/geom/Point;)V
    .locals 2
    .param p1, "p"    # Lorg/loon/framework/android/game/core/graphics/geom/Point;

    .prologue
    .line 503
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->x:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->setLocation(II)V

    .line 504
    return-void
.end method

.method public setRect(DDDD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D

    .prologue
    .line 402
    const-wide v4, 0x41efffffffc00000L    # 4.294967294E9

    cmpl-double v4, p1, v4

    if-lez v4, :cond_0

    .line 410
    const v2, 0x7fffffff

    .line 411
    .local v2, "newx":I
    const/4 v1, -0x1

    .line 419
    .local v1, "neww":I
    :goto_0
    const-wide v4, 0x41efffffffc00000L    # 4.294967294E9

    cmpl-double v4, p3, v4

    if-lez v4, :cond_3

    .line 421
    const v3, 0x7fffffff

    .line 422
    .local v3, "newy":I
    const/4 v0, -0x1

    .line 430
    .local v0, "newh":I
    :goto_1
    invoke-virtual {p0, v2, v3, v1, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->reshape(IIII)V

    .line 431
    return-void

    .line 413
    .end local v0    # "newh":I
    .end local v1    # "neww":I
    .end local v2    # "newx":I
    .end local v3    # "newy":I
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->clip(DZ)I

    move-result v2

    .line 414
    .restart local v2    # "newx":I
    const-wide/16 v4, 0x0

    cmpl-double v4, p5, v4

    if-ltz v4, :cond_1

    .line 415
    int-to-double v4, v2

    sub-double v4, p1, v4

    add-double/2addr p5, v4

    .line 416
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, p5, v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-static {p5, p6, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->clip(DZ)I

    move-result v1

    .restart local v1    # "neww":I
    goto :goto_0

    .end local v1    # "neww":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 424
    .restart local v1    # "neww":I
    :cond_3
    const/4 v4, 0x0

    invoke-static {p3, p4, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->clip(DZ)I

    move-result v3

    .line 425
    .restart local v3    # "newy":I
    const-wide/16 v4, 0x0

    cmpl-double v4, p7, v4

    if-ltz v4, :cond_4

    .line 426
    int-to-double v4, v3

    sub-double v4, p3, v4

    add-double/2addr p7, v4

    .line 427
    :cond_4
    const-wide/16 v4, 0x0

    cmpl-double v4, p7, v4

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-static {p7, p8, v4}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->clip(DZ)I

    move-result v0

    .restart local v0    # "newh":I
    goto :goto_1

    .end local v0    # "newh":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 675
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->resize(II)V

    .line 676
    return-void
.end method

.method public setSize(Lorg/loon/framework/android/game/core/graphics/geom/Dimension;)V
    .locals 2
    .param p1, "d"    # Lorg/loon/framework/android/game/core/graphics/geom/Dimension;

    .prologue
    .line 656
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->width:I

    iget v1, p1, Lorg/loon/framework/android/game/core/graphics/geom/Dimension;->height:I

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->setSize(II)V

    .line 657
    return-void
.end method

.method public setTo(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 182
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 183
    iput p2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 184
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 185
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 186
    return-void
.end method

.method public setTo(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V
    .locals 1
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 189
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 190
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 191
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 192
    iget v0, p1, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/high16 v5, -0x80000000

    const v4, 0x7fffffff

    .line 556
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 557
    .local v1, "oldv":I
    add-int v0, v1, p1

    .line 558
    .local v0, "newv":I
    if-gez p1, :cond_4

    .line 560
    if-le v0, v1, :cond_1

    .line 563
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-ltz v2, :cond_0

    .line 571
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    sub-int v3, v0, v5

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 577
    :cond_0
    const/high16 v0, -0x80000000

    .line 595
    :cond_1
    :goto_0
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 597
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 598
    add-int v0, v1, p2

    .line 599
    if-gez p2, :cond_6

    .line 601
    if-le v0, v1, :cond_3

    .line 603
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-ltz v2, :cond_2

    .line 604
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    sub-int v3, v0, v5

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 607
    :cond_2
    const/high16 v0, -0x80000000

    .line 621
    :cond_3
    :goto_1
    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 622
    return-void

    .line 581
    :cond_4
    if-ge v0, v1, :cond_1

    .line 583
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-ltz v2, :cond_5

    .line 586
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    sub-int v3, v0, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 589
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    if-gez v2, :cond_5

    .line 590
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    .line 592
    :cond_5
    const v0, 0x7fffffff

    goto :goto_0

    .line 611
    :cond_6
    if-ge v0, v1, :cond_3

    .line 613
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-ltz v2, :cond_7

    .line 614
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    sub-int v3, v0, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 615
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    if-gez v2, :cond_7

    .line 616
    iput v4, p0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    .line 618
    :cond_7
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method public union(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
    .locals 17
    .param p1, "r"    # Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    .prologue
    .line 932
    move-object/from16 v0, p0

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v8, v13

    .line 933
    .local v8, "tx2":J
    move-object/from16 v0, p0

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v11, v13

    .line 934
    .local v11, "ty2":J
    or-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 941
    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V

    .line 973
    :goto_0
    return-object v13

    .line 943
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->width:I

    int-to-long v2, v13

    .line 944
    .local v2, "rx2":J
    move-object/from16 v0, p1

    iget v13, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->height:I

    int-to-long v5, v13

    .line 945
    .local v5, "ry2":J
    or-long v13, v2, v5

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    .line 946
    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;)V

    goto :goto_0

    .line 948
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 949
    .local v7, "tx1":I
    move-object/from16 v0, p0

    iget v10, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 950
    .local v10, "ty1":I
    int-to-long v13, v7

    add-long/2addr v8, v13

    .line 951
    int-to-long v13, v10

    add-long/2addr v11, v13

    .line 952
    move-object/from16 v0, p1

    iget v1, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->x:I

    .line 953
    .local v1, "rx1":I
    move-object/from16 v0, p1

    iget v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;->y:I

    .line 954
    .local v4, "ry1":I
    int-to-long v13, v1

    add-long/2addr v2, v13

    .line 955
    int-to-long v13, v4

    add-long/2addr v5, v13

    .line 956
    if-le v7, v1, :cond_2

    .line 957
    move v7, v1

    .line 958
    :cond_2
    if-le v10, v4, :cond_3

    .line 959
    move v10, v4

    .line 960
    :cond_3
    cmp-long v13, v8, v2

    if-gez v13, :cond_4

    .line 961
    move-wide v8, v2

    .line 962
    :cond_4
    cmp-long v13, v11, v5

    if-gez v13, :cond_5

    .line 963
    move-wide v11, v5

    .line 964
    :cond_5
    int-to-long v13, v7

    sub-long/2addr v8, v13

    .line 965
    int-to-long v13, v10

    sub-long/2addr v11, v13

    .line 969
    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v8, v13

    if-lez v13, :cond_6

    .line 970
    const-wide/32 v8, 0x7fffffff

    .line 971
    :cond_6
    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v11, v13

    if-lez v13, :cond_7

    .line 972
    const-wide/32 v11, 0x7fffffff

    .line 973
    :cond_7
    new-instance v13, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;

    long-to-int v14, v8

    long-to-int v15, v11

    invoke-direct {v13, v7, v10, v14, v15}, Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method
