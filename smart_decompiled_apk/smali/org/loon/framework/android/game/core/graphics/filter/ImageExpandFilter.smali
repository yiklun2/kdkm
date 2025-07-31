.class public final Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;
.super Ljava/lang/Object;
.source "ImageExpandFilter.java"


# static fields
.field private static lazyImages:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/microedition/lcdui/Image;",
            ">;"
        }
    .end annotation
.end field

.field private static final objHeight:I = 0x40

.field private static final objWidth:I = 0x40

.field private static final x1:I = 0x80

.field private static final x2:I = 0xc0

.field private static final y1:I = 0x0

.field private static final y2:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    return-void
.end method

.method public static final getRMXPDialog(Ljava/lang/String;II)Ljavax/microedition/lcdui/Image;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v10, 0x1b

    const/4 v9, 0x5

    .line 49
    sget-object v7, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 50
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    .line 52
    :cond_0
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 53
    .local v1, "dialog":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v6

    .line 54
    .local v6, "w":I
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v5

    .line 55
    .local v5, "pixels":[I
    const/4 v3, -0x1

    .line 56
    .local v3, "index":I
    const/4 v0, 0x0

    .line 58
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_1

    .line 67
    if-ne v0, v9, :cond_4

    .line 68
    const/16 v7, 0x10

    invoke-static {v1, p1, p2, v7, v9}, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    .line 74
    :goto_1
    return-object v7

    .line 59
    :cond_1
    add-int/lit16 v7, v2, 0x8d

    mul-int/lit8 v8, v6, 0xc

    add-int/2addr v7, v8

    aget v4, v5, v7

    .line 60
    .local v4, "pixel":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    .line 61
    move v3, v4

    .line 63
    :cond_2
    if-ne v3, v4, :cond_3

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v4    # "pixel":I
    :cond_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 70
    invoke-static {v1, p1, p2, v10, v9}, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1

    .line 71
    :cond_5
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    .line 72
    const/16 v7, 0x14

    invoke-static {v1, p1, p2, v7, v9}, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1

    .line 74
    :cond_6
    invoke-static {v1, p1, p2, v10, v9}, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1
.end method

.method private static final getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;
    .locals 27
    .param p0, "rmxpImage"    # Ljavax/microedition/lcdui/Image;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "size"    # I
    .param p4, "offset"    # I

    .prologue
    .line 139
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dialog"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "keyName":Ljava/lang/String;
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/microedition/lcdui/Image;

    .line 144
    .local v17, "lazyImage":Ljavax/microedition/lcdui/Image;
    if-nez v17, :cond_1

    .line 146
    mul-int/lit8 v3, p3, 0x2

    rsub-int/lit8 v13, v3, 0x40

    .line 148
    .local v13, "center_size":I
    const/4 v15, 0x0

    .line 150
    .local v15, "image":Ljavax/microedition/lcdui/Image;
    const/16 v21, 0x0

    .line 152
    .local v21, "messageImage":Ljavax/microedition/lcdui/Image;
    const/16 v4, 0x40

    .line 153
    const/16 v5, 0x40

    const/16 v6, 0x80

    const/4 v7, 0x0

    const/16 v8, 0xc0

    const/16 v9, 0x40

    move-object/from16 v3, p0

    .line 152
    :try_start_0
    invoke-static/range {v3 .. v9}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v15

    .line 156
    const/4 v3, 0x0

    .line 155
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v13, v0, v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v12

    .line 159
    .local v12, "centerTop":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    .line 158
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v13, v0, v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v11

    .line 162
    .local v11, "centerDown":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 161
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v20

    .line 165
    .local v20, "leftTop":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    .line 164
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v13, v3, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v18

    .line 168
    .local v18, "leftCenter":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    rsub-int/lit8 v4, p3, 0x40

    .line 167
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v19

    .line 171
    .local v19, "leftDown":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    const/4 v4, 0x0

    .line 170
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v25

    .line 174
    .local v25, "rightTop":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    .line 173
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v13, v3, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v23

    .line 177
    .local v23, "rightCenter":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    rsub-int/lit8 v4, p3, 0x40

    .line 176
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v24

    .line 180
    .local v24, "rightDown":Ljavax/microedition/lcdui/Image;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 179
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v17

    .line 182
    const/16 v4, 0x80

    const/16 v5, 0x80

    .line 183
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x80

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object/from16 v3, p0

    .line 182
    invoke-static/range {v3 .. v10}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v21

    .line 185
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v14

    .line 187
    .local v14, "g":Ljavax/microedition/lcdui/Graphics;
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v14, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 190
    sub-int v3, p1, p4

    sub-int v4, p2, p4

    .line 189
    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v21

    .line 192
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 193
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    .line 194
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 192
    move-object/from16 v0, v21

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 196
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v14, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 199
    mul-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    .line 198
    move/from16 v0, p3

    invoke-static {v12, v3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 201
    .local v26, "tmp":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 202
    const/16 v26, 0x0

    .line 203
    mul-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    move/from16 v0, p3

    invoke-static {v11, v3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 206
    sub-int v3, p2, p3

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 207
    const/16 v26, 0x0

    .line 209
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 212
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int v4, p1, v4

    .line 211
    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 214
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-interface {v14, v0, v3, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 215
    const/16 v26, 0x0

    .line 216
    const/4 v3, 0x0

    sub-int v4, p2, p3

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 218
    sub-int v22, p1, p3

    .line 220
    .local v22, "right":I
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 223
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int v4, p1, v4

    .line 222
    move-object/from16 v0, v23

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 225
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 226
    const/16 v26, 0x0

    .line 227
    sub-int v3, p2, p3

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 229
    invoke-interface {v14}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 231
    sget-object v3, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v15}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 234
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 235
    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 236
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 237
    invoke-virtual/range {v20 .. v20}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 238
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 239
    invoke-virtual/range {v19 .. v19}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 240
    invoke-virtual/range {v25 .. v25}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 241
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 242
    invoke-virtual/range {v24 .. v24}, Ljavax/microedition/lcdui/Image;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v15, 0x0

    .line 245
    const/16 v21, 0x0

    .line 246
    const/4 v12, 0x0

    .line 247
    const/4 v11, 0x0

    .line 248
    const/16 v20, 0x0

    .line 249
    const/16 v18, 0x0

    .line 250
    const/16 v19, 0x0

    .line 251
    const/16 v25, 0x0

    .line 252
    const/16 v23, 0x0

    .line 253
    const/16 v24, 0x0

    .line 258
    .end local v11    # "centerDown":Ljavax/microedition/lcdui/Image;
    .end local v12    # "centerTop":Ljavax/microedition/lcdui/Image;
    .end local v13    # "center_size":I
    .end local v14    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v15    # "image":Ljavax/microedition/lcdui/Image;
    .end local v18    # "leftCenter":Ljavax/microedition/lcdui/Image;
    .end local v19    # "leftDown":Ljavax/microedition/lcdui/Image;
    .end local v20    # "leftTop":Ljavax/microedition/lcdui/Image;
    .end local v21    # "messageImage":Ljavax/microedition/lcdui/Image;
    .end local v22    # "right":I
    .end local v23    # "rightCenter":Ljavax/microedition/lcdui/Image;
    .end local v24    # "rightDown":Ljavax/microedition/lcdui/Image;
    .end local v25    # "rightTop":Ljavax/microedition/lcdui/Image;
    .end local v26    # "tmp":Ljavax/microedition/lcdui/Image;
    :cond_1
    :goto_0
    return-object v17

    .line 254
    .restart local v13    # "center_size":I
    .restart local v15    # "image":Ljavax/microedition/lcdui/Image;
    .restart local v21    # "messageImage":Ljavax/microedition/lcdui/Image;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final getRMXPloadBuoyage(Ljava/lang/String;II)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 80
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->getRMXPloadBuoyage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final getRMXPloadBuoyage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 27
    .param p0, "rmxpImage"    # Ljavax/microedition/lcdui/Image;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/util/HashMap;

    const/16 v11, 0xa

    invoke-direct {v2, v11}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "buoyage"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "|"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    .line 90
    .local v22, "keyName":Ljava/lang/String;
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljavax/microedition/lcdui/Image;

    .line 91
    .local v23, "lazyImage":Ljavax/microedition/lcdui/Image;
    if-nez v23, :cond_1

    .line 92
    const/16 v19, 0x0

    .line 93
    .local v19, "down":Ljavax/microedition/lcdui/Image;
    const/16 v3, 0x20

    .line 94
    .local v3, "objWidth":I
    const/16 v4, 0x20

    .line 95
    .local v4, "objHeight":I
    const/16 v5, 0x80

    .line 96
    .local v5, "x1":I
    const/16 v7, 0xa0

    .line 97
    .local v7, "x2":I
    const/16 v6, 0x40

    .line 98
    .local v6, "y1":I
    const/16 v8, 0x60

    .line 99
    .local v8, "y2":I
    const/4 v10, 0x1

    .local v10, "k":I
    move-object/from16 v2, p0

    .line 101
    :try_start_0
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    .line 103
    .local v9, "image":Ljavax/microedition/lcdui/Image;
    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v23

    .line 104
    invoke-virtual/range {v23 .. v23}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v21

    .line 105
    .local v21, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v11, p2

    move v14, v10

    move v15, v4

    invoke-static/range {v9 .. v15}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v24

    .line 108
    .local v24, "left":Ljavax/microedition/lcdui/Image;
    const/16 v12, 0x1f

    const/4 v13, 0x0

    move/from16 v11, p2

    move v14, v3

    move v15, v4

    .line 107
    invoke-static/range {v9 .. v15}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v25

    .line 110
    .local v25, "right":Ljavax/microedition/lcdui/Image;
    const/16 v16, 0x1f

    const/16 v17, 0x1f

    move-object v11, v9

    move/from16 v12, p1

    move/from16 v13, p2

    move v14, v10

    move v15, v10

    .line 109
    invoke-static/range {v11 .. v17}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v18

    .line 111
    .local v18, "center":Ljavax/microedition/lcdui/Image;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v9

    move/from16 v12, p1

    move v13, v10

    move/from16 v16, v3

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 113
    .local v26, "up":Ljavax/microedition/lcdui/Image;
    const/4 v14, 0x0

    .line 114
    const/16 v15, 0x1f

    move-object v11, v9

    move/from16 v12, p1

    move v13, v10

    move/from16 v16, v3

    move/from16 v17, v4

    .line 113
    invoke-static/range {v11 .. v17}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v19

    .line 115
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 116
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 117
    sub-int v2, p1, v10

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 118
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 119
    const/4 v2, 0x0

    sub-int v11, p2, v10

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2, v11}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 120
    invoke-interface/range {v21 .. v21}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 121
    sget-object v2, Lorg/loon/framework/android/game/core/graphics/filter/ImageExpandFilter;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/16 v24, 0x0

    .line 126
    const/16 v25, 0x0

    .line 127
    const/16 v18, 0x0

    .line 128
    const/16 v26, 0x0

    .line 129
    const/16 v19, 0x0

    .end local v3    # "objWidth":I
    .end local v4    # "objHeight":I
    .end local v5    # "x1":I
    .end local v6    # "y1":I
    .end local v7    # "x2":I
    .end local v8    # "y2":I
    .end local v9    # "image":Ljavax/microedition/lcdui/Image;
    .end local v10    # "k":I
    .end local v18    # "center":Ljavax/microedition/lcdui/Image;
    .end local v19    # "down":Ljavax/microedition/lcdui/Image;
    .end local v21    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v24    # "left":Ljavax/microedition/lcdui/Image;
    .end local v25    # "right":Ljavax/microedition/lcdui/Image;
    .end local v26    # "up":Ljavax/microedition/lcdui/Image;
    :cond_1
    move-object/from16 v2, v23

    .line 133
    :goto_0
    return-object v2

    .line 122
    .restart local v3    # "objWidth":I
    .restart local v4    # "objHeight":I
    .restart local v5    # "x1":I
    .restart local v6    # "y1":I
    .restart local v7    # "x2":I
    .restart local v8    # "y2":I
    .restart local v10    # "k":I
    .restart local v19    # "down":Ljavax/microedition/lcdui/Image;
    :catch_0
    move-exception v20

    .line 125
    .local v20, "e":Ljava/lang/Exception;
    const/16 v24, 0x0

    .line 126
    .restart local v24    # "left":Ljavax/microedition/lcdui/Image;
    const/16 v25, 0x0

    .line 127
    .restart local v25    # "right":Ljavax/microedition/lcdui/Image;
    const/16 v18, 0x0

    .line 128
    .restart local v18    # "center":Ljavax/microedition/lcdui/Image;
    const/16 v26, 0x0

    .line 129
    .restart local v26    # "up":Ljavax/microedition/lcdui/Image;
    const/16 v19, 0x0

    .line 130
    const/4 v9, 0x0

    .line 123
    .restart local v9    # "image":Ljavax/microedition/lcdui/Image;
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    .end local v9    # "image":Ljavax/microedition/lcdui/Image;
    .end local v18    # "center":Ljavax/microedition/lcdui/Image;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v24    # "left":Ljavax/microedition/lcdui/Image;
    .end local v25    # "right":Ljavax/microedition/lcdui/Image;
    .end local v26    # "up":Ljavax/microedition/lcdui/Image;
    :catchall_0
    move-exception v2

    .line 125
    const/16 v24, 0x0

    .line 126
    .restart local v24    # "left":Ljavax/microedition/lcdui/Image;
    const/16 v25, 0x0

    .line 127
    .restart local v25    # "right":Ljavax/microedition/lcdui/Image;
    const/16 v18, 0x0

    .line 128
    .restart local v18    # "center":Ljavax/microedition/lcdui/Image;
    const/16 v26, 0x0

    .line 129
    .restart local v26    # "up":Ljavax/microedition/lcdui/Image;
    const/16 v19, 0x0

    .line 130
    const/4 v9, 0x0

    .line 131
    .restart local v9    # "image":Ljavax/microedition/lcdui/Image;
    throw v2
.end method
