.class Lcom/jarworld/rpg/sanguocollege/Cover;
.super Ljava/lang/Object;
.source "Cover.java"


# static fields
.field public static coverImg:[Ljavax/microedition/lcdui/Image;

.field public static coverImgNum:[S

.field public static floorImg:Ljavax/microedition/lcdui/Image;

.field public static frame:[[[S

.field public static pic:[[S


# instance fields
.field cellIndex:I

.field drawX:I

.field drawY:I

.field frameIndex:I

.field frameOffsetX:I

.field frameOffsetY:I

.field index:I

.field picHeight:I

.field picIndex:I

.field picOffsetX:I

.field picOffsetY:I

.field picWidth:I

.field realHeight:I

.field realWidth:I

.field realX:I

.field realY:I

.field turnType:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(SII)V
    .locals 0
    .param p1, "index"    # S
    .param p2, "y"    # I
    .param p3, "x"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    .line 21
    iput p2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->y:I

    .line 22
    iput p3, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->x:I

    .line 23
    return-void
.end method


# virtual methods
.method public drawCoverImage()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 42
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-short v1, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    invoke-interface {v0, v12, v12, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    .line 43
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    aget-object v0, v0, v1

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-lt v11, v0, :cond_0

    .line 65
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    aget-object v1, v1, v2

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    .line 66
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    aget-object v0, v0, v1

    mul-int/lit8 v1, v11, 0x3

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    .line 45
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    aget-object v0, v0, v1

    mul-int/lit8 v1, v11, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameOffsetX:I

    .line 46
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->frame:[[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameIndex:I

    aget-object v0, v0, v1

    mul-int/lit8 v1, v11, 0x3

    add-int/lit8 v1, v1, 0x2

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameOffsetY:I

    .line 47
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v0, v0, v1

    aget-short v0, v0, v12

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picIndex:I

    .line 48
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picOffsetX:I

    .line 49
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picOffsetY:I

    .line 50
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picWidth:I

    .line 51
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-short v0, v0, v1

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picHeight:I

    .line 53
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->x:I

    mul-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameOffsetX:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawX:I

    .line 54
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->y:I

    mul-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->frameOffsetY:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawY:I

    .line 55
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawX:I

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawX:I

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_W:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 56
    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawY:I

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawY:I

    sget v1, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v1, v1

    sget-short v2, Lcom/jarworld/rpg/sanguocollege/GC;->SCR_H:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 58
    :try_start_0
    sget-object v0, Lcom/jarworld/rpg/sanguocollege/GameFrameBase;->s_gph:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImg:[Ljavax/microedition/lcdui/Image;

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picOffsetX:I

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picOffsetY:I

    iget v4, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picWidth:I

    iget v5, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picHeight:I

    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v6, v6, v7

    array-length v6, v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    move v6, v12

    :goto_1
    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawX:I

    sget v8, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenX:F

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->drawY:I

    sget v9, Lcom/jarworld/rpg/sanguocollege/LeadingActor;->screenY:F

    float-to-int v9, v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    .line 43
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 58
    :cond_2
    sget-object v6, Lcom/jarworld/rpg/sanguocollege/Cover;->pic:[[S

    iget v7, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->cellIndex:I

    aget-object v6, v6, v7

    const/4 v7, 0x5

    aget-short v6, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v10

    .line 60
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/jarworld/rpg/sanguocollege/Cover;->coverImgNum:[S

    iget v3, p0, Lcom/jarworld/rpg/sanguocollege/Cover;->picIndex:I

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " imageSize is outof range!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method
