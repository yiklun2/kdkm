.class public final enum Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
.super Ljava/lang/Enum;
.source "JointDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/physics/box2d/JointDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JointType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

.field public static final enum WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "RevoluteJoint"

    invoke-direct {v0, v1, v4, v4}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 8
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "PrismaticJoint"

    invoke-direct {v0, v1, v5, v5}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 9
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "DistanceJoint"

    invoke-direct {v0, v1, v6, v6}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 10
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "PulleyJoint"

    invoke-direct {v0, v1, v7, v7}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 11
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "MouseJoint"

    invoke-direct {v0, v1, v8, v8}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 12
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "GearJoint"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 13
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "LineJoint"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 14
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "WeldJoint"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 15
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "FrictionJoint"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 16
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    const-string v1, "Unknown"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->Unknown:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->value:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->value:I

    return v0
.end method
