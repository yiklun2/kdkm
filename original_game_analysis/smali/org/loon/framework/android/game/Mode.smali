.class public final enum Lorg/loon/framework/android/game/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/loon/framework/android/game/Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Defalut:Lorg/loon/framework/android/game/Mode;

.field private static final synthetic ENUM$VALUES:[Lorg/loon/framework/android/game/Mode;

.field public static final enum Fill:Lorg/loon/framework/android/game/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lorg/loon/framework/android/game/Mode;

    const-string v1, "Defalut"

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Mode;->Defalut:Lorg/loon/framework/android/game/Mode;

    new-instance v0, Lorg/loon/framework/android/game/Mode;

    const-string v1, "Fill"

    invoke-direct {v0, v1, v3}, Lorg/loon/framework/android/game/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/loon/framework/android/game/Mode;->Fill:Lorg/loon/framework/android/game/Mode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/loon/framework/android/game/Mode;

    sget-object v1, Lorg/loon/framework/android/game/Mode;->Defalut:Lorg/loon/framework/android/game/Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/loon/framework/android/game/Mode;->Fill:Lorg/loon/framework/android/game/Mode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/loon/framework/android/game/Mode;->ENUM$VALUES:[Lorg/loon/framework/android/game/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/loon/framework/android/game/Mode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/loon/framework/android/game/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/Mode;

    return-object v0
.end method

.method public static values()[Lorg/loon/framework/android/game/Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/loon/framework/android/game/Mode;->ENUM$VALUES:[Lorg/loon/framework/android/game/Mode;

    array-length v1, v0

    new-array v2, v1, [Lorg/loon/framework/android/game/Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
