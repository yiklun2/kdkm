.class public Ljavax/microedition/lcdui/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field private static display:Ljavax/microedition/lcdui/Display;

.field private static displayable:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljavax/microedition/lcdui/Display;

    invoke-direct {v0}, Ljavax/microedition/lcdui/Display;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/Display;->display:Ljavax/microedition/lcdui/Display;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljavax/microedition/lcdui/Display;->displayable:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public static getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    .locals 1
    .param p0, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 11
    sget-object v0, Ljavax/microedition/lcdui/Display;->display:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method

.method public static isGraphicsDisplay(Ljavax/microedition/lcdui/Graphics;)Z
    .locals 1
    .param p0, "graphics"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 0
    .param p1, "nextDisplayable"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 15
    sput-object p1, Ljavax/microedition/lcdui/Display;->displayable:Ljavax/microedition/lcdui/Displayable;

    .line 16
    return-void
.end method
