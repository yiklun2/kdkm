.class public Lorg/loon/framework/android/game/action/sprite/WaitAnimation;
.super Ljava/lang/Object;
.source "WaitAnimation.java"


# static fields
.field private static final defaultBlackColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private static final defaultWhiteColor:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private static final sx:D = 1.0

.field private static final sy:D = 1.0


# instance fields
.field private color:Lorg/loon/framework/android/game/core/graphics/LColor;

.field private isRunning:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xf0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 36
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v1, v1, v1}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(FFF)V

    sput-object v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->defaultBlackColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 38
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-direct {v0, v2, v2, v2}, Lorg/loon/framework/android/game/core/graphics/LColor;-><init>(III)V

    sput-object v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->defaultWhiteColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v1, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->defaultBlackColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 46
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->isRunning:Z

    .line 51
    div-int/lit8 v10, p1, 0x8

    .local v10, "r1":I
    div-int/lit8 v11, p2, 0x8

    .line 52
    .local v11, "r2":I
    if-ge v10, v11, :cond_0

    .end local v10    # "r1":I
    :goto_0
    div-int/lit8 v1, v10, 0x2

    int-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    .line 53
    new-instance v12, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v13, v1, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 54
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x1

    .line 55
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x2

    .line 56
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x3

    .line 57
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x4

    .line 58
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x5

    .line 59
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x6

    .line 60
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    const/4 v14, 0x7

    .line 61
    new-instance v1, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    mul-double/2addr v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/loon/framework/android/game/core/graphics/geom/Ellipse2D$Double;-><init>(DDDD)V

    aput-object v1, v13, v14

    .line 53
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->list:Ljava/util/List;

    .line 62
    return-void

    .restart local v10    # "r1":I
    :cond_0
    move v10, v11

    .line 52
    goto/16 :goto_0
.end method


# virtual methods
.method public black()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->defaultBlackColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 70
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 9
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 91
    invoke-interface {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()Lorg/loon/framework/android/game/core/graphics/LColor;

    move-result-object v4

    .line 92
    .local v4, "oldColor":Lorg/loon/framework/android/game/core/graphics/LColor;
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V

    .line 93
    iget-object v6, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "alpha":F
    div-int/lit8 v6, p4, 0x2

    add-int/2addr v6, p2

    iget-wide v7, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x4

    sub-int v2, v6, v7

    .local v2, "nx":I
    div-int/lit8 v6, p5, 0x2

    add-int/2addr v6, p3

    iget-wide v7, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->r:D

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x4

    sub-int v3, v6, v7

    .line 96
    .local v3, "ny":I
    invoke-interface {p1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 97
    iget-object v6, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setAntiAlias(Z)V

    .line 104
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {p1, v6}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 105
    neg-int v6, v2

    neg-int v7, v3

    invoke-interface {p1, v6, v7}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 106
    invoke-interface {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V

    .line 107
    return-void

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/loon/framework/android/game/core/graphics/geom/Shape;

    .line 99
    .local v5, "s":Lorg/loon/framework/android/game/core/graphics/geom/Shape;
    iget-boolean v6, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->isRunning:Z

    if-eqz v6, :cond_1

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v6

    .line 100
    :goto_1
    invoke-interface {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setAlpha(F)V

    .line 101
    invoke-interface {p1, v5}, Ljavax/microedition/lcdui/Graphics;->fill(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V

    goto :goto_0

    .line 99
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->isRunning:Z

    return v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->isRunning:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->list:Ljava/util/List;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
    .locals 0
    .param p1, "color"    # Lorg/loon/framework/android/game/core/graphics/LColor;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 66
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->isRunning:Z

    .line 88
    return-void
.end method

.method public white()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->defaultWhiteColor:Lorg/loon/framework/android/game/core/graphics/LColor;

    iput-object v0, p0, Lorg/loon/framework/android/game/action/sprite/WaitAnimation;->color:Lorg/loon/framework/android/game/core/graphics/LColor;

    .line 74
    return-void
.end method
