.class public abstract Lorg/loon/framework/android/game/core/LObject;
.super Ljava/lang/Object;
.source "LObject.java"


# instance fields
.field protected layer:I

.field protected location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    iput-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 28
    return-void
.end method

.method public static bottomOn(Lorg/loon/framework/android/game/core/LObject;II)V
    .locals 4
    .param p0, "object"    # Lorg/loon/framework/android/game/core/LObject;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 177
    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 178
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-double v2, v2

    .line 177
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 179
    return-void
.end method

.method public static centerOn(Lorg/loon/framework/android/game/core/LObject;II)V
    .locals 4
    .param p0, "object"    # Lorg/loon/framework/android/game/core/LObject;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 159
    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    div-int/lit8 v2, p2, 0x2

    .line 160
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 159
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 161
    return-void
.end method

.method public static leftOn(Lorg/loon/framework/android/game/core/LObject;II)V
    .locals 4
    .param p0, "object"    # Lorg/loon/framework/android/game/core/LObject;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 169
    return-void
.end method

.method public static rightOn(Lorg/loon/framework/android/game/core/LObject;II)V
    .locals 4
    .param p0, "object"    # Lorg/loon/framework/android/game/core/LObject;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    sub-int v0, p1, v0

    int-to-double v0, v0

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v3

    .line 173
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 172
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 174
    return-void
.end method

.method public static topOn(Lorg/loon/framework/android/game/core/LObject;II)V
    .locals 4
    .param p0, "object"    # Lorg/loon/framework/android/game/core/LObject;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 164
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/loon/framework/android/game/core/LObject;->setLocation(DD)V

    .line 165
    return-void
.end method


# virtual methods
.method public bottomOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->bottomOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 199
    return-void
.end method

.method public centerOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->centerOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 183
    return-void
.end method

.method public abstract createUI(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract getHeight()I
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/loon/framework/android/game/core/LObject;->layer:I

    return v0
.end method

.method public getLocation()Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public leftOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->leftOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 191
    return-void
.end method

.method public move(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 111
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move(DD)V

    .line 112
    return-void
.end method

.method public move(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 1
    .param p1, "vector2D"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V

    .line 108
    return-void
.end method

.method public move_45D_down()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_45D_down(I)V

    .line 68
    return-void
.end method

.method public move_45D_down(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 72
    return-void
.end method

.method public move_45D_left()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_45D_left(I)V

    .line 52
    return-void
.end method

.method public move_45D_left(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 56
    return-void
.end method

.method public move_45D_right()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_45D_right(I)V

    .line 60
    return-void
.end method

.method public move_45D_right(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 64
    return-void
.end method

.method public move_45D_up()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_45D_up(I)V

    .line 44
    return-void
.end method

.method public move_45D_up(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 48
    return-void
.end method

.method public move_down()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_down(I)V

    .line 100
    return-void
.end method

.method public move_down(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 104
    return-void
.end method

.method public move_left()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_left(I)V

    .line 84
    return-void
.end method

.method public move_left(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 88
    return-void
.end method

.method public move_right()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_right(I)V

    .line 92
    return-void
.end method

.method public move_right(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 96
    return-void
.end method

.method public move_up()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/core/LObject;->move_up(I)V

    .line 76
    return-void
.end method

.method public move_up(I)V
    .locals 2
    .param p1, "multiples"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->move_multiples(II)V

    .line 80
    return-void
.end method

.method public rightOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->rightOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 195
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/loon/framework/android/game/core/LObject;->layer:I

    .line 40
    return-void
.end method

.method public setLocation(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 115
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setLocation(DD)V

    .line 116
    return-void
.end method

.method public setLocation(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)V
    .locals 0
    .param p1, "location"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 156
    return-void
.end method

.method public setX(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 139
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setX(D)V

    .line 140
    return-void
.end method

.method public setX(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Integer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setX(D)V

    .line 136
    return-void
.end method

.method public setY(D)V
    .locals 1
    .param p1, "y"    # D

    .prologue
    .line 147
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0, p1, p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setY(D)V

    .line 148
    return-void
.end method

.method public setY(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "y"    # Ljava/lang/Integer;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->setY(D)V

    .line 144
    return-void
.end method

.method public topOn(Lorg/loon/framework/android/game/core/LObject;)V
    .locals 2
    .param p1, "object"    # Lorg/loon/framework/android/game/core/LObject;

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/LObject;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/loon/framework/android/game/core/LObject;->topOn(Lorg/loon/framework/android/game/core/LObject;II)V

    .line 187
    return-void
.end method

.method public abstract update(J)V
.end method

.method public x()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getX()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public y()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/loon/framework/android/game/core/LObject;->location:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->getY()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
