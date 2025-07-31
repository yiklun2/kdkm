.class public abstract Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
.super Ljava/lang/Object;
.source "Crossings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;,
        Lorg/loon/framework/android/game/core/graphics/geom/Crossings$NonZero;
    }
.end annotation


# instance fields
.field limit:I

.field private tmp:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/geom/Curve;",
            ">;"
        }
    .end annotation
.end field

.field xhi:D

.field xlo:D

.field yhi:D

.field ylo:D

.field yranges:[D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "xlo"    # D
    .param p3, "ylo"    # D
    .param p5, "xhi"    # D
    .param p7, "yhi"    # D

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->limit:I

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yranges:[D

    .line 230
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    .line 40
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    .line 41
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    .line 42
    iput-wide p5, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    .line 43
    iput-wide p7, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    .line 44
    return-void
.end method

.method public static findCrossings(Ljava/util/Vector;DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    .locals 11
    .param p1, "xlo"    # D
    .param p3, "ylo"    # D
    .param p5, "xhi"    # D
    .param p7, "yhi"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;DDDD)",
            "Lorg/loon/framework/android/game/core/graphics/geom/Crossings;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "curves":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;-><init>(DDDD)V

    .line 83
    .local v0, "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 84
    .local v10, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    .end local v0    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :goto_0
    return-object v0

    .line 85
    .restart local v0    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :cond_1
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 86
    .local v9, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v9, v0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->accumulateCrossings(Lorg/loon/framework/android/game/core/graphics/geom/Crossings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findCrossings(Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;DDDD)Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    .locals 27
    .param p0, "pi"    # Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;
    .param p1, "xlo"    # D
    .param p3, "ylo"    # D
    .param p5, "xhi"    # D
    .param p7, "yhi"    # D

    .prologue
    .line 99
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->getWindingRule()I

    move-result v11

    if-nez v11, :cond_1

    .line 100
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$EvenOdd;-><init>(DDDD)V

    .line 118
    .local v2, "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :goto_0
    const/16 v11, 0x17

    new-array v0, v11, [D

    move-object/from16 v25, v0

    .line 119
    .local v25, "coords":[D
    const-wide/16 v7, 0x0

    .line 120
    .local v7, "movx":D
    const-wide/16 v9, 0x0

    .line 121
    .local v9, "movy":D
    const-wide/16 v3, 0x0

    .line 122
    .local v3, "curx":D
    const-wide/16 v5, 0x0

    .line 124
    .local v5, "cury":D
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->isDone()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 173
    cmpl-double v11, v9, v5

    if-eqz v11, :cond_0

    .line 174
    invoke-virtual/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 175
    const/4 v2, 0x0

    .line 181
    .end local v2    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    :cond_0
    :goto_2
    return-object v2

    .line 102
    .end local v3    # "curx":D
    .end local v5    # "cury":D
    .end local v7    # "movx":D
    .end local v9    # "movy":D
    .end local v25    # "coords":[D
    :cond_1
    new-instance v2, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$NonZero;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings$NonZero;-><init>(DDDD)V

    .restart local v2    # "cross":Lorg/loon/framework/android/game/core/graphics/geom/Crossings;
    goto :goto_0

    .line 125
    .restart local v3    # "curx":D
    .restart local v5    # "cury":D
    .restart local v7    # "movx":D
    .restart local v9    # "movy":D
    .restart local v25    # "coords":[D
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->currentSegment([D)I

    move-result v26

    .line 126
    .local v26, "type":I
    packed-switch v26, :pswitch_data_0

    .line 171
    :goto_3
    invoke-interface/range {p0 .. p0}, Lorg/loon/framework/android/game/core/graphics/geom/PathIterator;->next()V

    goto :goto_1

    .line 128
    :pswitch_0
    cmpl-double v11, v9, v5

    if-eqz v11, :cond_3

    .line 129
    invoke-virtual/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 130
    const/4 v2, 0x0

    goto :goto_2

    .line 132
    :cond_3
    const/4 v11, 0x0

    aget-wide v3, v25, v11

    move-wide v7, v3

    .line 133
    const/4 v11, 0x1

    aget-wide v5, v25, v11

    move-wide v9, v5

    .line 134
    goto :goto_3

    .line 136
    :pswitch_1
    const/4 v11, 0x0

    aget-wide v16, v25, v11

    .line 137
    .local v16, "newx":D
    const/4 v11, 0x1

    aget-wide v18, v25, v11

    .local v18, "newy":D
    move-object v11, v2

    move-wide v12, v3

    move-wide v14, v5

    .line 138
    invoke-virtual/range {v11 .. v19}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 139
    const/4 v2, 0x0

    goto :goto_2

    .line 141
    :cond_4
    move-wide/from16 v3, v16

    .line 142
    move-wide/from16 v5, v18

    .line 143
    goto :goto_3

    .line 145
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_2
    const/4 v11, 0x2

    aget-wide v16, v25, v11

    .line 146
    .restart local v16    # "newx":D
    const/4 v11, 0x3

    aget-wide v18, v25, v11

    .restart local v18    # "newy":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    .line 147
    invoke-virtual/range {v20 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateQuad(DD[D)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 148
    const/4 v2, 0x0

    goto :goto_2

    .line 150
    :cond_5
    move-wide/from16 v3, v16

    .line 151
    move-wide/from16 v5, v18

    .line 152
    goto :goto_3

    .line 154
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_3
    const/4 v11, 0x4

    aget-wide v16, v25, v11

    .line 155
    .restart local v16    # "newx":D
    const/4 v11, 0x5

    aget-wide v18, v25, v11

    .restart local v18    # "newy":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    .line 156
    invoke-virtual/range {v20 .. v25}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateCubic(DD[D)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 157
    const/4 v2, 0x0

    goto :goto_2

    .line 159
    :cond_6
    move-wide/from16 v3, v16

    .line 160
    move-wide/from16 v5, v18

    .line 161
    goto :goto_3

    .line 163
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_4
    cmpl-double v11, v9, v5

    if-eqz v11, :cond_7

    .line 164
    invoke-virtual/range {v2 .. v10}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 165
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 167
    :cond_7
    move-wide v3, v7

    .line 168
    move-wide v5, v9

    goto :goto_3

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public accumulateCubic(DD[D)Z
    .locals 10
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "coords"    # [D

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x5

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x3

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x5

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 267
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x2

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x4

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 270
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    const/4 v0, 0x0

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x2

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x4

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 273
    const/4 v0, 0x5

    aget-wide v0, p5, v0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_3

    .line 274
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const/4 v0, 0x5

    aget-wide v3, p5, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    .line 278
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 276
    :cond_3
    const/4 v0, 0x5

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    goto :goto_1

    .line 280
    :cond_4
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertCubic(Ljava/util/Vector;DD[D)V

    .line 281
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 282
    .local v7, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_6

    .line 288
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 289
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 283
    :cond_6
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 284
    .local v6, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v6, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->accumulateCrossings(Lorg/loon/framework/android/game/core/graphics/geom/Crossings;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public accumulateLine(DDDD)Z
    .locals 10
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D

    .prologue
    .line 185
    cmpg-double v0, p3, p7

    if-gtz v0, :cond_0

    .line 186
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDDI)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v9, -0x1

    move-object v0, p0

    move-wide v1, p5

    move-wide/from16 v3, p7

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->accumulateLine(DDDDI)Z

    move-result v0

    goto :goto_0
.end method

.method public accumulateLine(DDDDI)Z
    .locals 17
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x1"    # D
    .param p7, "y1"    # D
    .param p9, "direction"    # I

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpg-double v1, v15, p3

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpl-double v1, v15, p7

    if-ltz v1, :cond_1

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v1, p1, v15

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v1, p5, v15

    if-ltz v1, :cond_2

    .line 198
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_2
    cmpl-double v1, p3, p7

    if-nez v1, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpl-double v1, p1, v15

    if-gez v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpl-double v1, p5, v15

    if-gez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 204
    :cond_4
    sub-double v7, p5, p1

    .line 205
    .local v7, "dx":D
    sub-double v9, p7, p3

    .line 206
    .local v9, "dy":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v1, p3, v15

    if-gez v1, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    sub-double v15, v15, p3

    mul-double/2addr v15, v7

    div-double/2addr v15, v9

    add-double v13, p1, v15

    .line 208
    .local v13, "xstart":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    .line 213
    .local v2, "ystart":D
    :goto_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpg-double v1, v15, p7

    if-gez v1, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    sub-double v15, v15, p3

    mul-double/2addr v15, v7

    div-double/2addr v15, v9

    add-double v11, p1, v15

    .line 215
    .local v11, "xend":D
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    .line 220
    .local v4, "yend":D
    :goto_2
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v1, v13, v15

    if-ltz v1, :cond_7

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v1, v11, v15

    if-ltz v1, :cond_7

    .line 221
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    .end local v2    # "ystart":D
    .end local v4    # "yend":D
    .end local v11    # "xend":D
    .end local v13    # "xstart":D
    :cond_5
    move-wide/from16 v13, p1

    .line 211
    .restart local v13    # "xstart":D
    move-wide/from16 v2, p3

    .restart local v2    # "ystart":D
    goto :goto_1

    .line 217
    :cond_6
    move-wide/from16 v11, p5

    .line 218
    .restart local v11    # "xend":D
    move-wide/from16 v4, p7

    .restart local v4    # "yend":D
    goto :goto_2

    .line 223
    :cond_7
    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpl-double v1, v13, v15

    if-gtz v1, :cond_8

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpl-double v1, v11, v15

    if-lez v1, :cond_9

    .line 224
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v1, p0

    move/from16 v6, p9

    .line 226
    invoke-virtual/range {v1 .. v6}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    .line 227
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public accumulateQuad(DD[D)Z
    .locals 10
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "coords"    # [D

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x3

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_1
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x2

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_2
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5

    const/4 v0, 0x0

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    const/4 v0, 0x2

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 243
    const/4 v0, 0x3

    aget-wide v0, p5, v0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_4

    .line 244
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const/4 v0, 0x3

    aget-wide v3, p5, v0

    iget-wide v8, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    .line 248
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_4
    const/4 v0, 0x3

    aget-wide v0, p5, v0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 246
    const/4 v0, 0x3

    aget-wide v0, p5, v0

    iget-wide v2, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->record(DDI)V

    goto :goto_1

    .line 250
    :cond_5
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->insertQuad(Ljava/util/Vector;DD[D)V

    .line 251
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 252
    .local v7, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/loon/framework/android/game/core/graphics/geom/Curve;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_7

    .line 258
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->tmp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 259
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 253
    :cond_7
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/loon/framework/android/game/core/graphics/geom/Curve;

    .line 254
    .local v6, "c":Lorg/loon/framework/android/game/core/graphics/geom/Curve;
    invoke-virtual {v6, p0}, Lorg/loon/framework/android/game/core/graphics/geom/Curve;->accumulateCrossings(Lorg/loon/framework/android/game/core/graphics/geom/Crossings;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public abstract covers(DD)Z
.end method

.method public final getXHi()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xhi:D

    return-wide v0
.end method

.method public final getXLo()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->xlo:D

    return-wide v0
.end method

.method public final getYHi()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->yhi:D

    return-wide v0
.end method

.method public final getYLo()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->ylo:D

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/geom/Crossings;->limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract record(DDI)V
.end method
