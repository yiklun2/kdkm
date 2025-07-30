.class public final enum Lorg/loon/framework/android/game/Location;
.super Ljava/lang/Enum;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/loon/framework/android/game/Location;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIGN_BASELINE:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_BOTTOM:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_LEFT:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_PARENT_BOTTOM:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_PARENT_LEFT:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_PARENT_RIGHT:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_PARENT_TOP:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_RIGHT:Lorg/loon/framework/android/game/Location;

.field public static final enum ALIGN_TOP:Lorg/loon/framework/android/game/Location;

.field public static final enum BOTTOM:Lorg/loon/framework/android/game/Location;

.field public static final enum BOTTOM_LEFT:Lorg/loon/framework/android/game/Location;

.field public static final enum BOTTOM_RIGHT:Lorg/loon/framework/android/game/Location;

.field public static final enum CENTER:Lorg/loon/framework/android/game/Location;

.field public static final enum CENTER_HORIZONTAL:Lorg/loon/framework/android/game/Location;

.field public static final enum CENTER_IN_PARENT:Lorg/loon/framework/android/game/Location;

.field public static final enum CENTER_VERTICAL:Lorg/loon/framework/android/game/Location;

.field private static final synthetic ENUM$VALUES:[Lorg/loon/framework/android/game/Location;

.field public static final enum LEFT:Lorg/loon/framework/android/game/Location;

.field public static final enum RIGHT:Lorg/loon/framework/android/game/Location;

.field public static final enum TOP:Lorg/loon/framework/android/game/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->LEFT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->RIGHT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v5}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->TOP:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v6}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->BOTTOM:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v7}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->BOTTOM_LEFT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->BOTTOM_RIGHT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_BASELINE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_BASELINE:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_LEFT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_LEFT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_TOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_TOP:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_RIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_RIGHT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_BOTTOM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_BOTTOM:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_PARENT_LEFT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_LEFT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_PARENT_TOP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_TOP:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_PARENT_RIGHT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_RIGHT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "ALIGN_PARENT_BOTTOM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_BOTTOM:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "CENTER_IN_PARENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->CENTER_IN_PARENT:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "CENTER_HORIZONTAL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->CENTER_HORIZONTAL:Lorg/loon/framework/android/game/Location;

    new-instance v0, Lorg/loon/framework/android/game/Location;

    const-string v1, "CENTER_VERTICAL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Location;->CENTER_VERTICAL:Lorg/loon/framework/android/game/Location;

    .line 24
    const/16 v0, 0x13

    new-array v0, v0, [Lorg/loon/framework/android/game/Location;

    sget-object v1, Lorg/loon/framework/android/game/Location;->LEFT:Lorg/loon/framework/android/game/Location;

    aput-object v1, v0, v3

    sget-object v1, Lorg/loon/framework/android/game/Location;->RIGHT:Lorg/loon/framework/android/game/Location;

    aput-object v1, v0, v4

    sget-object v1, Lorg/loon/framework/android/game/Location;->TOP:Lorg/loon/framework/android/game/Location;

    aput-object v1, v0, v5

    sget-object v1, Lorg/loon/framework/android/game/Location;->BOTTOM:Lorg/loon/framework/android/game/Location;

    aput-object v1, v0, v6

    sget-object v1, Lorg/loon/framework/android/game/Location;->BOTTOM_LEFT:Lorg/loon/framework/android/game/Location;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/loon/framework/android/game/Location;->BOTTOM_RIGHT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/loon/framework/android/game/Location;->CENTER:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_BASELINE:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_LEFT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_TOP:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_RIGHT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_BOTTOM:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_LEFT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_TOP:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_RIGHT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/loon/framework/android/game/Location;->ALIGN_PARENT_BOTTOM:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/loon/framework/android/game/Location;->CENTER_IN_PARENT:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/loon/framework/android/game/Location;->CENTER_HORIZONTAL:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/loon/framework/android/game/Location;->CENTER_VERTICAL:Lorg/loon/framework/android/game/Location;

    aput-object v2, v0, v1

    sput-object v0, Lorg/loon/framework/android/game/Location;->ENUM$VALUES:[Lorg/loon/framework/android/game/Location;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/loon/framework/android/game/Location;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/loon/framework/android/game/Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/Location;

    return-object v0
.end method

.method public static values()[Lorg/loon/framework/android/game/Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/loon/framework/android/game/Location;->ENUM$VALUES:[Lorg/loon/framework/android/game/Location;

    array-length v1, v0

    new-array v2, v1, [Lorg/loon/framework/android/game/Location;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
