.class public Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;
.super Ljava/lang/Object;
.source "IPrint.java"


# instance fields
.field private alpha:F

.field private creeseIcon:Ljavax/microedition/lcdui/Image;

.field private fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private fontHeight:I

.field private fontSize:I

.field private height:I

.field private iconWidth:I

.field private interceptCount:I

.field private interceptMaxString:I

.field private isEnglish:Z

.field private left:I

.field private leftOffset:I

.field private messageBuffer:Ljava/lang/StringBuffer;

.field private messageCount:I

.field private messageLength:I

.field private messages:Ljava/lang/String;

.field private newLine:Z

.field private next:I

.field private onComplete:Z

.field private showMessages:[C

.field private size:I

.field private tmp_left:I

.field private topOffset:I

.field private vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

.field private visible:Z

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;II)V
    .locals 2
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "vector"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setMessage(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 68
    iput p3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->width:I

    .line 69
    iput p4, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->height:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;II)V
    .locals 1
    .param p1, "vector"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 62
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;-><init>(Ljava/lang/String;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;II)V

    .line 63
    return-void
.end method

.method private drawMessage(Ljavax/microedition/lcdui/Graphics;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 15
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "old"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 132
    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    if-nez v9, :cond_0

    .line 214
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v10, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    monitor-enter v10

    .line 136
    :try_start_0
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    array-length v9, v9

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    .line 137
    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isEnglish:Z

    if-eqz v9, :cond_2

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    :goto_1
    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    .line 139
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v9

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontHeight:I

    .line 140
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->width:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    mul-int/2addr v11, v12

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    .line 141
    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v11, v13

    double-to-int v11, v11

    sub-int/2addr v9, v11

    .line 140
    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    .line 142
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 143
    const/4 v5, 0x0

    .local v5, "index":I
    const/4 v7, 0x0

    .local v7, "offset":I
    const/4 v2, 0x0

    .local v2, "font":I
    const/4 v8, 0x0

    .line 144
    .local v8, "tmp_font":I
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    mul-int/lit8 v3, v9, 0x2

    .line 145
    .local v3, "fontSizeDouble":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    if-lt v4, v9, :cond_3

    .line 210
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next:I

    if-ne v9, v11, :cond_1

    .line 211
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    .line 135
    :cond_1
    monitor-exit v10

    goto :goto_0

    .end local v2    # "font":I
    .end local v3    # "fontSizeDouble":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "offset":I
    .end local v8    # "tmp_font":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 137
    :cond_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v9

    .line 138
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v9

    goto :goto_1

    .line 146
    .restart local v2    # "font":I
    .restart local v3    # "fontSizeDouble":I
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v7    # "offset":I
    .restart local v8    # "tmp_font":I
    :cond_3
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptCount:I

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptMaxString:I

    if-ge v9, v11, :cond_5

    .line 147
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptCount:I

    .line 148
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 145
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 151
    :cond_5
    const/4 v9, 0x0

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptMaxString:I

    .line 152
    const/4 v9, 0x0

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptCount:I

    .line 154
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    const/16 v11, 0x6e

    if-ne v9, v11, :cond_7

    .line 155
    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    if-lez v4, :cond_6

    add-int/lit8 v9, v4, -0x1

    :goto_4
    aget-char v9, v11, v9

    const/16 v11, 0x5c

    if-ne v9, v11, :cond_7

    .line 156
    const/4 v5, 0x0

    .line 157
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 158
    add-int/lit8 v7, v7, 0x1

    .line 159
    goto :goto_3

    .line 155
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 160
    :cond_7
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    const/16 v11, 0xa

    if-ne v9, v11, :cond_8

    .line 161
    const/4 v5, 0x0

    .line 162
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    const/16 v11, 0x3c

    if-ne v9, v11, :cond_b

    .line 166
    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_a

    add-int/lit8 v9, v4, 0x1

    .line 167
    :goto_5
    aget-char v9, v11, v9

    .line 166
    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getColor(C)Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 168
    .local v1, "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    if-eqz v1, :cond_9

    .line 169
    const/4 v9, 0x1

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptMaxString:I

    .line 170
    iput-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 172
    :cond_9
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next()Z

    goto :goto_3

    .end local v1    # "color":Lorg/loon/framework/android/game/core/graphics/LColor;
    :cond_a
    move v9, v4

    .line 167
    goto :goto_5

    .line 174
    :cond_b
    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    if-lez v4, :cond_d

    add-int/lit8 v9, v4, -0x1

    :goto_6
    aget-char v9, v11, v9

    const/16 v11, 0x3c

    if-ne v9, v11, :cond_c

    .line 175
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->getColor(C)Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v9

    if-nez v9, :cond_4

    .line 177
    :cond_c
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    const/16 v11, 0x2f

    if-ne v9, v11, :cond_f

    .line 178
    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    add-int/lit8 v9, v9, -0x1

    if-ge v4, v9, :cond_e

    add-int/lit8 v9, v4, 0x1

    :goto_7
    aget-char v9, v11, v9

    const/16 v11, 0x3e

    if-ne v9, v11, :cond_4

    .line 179
    const/4 v9, 0x1

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptMaxString:I

    .line 180
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto/16 :goto_3

    :cond_d
    move v9, v4

    .line 174
    goto :goto_6

    :cond_e
    move v9, v4

    .line 178
    goto :goto_7

    .line 183
    :cond_f
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    if-le v5, v9, :cond_12

    .line 184
    const/4 v5, 0x0

    .line 185
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 186
    add-int/lit8 v7, v7, 0x1

    .line 187
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->newLine:Z

    .line 191
    :cond_10
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "mes":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v9

    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v11, v11, v4

    invoke-virtual {v9, v11}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v8

    .line 193
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 194
    move v2, v8

    .line 198
    :goto_8
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    add-int/2addr v9, v2

    iput v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 199
    iget v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    add-int/lit8 v9, v9, -0x1

    if-eq v4, v9, :cond_14

    .line 200
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v9}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v9

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    add-int/2addr v9, v11

    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->leftOffset:I

    add-int/2addr v9, v11

    .line 201
    iget v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontHeight:I

    mul-int/2addr v11, v7

    iget-object v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v12}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v3

    .line 202
    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->topOffset:I

    .line 201
    add-int/2addr v11, v12

    .line 200
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v9, v11}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 208
    :cond_11
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 188
    .end local v6    # "mes":Ljava/lang/String;
    :cond_12
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    aget-char v9, v9, v4

    const/16 v11, 0x5c

    if-ne v9, v11, :cond_10

    goto/16 :goto_3

    .line 196
    .restart local v6    # "mes":Ljava/lang/String;
    :cond_13
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    goto :goto_8

    .line 203
    :cond_14
    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->newLine:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    if-nez v9, :cond_11

    .line 204
    iget-object v9, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->creeseIcon:Ljavax/microedition/lcdui/Image;

    iget-object v11, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v11

    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    add-int/2addr v11, v12

    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->leftOffset:I

    add-int/2addr v11, v12

    .line 205
    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->iconWidth:I

    add-int/2addr v11, v12

    iget v12, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontHeight:I

    mul-int/2addr v12, v7

    iget-object v13, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->vector:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v13}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v13

    add-int/2addr v12, v13

    .line 206
    iget v13, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    add-int/2addr v12, v13

    iget v13, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->topOffset:I

    add-int/2addr v12, v13

    .line 204
    move-object/from16 v0, p1

    invoke-interface {v0, v9, v11, v12}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9
.end method

.method private getColor(C)Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1
    .param p1, "flagName"    # C

    .prologue
    .line 105
    const/16 v0, 0x72

    if-eq v0, p1, :cond_0

    const/16 v0, 0x52

    if-ne v0, p1, :cond_1

    .line 106
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->red:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 123
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const/16 v0, 0x62

    if-eq v0, p1, :cond_2

    const/16 v0, 0x42

    if-ne v0, p1, :cond_3

    .line 109
    :cond_2
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->black:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_0

    .line 111
    :cond_3
    const/16 v0, 0x6c

    if-eq v0, p1, :cond_4

    const/16 v0, 0x4c

    if-ne v0, p1, :cond_5

    .line 112
    :cond_4
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->blue:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_0

    .line 114
    :cond_5
    const/16 v0, 0x67

    if-eq v0, p1, :cond_6

    const/16 v0, 0x47

    if-ne v0, p1, :cond_7

    .line 115
    :cond_6
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->green:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_0

    .line 117
    :cond_7
    const/16 v0, 0x6f

    if-eq v0, p1, :cond_8

    const/16 v0, 0x4f

    if-ne v0, p1, :cond_9

    .line 118
    :cond_8
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->orange:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_0

    .line 120
    :cond_9
    const/16 v0, 0x79

    if-eq v0, p1, :cond_a

    const/16 v0, 0x59

    if-ne v0, p1, :cond_b

    .line 121
    :cond_a
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->yellow:Lorg/loon/framework/android/game/core/graphics/LColor;

    goto :goto_0

    .line 123
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public complete()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    monitor-enter v1

    .line 228
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    .line 229
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messages:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    .line 230
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next:I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messages:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    .line 232
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    array-length v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    .line 227
    monitor-exit v1

    .line 234
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 128
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->draw(Ljavax/microedition/lcdui/Graphics;Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 129
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 1
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "old"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getAlpha()F

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->alpha:F

    .line 221
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 222
    invoke-direct {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->drawMessage(Ljavax/microedition/lcdui/Graphics;Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 223
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->alpha:F

    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    goto :goto_0
.end method

.method public getCreeseIcon()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->creeseIcon:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->height:I

    return v0
.end method

.method public getLeftOffset()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->leftOffset:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messages:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->topOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->width:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    return v0
.end method

.method public isEnglish()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isEnglish:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    return v0
.end method

.method public next()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 241
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    monitor-enter v2

    .line 242
    :try_start_0
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    if-nez v3, :cond_2

    .line 243
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next:I

    if-ne v3, v4, :cond_0

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    .line 245
    monitor-exit v2

    .line 259
    :goto_0
    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 249
    iget-object v4, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 248
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messages:Ljava/lang/String;

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    .line 254
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    array-length v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    .line 255
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    .line 259
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 257
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCreeseIcon(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "creeseIcon"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 268
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->creeseIcon:Ljavax/microedition/lcdui/Image;

    .line 269
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->iconWidth:I

    goto :goto_0
.end method

.method public setEnglish(Z)V
    .locals 0
    .param p1, "isEnglish"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->isEnglish:Z

    .line 321
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 288
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->height:I

    .line 289
    return-void
.end method

.method public setLeftOffset(I)V
    .locals 0
    .param p1, "leftOffset"    # I

    .prologue
    .line 304
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->leftOffset:I

    .line 305
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->setMessage(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public setMessage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    .line 78
    new-array v0, v3, [C

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->showMessages:[C

    .line 79
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptMaxString:I

    .line 80
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next:I

    .line 81
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    .line 82
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->interceptCount:I

    .line 83
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->size:I

    .line 84
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->tmp_left:I

    .line 85
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->left:I

    .line 86
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontSize:I

    .line 87
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->fontHeight:I

    .line 88
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messages:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->next:I

    .line 90
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->onComplete:Z

    .line 91
    iput-boolean v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->newLine:Z

    .line 92
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageCount:I

    .line 93
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->complete()V

    .line 97
    :cond_0
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    .line 98
    return-void
.end method

.method public setMessageLength(I)V
    .locals 0
    .param p1, "messageLength"    # I

    .prologue
    .line 280
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->messageLength:I

    .line 281
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0
    .param p1, "topOffset"    # I

    .prologue
    .line 312
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->topOffset:I

    .line 313
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->visible:Z

    .line 329
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 296
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/achieve/IPrint;->width:I

    .line 297
    return-void
.end method
