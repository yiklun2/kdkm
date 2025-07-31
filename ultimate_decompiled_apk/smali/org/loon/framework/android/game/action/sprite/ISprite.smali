.class public interface abstract Lorg/loon/framework/android/game/action/sprite/ISprite;
.super Ljava/lang/Object;
.source "ISprite.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_FADE_IN:I = 0x0

.field public static final TYPE_FADE_OUT:I = 0x1


# virtual methods
.method public abstract createUI(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCollisionBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayer()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setLayer(I)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract update(J)V
.end method

.method public abstract x()I
.end method

.method public abstract y()I
.end method
