.class public final Lcom/jarworld/rpg/sanguocollege/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jarworld/rpg/sanguocollege/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_google_ads_AdView:[I

.field public static final com_google_ads_AdView_backgroundColor:I = 0x1

.field public static final com_google_ads_AdView_isGoneWithoutAd:I = 0x5

.field public static final com_google_ads_AdView_keywords:I = 0x3

.field public static final com_google_ads_AdView_refreshInterval:I = 0x4

.field public static final com_google_ads_AdView_testing:I = 0x0

.field public static final com_google_ads_AdView_textColor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jarworld/rpg/sanguocollege/R$styleable;->com_google_ads_AdView:[I

    .line 84
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
