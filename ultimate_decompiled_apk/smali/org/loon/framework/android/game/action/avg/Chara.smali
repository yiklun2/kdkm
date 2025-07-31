.class public Lorg/loon/framework/android/game/action/avg/Chara;
.super Ljava/lang/Object;
.source "Chara.java"


# instance fields
.field private characterCG:Ljavax/microedition/lcdui/Image;

.field private direction:I

.field private height:I

.field private isMove:Z

.field private maxWidth:I

.field private moveSleep:I

.field private moveX:I

.field private moving:Z

.field private old_alpha:F

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I

    .prologue
    .line 86
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadNotCacheImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/action/avg/Chara;-><init>(Ljavax/microedition/lcdui/Image;III)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;III)V
    .locals 7
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/loon/framework/android/game/action/avg/Chara;-><init>(Ljavax/microedition/lcdui/Image;IIIII)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IIIII)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "w"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveSleep:I

    .line 65
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->isMove:Z

    .line 67
    iput p4, p0, Lorg/loon/framework/android/game/action/avg/Chara;->width:I

    .line 68
    iput p5, p0, Lorg/loon/framework/android/game/action/avg/Chara;->height:I

    .line 69
    iput p6, p0, Lorg/loon/framework/android/game/action/avg/Chara;->maxWidth:I

    .line 70
    iput p2, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    .line 71
    iput p3, p0, Lorg/loon/framework/android/game/action/avg/Chara;->y:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 73
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/Chara;->getDirection()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->direction:I

    .line 74
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->direction:I

    if-nez v0, :cond_0

    .line 75
    div-int/lit8 v0, p4, 0x2

    neg-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput p6, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    goto :goto_0
.end method

.method private getDirection()I
    .locals 2

    .prologue
    .line 101
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->maxWidth:I

    div-int/lit8 v0, v1, 0x2

    .line 102
    .local v0, "offsetX":I
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    if-ge v1, v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->dispose()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    .line 94
    :cond_0
    return-void
.end method

.method public declared-synchronized draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    iget v2, p0, Lorg/loon/framework/android/game/action/avg/Chara;->y:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/Chara;->flush()V

    .line 98
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->old_alpha:F

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    .line 116
    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    .line 117
    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->y:I

    .line 118
    return-void
.end method

.method public getCharacterCG()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->height:I

    return v0
.end method

.method public getMaxNext()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    return v0
.end method

.method public getMoveSleep()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveSleep:I

    return v0
.end method

.method public getMoveX()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    return v0
.end method

.method public getNext()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    return v0
.end method

.method public getNextAlpha()F
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 121
    const/high16 v2, 0x3f800000    # 1.0f

    .line 122
    .local v2, "value":F
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/Chara;->getNext()I

    move-result v3

    int-to-float v1, v3

    .line 123
    .local v1, "start":F
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/Chara;->getMaxNext()I

    move-result v3

    int-to-float v0, v3

    .line 124
    .local v0, "goal":F
    cmpg-float v3, v1, v4

    if-gez v3, :cond_0

    .line 125
    iget v3, p0, Lorg/loon/framework/android/game/action/avg/Chara;->maxWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 127
    :cond_0
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    .line 128
    iget v3, p0, Lorg/loon/framework/android/game/action/avg/Chara;->maxWidth:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 130
    :cond_1
    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    .line 131
    add-float/2addr v0, v1

    .line 133
    :cond_2
    div-float v3, v1, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 134
    float-to-double v3, v2

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 135
    const v2, 0x3dcccccd    # 0.1f

    .line 137
    :cond_3
    float-to-double v3, v2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 138
    const/high16 v2, 0x3f800000    # 1.0f

    .line 140
    :cond_4
    iget v3, p0, Lorg/loon/framework/android/game/action/avg/Chara;->old_alpha:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    .line 141
    iput v2, p0, Lorg/loon/framework/android/game/action/avg/Chara;->old_alpha:F

    .line 145
    :goto_0
    return v2

    .line 143
    :cond_5
    iget v2, p0, Lorg/loon/framework/android/game/action/avg/Chara;->old_alpha:F

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->y:I

    return v0
.end method

.method public declared-synchronized next()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moving:Z

    .line 158
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    iget v4, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    if-eq v1, v4, :cond_0

    .line 159
    const/4 v0, 0x0

    .local v0, "sleep":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveSleep:I

    if-lt v0, v1, :cond_1

    .line 183
    .end local v0    # "sleep":I
    :cond_0
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 160
    .restart local v0    # "sleep":I
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->direction:I

    if-nez v1, :cond_3

    .line 161
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    iget v4, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    if-le v1, v4, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moving:Z

    .line 165
    :goto_2
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moving:Z

    if-eqz v1, :cond_5

    .line 166
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->direction:I

    packed-switch v1, :pswitch_data_0

    .line 174
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 159
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 161
    goto :goto_1

    .line 163
    :cond_3
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    iget v4, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    if-ge v1, v4, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moving:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 157
    .end local v0    # "sleep":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "sleep":I
    :cond_4
    move v1, v3

    .line 163
    goto :goto_4

    .line 168
    :pswitch_0
    :try_start_2
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    goto :goto_3

    .line 171
    :pswitch_1
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    goto :goto_3

    .line 178
    :cond_5
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 179
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->old_alpha:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCharacterCG(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "characterCG"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->characterCG:Ljavax/microedition/lcdui/Image;

    .line 196
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 233
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->height:I

    .line 234
    return-void
.end method

.method public setMove(Z)V
    .locals 0
    .param p1, "move"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->isMove:Z

    .line 111
    return-void
.end method

.method public setMoveSleep(I)V
    .locals 0
    .param p1, "moveSleep"    # I

    .prologue
    .line 249
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveSleep:I

    .line 250
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 241
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->width:I

    .line 242
    return-void
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 203
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->isMove:Z

    if-eqz v1, :cond_1

    .line 204
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    sub-int v0, p1, v1

    .line 205
    .local v0, "move":I
    if-gez v0, :cond_0

    .line 206
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 207
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    .line 208
    const/4 v1, 0x1

    iput v1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->direction:I

    .line 218
    .end local v0    # "move":I
    :goto_0
    return-void

    .line 210
    .restart local v0    # "move":I
    :cond_0
    iput v0, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 211
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    goto :goto_0

    .line 214
    .end local v0    # "move":I
    :cond_1
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->moveX:I

    .line 215
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->x:I

    goto :goto_0
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 225
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/Chara;->y:I

    .line 226
    return-void
.end method
