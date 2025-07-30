.class public Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;
.super Ljava/lang/Object;
.source "RecordStoreSqlLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite$RecordStoreSqliteOpenHelper;
    }
.end annotation


# static fields
.field private static final COLUMNNAME_RECORDSTORE_NAME:Ljava/lang/String; = "name"

.field private static final COLUMNNAME_RECORDSTORE_NEXTID:Ljava/lang/String; = "nextId"

.field private static final COLUMNNAME_RECORDSTORE_NUMBER_OF_RECORDS:Ljava/lang/String; = "number_of_records"

.field private static final COLUMNNAME_RECORDSTORE_RECORDSTORE_PK:Ljava/lang/String; = "recordstore_pk"

.field private static final COLUMNNAME_RECORDSTORE_SIZE:Ljava/lang/String; = "current_size"

.field private static final COLUMNNAME_RECORDSTORE_VERSION:Ljava/lang/String; = "version"

.field private static final COLUMNNAME_RECORD_DATA:Ljava/lang/String; = "bytes"

.field private static final COLUMNNAME_RECORD_RECORDNUMBER:Ljava/lang/String; = "record_number"

.field private static final COLUMNNAME_RECORD_RECORDSTORE_FK:Ljava/lang/String; = "recordstore_fk"

.field private static final COLUMNNAME_RECORD_RECORD_PK:Ljava/lang/String; = "record_pk"

.field private static final TABLENAME_RECORD:Ljava/lang/String; = "record"

.field private static final TABLENAME_RECORDSTORE:Ljava/lang/String; = "recordstore"

.field private static database:Landroid/database/sqlite/SQLiteDatabase;

.field private static instance:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->init()V

    .line 106
    return-void
.end method

.method private declared-synchronized extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    .locals 10
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    const-string v8, "recordstore_pk"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "indexOfColumn":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 157
    .local v0, "id":I
    const-string v8, "version"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 160
    .local v7, "version":I
    const-string v8, "nextId"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 163
    .local v2, "nextId":I
    const-string v8, "name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "recordStoreName":Ljava/lang/String;
    const-string v8, "number_of_records"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    .local v3, "numberOfRecords":I
    const-string v8, "current_size"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 172
    .local v6, "size":I
    new-instance v4, Ljavax/microedition/rms/RecordStore;

    int-to-long v8, v0

    invoke-direct {v4, v5, v8, v9}, Ljavax/microedition/rms/RecordStore;-><init>(Ljava/lang/String;J)V

    .line 173
    .local v4, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-virtual {v4, v7}, Ljavax/microedition/rms/RecordStore;->setVersion(I)V

    .line 174
    invoke-virtual {v4, v2}, Ljavax/microedition/rms/RecordStore;->setNextId(I)V

    .line 175
    invoke-virtual {v4, v3}, Ljavax/microedition/rms/RecordStore;->setNumberOfRecords(I)V

    .line 176
    invoke-virtual {v4, v6}, Ljavax/microedition/rms/RecordStore;->setSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-object v4

    .line 152
    .end local v0    # "id":I
    .end local v1    # "indexOfColumn":I
    .end local v2    # "nextId":I
    .end local v3    # "numberOfRecords":I
    .end local v4    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .end local v5    # "recordStoreName":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "version":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public static getInstance()Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->instance:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;-><init>()V

    sput-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->instance:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    .line 113
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->instance:Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 204
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 205
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite$RecordStoreSqliteOpenHelper;

    const-string v3, "recordstoredb"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite$RecordStoreSqliteOpenHelper;-><init>(Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 206
    .local v0, "recordStoreSqliteOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 207
    return-void
.end method


# virtual methods
.method public declared-synchronized addRecord(J[B)I
    .locals 22
    .param p1, "recordStoreFk"    # J
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recordstore"

    const/4 v4, 0x0

    const-string v5, "recordstore_pk = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 248
    .local v18, "result":Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const-string v2, "version"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 251
    .local v11, "indexOfColumn":I
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 253
    .local v21, "version":I
    const-string v2, "nextId"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 254
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 256
    .local v15, "nextRecordId":I
    const-string v2, "number_of_records"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 257
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 259
    .local v16, "numberOfRecords":I
    const-string v2, "current_size"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 260
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 262
    .local v19, "size":I
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 266
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 268
    const-string v2, "record_number"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v2, "recordstore_fk"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    :try_start_3
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 272
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "record"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 273
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 274
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 280
    add-int/lit8 v14, v21, 0x1

    .line 281
    .local v14, "newVersion":I
    add-int/lit8 v12, v15, 0x1

    .line 282
    .local v12, "newNextId":I
    add-int/lit8 v13, v16, 0x1

    .line 283
    .local v13, "newNumberOfRecords":I
    move-object/from16 v0, p3

    array-length v2, v0

    add-int v17, v19, v2

    .line 284
    .local v17, "recordStoreSize":I
    const-string v2, "version"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v2, "nextId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v2, "number_of_records"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v2, "current_size"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 289
    :try_start_5
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 290
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recordstore"

    const-string v4, "recordstore_pk= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 292
    sget-object v2, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 296
    monitor-exit p0

    return v15

    .line 261
    .end local v11    # "indexOfColumn":I
    .end local v12    # "newNextId":I
    .end local v13    # "newNumberOfRecords":I
    .end local v14    # "newVersion":I
    .end local v15    # "nextRecordId":I
    .end local v16    # "numberOfRecords":I
    .end local v17    # "recordStoreSize":I
    .end local v19    # "size":I
    .end local v20    # "values":Landroid/content/ContentValues;
    .end local v21    # "version":I
    :catchall_0
    move-exception v2

    .line 262
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 263
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 242
    .end local v18    # "result":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 275
    .restart local v11    # "indexOfColumn":I
    .restart local v15    # "nextRecordId":I
    .restart local v16    # "numberOfRecords":I
    .restart local v18    # "result":Landroid/database/Cursor;
    .restart local v19    # "size":I
    .restart local v20    # "values":Landroid/content/ContentValues;
    .restart local v21    # "version":I
    :catch_0
    move-exception v10

    .line 276
    .local v10, "e":Landroid/database/SQLException;
    :try_start_7
    new-instance v2, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v10}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v10    # "e":Landroid/database/SQLException;
    .restart local v12    # "newNextId":I
    .restart local v13    # "newNumberOfRecords":I
    .restart local v14    # "newVersion":I
    .restart local v17    # "recordStoreSize":I
    :catch_1
    move-exception v10

    .line 294
    .local v10, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized createRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 8
    .param p1, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    if-nez p1, :cond_0

    .line 183
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The parameter \'recordStoreName\' must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 185
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "recordstore"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 191
    .local v1, "id":J
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 192
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 197
    :try_start_3
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not insert record store row with name \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Reason: The method \'SQLiteDatabase.insertOrThrow\' returned \'-1\' instead of throwing an exception."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    .end local v1    # "id":J
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/database/SQLException;
    new-instance v5, Ljavax/microedition/rms/RecordStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not insert record store row with name \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    .end local v0    # "e":Landroid/database/SQLException;
    .restart local v1    # "id":J
    :cond_1
    new-instance v3, Ljavax/microedition/rms/RecordStore;

    invoke-direct {v3, p1, v1, v2}, Ljavax/microedition/rms/RecordStore;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .local v3, "recordStore":Ljavax/microedition/rms/RecordStore;
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized deleteRecordStore(Ljava/lang/String;)V
    .locals 8
    .param p1, "recordStoreName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    .line 231
    .local v0, "recordStore":Ljavax/microedition/rms/RecordStore;
    if-nez v0, :cond_0

    .line 232
    new-instance v1, Ljavax/microedition/rms/RecordStoreNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete row in table \'recordstore\' with value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 234
    .restart local v0    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :cond_0
    :try_start_1
    sget-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 235
    sget-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recordstore"

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    sget-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "record"

    const-string v3, "recordstore_fk = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    sget-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 238
    sget-object v1, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecord(JI)[B
    .locals 10
    .param p1, "recordStorePk"    # J
    .param p3, "recordId"    # I

    .prologue
    const/4 v8, 0x0

    .line 301
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "record"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bytes"

    aput-object v4, v2, v3

    const-string v3, "record_number=? AND recordstore_fk=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    int-to-long v6, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 304
    .local v9, "resultCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-object v8

    .line 307
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 310
    .local v8, "data":[B
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 301
    .end local v8    # "data":[B
    .end local v9    # "resultCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    .restart local v9    # "resultCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 310
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 311
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getRecordIdsForRecordStore(J)[I
    .locals 12
    .param p1, "recordStorePk"    # J

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "record"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "record_number"

    aput-object v4, v2, v3

    const-string v3, "recordstore_fk=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "record_number ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 353
    .local v11, "resultCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 354
    .local v9, "numberOfRecords":I
    if-nez v9, :cond_0

    .line 355
    const/4 v0, 0x0

    new-array v10, v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    :goto_0
    monitor-exit p0

    return-object v10

    .line 357
    :cond_0
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 358
    new-array v10, v9, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    .local v10, "result":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v9, :cond_1

    .line 364
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 350
    .end local v8    # "i":I
    .end local v9    # "numberOfRecords":I
    .end local v10    # "result":[I
    .end local v11    # "resultCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    .restart local v8    # "i":I
    .restart local v9    # "numberOfRecords":I
    .restart local v10    # "result":[I
    .restart local v11    # "resultCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 361
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 363
    .end local v8    # "i":I
    .end local v9    # "numberOfRecords":I
    .end local v10    # "result":[I
    :catchall_1
    move-exception v0

    .line 364
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 365
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized getRecordStore(J)Ljavax/microedition/rms/RecordStore;
    .locals 10
    .param p1, "pk"    # J

    .prologue
    const/4 v8, 0x0

    .line 134
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \'recordStoreName\' must not have a negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_0
    :try_start_1
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recordstore"

    const/4 v2, 0x0

    const-string v3, "recordstore_pk = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 141
    .local v9, "result":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-object v8

    .line 144
    :cond_1
    :try_start_4
    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 146
    .local v8, "recordStore":Ljavax/microedition/rms/RecordStore;
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    .end local v8    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :catchall_1
    move-exception v0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 147
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 10
    .param p1, "recordStoreName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 117
    monitor-enter p0

    if-nez p1, :cond_0

    .line 118
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter \'recordStoreName\' must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_0
    :try_start_1
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recordstore"

    const/4 v2, 0x0

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 123
    .local v9, "resultCursor":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v8

    .line 126
    :cond_1
    :try_start_4
    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->extractRecordStore(Landroid/database/Cursor;)Ljavax/microedition/rms/RecordStore;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 128
    .local v8, "recordStore":Ljavax/microedition/rms/RecordStore;
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    .end local v8    # "recordStore":Ljavax/microedition/rms/RecordStore;
    :catchall_1
    move-exception v0

    .line 128
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 129
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized listRecordStores()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recordstore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 217
    .local v11, "resultCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 218
    .local v9, "numberOfRecordStores":I
    new-array v10, v9, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .local v10, "recordStores":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v9, :cond_0

    .line 224
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    monitor-exit p0

    return-object v10

    .line 220
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v11, v0}, Landroid/database/Cursor;->move(I)Z

    .line 221
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 223
    .end local v8    # "i":I
    .end local v9    # "numberOfRecordStores":I
    .end local v10    # "recordStores":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 224
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 225
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    .end local v11    # "resultCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRecord(JI)V
    .locals 11
    .param p1, "recordStorePk"    # J
    .param p3, "recordId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    .line 339
    .local v1, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    .line 340
    .local v0, "oldData":[B
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getSize()I

    move-result v5

    array-length v6, v0

    sub-int v2, v5, v6

    .line 342
    .local v2, "size":I
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getVersion()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 343
    .local v4, "version":I
    const-string v5, "current_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v5, "version"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "recordstore"

    const-string v7, "recordstore_pk= ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    sget-object v5, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "record"

    const-string v7, "record_number=? AND recordstore_fk=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 338
    .end local v0    # "oldData":[B
    .end local v1    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .end local v2    # "size":I
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "version":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setRecord(JI[B)V
    .locals 13
    .param p1, "recordStorePk"    # J
    .param p3, "recordId"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "bytes"

    move-object/from16 v0, p4

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    sget-object v7, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    sget-object v7, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "record"

    const-string v9, "recordstore_fk= ? AND record_number=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    sget-object v7, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 322
    sget-object v7, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v3

    .line 327
    .local v3, "recordStore":Ljavax/microedition/rms/RecordStore;
    invoke-virtual/range {p0 .. p3}, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v2

    .line 328
    .local v2, "oldData":[B
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 329
    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->getSize()I

    move-result v7

    array-length v8, v2

    neg-int v8, v8

    add-int/2addr v7, v8

    move-object/from16 v0, p4

    array-length v8, v0

    add-int v4, v7, v8

    .line 330
    .local v4, "size":I
    invoke-virtual {v3}, Ljavax/microedition/rms/RecordStore;->getVersion()I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 331
    .local v6, "version":I
    const-string v7, "current_size"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v7, "version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    sget-object v7, Lorg/loon/framework/android/game/core/store/RecordStoreSqlLite;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "recordstore"

    const-string v9, "recordstore_pk= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 323
    .end local v2    # "oldData":[B
    .end local v3    # "recordStore":Ljavax/microedition/rms/RecordStore;
    .end local v4    # "size":I
    .end local v6    # "version":I
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljavax/microedition/rms/RecordStoreException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
