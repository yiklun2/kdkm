.class public final Lorg/loon/framework/android/game/action/avg/MessageDialog;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# static fields
.field private static lazyImages:Ljava/util/Map;
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
    .line 258
    sget-object v0, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 259
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

    .line 37
    sget-object v7, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 38
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    .line 40
    :cond_0
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    .line 41
    .local v1, "dialog":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v6

    .line 42
    .local v6, "w":I
    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getPixels()[I

    move-result-object v5

    .line 43
    .local v5, "pixels":[I
    const/4 v3, -0x1

    .line 44
    .local v3, "index":I
    const/4 v0, 0x0

    .line 46
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_1

    .line 55
    if-ne v0, v9, :cond_4

    .line 56
    const/16 v7, 0x10

    invoke-static {v1, p1, p2, v7, v9}, Lorg/loon/framework/android/game/action/avg/MessageDialog;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    .line 62
    :goto_1
    return-object v7

    .line 47
    :cond_1
    add-int/lit16 v7, v2, 0x8d

    mul-int/lit8 v8, v6, 0xc

    add-int/2addr v7, v8

    aget v4, v5, v7

    .line 48
    .local v4, "pixel":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    .line 49
    move v3, v4

    .line 51
    :cond_2
    if-ne v3, v4, :cond_3

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 46
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "pixel":I
    :cond_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 58
    invoke-static {v1, p1, p2, v10, v9}, Lorg/loon/framework/android/game/action/avg/MessageDialog;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1

    .line 59
    :cond_5
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    .line 60
    const/16 v7, 0x14

    invoke-static {v1, p1, p2, v7, v9}, Lorg/loon/framework/android/game/action/avg/MessageDialog;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1

    .line 62
    :cond_6
    invoke-static {v1, p1, p2, v10, v9}, Lorg/loon/framework/android/game/action/avg/MessageDialog;->getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    goto :goto_1
.end method

.method private static final getRMXPDialog(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;
    .locals 33
    .param p0, "rmxpImage"    # Ljavax/microedition/lcdui/Image;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "size"    # I
    .param p4, "offset"    # I

    .prologue
    .line 128
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    .line 131
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

    .line 132
    .local v16, "keyName":Ljava/lang/String;
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/microedition/lcdui/Image;

    .line 133
    .local v17, "lazyImage":Ljavax/microedition/lcdui/Image;
    if-nez v17, :cond_1

    .line 135
    const/16 v23, 0x40

    .line 136
    .local v23, "objWidth":I
    const/16 v22, 0x40

    .line 137
    .local v22, "objHeight":I
    const/16 v29, 0x80

    .line 138
    .local v29, "x1":I
    const/16 v30, 0xc0

    .line 139
    .local v30, "x2":I
    const/16 v31, 0x0

    .line 140
    .local v31, "y1":I
    const/16 v32, 0x40

    .line 142
    .local v32, "y2":I
    mul-int/lit8 v3, p3, 0x2

    rsub-int/lit8 v13, v3, 0x40

    .line 144
    .local v13, "center_size":I
    const/4 v15, 0x0

    .line 146
    .local v15, "image":Ljavax/microedition/lcdui/Image;
    const/16 v21, 0x0

    .line 148
    .local v21, "messageImage":Ljavax/microedition/lcdui/Image;
    const/16 v4, 0x40

    .line 149
    const/16 v5, 0x40

    const/16 v6, 0x80

    const/4 v7, 0x0

    const/16 v8, 0xc0

    const/16 v9, 0x40

    move-object/from16 v3, p0

    .line 148
    :try_start_0
    invoke-static/range {v3 .. v9}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v15

    .line 152
    const/4 v3, 0x0

    .line 151
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v13, v0, v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v12

    .line 155
    .local v12, "centerTop":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    .line 154
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v13, v0, v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v11

    .line 158
    .local v11, "centerDown":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 157
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v20

    .line 161
    .local v20, "leftTop":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    .line 160
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v13, v3, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v18

    .line 164
    .local v18, "leftCenter":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    rsub-int/lit8 v4, p3, 0x40

    .line 163
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v19

    .line 167
    .local v19, "leftDown":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    const/4 v4, 0x0

    .line 166
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v27

    .line 170
    .local v27, "rightTop":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    .line 169
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v13, v3, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v25

    .line 173
    .local v25, "rightCenter":Ljavax/microedition/lcdui/Image;
    rsub-int/lit8 v3, p3, 0x40

    rsub-int/lit8 v4, p3, 0x40

    .line 172
    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v15, v0, v1, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIII)Ljavax/microedition/lcdui/Image;

    move-result-object v26

    .line 176
    .local v26, "rightDown":Ljavax/microedition/lcdui/Image;
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 175
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Ljavax/microedition/lcdui/Image;->createImage(IILandroid/graphics/Bitmap$Config;)Ljavax/microedition/lcdui/Image;

    move-result-object v17

    .line 178
    const/16 v4, 0x80

    const/16 v5, 0x80

    .line 179
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x80

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object/from16 v3, p0

    .line 178
    invoke-static/range {v3 .. v10}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v21

    .line 181
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v14

    .line 183
    .local v14, "g":Ljavax/microedition/lcdui/Graphics;
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v14, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 186
    sub-int v3, p1, p4

    sub-int v4, p2, p4

    .line 185
    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v21

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 189
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v17 .. v17}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    .line 190
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 188
    move-object/from16 v0, v21

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 192
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v14, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 195
    mul-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    .line 194
    move/from16 v0, p3

    invoke-static {v12, v3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v28

    .line 197
    .local v28, "tmp":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 198
    const/16 v28, 0x0

    .line 199
    mul-int/lit8 v3, p3, 0x2

    sub-int v3, p1, v3

    move/from16 v0, p3

    invoke-static {v11, v3, v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v28

    .line 202
    sub-int v3, p2, p3

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 203
    const/16 v28, 0x0

    .line 205
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 208
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int v4, p1, v4

    .line 207
    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v28

    .line 210
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-interface {v14, v0, v3, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 211
    const/16 v28, 0x0

    .line 212
    const/4 v3, 0x0

    sub-int v4, p2, p3

    move-object/from16 v0, v19

    invoke-interface {v14, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 214
    sub-int v24, p1, p3

    .line 216
    .local v24, "right":I
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 219
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    mul-int/lit8 v4, p3, 0x2

    sub-int v4, p1, v4

    .line 218
    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getResize(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v28

    .line 221
    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 222
    const/16 v28, 0x0

    .line 223
    sub-int v3, p2, p3

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v14, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 225
    invoke-interface {v14}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 227
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v15}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 230
    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 231
    invoke-virtual {v12}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 232
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 233
    invoke-virtual/range {v20 .. v20}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 234
    invoke-virtual/range {v18 .. v18}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 235
    invoke-virtual/range {v19 .. v19}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 236
    invoke-virtual/range {v27 .. v27}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 237
    invoke-virtual/range {v25 .. v25}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 238
    invoke-virtual/range {v26 .. v26}, Ljavax/microedition/lcdui/Image;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v15, 0x0

    .line 241
    const/16 v21, 0x0

    .line 242
    const/4 v12, 0x0

    .line 243
    const/4 v11, 0x0

    .line 244
    const/16 v20, 0x0

    .line 245
    const/16 v18, 0x0

    .line 246
    const/16 v19, 0x0

    .line 247
    const/16 v27, 0x0

    .line 248
    const/16 v25, 0x0

    .line 249
    const/16 v26, 0x0

    .line 254
    .end local v11    # "centerDown":Ljavax/microedition/lcdui/Image;
    .end local v12    # "centerTop":Ljavax/microedition/lcdui/Image;
    .end local v13    # "center_size":I
    .end local v14    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v15    # "image":Ljavax/microedition/lcdui/Image;
    .end local v18    # "leftCenter":Ljavax/microedition/lcdui/Image;
    .end local v19    # "leftDown":Ljavax/microedition/lcdui/Image;
    .end local v20    # "leftTop":Ljavax/microedition/lcdui/Image;
    .end local v21    # "messageImage":Ljavax/microedition/lcdui/Image;
    .end local v22    # "objHeight":I
    .end local v23    # "objWidth":I
    .end local v24    # "right":I
    .end local v25    # "rightCenter":Ljavax/microedition/lcdui/Image;
    .end local v26    # "rightDown":Ljavax/microedition/lcdui/Image;
    .end local v27    # "rightTop":Ljavax/microedition/lcdui/Image;
    .end local v28    # "tmp":Ljavax/microedition/lcdui/Image;
    .end local v29    # "x1":I
    .end local v30    # "x2":I
    .end local v31    # "y1":I
    .end local v32    # "y2":I
    :cond_1
    :goto_0
    return-object v17

    .line 250
    .restart local v13    # "center_size":I
    .restart local v15    # "image":Ljavax/microedition/lcdui/Image;
    .restart local v21    # "messageImage":Ljavax/microedition/lcdui/Image;
    .restart local v22    # "objHeight":I
    .restart local v23    # "objWidth":I
    .restart local v29    # "x1":I
    .restart local v30    # "x2":I
    .restart local v31    # "y1":I
    .restart local v32    # "y2":I
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
    .line 68
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/loon/framework/android/game/action/avg/MessageDialog;->getRMXPloadBuoyage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final getRMXPloadBuoyage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 25
    .param p0, "rmxpImage"    # Ljavax/microedition/lcdui/Image;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 74
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buoyage"

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

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "keyName":Ljava/lang/String;
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/microedition/lcdui/Image;

    .line 79
    .local v15, "lazyImage":Ljavax/microedition/lcdui/Image;
    if-nez v15, :cond_1

    .line 80
    const/4 v10, 0x0

    .line 81
    .local v10, "down":Ljavax/microedition/lcdui/Image;
    const/16 v18, 0x20

    .line 82
    .local v18, "objWidth":I
    const/16 v17, 0x20

    .line 83
    .local v17, "objHeight":I
    const/16 v21, 0x80

    .line 84
    .local v21, "x1":I
    const/16 v22, 0xa0

    .line 85
    .local v22, "x2":I
    const/16 v23, 0x40

    .line 86
    .local v23, "y1":I
    const/16 v24, 0x60

    .line 87
    .local v24, "y2":I
    const/4 v13, 0x1

    .line 90
    .local v13, "k":I
    const/16 v3, 0x20

    .line 91
    const/16 v4, 0x20

    const/16 v5, 0x80

    const/16 v6, 0x40

    const/16 v7, 0xa0

    const/16 v8, 0x60

    move-object/from16 v2, p0

    .line 90
    :try_start_0
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    .line 92
    .local v2, "image":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Ljavax/microedition/lcdui/Image;->createImage(IIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v15

    .line 93
    invoke-virtual {v15}, Ljavax/microedition/lcdui/Image;->getLGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v12

    .line 94
    .local v12, "g":Ljavax/microedition/lcdui/Graphics;
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 95
    const/16 v8, 0x20

    move/from16 v4, p2

    .line 94
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v16

    .line 96
    .local v16, "left":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x1

    const/16 v5, 0x1f

    .line 97
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x20

    move/from16 v4, p2

    .line 96
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v19

    .line 98
    .local v19, "right":Ljavax/microedition/lcdui/Image;
    const/4 v5, 0x1

    .line 99
    const/4 v6, 0x1

    const/16 v7, 0x1f

    const/16 v8, 0x1f

    move/from16 v3, p1

    move/from16 v4, p2

    .line 98
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    .line 100
    .local v9, "center":Ljavax/microedition/lcdui/Image;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 101
    const/16 v7, 0x20

    const/4 v8, 0x1

    move/from16 v3, p1

    .line 100
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v20

    .line 102
    .local v20, "up":Ljavax/microedition/lcdui/Image;
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 103
    const/16 v6, 0x1f

    const/16 v7, 0x20

    const/16 v8, 0x20

    move/from16 v3, p1

    .line 102
    invoke-static/range {v2 .. v8}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->drawClipImage(Ljavax/microedition/lcdui/Image;IIIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    .line 104
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v12, v9, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 105
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v12, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 106
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v12, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 108
    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v12, v10, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 109
    invoke-interface {v12}, Ljavax/microedition/lcdui/Graphics;->dispose()V

    .line 110
    sget-object v3, Lorg/loon/framework/android/game/action/avg/MessageDialog;->lazyImages:Ljava/util/Map;

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const/16 v16, 0x0

    .line 115
    const/16 v19, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    const/16 v20, 0x0

    .line 118
    const/4 v10, 0x0

    .end local v2    # "image":Ljavax/microedition/lcdui/Image;
    .end local v9    # "center":Ljavax/microedition/lcdui/Image;
    .end local v10    # "down":Ljavax/microedition/lcdui/Image;
    .end local v12    # "g":Ljavax/microedition/lcdui/Graphics;
    .end local v13    # "k":I
    .end local v16    # "left":Ljavax/microedition/lcdui/Image;
    .end local v17    # "objHeight":I
    .end local v18    # "objWidth":I
    .end local v19    # "right":Ljavax/microedition/lcdui/Image;
    .end local v20    # "up":Ljavax/microedition/lcdui/Image;
    .end local v21    # "x1":I
    .end local v22    # "x2":I
    .end local v23    # "y1":I
    .end local v24    # "y2":I
    :cond_1
    move-object v3, v15

    .line 122
    :goto_0
    return-object v3

    .line 111
    .restart local v10    # "down":Ljavax/microedition/lcdui/Image;
    .restart local v13    # "k":I
    .restart local v17    # "objHeight":I
    .restart local v18    # "objWidth":I
    .restart local v21    # "x1":I
    .restart local v22    # "x2":I
    .restart local v23    # "y1":I
    .restart local v24    # "y2":I
    :catch_0
    move-exception v11

    .line 114
    .local v11, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 115
    .restart local v16    # "left":Ljavax/microedition/lcdui/Image;
    const/16 v19, 0x0

    .line 116
    .restart local v19    # "right":Ljavax/microedition/lcdui/Image;
    const/4 v9, 0x0

    .line 117
    .restart local v9    # "center":Ljavax/microedition/lcdui/Image;
    const/16 v20, 0x0

    .line 118
    .restart local v20    # "up":Ljavax/microedition/lcdui/Image;
    const/4 v10, 0x0

    .line 119
    const/4 v2, 0x0

    .line 112
    .restart local v2    # "image":Ljavax/microedition/lcdui/Image;
    const/4 v3, 0x0

    goto :goto_0

    .line 113
    .end local v2    # "image":Ljavax/microedition/lcdui/Image;
    .end local v9    # "center":Ljavax/microedition/lcdui/Image;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "left":Ljavax/microedition/lcdui/Image;
    .end local v19    # "right":Ljavax/microedition/lcdui/Image;
    .end local v20    # "up":Ljavax/microedition/lcdui/Image;
    :catchall_0
    move-exception v3

    .line 114
    const/16 v16, 0x0

    .line 115
    .restart local v16    # "left":Ljavax/microedition/lcdui/Image;
    const/16 v19, 0x0

    .line 116
    .restart local v19    # "right":Ljavax/microedition/lcdui/Image;
    const/4 v9, 0x0

    .line 117
    .restart local v9    # "center":Ljavax/microedition/lcdui/Image;
    const/16 v20, 0x0

    .line 118
    .restart local v20    # "up":Ljavax/microedition/lcdui/Image;
    const/4 v10, 0x0

    .line 119
    const/4 v2, 0x0

    .line 120
    .restart local v2    # "image":Ljavax/microedition/lcdui/Image;
    throw v3
.end method
