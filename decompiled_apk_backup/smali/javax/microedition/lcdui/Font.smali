.class public Ljavax/microedition/lcdui/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field public static final CENTER:I = 0x3

.field public static final FACE_MONOSPACE:I = 0x20

.field public static final FACE_PROPORTIONAL:I = 0x40

.field public static final FACE_SYSTEM:I = 0x0

.field public static final FONT_INPUT_TEXT:I = 0x1

.field public static final FONT_STATIC_TEXT:I = 0x0

.field public static final JUSTIFY:I = 0x4

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final SIZE_LARGE:I = 0x10

.field public static final SIZE_MEDIUM:I = 0x0

.field public static final SIZE_SMALL:I = 0x8

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4

.field private static final fonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmp:Ljava/lang/String; = "H"


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private fontSize:I

.field private final rect:Landroid/graphics/Rect;

.field private typefacePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    .line 69
    const/16 v1, 0x64

    .line 68
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Font;->rect:Landroid/graphics/Rect;

    .line 166
    iput p1, p0, Ljavax/microedition/lcdui/Font;->fontSize:I

    .line 167
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Paint;I)V
    .locals 1
    .param p1, "typefacePaint"    # Landroid/graphics/Paint;
    .param p2, "fontSize"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Font;->rect:Landroid/graphics/Rect;

    .line 174
    iput p2, p0, Ljavax/microedition/lcdui/Font;->fontSize:I

    .line 175
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;)V

    .line 176
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Paint;Ljava/lang/String;I)V
    .locals 2
    .param p1, "typefacePaint"    # Landroid/graphics/Paint;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fontSize"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljavax/microedition/lcdui/Font;->rect:Landroid/graphics/Rect;

    .line 183
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemHandler()Lorg/loon/framework/android/game/IHandler;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 183
    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 185
    .local v0, "face":Landroid/graphics/Typeface;
    iput p3, p0, Ljavax/microedition/lcdui/Font;->fontSize:I

    .line 186
    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;)V

    .line 188
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "fontSize"    # I

    .prologue
    .line 170
    invoke-static {p1}, Ljavax/microedition/lcdui/Font;->createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Paint;I)V

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Typeface;Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fontSize"    # I

    .prologue
    .line 179
    invoke-static {p1}, Ljavax/microedition/lcdui/Font;->createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Paint;Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method private static createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    return-object v0
.end method

.method public static getDefaultFont()Ljavax/microedition/lcdui/Font;
    .locals 3

    .prologue
    .line 80
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 84
    const-string v0, "Monospaced"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(III)Ljavax/microedition/lcdui/Font;
    .locals 2
    .param p0, "face"    # I
    .param p1, "style"    # I
    .param p2, "fontSize"    # I

    .prologue
    .line 122
    new-instance v0, Ljavax/microedition/lcdui/Font;

    invoke-direct {v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(I)V

    .line 123
    .local v0, "font":Ljavax/microedition/lcdui/Font;
    invoke-static {v0, p0, p1, p2}, Ljavax/microedition/lcdui/Font;->getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;

    move-result-object v1

    return-object v1
.end method

.method public static getFont(Ljava/lang/String;I)Ljavax/microedition/lcdui/Font;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljavax/microedition/lcdui/Font;->getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;
    .locals 6
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I
    .param p2, "size"    # I

    .prologue
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "name":Ljava/lang/String;
    sget-object v4, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 95
    if-eqz p0, :cond_1

    .line 96
    const-string v4, "Serif"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    const-string v4, "TimesRoman"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    :cond_0
    const-string p0, "serif"

    .line 108
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 109
    .local v0, "face":Landroid/graphics/Typeface;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 110
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 111
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    sget-object v4, Ljavax/microedition/lcdui/Font;->fonts:Ljava/util/HashMap;

    new-instance v2, Ljavax/microedition/lcdui/Font;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {v2, v3, p2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Paint;I)V

    .local v2, "o":Ljavax/microedition/lcdui/Font;
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v0    # "face":Landroid/graphics/Typeface;
    .end local v2    # "o":Ljavax/microedition/lcdui/Font;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_2
    check-cast v2, Ljavax/microedition/lcdui/Font;

    return-object v2

    .line 99
    .local v2, "o":Ljava/lang/Object;
    :cond_3
    const-string v4, "SansSerif"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    const-string v4, "Helvetica"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    :cond_4
    const-string p0, "sans-serif"

    goto :goto_0

    .line 102
    :cond_5
    const-string v4, "Monospaced"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 103
    const-string v4, "Courier"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 104
    const-string v4, "Dialog"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    :cond_6
    const-string p0, "monospace"

    goto :goto_0
.end method

.method public static getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;
    .locals 8
    .param p0, "font"    # Ljavax/microedition/lcdui/Font;
    .param p1, "face"    # I
    .param p2, "style"    # I
    .param p3, "fontSize"    # I

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "paintFlags":I
    const/4 v4, 0x0

    .line 130
    .local v4, "typefaceStyle":I
    sparse-switch p1, :sswitch_data_0

    .line 141
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown font "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    :sswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 143
    .local v0, "base":Landroid/graphics/Typeface;
    :goto_0
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_0

    .line 144
    or-int/lit8 v4, v4, 0x1

    .line 146
    :cond_0
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_1

    .line 147
    or-int/lit8 v4, v4, 0x2

    .line 149
    :cond_1
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_2

    .line 150
    or-int/lit8 v2, v2, 0x8

    .line 152
    :cond_2
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 153
    .local v3, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 154
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 155
    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;)V

    .line 156
    return-object p0

    .line 135
    .end local v0    # "base":Landroid/graphics/Typeface;
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :sswitch_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 136
    .restart local v0    # "base":Landroid/graphics/Typeface;
    goto :goto_0

    .line 138
    .end local v0    # "base":Landroid/graphics/Typeface;
    :sswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 139
    .restart local v0    # "base":Landroid/graphics/Typeface;
    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x20 -> :sswitch_0
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getFromAssetFont(Ljava/lang/String;II)Ljavax/microedition/lcdui/Font;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "style"    # I
    .param p2, "fontSize"    # I

    .prologue
    .line 118
    new-instance v0, Ljavax/microedition/lcdui/Font;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, p0, p2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Typeface;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public charWidth(C)I
    .locals 5
    .param p1, "ch"    # C

    .prologue
    .line 282
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 283
    .local v0, "chars":[C
    iget-object v2, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    float-to-int v1, v2

    .line 284
    .local v1, "w":I
    return v1
.end method

.method public getAscent()F
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    return v0
.end method

.method public getBaselinePosition()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getDescent()F
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    return v0
.end method

.method public getFace()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "Monospaced"

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getLeading()F
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 216
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 239
    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 238
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getScale()F
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v0

    .line 193
    .local v0, "fontSize":I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 194
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 200
    .local v1, "scale":F
    :goto_0
    return v1

    .line 195
    .end local v1    # "scale":F
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 196
    const v1, 0x3f4ccccd    # 0.8f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 198
    .end local v1    # "scale":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Ljavax/microedition/lcdui/Font;->fontSize:I

    return v0
.end method

.method public getStyle()I
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "style":I
    iget-object v2, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 245
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    or-int/lit8 v0, v0, 0x1

    .line 248
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    or-int/lit8 v0, v0, 0x2

    .line 251
    :cond_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    or-int/lit8 v0, v0, 0x4

    .line 254
    :cond_2
    return v0
.end method

.method public getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Ljavax/microedition/lcdui/Font;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 306
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    .prologue
    .line 301
    const-string v0, "H"

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Font;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTypefacePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    return v0
.end method

.method public isPlain()Z
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v0

    return v0
.end method

.method public setTypefacePaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "typefacePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 220
    iput-object p1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 222
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public subStringWidth(Ljava/lang/String;II)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 292
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
