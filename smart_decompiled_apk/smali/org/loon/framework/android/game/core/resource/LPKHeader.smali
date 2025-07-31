.class public Lorg/loon/framework/android/game/core/resource/LPKHeader;
.super Ljava/lang/Object;
.source "LPKHeader.java"


# instance fields
.field private identity:I

.field private password:[B

.field private tables:J

.field private version:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->version:F

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->tables:J

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->password:[B

    .line 39
    return-void
.end method

.method public constructor <init>([BFJ)V
    .locals 4
    .param p1, "password"    # [B
    .param p2, "version"    # F
    .param p3, "tables"    # J

    .prologue
    const/16 v3, 0xa

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->version:F

    .line 35
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->tables:J

    .line 42
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->password:[B

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 45
    iput p2, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->version:F

    .line 46
    iput-wide p3, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->tables:J

    .line 47
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->password:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x17

    return v0
.end method


# virtual methods
.method public getPAKIdentity()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x4c47504b    # 5.2248876E7f

    return v0
.end method

.method public getPassword()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->password:[B

    return-object v0
.end method

.method public getTables()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->tables:J

    return-wide v0
.end method

.method public getVersion()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->version:F

    return v0
.end method

.method public setPAKIdentity(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->identity:I

    .line 71
    return-void
.end method

.method public setPassword(J)V
    .locals 1
    .param p1, "pass"    # J

    .prologue
    .line 82
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lorg/loon/framework/android/game/utils/NumberUtils;->addZeros(JI)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 82
    iput-object v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->password:[B

    .line 84
    return-void
.end method

.method public setPassword([B)V
    .locals 2
    .param p1, "password"    # [B

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 89
    return-void

    .line 87
    :cond_0
    aget-byte v1, p1, v0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTables(J)V
    .locals 0
    .param p1, "tables"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->tables:J

    .line 55
    return-void
.end method

.method public setVersion(F)V
    .locals 0
    .param p1, "version"    # F

    .prologue
    .line 62
    iput p1, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->version:F

    .line 63
    return-void
.end method

.method public validatePAK()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lorg/loon/framework/android/game/core/resource/LPKHeader;->identity:I

    const v1, 0x4c47504b    # 5.2248876E7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
