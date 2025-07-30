.class public final enum Lorg/loon/framework/android/game/core/graphics/SensorDirection;
.super Ljava/lang/Enum;
.source "SensorDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/loon/framework/android/game/core/graphics/SensorDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field private static final synthetic ENUM$VALUES:[Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field public static final enum LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field public static final enum NONE:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field public static final enum RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

.field public static final enum UP:Lorg/loon/framework/android/game/core/graphics/SensorDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/core/graphics/SensorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->NONE:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    new-instance v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lorg/loon/framework/android/game/core/graphics/SensorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    new-instance v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/loon/framework/android/game/core/graphics/SensorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    new-instance v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lorg/loon/framework/android/game/core/graphics/SensorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->UP:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    new-instance v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v6}, Lorg/loon/framework/android/game/core/graphics/SensorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->DOWN:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->NONE:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->LEFT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    aput-object v1, v0, v3

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->RIGHT:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    aput-object v1, v0, v4

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->UP:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    aput-object v1, v0, v5

    sget-object v1, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->DOWN:Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    aput-object v1, v0, v6

    sput-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->ENUM$VALUES:[Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/loon/framework/android/game/core/graphics/SensorDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    return-object v0
.end method

.method public static values()[Lorg/loon/framework/android/game/core/graphics/SensorDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/loon/framework/android/game/core/graphics/SensorDirection;->ENUM$VALUES:[Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    array-length v1, v0

    new-array v2, v1, [Lorg/loon/framework/android/game/core/graphics/SensorDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
