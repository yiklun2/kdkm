.class public Lorg/loon/framework/android/game/core/resource/LPKTable;
.super Ljava/lang/Object;
.source "LPKTable.java"


# instance fields
.field private fileName:[B

.field private fileSize:J

.field private offSet:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileSize:J

    .line 29
    iput-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->offSet:J

    .line 32
    const/16 v0, 0x1e

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileName:[B

    .line 33
    return-void
.end method

.method public constructor <init>([BJJ)V
    .locals 4
    .param p1, "fileName"    # [B
    .param p2, "fileSize"    # J
    .param p4, "offSet"    # J

    .prologue
    const-wide/16 v1, 0x0

    const/16 v3, 0x1e

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileSize:J

    .line 29
    iput-wide v1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->offSet:J

    .line 36
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileName:[B

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 39
    iput-wide p2, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileSize:J

    .line 40
    iput-wide p4, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->offSet:J

    .line 41
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileName:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x26

    return v0
.end method


# virtual methods
.method public getFileName()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileName:[B

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileSize:J

    return-wide v0
.end method

.method public getOffSet()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->offSet:J

    return-wide v0
.end method

.method public setFileName([B)V
    .locals 3
    .param p1, "fileName"    # [B

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileName:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFileSize(J)V
    .locals 0
    .param p1, "fileSize"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->fileSize:J

    .line 58
    return-void
.end method

.method public setOffSet(J)V
    .locals 0
    .param p1, "offSet"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/resource/LPKTable;->offSet:J

    .line 66
    return-void
.end method
