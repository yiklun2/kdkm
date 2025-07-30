.class public interface abstract Ljavax/microedition/lcdui/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/graphics/Trans;


# static fields
.field public static final ANGLE_270:D = 4.71238898038469

.field public static final ANGLE_90:D = 1.5707963267948966

.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final VCENTER:I = 0x2


# virtual methods
.method public abstract clearRect(IIII)V
.end method

.method public abstract clearScreen(IIII)V
.end method

.method public abstract clip(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
.end method

.method public abstract clipPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
.end method

.method public abstract clipPolygon([I[II)V
.end method

.method public abstract clipRect(IIII)V
.end method

.method public abstract copyArea(IIIIII)V
.end method

.method public abstract copyArea(IIIIIII)V
.end method

.method public abstract create()Ljavax/microedition/lcdui/Graphics;
.end method

.method public abstract create(IIII)Ljavax/microedition/lcdui/Graphics;
.end method

.method public abstract dispose()V
.end method

.method public abstract draw(Landroid/graphics/Path;)V
.end method

.method public abstract draw(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
.end method

.method public abstract draw3DRect(IIIIZ)V
.end method

.method public abstract draw3DRect(Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;Lorg/loon/framework/android/game/core/graphics/LColor;Z)V
.end method

.method public abstract draw3DString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract drawArc(IIIIII)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;II)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;III)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;IIII)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;IIIIIIII)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract drawBytes([BIIII)V
.end method

.method public abstract drawCenterRoundedString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract drawCenterShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract drawCenterShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V
.end method

.method public abstract drawCenterString(Ljava/lang/String;II)V
.end method

.method public abstract drawChar(CII)V
.end method

.method public abstract drawChars([CIIII)V
.end method

.method public abstract drawClear()V
.end method

.method public abstract drawFlipBitmap(Landroid/graphics/Bitmap;IIZ)V
.end method

.method public abstract drawFlipImage(Ljavax/microedition/lcdui/Image;IIZ)V
.end method

.method public abstract drawImage(Ljava/lang/String;II)V
.end method

.method public abstract drawImage(Ljava/lang/String;IIII)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;II)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;III)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;IIII)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;IIIIIIII)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;Landroid/graphics/Matrix;)V
.end method

.method public abstract drawImage(Ljavax/microedition/lcdui/Image;Landroid/graphics/Matrix;Z)V
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V
.end method

.method public abstract drawMirrorImage(Ljavax/microedition/lcdui/Image;IIZ)V
.end method

.method public abstract drawNotCacheMirrorBitmap(Landroid/graphics/Bitmap;IIZ)V
.end method

.method public abstract drawNotCacheMirrorImage(Ljavax/microedition/lcdui/Image;IIZ)V
.end method

.method public abstract drawOval(IIII)V
.end method

.method public abstract drawPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
.end method

.method public abstract drawPolygon([I[II)V
.end method

.method public abstract drawPolyline([I[II)V
.end method

.method public abstract drawRGB([IIIIIIIZ)V
.end method

.method public abstract drawRTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
.end method

.method public abstract drawRect(IIII)V
.end method

.method public abstract drawRegion(Landroid/graphics/Bitmap;IIIIIIII)V
.end method

.method public abstract drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
.end method

.method public abstract drawReverseBitmap(Landroid/graphics/Bitmap;IIZ)V
.end method

.method public abstract drawReverseImage(Ljavax/microedition/lcdui/Image;IIZ)V
.end method

.method public abstract drawRoundRect(IIIIII)V
.end method

.method public abstract drawShadeString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;I)V
.end method

.method public abstract drawSixStart(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
.end method

.method public abstract drawSize(Landroid/graphics/Bitmap;IIII)V
.end method

.method public abstract drawSize(Ljavax/microedition/lcdui/Image;IIII)V
.end method

.method public abstract drawString(Ljava/lang/String;FF)V
.end method

.method public abstract drawString(Ljava/lang/String;II)V
.end method

.method public abstract drawString(Ljava/lang/String;III)V
.end method

.method public abstract drawStyleString(Ljava/lang/String;IIII)V
.end method

.method public abstract drawStyleString(Ljava/lang/String;IILorg/loon/framework/android/game/core/graphics/LColor;Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract drawSubString(Ljava/lang/String;IIIII)V
.end method

.method public abstract drawSubstring(Ljava/lang/String;IIIII)V
.end method

.method public abstract drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
.end method

.method public abstract drawTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
.end method

.method public abstract drawTriangle(Lorg/loon/framework/android/game/core/graphics/LColor;III)V
.end method

.method public abstract drawTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
.end method

.method public abstract drawTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
.end method

.method public abstract fill(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
.end method

.method public abstract fill3DRect(IIIIZ)V
.end method

.method public abstract fillAlphaRect(IIIII)V
.end method

.method public abstract fillAlphaRect(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract fillArc(IIIIII)V
.end method

.method public abstract fillOval(IIII)V
.end method

.method public abstract fillPolygon(Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V
.end method

.method public abstract fillPolygon([I[II)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract fillRoundRect(IIIIII)V
.end method

.method public abstract fillTriangle(IIIIII)V
.end method

.method public abstract fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
.end method

.method public abstract fillTriangle(Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
.end method

.method public abstract fillTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;)V
.end method

.method public abstract fillTriangle([Lorg/loon/framework/android/game/action/map/shapes/Triangle;II)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getAlphaValue()F
.end method

.method public abstract getBackground()Lorg/loon/framework/android/game/core/graphics/LColor;
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getBlueComponent()I
.end method

.method public abstract getCanvas()Landroid/graphics/Canvas;
.end method

.method public abstract getClip()Landroid/graphics/Rect;
.end method

.method public abstract getClipBounds()Lorg/loon/framework/android/game/core/graphics/geom/Rectangle;
.end method

.method public abstract getClipHeight()I
.end method

.method public abstract getClipWidth()I
.end method

.method public abstract getClipX()I
.end method

.method public abstract getClipY()I
.end method

.method public abstract getColor()Lorg/loon/framework/android/game/core/graphics/LColor;
.end method

.method public abstract getColorARGB()I
.end method

.method public abstract getColorRGB()I
.end method

.method public abstract getFont()Ljavax/microedition/lcdui/Font;
.end method

.method public abstract getFontMetrics()Landroid/graphics/Paint$FontMetrics;
.end method

.method public abstract getGrayScale()I
.end method

.method public abstract getGreenComponent()I
.end method

.method public abstract getInverseMatrix()[F
.end method

.method public abstract getLFont()Ljavax/microedition/lcdui/Font;
.end method

.method public abstract getMatrix()[F
.end method

.method public abstract getPaint()Landroid/graphics/Paint;
.end method

.method public abstract getRedComponent()I
.end method

.method public abstract getStroke()Lorg/loon/framework/android/game/core/graphics/geom/Stroke;
.end method

.method public abstract getStrokeStyle()I
.end method

.method public abstract getTransform()Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;
.end method

.method public abstract hitClip(IIII)Z
.end method

.method public abstract initGraphics()V
.end method

.method public abstract isAntiAlias()Z
.end method

.method public abstract isClose()Z
.end method

.method public abstract rectDraw(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract rectFill(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract rectOval(IIIILorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetFont()V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(D)V
.end method

.method public abstract rotate(DDD)V
.end method

.method public abstract rotateCanvas(F)V
.end method

.method public abstract rotateCanvas(FFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(DD)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAlphaValue(I)V
.end method

.method public abstract setAntiAlias(Z)V
.end method

.method public abstract setBackground(Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setClip(IIII)V
.end method

.method public abstract setClip(Landroid/graphics/Rect;)V
.end method

.method public abstract setClip(Lorg/loon/framework/android/game/core/graphics/geom/Shape;)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setColor(III)V
.end method

.method public abstract setColor(IIII)V
.end method

.method public abstract setColor(Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract setColorARGB(Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract setColorARGB32(I)V
.end method

.method public abstract setColorAll(Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract setColorRGB24(I)V
.end method

.method public abstract setColorValue(I)V
.end method

.method public abstract setFill()V
.end method

.method public abstract setFilterBitmap(Z)V
.end method

.method public abstract setFont(I)V
.end method

.method public abstract setFont(Ljava/lang/String;II)V
.end method

.method public abstract setFont(Ljavax/microedition/lcdui/Font;)V
.end method

.method public abstract setGrayScale(I)V
.end method

.method public abstract setPaint(Landroid/graphics/Paint;)V
.end method

.method public abstract setPaintMode()V
.end method

.method public abstract setStroke(Lorg/loon/framework/android/game/core/graphics/geom/Stroke;)V
.end method

.method public abstract setStrokeStyle(I)V
.end method

.method public abstract setTransform(III)V
.end method

.method public abstract setTransform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
.end method

.method public abstract setXORMode(Lorg/loon/framework/android/game/core/graphics/LColor;)V
.end method

.method public abstract shear(DD)V
.end method

.method public abstract transform(Lorg/loon/framework/android/game/core/graphics/geom/AffineTransform;)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(II)V
.end method

.method public abstract update(Landroid/graphics/Canvas;)V
.end method
