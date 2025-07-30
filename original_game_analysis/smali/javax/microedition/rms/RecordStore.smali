.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;
.source "RecordStore.java"


# static fields
.field public static final AUTHMODE_ANY:I = 0x1

.field public static final AUTHMODE_PRIVATE:I

.field private static openedRecordStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/microedition/rms/RecordStore;",
            ">;"
        }
    .end annotation
.end field

.field private static sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;


# instance fields
.field private authMode:I

.field private lastModified:J

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/loon/framework/android/game/core/store/RecordListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nextRecordID:I

.field private numRecords:I

.field private openCount:I

.field public recordStorePk:J

.field private size:I

.field private sizeAvailable:J

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pk"    # J

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    .line 95
    iput-object p1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 96
    iput-wide p2, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    .line 97
    return-void
.end method

.method private static cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;

    .prologue
    .line 438
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 440
    return-void
.end method

.method private closeChachedRecordStore()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 452
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    if-lez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 4
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 102
    .local v0, "recordStore":Ljavax/microedition/rms/RecordStore;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljavax/microedition/rms/RecordStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The record store \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v1, v2}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {v1, p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->deleteRecordStore(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private fireRecordAddedEvent(I)V
    .locals 4
    .param p1, "recordId"    # I

    .prologue
    .line 386
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 387
    :try_start_0
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 387
    if-nez v2, :cond_0

    .line 386
    monitor-exit v3

    .line 393
    return-void

    .line 389
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/store/RecordListener;

    .line 390
    .local v1, "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    invoke-interface {v1, p0, p1}, Lorg/loon/framework/android/game/core/store/RecordListener;->recordAdded(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 386
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    .end local v1    # "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private fireRecordChangedEvent(I)V
    .locals 4
    .param p1, "recordId"    # I

    .prologue
    .line 396
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 397
    :try_start_0
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 397
    if-nez v2, :cond_0

    .line 396
    monitor-exit v3

    .line 403
    return-void

    .line 399
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/store/RecordListener;

    .line 400
    .local v1, "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    invoke-interface {v1, p0, p1}, Lorg/loon/framework/android/game/core/store/RecordListener;->recordChanged(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 396
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    .end local v1    # "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private fireRecordDeletedEvent(I)V
    .locals 4
    .param p1, "recordId"    # I

    .prologue
    .line 406
    iget-object v3, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 407
    :try_start_0
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 408
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 407
    if-nez v2, :cond_0

    .line 406
    monitor-exit v3

    .line 413
    return-void

    .line 409
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/loon/framework/android/game/core/store/RecordListener;

    .line 410
    .local v1, "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    invoke-interface {v1, p0, p1}, Lorg/loon/framework/android/game/core/store/RecordListener;->recordDeleted(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    .line 406
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/loon/framework/android/game/core/store/RecordListener;>;"
    .end local v1    # "recordListener":Lorg/loon/framework/android/game/core/store/RecordListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;

    .prologue
    .line 433
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordStore;

    return-object v0
.end method

.method private static init()V
    .locals 1

    .prologue
    .line 376
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getInstance()Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    move-result-object v0

    sput-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    .line 379
    :cond_0
    return-void
.end method

.method public static listRecordStores()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    .line 184
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {v1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->listRecordStores()[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "listRecordStores":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .end local v0    # "listRecordStores":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "suiteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 5
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "createIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Lorg/loon/framework/android/game/core/store/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    .line 114
    if-nez p0, :cond_0

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 116
    const-string v3, "Parameter \'recordStoreName\' must not be null or empty."

    .line 115
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 121
    const-string v3, "Parameter \'recordStoreName\' must have a length between 1 and 32."

    .line 120
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 125
    .local v0, "recordStore":Ljavax/microedition/rms/RecordStore;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 148
    .end local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .local v1, "recordStore":Ljavax/microedition/rms/RecordStore;
    :goto_0
    return-object v1

    .line 129
    .end local v1    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .restart local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :cond_3
    sget-object v2, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {v2, p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    move-object v1, v0

    .line 132
    .end local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .restart local v1    # "recordStore":Ljavax/microedition/rms/RecordStore;
    goto :goto_0

    .line 134
    .end local v1    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .restart local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :cond_4
    if-nez p1, :cond_5

    .line 135
    new-instance v2, Ljavax/microedition/rms/RecordStoreNotFoundException;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No record store with name \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    const-string v4, "\' found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-direct {v2, v3}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_5
    sget-object v2, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {v2, p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->createRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 141
    if-nez v0, :cond_6

    .line 142
    new-instance v2, Ljavax/microedition/rms/RecordStoreException;

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create record store with name \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 145
    const-string v4, "\'. Reason: The method \'SqlDao.createRecordStore\' returned null although it is not allowed to do so."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-direct {v2, v3}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_6
    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    move-object v1, v0

    .line 148
    .end local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .restart local v1    # "recordStore":Ljavax/microedition/rms/RecordStore;
    goto :goto_0
.end method

.method public static openRecordStore(Ljava/lang/String;ZIZ)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .param p0, "recordStoreName"    # Ljava/lang/String;
    .param p1, "createIfNecessary"    # Z
    .param p2, "authmode"    # I
    .param p3, "writable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Lorg/loon/framework/android/game/core/store/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method private static openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 2
    .param p0, "recordStoreName"    # Ljava/lang/String;

    .prologue
    .line 443
    sget-object v1, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordStore;

    .line 444
    .local v0, "recordStore":Ljavax/microedition/rms/RecordStore;
    if-eqz v0, :cond_0

    .line 445
    iget v1, v0, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljavax/microedition/rms/RecordStore;->openCount:I

    .line 447
    :cond_0
    return-object v0
.end method

.method private updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V
    .locals 2
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p1, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    .line 287
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 288
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->numRecords:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    .line 289
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->size:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->size:I

    .line 290
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->version:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->version:I

    .line 291
    iget-wide v0, p1, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    iput-wide v0, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    .line 292
    iget v0, p1, Ljavax/microedition/rms/RecordStore;->authMode:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->authMode:I

    .line 293
    return-void
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Lorg/loon/framework/android/game/core/store/RecordStoreFullException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 247
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v3, Ljavax/microedition/rms/RecordStoreNotOpenException;

    .line 249
    const-string v4, "The record store is not open because it was closed. This RecordStore object is invalid and will stay so."

    .line 248
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_0
    if-nez p1, :cond_1

    .line 252
    new-array p1, v5, [B

    .line 254
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_2

    array-length v3, p1

    if-lt p2, v3, :cond_2

    .line 255
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The offset \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    const-string v5, "\' is beyond the size of the data array of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 257
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_2
    if-gez p3, :cond_3

    .line 260
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The number of bytes \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 261
    const-string v5, "\' must not be negative."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_3
    if-gez p2, :cond_4

    .line 264
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The offset \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 265
    const-string v5, "\' must not be negative."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_4
    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_5

    .line 268
    new-instance v3, Ljavax/microedition/rms/RecordStoreException;

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The Parameter numBytes with value \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 271
    const-string v5, "\' exceeds the number of available bytes if counted from offset \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 272
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-direct {v3, v4}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_5
    new-array v0, p3, [B

    .line 275
    .local v0, "actualData":[B
    invoke-static {p1, p2, v0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    sget-object v3, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->addRecord(J[B)I

    move-result v1

    .line 278
    .local v1, "recordId":I
    sget-object v3, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v2

    .line 279
    .local v2, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-direct {p0, v2}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 280
    invoke-direct {p0, v1}, Ljavax/microedition/rms/RecordStore;->fireRecordAddedEvent(I)V

    .line 281
    return v1
.end method

.method public addRecordListener(Lorg/loon/framework/android/game/core/store/RecordListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/store/RecordListener;

    .prologue
    .line 220
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    monitor-exit v1

    .line 225
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeRecordStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;->closeChachedRecordStore()Z

    move-result v0

    .line 175
    .local v0, "closed":Z
    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 176
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteRecord(I)V
    .locals 4
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 304
    :cond_0
    if-gez p1, :cond_1

    .line 305
    new-instance v1, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    invoke-direct {v1}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>()V

    throw v1

    .line 307
    :cond_1
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->removeRecord(JI)V

    .line 308
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 309
    .local v0, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-direct {p0, v0}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 310
    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordDeletedEvent(I)V

    .line 311
    return-void
.end method

.method public enumerateRecords(Lorg/loon/framework/android/game/core/store/RecordFilter;Lorg/loon/framework/android/game/core/store/RecordComparator;Z)Lorg/loon/framework/android/game/core/store/RecordEnumeration;
    .locals 1
    .param p1, "filter"    # Lorg/loon/framework/android/game/core/store/RecordFilter;
    .param p2, "comparator"    # Lorg/loon/framework/android/game/core/store/RecordComparator;
    .param p3, "keepUpdated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;-><init>(Ljavax/microedition/rms/RecordStore;Lorg/loon/framework/android/game/core/store/RecordFilter;Lorg/loon/framework/android/game/core/store/RecordComparator;Z)V

    .line 372
    .local v0, "sqlRecordEnumeration":Lorg/loon/framework/android/game/core/store/RecordStoreSqlLiteEnumeration;
    return-object v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRecordID()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    return v0
.end method

.method public getNumRecords()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    return v0
.end method

.method public getPk()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    return-wide v0
.end method

.method public getRecord(I[BI)I
    .locals 3
    .param p1, "recordId"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    .line 327
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    array-length v1, v0

    sub-int/2addr v1, p3

    return v1
.end method

.method public getRecord(I)[B
    .locals 4
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v1

    .line 337
    :cond_0
    if-gez p1, :cond_1

    .line 338
    new-instance v1, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    invoke-direct {v1}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>()V

    throw v1

    .line 340
    :cond_1
    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    .line 341
    .local v0, "record":[B
    return-object v0
.end method

.method public getRecordSize(I)I
    .locals 2
    .param p1, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    .line 316
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->size:I

    return v0
.end method

.method public getSizeAvailable()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 209
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 210
    const v0, 0x7fffffff

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    .prologue
    .line 196
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->version:I

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRecordListener(Lorg/loon/framework/android/game/core/store/RecordListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/loon/framework/android/game/core/store/RecordListener;

    .prologue
    .line 228
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    monitor-exit v1

    .line 233
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(IZ)V
    .locals 0
    .param p1, "authmode"    # I
    .param p2, "writable"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public setNextId(I)V
    .locals 0
    .param p1, "nextRecordId"    # I

    .prologue
    .line 420
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    .line 421
    return-void
.end method

.method public setNumberOfRecords(I)V
    .locals 0
    .param p1, "numberOfRecords"    # I

    .prologue
    .line 424
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    .line 425
    return-void
.end method

.method public setRecord(I[BII)V
    .locals 5
    .param p1, "recordId"    # I
    .param p2, "newData"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Lorg/loon/framework/android/game/core/store/RecordStoreFullException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    new-instance v2, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v2}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v2

    .line 350
    :cond_0
    if-gez p1, :cond_1

    .line 351
    new-instance v2, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;

    .line 352
    const-string v3, "The parameter \'recordId\' must not be negative."

    .line 351
    invoke-direct {v2, v3}, Lorg/loon/framework/android/game/core/store/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_1
    if-nez p2, :cond_2

    .line 355
    new-array p2, v3, [B

    .line 358
    :cond_2
    new-array v0, p4, [B

    .line 359
    .local v0, "data":[B
    invoke-static {p2, p3, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    sget-object v2, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1, v0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->setRecord(JI[B)V

    .line 362
    sget-object v2, Ljavax/microedition/rms/RecordStore;->sqlLite:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 363
    .local v1, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-direct {p0, v1}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    .line 364
    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordChangedEvent(I)V

    .line 365
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 428
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->size:I

    .line 429
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 416
    iput p1, p0, Ljavax/microedition/rms/RecordStore;->version:I

    .line 417
    return-void
.end method
