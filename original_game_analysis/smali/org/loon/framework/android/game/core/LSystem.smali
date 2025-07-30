.class public Lorg/loon/framework/android/game/core/LSystem;
.super Ljava/lang/Object;
.source "LSystem.java"


# static fields
.field public static AUTO_REPAINT:Z = false

.field private static final BULIDM_PRODUCT:Ljava/lang/String;

.field private static final BULIDM_RELEASE:Ljava/lang/String;

.field private static final BULIDM_SDK:Ljava/lang/String;

.field private static final BULID_BRAND:Ljava/lang/String;

.field private static final BULID_MODEL:Ljava/lang/String;

.field public static final DAY:J = 0x5265c00L

.field public static final DEFAULT_MAX_CACHE_SIZE:I = 0x1e

.field public static final DEFAULT_MAX_FPS:I = 0x3c

.field public static final DEFAULT_ROTATE_CACHE:Z = true

.field private static EMULATOR:Z = false

.field public static final FONT_NAME:Ljava/lang/String; = "Monospaced"

.field public static final FRAMEWORK:Ljava/lang/String; = "LGame-Android"

.field public static final FS:Ljava/lang/String;

.field public static final HOUR:J = 0x36ee80L

.field private static LOWER_VER:Z = false

.field public static final LS:Ljava/lang/String;

.field public static MAX_SCREEN_HEIGHT:I = 0x0

.field public static MAX_SCREEN_WIDTH:I = 0x0

.field public static final MINUTE:J = 0xea60L

.field private static final OS_11:I = 0x0

.field private static final OS_15:I = 0x1

.field private static final OS_16:I = 0x2

.field private static final OS_20:I = 0x3

.field private static final OS_21:I = 0x4

.field private static final OS_22:I = 0x5

.field private static final OS_23:I = 0x6

.field private static final OS_30:I = 0x7

.field private static OS_HANDLER:Landroid/os/Handler; = null

.field public static SCREEN_LANDSCAPE:Z = false

.field public static final SECOND:J = 0x3e8L

.field private static TMP_MAJOR:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "0.2.96"

.field public static final WEEK:J = 0x240c8400L

.field public static final YEAR:J = 0x757b12c00L

.field public static final encoding:Ljava/lang/String; = "UTF-8"

.field private static handler:Lorg/loon/framework/android/game/IHandler;

.field public static isLogo:Z

.field public static isPaused:Z

.field public static final random:Ljava/util/Random;

.field public static scaleHeight:F

.field public static scaleWidth:F

.field public static screenRect:Lorg/loon/framework/android/game/action/map/shapes/RectBox;

.field private static surface2D:Lorg/loon/framework/android/game/Android2DSurface;

.field private static temp_file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 68
    const/16 v0, 0x215

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_WIDTH:I

    .line 71
    const/16 v0, 0x140

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->MAX_SCREEN_HEIGHT:I

    .line 92
    const-string v0, "line.separator"

    const-string v3, "\n"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->LS:Ljava/lang/String;

    .line 95
    const-string v0, "file.separator"

    const-string v3, "\\"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    .line 121
    sput v5, Lorg/loon/framework/android/game/core/LSystem;->scaleWidth:F

    sput v5, Lorg/loon/framework/android/game/core/LSystem;->scaleHeight:F

    .line 127
    sput v2, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    .line 140
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    .line 141
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_PRODUCT:Ljava/lang/String;

    .line 143
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    .line 144
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_SDK:Ljava/lang/String;

    .line 145
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "1.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 146
    sput v2, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    .line 164
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 165
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    move v0, v1

    .line 164
    :goto_1
    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->EMULATOR:Z

    .line 166
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    if-ge v0, v6, :cond_9

    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->EMULATOR:Z

    if-nez v0, :cond_9

    :goto_2
    sput-boolean v1, Lorg/loon/framework/android/game/core/LSystem;->LOWER_VER:Z

    .line 59
    return-void

    .line 147
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "1.5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 148
    sput v1, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "1.6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 150
    sput v6, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 152
    const/4 v0, 0x3

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 153
    :cond_3
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "2.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 154
    const/4 v0, 0x4

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 155
    :cond_4
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "2.2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 156
    const/4 v0, 0x5

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 157
    :cond_5
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "2.3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 158
    const/4 v0, 0x6

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto :goto_0

    .line 159
    :cond_6
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 160
    const/4 v0, 0x7

    sput v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto/16 :goto_0

    .line 162
    :cond_7
    sput v1, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 165
    goto :goto_1

    :cond_9
    move v1, v2

    .line 166
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/loon/framework/android/game/IHandler;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    return-object v0
.end method

.method public static action(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 3
    .param p0, "from"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    if-eqz v1, :cond_0

    .line 281
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setDestroy(Z)V

    .line 283
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public static createFillLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 176
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createRelativeLayout(Lorg/loon/framework/android/game/Location;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "location"    # Lorg/loon/framework/android/game/Location;

    .prologue
    const/4 v0, -0x2

    .line 188
    invoke-static {p0, v0, v0}, Lorg/loon/framework/android/game/core/LSystem;->createRelativeLayout(Lorg/loon/framework/android/game/Location;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelativeLayout(Lorg/loon/framework/android/game/Location;II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7
    .param p0, "location"    # Lorg/loon/framework/android/game/Location;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0x9

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 200
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lorg/loon/framework/android/game/Location;->LEFT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_1

    .line 203
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    sget-object v1, Lorg/loon/framework/android/game/Location;->RIGHT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_2

    .line 208
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 212
    :cond_2
    sget-object v1, Lorg/loon/framework/android/game/Location;->TOP:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_3

    .line 213
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 215
    :cond_3
    sget-object v1, Lorg/loon/framework/android/game/Location;->BOTTOM:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_4

    .line 216
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 218
    :cond_4
    sget-object v1, Lorg/loon/framework/android/game/Location;->BOTTOM_LEFT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_5

    .line 219
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 223
    :cond_5
    sget-object v1, Lorg/loon/framework/android/game/Location;->BOTTOM_RIGHT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_6

    .line 224
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 228
    :cond_6
    sget-object v1, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_7

    .line 229
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 233
    :cond_7
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_BASELINE:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_8

    .line 234
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 236
    :cond_8
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_LEFT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_9

    .line 237
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 239
    :cond_9
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_TOP:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_a

    .line 240
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 242
    :cond_a
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_RIGHT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_b

    .line 243
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 245
    :cond_b
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_BOTTOM:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_c

    .line 246
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 248
    :cond_c
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_LEFT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_d

    .line 249
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 251
    :cond_d
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_TOP:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_e

    .line 252
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 254
    :cond_e
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_RIGHT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_f

    .line 255
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 257
    :cond_f
    sget-object v1, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_BOTTOM:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_10

    .line 258
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 260
    :cond_10
    sget-object v1, Lorg/loon/framework/android/game/Location;->CENTER_IN_PARENT:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_11

    .line 261
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 263
    :cond_11
    sget-object v1, Lorg/loon/framework/android/game/Location;->CENTER_HORIZONTAL:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_12

    .line 264
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 266
    :cond_12
    sget-object v1, Lorg/loon/framework/android/game/Location;->CENTER_VERTICAL:Lorg/loon/framework/android/game/Location;

    if-ne p0, v1, :cond_0

    .line 267
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0
.end method

.method public static destroy()V
    .locals 0

    .prologue
    .line 462
    invoke-static {}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->destroy()V

    .line 464
    invoke-static {}, Lorg/loon/framework/android/game/core/resource/Resources;->destroy()V

    .line 465
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 466
    return-void
.end method

.method public static dispose(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 370
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getOSHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getOSHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    return-void
.end method

.method public static exit()V
    .locals 4

    .prologue
    .line 477
    sget-object v2, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    monitor-enter v2

    .line 479
    :try_start_0
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    if-eqz v1, :cond_0

    .line 480
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    instance-of v1, v1, Lorg/loon/framework/android/game/Android2DHandler;

    if-eqz v1, :cond_0

    .line 481
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    invoke-interface {v1}, Lorg/loon/framework/android/game/IHandler;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/LGameAndroid2DView;

    .line 482
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/loon/framework/android/game/LGameAndroid2DView;->setRunning(Z)V

    .line 483
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    check-cast v1, Lorg/loon/framework/android/game/Android2DHandler;

    .line 484
    invoke-virtual {v1}, Lorg/loon/framework/android/game/Android2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 485
    .local v0, "lActivity":Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->isDestroy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 493
    return-void

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 490
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final gc()V
    .locals 0

    .prologue
    .line 806
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 807
    return-void
.end method

.method public static final gc(IJ)V
    .locals 3
    .param p0, "size"    # I
    .param p1, "rand"    # J

    .prologue
    .line 816
    int-to-long v0, p0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GC random probability "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    .line 821
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->gc()V

    .line 823
    :cond_1
    return-void
.end method

.method public static final gc(J)V
    .locals 1
    .param p0, "rand"    # J

    .prologue
    .line 831
    const/16 v0, 0x64

    invoke-static {v0, p0, p1}, Lorg/loon/framework/android/game/core/LSystem;->gc(IJ)V

    .line 832
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    if-eqz v0, :cond_0

    .line 668
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    instance-of v0, v0, Lorg/loon/framework/android/game/Android2DHandler;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    check-cast v0, Lorg/loon/framework/android/game/Android2DHandler;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/Android2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 672
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBRANDName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCacheFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    instance-of v0, v0, Lorg/loon/framework/android/game/Android2DHandler;

    if-eqz v0, :cond_0

    .line 757
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    check-cast v0, Lorg/loon/framework/android/game/Android2DHandler;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/Android2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 765
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getCacheFileName()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "file":Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "/"

    invoke-static {p0, v1, v2}, Lorg/loon/framework/android/game/utils/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 767
    if-eqz v0, :cond_4

    .line 768
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 771
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 772
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getCacheFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    :goto_0
    return-object v1

    .line 774
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getCacheFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 775
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCacheFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->temp_file:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "activity":Landroid/app/Activity;
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    if-eqz v1, :cond_0

    .line 786
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    instance-of v1, v1, Lorg/loon/framework/android/game/Android2DHandler;

    if-eqz v1, :cond_0

    .line 787
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    check-cast v1, Lorg/loon/framework/android/game/Android2DHandler;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/Android2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 790
    :cond_0
    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/core/LSystem;->temp_file:Ljava/lang/String;

    .line 794
    :cond_1
    sget-object v1, Lorg/loon/framework/android/game/core/LSystem;->temp_file:Ljava/lang/String;

    return-object v1
.end method

.method public static getFPS()J
    .locals 2

    .prologue
    .line 645
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0}, Lorg/loon/framework/android/game/Android2DSurface;->getCurrentFPS()J

    move-result-wide v0

    .line 648
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getJavaHeap()J
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 386
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 385
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMajorOSVersion()I
    .locals 1

    .prologue
    .line 418
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    return v0
.end method

.method public static getMaxFPS()J
    .locals 2

    .prologue
    .line 655
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0}, Lorg/loon/framework/android/game/Android2DSurface;->getMaxFPS()J

    move-result-wide v0

    .line 658
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->OS_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->OS_HANDLER:Landroid/os/Handler;

    .line 318
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->OS_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getRandom(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 731
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULIDM_SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/loon/framework/android/game/core/LSystem;->getScreenOrientation(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 692
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 694
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 695
    .local v1, "orientation":I
    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->looksLikePortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    const-string v2, "PORTRAIT"

    .line 709
    :goto_0
    return-object v2

    .line 698
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->looksLikeLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    const-string v2, "LANDSCAPE"

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->looksLikePortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    const-string v2, "PORTRAIT"

    goto :goto_0

    .line 704
    :cond_2
    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->looksLikeLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const-string v2, "LANDSCAPE"

    goto :goto_0

    .line 706
    :cond_3
    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->looksLikeSquare(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    const-string v2, "SQUARE"

    goto :goto_0

    .line 709
    :cond_4
    const-string v2, "PORTRAIT"

    goto :goto_0
.end method

.method public static getSurface2D()Lorg/loon/framework/android/game/Android2DSurface;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    return-object v0
.end method

.method public static getSystemHandler()Lorg/loon/framework/android/game/IHandler;
    .locals 1

    .prologue
    .line 798
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    return-object v0
.end method

.method public static getSystemTimer()Lorg/loon/framework/android/game/core/timer/SystemTimer;
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lorg/loon/framework/android/game/core/timer/SystemTimer;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/timer/SystemTimer;-><init>()V

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    instance-of v0, v0, Lorg/loon/framework/android/game/Android2DHandler;

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    check-cast v0, Lorg/loon/framework/android/game/Android2DHandler;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/Android2DHandler;->getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static go(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 3
    .param p0, "from"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    if-eqz v1, :cond_0

    .line 295
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/LGameAndroid2DActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/loon/framework/android/game/LGameAndroid2DActivity;->setDestroy(Z)V

    .line 297
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public static isDroidOrMilestone()Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 452
    sget-object v5, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    const-string v6, "moto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_1

    move v2, v3

    .line 453
    .local v2, "isMotorola":Z
    :goto_0
    sget-object v5, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    const-string v6, "droid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_2

    move v0, v3

    .line 454
    .local v0, "isDroid":Z
    :goto_1
    sget-object v5, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    const-string v6, "milestone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3

    move v1, v3

    .line 455
    .local v1, "isMilestone":Z
    :goto_2
    if-eqz v2, :cond_4

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    :goto_3
    return v3

    .end local v0    # "isDroid":Z
    .end local v1    # "isMilestone":Z
    .end local v2    # "isMotorola":Z
    :cond_1
    move v2, v4

    .line 452
    goto :goto_0

    .restart local v2    # "isMotorola":Z
    :cond_2
    move v0, v4

    .line 453
    goto :goto_1

    .restart local v0    # "isDroid":Z
    :cond_3
    move v1, v4

    .line 454
    goto :goto_2

    .restart local v1    # "isMilestone":Z
    :cond_4
    move v3, v4

    .line 455
    goto :goto_3
.end method

.method public static isEmulator()Z
    .locals 1

    .prologue
    .line 438
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->EMULATOR:Z

    return v0
.end method

.method public static isHTC()Z
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowerVer()Z
    .locals 1

    .prologue
    .line 390
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->LOWER_VER:Z

    return v0
.end method

.method public static isOverrunOS11()Z
    .locals 1

    .prologue
    .line 394
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverrunOS16()Z
    .locals 2

    .prologue
    .line 398
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverrunOS21()Z
    .locals 2

    .prologue
    .line 402
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverrunOS23()Z
    .locals 2

    .prologue
    .line 406
    sget v0, Lorg/loon/framework/android/game/core/LSystem;->TMP_MAJOR:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPaused()Z
    .locals 1

    .prologue
    .line 430
    sget-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    return v0
.end method

.method public static isSamsungGalaxy()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    sget-object v4, Lorg/loon/framework/android/game/core/LSystem;->BULID_BRAND:Ljava/lang/String;

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_0

    move v1, v2

    .line 447
    .local v1, "isSamsung":Z
    :goto_0
    sget-object v4, Lorg/loon/framework/android/game/core/LSystem;->BULID_MODEL:Ljava/lang/String;

    const-string v5, "galaxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_1

    move v0, v2

    .line 448
    .local v0, "isGalaxy":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "isGalaxy":Z
    .end local v1    # "isSamsung":Z
    :cond_0
    move v1, v3

    .line 446
    goto :goto_0

    .restart local v1    # "isSamsung":Z
    :cond_1
    move v0, v3

    .line 447
    goto :goto_1

    .restart local v0    # "isGalaxy":Z
    :cond_2
    move v2, v3

    .line 448
    goto :goto_2
.end method

.method private static loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 910
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 922
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 915
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 921
    throw v1

    .line 916
    :catch_1
    move-exception v0

    .line 917
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error closing input stream from file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 919
    const-string v3, ", ignoring , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 918
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 917
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error closing input stream from file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 919
    const-string v3, ", ignoring , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 918
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final loadPropertiesFileToSystem(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 874
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 875
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->read(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 876
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/loon/framework/android/game/core/LSystem;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public static final loadPropertiesFromFile(Ljava/io/File;)Ljava/util/Properties;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 886
    if-nez p0, :cond_0

    .line 887
    const/4 v2, 0x0

    .line 897
    :goto_0
    return-object v2

    .line 889
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 891
    .local v2, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/LSystem;->read(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 892
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/loon/framework/android/game/core/LSystem;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static looksLikeLandscape(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 720
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 721
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static looksLikePortrait(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 714
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 715
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static looksLikeSquare(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 726
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 727
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    .line 309
    const-string v1, "android.intent.action.VIEW"

    .line 308
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "hander"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 358
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getOSHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public static final read(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 852
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-object v1

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 865
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/loon/framework/android/game/core/LSystem;->read(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final read([B)Ljava/io/InputStream;
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 841
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final readInt(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 949
    const/4 v0, -0x1

    .line 951
    .local v0, "data":I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 952
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 953
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 954
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 958
    return v0

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static repaint()V
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0}, Lorg/loon/framework/android/game/Android2DSurface;->update()V

    .line 502
    :cond_0
    return-void
.end method

.method public static repaint(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bit"    # Landroid/graphics/Bitmap;

    .prologue
    .line 510
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0}, Lorg/loon/framework/android/game/Android2DSurface;->update(Landroid/graphics/Bitmap;)V

    .line 513
    :cond_0
    return-void
.end method

.method public static repaint(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p0, "bit"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 547
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->update(Landroid/graphics/Bitmap;II)V

    .line 550
    :cond_0
    return-void
.end method

.method public static repaint(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 521
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0}, Lorg/loon/framework/android/game/Android2DSurface;->update(Ljavax/microedition/lcdui/Image;)V

    .line 524
    :cond_0
    return-void
.end method

.method public static repaint(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 534
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->update(Ljavax/microedition/lcdui/Image;II)V

    .line 537
    :cond_0
    return-void
.end method

.method public static repaintFull(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p0, "bit"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 573
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 574
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateFull(Landroid/graphics/Bitmap;II)V

    .line 576
    :cond_0
    return-void
.end method

.method public static repaintFull(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 560
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateFull(Ljavax/microedition/lcdui/Image;II)V

    .line 563
    :cond_0
    return-void
.end method

.method public static repaintLocation(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p0, "bit"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 625
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateLocation(Landroid/graphics/Bitmap;II)V

    .line 628
    :cond_0
    return-void
.end method

.method public static repaintLocation(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 612
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 613
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateLocation(Ljavax/microedition/lcdui/Image;II)V

    .line 615
    :cond_0
    return-void
.end method

.method public static repaintResize(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p0, "bit"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 599
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateResize(Landroid/graphics/Bitmap;II)V

    .line 602
    :cond_0
    return-void
.end method

.method public static repaintResize(Ljavax/microedition/lcdui/Image;II)V
    .locals 1
    .param p0, "img"    # Ljavax/microedition/lcdui/Image;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 586
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1, p2}, Lorg/loon/framework/android/game/Android2DSurface;->updateResize(Ljavax/microedition/lcdui/Image;II)V

    .line 589
    :cond_0
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 366
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public static setFPS(J)V
    .locals 1
    .param p0, "fps"    # J

    .prologue
    .line 636
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    invoke-interface {v0, p0, p1}, Lorg/loon/framework/android/game/Android2DSurface;->setFPS(J)V

    .line 639
    :cond_0
    return-void
.end method

.method public static setupHandler(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameAndroid2DView;ZLorg/loon/framework/android/game/Mode;)V
    .locals 1
    .param p0, "activity"    # Lorg/loon/framework/android/game/LGameAndroid2DActivity;
    .param p1, "view"    # Lorg/loon/framework/android/game/LGameAndroid2DView;
    .param p2, "landscape"    # Z
    .param p3, "mode"    # Lorg/loon/framework/android/game/Mode;

    .prologue
    .line 740
    sput-object p1, Lorg/loon/framework/android/game/core/LSystem;->surface2D:Lorg/loon/framework/android/game/Android2DSurface;

    .line 741
    new-instance v0, Lorg/loon/framework/android/game/Android2DHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/Android2DHandler;-><init>(Lorg/loon/framework/android/game/LGameAndroid2DActivity;Lorg/loon/framework/android/game/LGameAndroid2DView;ZLorg/loon/framework/android/game/Mode;)V

    sput-object v0, Lorg/loon/framework/android/game/core/LSystem;->handler:Lorg/loon/framework/android/game/IHandler;

    .line 742
    return-void
.end method

.method public static startRepaint()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 381
    const/4 v0, 0x0

    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    .line 382
    return-void
.end method

.method public static stopRepaint()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->AUTO_REPAINT:Z

    .line 376
    const/4 v0, 0x1

    sput-boolean v0, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    .line 377
    return-void
.end method

.method public static thread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/loon/framework/android/game/core/LSystem$1;

    invoke-direct {v1, p0}, Lorg/loon/framework/android/game/core/LSystem$1;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void
.end method

.method public static unite(ID)I
    .locals 3
    .param p0, "hashCode"    # I
    .param p1, "value"    # D

    .prologue
    .line 984
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 985
    .local v0, "v":J
    invoke-static {p0, v0, v1}, Lorg/loon/framework/android/game/core/LSystem;->unite(IJ)I

    move-result v2

    return v2
.end method

.method public static unite(IF)I
    .locals 2
    .param p0, "hashCode"    # I
    .param p1, "value"    # F

    .prologue
    .line 979
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 980
    .local v0, "v":I
    invoke-static {p0, v0}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v1

    return v1
.end method

.method public static unite(II)I
    .locals 1
    .param p0, "hashCode"    # I
    .param p1, "value"    # I

    .prologue
    .line 993
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    return v0
.end method

.method public static unite(IJ)I
    .locals 3
    .param p0, "hashCode"    # I
    .param p1, "value"    # J

    .prologue
    .line 974
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v0, v1

    .line 975
    .local v0, "v":I
    invoke-static {p0, v0}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v1

    return v1
.end method

.method public static unite(ILjava/lang/Object;)I
    .locals 1
    .param p0, "hashCode"    # I
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 989
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v0

    return v0
.end method

.method public static unite(IZ)I
    .locals 2
    .param p0, "hashCode"    # I
    .param p1, "value"    # Z

    .prologue
    .line 969
    if-eqz p1, :cond_0

    const/16 v0, 0x4cf

    .line 970
    .local v0, "v":I
    :goto_0
    invoke-static {p0, v0}, Lorg/loon/framework/android/game/core/LSystem;->unite(II)I

    move-result v1

    return v1

    .line 969
    .end local v0    # "v":I
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static final writeInt(Ljava/io/OutputStream;I)V
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "number"    # I

    .prologue
    const/4 v4, 0x4

    .line 931
    new-array v0, v4, [B

    .line 933
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 936
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 940
    return-void

    .line 934
    :cond_0
    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 937
    :catch_0
    move-exception v1

    .line 938
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
