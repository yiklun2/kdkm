.class public Ljavax/microedition/lcdui/Displayable;
.super Lorg/loon/framework/android/game/core/graphics/CanvasScreen;
.source "Displayable.java"


# static fields
.field public static final KEY_DOWN:I = -0x2

.field public static final KEY_FIRE:I = -0x5

.field public static final KEY_LEFT:I = -0x3

.field public static final KEY_MUSIC:I = -0x4e

.field public static final KEY_NULL:I = 0x0

.field public static final KEY_NUM0:I = 0x30

.field public static final KEY_NUM1:I = 0x31

.field public static final KEY_NUM2:I = 0x32

.field public static final KEY_NUM3:I = 0x33

.field public static final KEY_NUM4:I = 0x34

.field public static final KEY_NUM5:I = 0x35

.field public static final KEY_NUM6:I = 0x36

.field public static final KEY_NUM7:I = 0x37

.field public static final KEY_NUM8:I = 0x38

.field public static final KEY_NUM9:I = 0x39

.field public static final KEY_POUND:I = 0x3b

.field public static final KEY_POUND1:I = 0x23

.field public static final KEY_RIGHT:I = -0x4

.field public static final KEY_SOFTKEY1:I = -0x6

.field public static final KEY_SOFTKEY2:I = -0x7

.field public static final KEY_STAR:I = 0x3a

.field public static final KEY_STAR1:I = 0x2a

.field public static final KEY_UP:I = -0x1


# instance fields
.field private mode:Lorg/loon/framework/android/game/Mode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/graphics/CanvasScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Lorg/loon/framework/android/game/Mode;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->mode:Lorg/loon/framework/android/game/Mode;

    return-object v0
.end method

.method protected hideNotify()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public hidenotify()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->hideNotify()V

    .line 43
    return-void
.end method

.method protected keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 64
    return-void
.end method

.method protected keyReleased(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 70
    return-void
.end method

.method protected paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 104
    return-void
.end method

.method protected pointerDragged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 95
    return-void
.end method

.method protected pointerMove(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 87
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/Displayable;->pointerDragged(II)V

    .line 88
    return-void
.end method

.method protected pointerPressed(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 81
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/Displayable;->pointerPressed(II)V

    .line 82
    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 92
    return-void
.end method

.method protected pointerReleased(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 75
    double-to-int v0, p1

    double-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/Displayable;->pointerReleased(II)V

    .line 76
    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 98
    return-void
.end method

.method protected serviceRepaints()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected showNotify()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public shownotify()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->showNotify()V

    .line 51
    return-void
.end method
