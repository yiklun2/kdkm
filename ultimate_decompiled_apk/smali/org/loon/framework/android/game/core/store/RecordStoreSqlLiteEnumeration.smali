.class public Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;
.super Ljava/lang/Object;
.source "RecordStoreSqlLiteEnumeration.java"

# interfaces
.implements Lorg/loon/framework/android/game/core/store/RecordEnumeration;


# instance fields
.field private final comparator:Lorg/loon/framework/android/game/core/store/RecordComparator;

.field private destroyed:Z

.field private final filter:Lorg/loon/framework/android/game/core/store/RecordFilter;

.field private keepUpdated:Z

.field private lastRecordIndex:I

.field private recordIds:[I

.field private final recordStore:Ljavax/microedition/rms/RecordStore;

.field private sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;


# direct methods
.method public constructor <init>(Ljavax/microedition/rms/RecordStore;Lorg/loon/framework/android/game/core/store/RecordFilter;Lorg/loon/framework/android/game/core/store/RecordComparator;Z)V
    .locals 1
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;
    .param p2, "filter"    # Lorg/loon/framework/android/game/core/store/RecordFilter;
    .param p3, "comparator"    # Lorg/loon/framework/android/game/core/store/RecordComparator;
    .param p4, "keepUpdated"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    .line 51
    iput-object p2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->filter:Lorg/loon/framework/android/game/core/store/RecordFilter;

    .line 52
    iput-object p3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->comparator:Lorg/loon/framework/android/game/core/store/RecordComparator;

    .line 53
    iput-boolean p4, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    .line 54
    invoke-static {}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getInstance()Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    .line 55
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->rebuild()V

    .line 56
    return-void
.end method

.method private filter()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 204
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->filter:Lorg/loon/framework/android/game/core/store/RecordFilter;

    if-nez v10, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v3, 0x0

    .line 208
    .local v3, "deleteCount":I
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v6, v10

    .line 209
    .local v6, "numberOfRecords":I
    const/4 v1, 0x0

    .local v1, "currentIndex":I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 219
    if-lez v3, :cond_0

    .line 220
    sub-int v5, v6, v3

    .line 221
    .local v5, "newNumberOfRecords":I
    new-array v8, v5, [I

    .line 222
    .local v8, "temp":[I
    const/4 v9, 0x0

    .line 223
    .local v9, "tempIndex":I
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_4

    .line 230
    iput-object v8, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    goto :goto_0

    .line 210
    .end local v5    # "newNumberOfRecords":I
    .end local v8    # "temp":[I
    .end local v9    # "tempIndex":I
    :cond_2
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v2, v10, v1

    .line 211
    .local v2, "currentRecordId":I
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    .line 212
    iget-object v11, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v11}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v11

    .line 211
    invoke-virtual {v10, v11, v12, v2}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    .line 213
    .local v0, "currentData":[B
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->filter:Lorg/loon/framework/android/game/core/store/RecordFilter;

    invoke-interface {v10, v0}, Lorg/loon/framework/android/game/core/store/RecordFilter;->matches([B)Z

    move-result v4

    .line 214
    .local v4, "filterMatches":Z
    if-nez v4, :cond_3

    .line 215
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aput v13, v10, v1

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 209
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "currentData":[B
    .end local v2    # "currentRecordId":I
    .end local v4    # "filterMatches":Z
    .restart local v5    # "newNumberOfRecords":I
    .restart local v8    # "temp":[I
    .restart local v9    # "tempIndex":I
    :cond_4
    iget-object v10, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v7, v10, v1

    .line 225
    .local v7, "recordId":I
    if-eq v7, v13, :cond_5

    .line 226
    aput v7, v8, v9

    .line 227
    add-int/lit8 v9, v9, 0x1

    .line 223
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->destroyed:Z

    return v0
.end method

.method private sort()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->comparator:Lorg/loon/framework/android/game/core/store/RecordComparator;

    if-nez v0, :cond_0

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->destroyed:Z

    .line 60
    return-void
.end method

.method public hasNextElement()Z
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 65
    const-string v2, "RecordEnumeration instance is destroyed."

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 68
    .local v0, "hasNext":Z
    :goto_0
    return v0

    .line 67
    .end local v0    # "hasNext":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousElement()Z
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 74
    const-string v2, "RecordEnumeration instance is destroyed."

    .line 73
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget v1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 77
    .local v0, "hasPrevious":Z
    :goto_0
    return v0

    .line 76
    .end local v0    # "hasPrevious":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeptUpdated()Z
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    const-string v1, "RecordEnumeration instance is destroyed."

    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    return v0
.end method

.method public keepUpdated(Z)V
    .locals 2
    .param p1, "keepUpdated2"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    const-string v1, "RecordEnumeration instance is destroyed."

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-boolean p1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    .line 94
    return-void
.end method

.method public nextRecord()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 100
    const-string v4, "RecordEnumeration instance is destroyed."

    .line 99
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    new-instance v3, Ljavax/microedition/rms/RecordStoreNotOpenException;

    .line 104
    const-string v4, "The record store which is enumerated is closed."

    .line 103
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_1
    iget v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v3, 0x1

    .line 107
    .local v0, "nextRecordIndex":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 108
    new-instance v3, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    .line 109
    const-string v4, "The end of the enumeration is reached."

    .line 108
    invoke-direct {v3, v4}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_2
    iput v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    .line 112
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v1, v3, v0

    .line 113
    .local v1, "recordId":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    iget-object v4, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v4}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v2

    .line 115
    .local v2, "result":[B
    return-object v2
.end method

.method public nextRecordId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 121
    const-string v3, "RecordEnumeration instance is destroyed."

    .line 120
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    iget v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v1, v2, 0x1

    .line 124
    .local v1, "nextRecordIndex":I
    iget-object v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 125
    new-instance v2, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    .line 126
    const-string v3, "No more records in this enumeration."

    .line 125
    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    iput v1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    .line 129
    iget-object v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v2, v1

    .line 130
    .local v0, "nextRecordId":I
    return v0
.end method

.method public numRecords()I
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    const-string v1, "RecordEnumeration instance is destroyed."

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v0, v0

    return v0
.end method

.method public previousRecord()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 145
    const-string v4, "RecordEnumeration instance is destroyed."

    .line 144
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    new-instance v3, Ljavax/microedition/rms/RecordStoreNotOpenException;

    .line 149
    const-string v4, "The record store which is enumerated is closed."

    .line 148
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_1
    iget v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v3, -0x1

    .line 152
    .local v0, "previousRecordIndex":I
    if-gez v0, :cond_2

    .line 153
    new-instance v3, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    .line 154
    const-string v4, "The start of the enumeration is reached."

    .line 153
    invoke-direct {v3, v4}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_2
    iput v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    .line 157
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v1, v3, v0

    .line 158
    .local v1, "recordId":I
    iget-object v3, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    iget-object v4, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v4}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v2

    .line 160
    .local v2, "result":[B
    return-object v2
.end method

.method public previousRecordId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 166
    const-string v3, "RecordEnumeration instance is destroyed."

    .line 165
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    iget v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v1, v2, -0x1

    .line 169
    .local v1, "previousIndex":I
    iget v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    if-gez v2, :cond_1

    .line 170
    new-instance v2, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    .line 171
    const-string v3, "The start of the enumeration is reached."

    .line 170
    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    iput v1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    .line 174
    iget-object v2, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v2, v1

    .line 175
    .local v0, "nextRecordId":I
    return v0
.end method

.method public rebuild()V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 181
    const-string v1, "RecordEnumeration instance is destroyed."

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->reset()V

    .line 184
    iget-object v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sqlDao:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    .line 185
    iget-object v1, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordIdsForRecordStore(J)[I

    move-result-object v0

    .line 184
    iput-object v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->recordIds:[I

    .line 186
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->filter()V

    .line 187
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->sort()V

    .line 188
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    const-string v1, "RecordEnumeration instance is destroyed."

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    .line 197
    return-void
.end method
