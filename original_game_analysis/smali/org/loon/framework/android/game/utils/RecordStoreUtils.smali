.class public Lorg/loon/framework/android/game/utils/RecordStoreUtils;
.super Ljava/lang/Object;
.source "RecordStoreUtils.java"


# static fields
.field private static final COULD_NOT_OPEN:I = -0x2

.field private static final COULD_NOT_SAVE:I = -0x1

.field private static final DEFAULT_ID:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static addBytes(Ljava/lang/String;[B)I
    .locals 4
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v0, 0x0

    .line 208
    .local v0, "opened":Z
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 209
    const/4 v0, 0x1

    .line 210
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 214
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 216
    :goto_0
    return v2

    .line 211
    :catch_0
    move-exception v2

    .line 214
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 216
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v2

    .line 214
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 215
    throw v2

    .line 216
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 112
    :goto_0
    return-object v2

    .line 97
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v1, "dis":Ljava/io/DataInputStream;
    const-string v2, ""

    .line 101
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 105
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_1
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v3

    .line 105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 109
    :goto_2
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v3

    .line 105
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 109
    :goto_3
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    .line 111
    throw v3

    .line 107
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static closeRecordStore(Ljavax/microedition/rms/RecordStore;)V
    .locals 1
    .param p0, "rs"    # Ljavax/microedition/rms/RecordStore;

    .prologue
    .line 335
    if-eqz p0, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->existRecordStore(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljavax/microedition/rms/RecordStoreNotFoundException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljavax/microedition/rms/RecordStoreNotFoundException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljavax/microedition/rms/RecordStoreException;
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteRecordStoresWithPrefix(Ljava/lang/String;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->listRecordStores()[Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "recordStores":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 327
    :cond_0
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 320
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    :try_start_0
    aget-object v2, v1, v0

    invoke-static {v2}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static existRecordStore(Ljava/lang/String;)Z
    .locals 4
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 253
    const/4 v1, 0x0

    .line 255
    .local v1, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    :try_end_0
    .catch Lorg/loon/framework/android/game/core/store/RecordStoreFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 264
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    :try_start_1
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_1} :catch_7

    .line 262
    :cond_1
    :goto_0
    return v2

    .line 257
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lorg/loon/framework/android/game/core/store/RecordStoreFullException;
    if-eqz v1, :cond_1

    .line 266
    :try_start_2
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_2
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    .line 267
    :catch_1
    move-exception v3

    goto :goto_0

    .line 259
    .end local v0    # "e":Lorg/loon/framework/android/game/core/store/RecordStoreFullException;
    :catch_2
    move-exception v0

    .line 264
    .local v0, "e":Ljavax/microedition/rms/RecordStoreNotFoundException;
    if-eqz v1, :cond_1

    .line 266
    :try_start_3
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_0

    .line 267
    :catch_3
    move-exception v3

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljavax/microedition/rms/RecordStoreNotFoundException;
    :catch_4
    move-exception v0

    .line 264
    .local v0, "e":Ljavax/microedition/rms/RecordStoreException;
    if-eqz v1, :cond_1

    .line 266
    :try_start_4
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_4
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_0

    .line 267
    :catch_5
    move-exception v3

    goto :goto_0

    .line 263
    .end local v0    # "e":Ljavax/microedition/rms/RecordStoreException;
    :catchall_0
    move-exception v2

    .line 264
    if-eqz v1, :cond_2

    .line 266
    :try_start_5
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_5
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_5 .. :try_end_5} :catch_c

    .line 270
    :cond_2
    :goto_1
    throw v2

    .line 267
    :catch_6
    move-exception v3

    goto :goto_0

    .line 268
    :catch_7
    move-exception v3

    goto :goto_0

    .local v0, "e":Lorg/loon/framework/android/game/core/store/RecordStoreFullException;
    :catch_8
    move-exception v3

    goto :goto_0

    .local v0, "e":Ljavax/microedition/rms/RecordStoreNotFoundException;
    :catch_9
    move-exception v3

    goto :goto_0

    .local v0, "e":Ljavax/microedition/rms/RecordStoreException;
    :catch_a
    move-exception v3

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljavax/microedition/rms/RecordStoreException;
    :catch_b
    move-exception v3

    goto :goto_1

    .line 268
    :catch_c
    move-exception v3

    goto :goto_1
.end method

.method public static existRecordStoreAll(Ljava/lang/String;)Z
    .locals 4
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {}, Ljavax/microedition/rms/RecordStore;->listRecordStores()[Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "recordStores":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 285
    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    const/4 v2, 0x1

    goto :goto_0

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->getBytes(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;I)[B
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "recordId"    # I

    .prologue
    .line 76
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 77
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 79
    .local v1, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 80
    invoke-virtual {v1, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 85
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v2

    .line 83
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    .line 83
    invoke-static {v1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 84
    throw v2
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "recordId"    # I

    .prologue
    .line 151
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->getBytes(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeRecord(Ljava/lang/String;)V
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->removeRecord(Ljava/lang/String;I)V

    .line 244
    return-void
.end method

.method public static removeRecord(Ljava/lang/String;I)V
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "recordId"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Ljavax/microedition/rms/RecordStore;->deleteRecord(I)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 235
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 233
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v1

    .line 233
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 234
    throw v1
.end method

.method public static setBytes(Ljava/lang/String;I[B)V
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "recordId"    # I
    .param p2, "data"    # [B

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "rs":Ljavax/microedition/rms/RecordStore;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 195
    :goto_1
    return-void

    .line 189
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    array-length v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V
    :try_end_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 193
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v1

    .line 193
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->closeRecordStore(Ljavax/microedition/rms/RecordStore;)V

    .line 194
    throw v1
.end method

.method public static setBytes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->setBytes(Ljava/lang/String;[B)V

    .line 162
    return-void
.end method

.method public static setBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/loon/framework/android/game/utils/RecordStoreUtils;->setBytes(Ljava/lang/String;I[B)V

    .line 172
    return-void
.end method

.method private static stringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p0, :cond_0

    .line 141
    :goto_0
    return-object v1

    .line 125
    :cond_0
    check-cast v1, [B

    .line 126
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_1
    const/4 v0, 0x0

    .line 139
    const/4 v2, 0x0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v3

    .line 134
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 138
    :goto_2
    const/4 v0, 0x0

    .line 139
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v3

    .line 134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 138
    :goto_3
    const/4 v0, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    throw v3

    .line 136
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_2
.end method
