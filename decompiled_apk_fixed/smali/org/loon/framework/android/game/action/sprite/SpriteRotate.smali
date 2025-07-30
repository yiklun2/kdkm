.class public Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
.super Ljava/lang/Object;
.source "SpriteRotate.java"


# instance fields
.field private bufferImage:Landroid/graphics/Bitmap;

.field private height:I

.field private newAngle:I

.field private oldAngle:I

.field private showImage:Landroid/graphics/Bitmap;

.field public updateImage:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIF)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "angle"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->set(Landroid/graphics/Bitmap;IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "angle"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;Z)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->set(Landroid/graphics/Bitmap;IIF)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/loon/framework/android/game/action/sprite/SpriteImage;IIF)V
    .locals 1
    .param p1, "img"    # Lorg/loon/framework/android/game/action/sprite/SpriteImage;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "angle"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->set(Landroid/graphics/Bitmap;IIF)V

    .line 40
    return-void
.end method


# virtual methods
.method public finalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    int-to-float v0, v0

    return v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 72
    iget-boolean v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->updateImage:Z

    if-eqz v1, :cond_4

    .line 73
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->oldAngle:I

    iget v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    if-eq v1, v2, :cond_2

    .line 74
    iget v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->oldAngle:I

    .line 75
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 76
    iget-object v2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    .line 78
    .local v0, "tmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    int-to-float v5, v5

    .line 78
    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->set(Landroid/graphics/Bitmap;IIF)V

    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    .line 82
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    int-to-float v3, v3

    .line 81
    invoke-static {v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    const/4 v0, 0x0

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    monitor-exit v2

    .line 102
    .end local v0    # "tmp":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 84
    .restart local v0    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    .line 85
    iget v3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    int-to-float v3, v3

    .line 84
    invoke-static {v1, v3}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 76
    .end local v0    # "tmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_2
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 96
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 98
    :cond_3
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 102
    :cond_4
    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->width:I

    return v0
.end method

.method public makePixels()[I
    .locals 2

    .prologue
    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->width:I

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->height:I

    .line 210
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getPixels(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    return-object v1
.end method

.method public makeSpritePixels()[I
    .locals 12

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 124
    iget v7, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    .line 125
    .local v7, "angle":I
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 126
    .local v3, "width":I
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 128
    .local v4, "height":I
    move v9, v3

    .line 129
    .local v9, "dW":I
    move v8, v4

    .line 131
    .local v8, "dH":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v10, 0x0

    .line 135
    .local v10, "newBitmap":Landroid/graphics/Bitmap;
    sparse-switch v7, :sswitch_data_0

    .line 188
    :goto_0
    if-eqz v10, :cond_3

    .line 189
    :try_start_0
    iput v9, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->width:I

    .line 190
    iput v8, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->height:I

    .line 191
    invoke-static {v10}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getPixels(Landroid/graphics/Bitmap;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 197
    .local v11, "pixels":[I
    if-eqz v10, :cond_0

    .line 198
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    const/4 v10, 0x0

    .line 202
    .end local v11    # "pixels":[I
    :cond_0
    :goto_1
    return-object v11

    .line 137
    :sswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 138
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 140
    move v9, v4

    .line 141
    move v8, v3

    .line 142
    goto :goto_0

    .line 144
    :sswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 145
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 147
    goto :goto_0

    .line 149
    :sswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 150
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 152
    move v9, v4

    .line 153
    move v8, v3

    .line 154
    goto :goto_0

    .line 156
    :sswitch_3
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 157
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 159
    goto :goto_0

    .line 162
    :sswitch_4
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 163
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 164
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 166
    move v9, v4

    .line 167
    move v8, v3

    .line 168
    goto :goto_0

    .line 171
    :sswitch_5
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 172
    const/high16 v0, -0x3ccc0000    # -180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 173
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 175
    goto :goto_0

    .line 178
    :sswitch_6
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 179
    const/high16 v0, -0x3c790000    # -270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 180
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 182
    move v9, v4

    .line 183
    move v8, v3

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    if-eqz v10, :cond_1

    .line 198
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    const/4 v10, 0x0

    .line 202
    :cond_1
    :goto_2
    const/4 v11, 0x0

    goto :goto_1

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    if-eqz v10, :cond_2

    .line 198
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    const/4 v10, 0x0

    .line 201
    :cond_2
    throw v0

    .line 197
    :cond_3
    if-eqz v10, :cond_1

    .line 198
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    const/4 v10, 0x0

    goto :goto_2

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        -0x168 -> :sswitch_3
        -0x10e -> :sswitch_6
        -0xb4 -> :sswitch_5
        -0x5a -> :sswitch_4
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public set(Landroid/graphics/Bitmap;IIF)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "angle"    # F

    .prologue
    .line 52
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p4, v0

    if-gtz v0, :cond_0

    const/high16 v0, -0x3c4c0000    # -360.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 53
    :cond_0
    const/4 p4, 0x0

    .line 55
    :cond_1
    iput p2, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->width:I

    .line 56
    iput p3, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->height:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->updateImage:Z

    .line 58
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->bufferImage:Landroid/graphics/Bitmap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->showImage:Landroid/graphics/Bitmap;

    .line 60
    float-to-int v0, p4

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    .line 61
    return-void
.end method

.method public setAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 114
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 115
    const/high16 p1, 0x43b40000    # 360.0f

    .line 119
    :cond_0
    :goto_0
    float-to-int v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->newAngle:I

    .line 120
    return-void

    .line 116
    :cond_1
    const/high16 v0, -0x3c4c0000    # -360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 117
    const/high16 p1, -0x3c4c0000    # -360.0f

    goto :goto_0
.end method
