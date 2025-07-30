.class public Lorg/loon/framework/android/game/core/graphics/window/LSelect;
.super Lorg/loon/framework/android/game/core/graphics/LContainer;
.source "LSelect.java"


# instance fields
.field private autoAlpha:F

.field private buoyage:Ljavax/microedition/lcdui/Image;

.field private cursor:Ljavax/microedition/lcdui/Image;

.field private delay:Lorg/loon/framework/android/game/core/timer/LTimer;

.field private doubleSizeFont:I

.field private fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private isAutoAlpha:Z

.field private isSelect:Z

.field private left:I

.field private message:Ljava/lang/String;

.field private messageFont:Ljavax/microedition/lcdui/Font;

.field private messageLeft:I

.field private messageTop:I

.field private nLeft:I

.field private nTop:I

.field private onClick:Z

.field private result:Ljava/lang/String;

.field private selectFlag:I

.field private selectSize:I

.field private selects:[Ljava/lang/String;

.field private sizeFont:I

.field private tmpOffset:I

.field private top:I

.field private type:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 61
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljava/lang/String;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "formImage"    # Ljavax/microedition/lcdui/Image;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "formImage"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;-><init>(Ljavax/microedition/lcdui/Image;IIII)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 4
    .param p1, "formImage"    # Ljavax/microedition/lcdui/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/loon/framework/android/game/core/graphics/LContainer;-><init>(IIII)V

    .line 39
    const-string v0, "Monospaced"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageFont:Ljavax/microedition/lcdui/Font;

    .line 41
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/LColor;->white:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljavax/microedition/lcdui/Image;

    invoke-direct {v0, p4, p5, v3}, Ljavax/microedition/lcdui/Image;-><init>(IIZ)V

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setBackground(Ljavax/microedition/lcdui/Image;)V

    .line 84
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setAlpha(F)V

    .line 88
    :goto_0
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->customRendering:Z

    .line 89
    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    .line 90
    div-int/lit8 v0, p4, 0xa

    neg-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->tmpOffset:I

    .line 91
    new-instance v0, Lorg/loon/framework/android/game/core/timer/LTimer;

    const-wide/16 v1, 0x96

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/timer/LTimer;-><init>(J)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->delay:Lorg/loon/framework/android/game/core/timer/LTimer;

    .line 92
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    .line 93
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isAutoAlpha:Z

    .line 94
    const-string v0, "system/images/creese.png"

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setCursor(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setElastic(Z)V

    .line 96
    invoke-virtual {p0, v3}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setLocked(Z)V

    .line 97
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setLayer(I)V

    .line 98
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setBackground(Ljavax/microedition/lcdui/Image;)V

    goto :goto_0
.end method

.method private static getListToStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 139
    :cond_1
    return-object v1

    .line 135
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 136
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 137
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createCustomUI(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 10
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 176
    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->visible:Z

    if-nez v3, :cond_0

    .line 222
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v1

    .line 181
    .local v1, "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v2

    .line 182
    .local v2, "oldFont":Ljavax/microedition/lcdui/Font;
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 183
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageFont:Ljavax/microedition/lcdui/Font;

    invoke-interface {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 184
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageFont:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v3

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->sizeFont:I

    .line 185
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->sizeFont:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    .line 186
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    if-nez v3, :cond_1

    .line 187
    const/16 v3, 0x14

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    .line 189
    :cond_1
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    add-int/2addr v3, p2

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->sizeFont:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->tmpOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->left:I

    add-int/2addr v3, v4

    .line 190
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    add-int/2addr v3, v4

    .line 189
    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageLeft:I

    .line 192
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->message:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 193
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    add-int/2addr v3, p3

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->top:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageTop:I

    .line 194
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->message:Ljava/lang/String;

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageLeft:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageTop:I

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 198
    :goto_1
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageTop:I

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    .line 199
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 200
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageLeft:I

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->sizeFont:I

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nLeft:I

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 219
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 220
    invoke-interface {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    goto :goto_0

    .line 196
    :cond_3
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->top:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageTop:I

    goto :goto_1

    .line 202
    .restart local v0    # "i":I
    :cond_4
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    add-int/lit8 v3, v3, 0x1e

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    .line 203
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->type:I

    .line 204
    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->type:I

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    if-lez v3, :cond_7

    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    :goto_3
    if-ne v4, v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isSelect:Z

    .line 205
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isSelect:Z

    if-eqz v3, :cond_5

    .line 206
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    invoke-interface {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 207
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nLeft:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    .line 208
    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    div-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v5, v6

    .line 207
    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 209
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 211
    :cond_5
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageLeft:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;II)V

    .line 212
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isSelect:Z

    if-eqz v3, :cond_6

    .line 213
    iget-object v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nLeft:I

    iget v5, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    iget-object v6, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;II)V

    .line 201
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public doClick()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public getBuoyage()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getCursor()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->delay:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/core/timer/LTimer;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFontColor()Lorg/loon/framework/android/game/core/graphics/LColor;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    return-object v0
.end method

.method public getLeftOffset()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->left:I

    return v0
.end method

.method public getMessageFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageFont:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultIndex()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->top:I

    return v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string v0, "Select"

    return-object v0
.end method

.method public isClick()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->onClick:Z

    return v0
.end method

.method public isFlashBuoyage()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isAutoAlpha:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->locked:Z

    return v0
.end method

.method protected processKeyPressed()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getKeyPressed()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doClick()V

    .line 271
    :cond_0
    return-void
.end method

.method protected processTouchClicked()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->result:Ljava/lang/String;

    .line 243
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doClick()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->onClick:Z

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->onClick:Z

    goto :goto_0
.end method

.method protected processTouchDragged()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->processTouchMoved()V

    .line 275
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->locked:Z

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->getContainer()Lorg/loon/framework/android/game/core/graphics/LContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->sendToFront(Lorg/loon/framework/android/game/core/graphics/LComponent;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v0}, Lorg/loon/framework/android/game/core/LInput;->getTouchDX()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchDY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->move(DD)V

    .line 281
    :cond_1
    return-void
.end method

.method protected declared-synchronized processTouchMoved()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->input:Lorg/loon/framework/android/game/core/LInput;

    invoke-interface {v2}, Lorg/loon/framework/android/game/core/LInput;->getTouchY()I

    move-result v0

    .line 254
    .local v0, "touchY":I
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectSize:I

    .line 255
    iget v3, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->nTop:I

    add-int/lit8 v3, v3, 0x1e

    if-nez v0, :cond_0

    move v0, v1

    .end local v0    # "touchY":I
    :cond_0
    sub-int/2addr v3, v0

    iget v4, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 254
    iput v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    .line 256
    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    if-ge v2, v1, :cond_1

    .line 257
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    .line 259
    :cond_1
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I

    iget v2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectSize:I

    if-le v1, v2, :cond_2

    .line 260
    iget v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectSize:I

    iput v1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_2
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setBuoyage(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setBuoyage(Ljavax/microedition/lcdui/Image;)V

    .line 341
    return-void
.end method

.method public setBuoyage(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "buoyage"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 336
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    .line 337
    return-void
.end method

.method public setCursor(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setCursor(Ljavax/microedition/lcdui/Image;)V

    .line 325
    return-void
.end method

.method public setCursor(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "cursor"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    .line 321
    return-void
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "timer"    # J

    .prologue
    .line 121
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->delay:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->setDelay(J)V

    .line 122
    return-void
.end method

.method public setFlashBuoyage(Z)V
    .locals 0
    .param p1, "flashBuoyage"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isAutoAlpha:Z

    .line 349
    return-void
.end method

.method public setFontColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "fontColor"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->fontColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 289
    return-void
.end method

.method public setLeftOffset(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->left:I

    .line 102
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->locked:Z

    .line 305
    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->getListToStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setMessage(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "selects"    # [Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->message:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selects:[Ljava/lang/String;

    .line 153
    array-length v0, p2

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->selectSize:I

    .line 154
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    if-nez v0, :cond_0

    .line 155
    const/16 v0, 0x14

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->doubleSizeFont:I

    .line 157
    :cond_0
    return-void
.end method

.method public setMessage([Ljava/lang/String;)V
    .locals 1
    .param p1, "selects"    # [Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->setMessage(Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setMessageFont(Ljavax/microedition/lcdui/Font;)V
    .locals 0
    .param p1, "messageFont"    # Ljavax/microedition/lcdui/Font;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->messageFont:Ljavax/microedition/lcdui/Font;

    .line 297
    return-void
.end method

.method public setNotBuoyage()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    .line 333
    return-void
.end method

.method public setNotCursor()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->cursor:Ljavax/microedition/lcdui/Image;

    .line 317
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 105
    iput p1, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->top:I

    .line 106
    return-void
.end method

.method public update(J)V
    .locals 2
    .param p1, "elapsedTime"    # J

    .prologue
    .line 160
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->visible:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/loon/framework/android/game/core/graphics/LContainer;->update(J)V

    .line 164
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->isAutoAlpha:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->buoyage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->delay:Lorg/loon/framework/android/game/core/timer/LTimer;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/core/timer/LTimer;->action(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 167
    iget v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    goto :goto_0

    .line 169
    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lorg/loon/framework/android/game/core/graphics/window/LSelect;->autoAlpha:F

    goto :goto_0
.end method

.method protected validateSize()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Lorg/loon/framework/android/game/core/graphics/LContainer;->validateSize()V

    .line 309
    return-void
.end method
