.class public abstract Lorg/loon/framework/android/game/core/resource/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# static fields
.field private static final assetsFlag:Ljava/lang/String; = "assets"

.field private static classLoader:Ljava/lang/ClassLoader;

.field private static final lazyResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->lock:Ljava/lang/Object;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    .line 49
    const/16 v2, 0x1e

    .line 48
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    .line 55
    :try_start_0
    const-class v1, Lorg/loon/framework/android/game/core/resource/Resources;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->classLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 56
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 57
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 97
    return-void
.end method

.method public static final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/loon/framework/android/game/core/resource/Resources;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static final getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static final getDataSource(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 338
    if-nez p0, :cond_1

    move-object v1, v4

    .line 364
    :cond_0
    :goto_0
    return-object v1

    .line 341
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v1, v5, [B

    .line 345
    .local v1, "bytes":[B
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-gez v3, :cond_3

    .line 348
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 353
    if-eqz v0, :cond_2

    .line 354
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 355
    const/4 v0, 0x0

    .line 357
    :cond_2
    if-eqz p0, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    const/4 p0, 0x0

    goto :goto_0

    .line 346
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 349
    .end local v3    # "read":I
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 354
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 355
    const/4 v0, 0x0

    .line 357
    :cond_4
    if-eqz p0, :cond_5

    .line 358
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 359
    const/4 p0, 0x0

    :cond_5
    :goto_2
    move-object v1, v4

    .line 350
    goto :goto_0

    .line 351
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 353
    if-eqz v0, :cond_6

    .line 354
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 355
    const/4 v0, 0x0

    .line 357
    :cond_6
    if-eqz p0, :cond_7

    .line 358
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 359
    const/4 p0, 0x0

    .line 363
    :cond_7
    :goto_3
    throw v4

    .line 361
    .restart local v3    # "read":I
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3    # "read":I
    :catch_2
    move-exception v5

    goto :goto_3

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static final getHttpStream(Ljava/lang/String;)[B
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 384
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .local v5, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 390
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 394
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    move-object v0, v6

    .line 395
    check-cast v0, [B

    .line 397
    .local v0, "arrayByte":[B
    const/16 v7, 0x1000

    :try_start_2
    new-array v0, v7, [B

    .line 399
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-gez v4, :cond_3

    .line 402
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 407
    if-eqz v3, :cond_0

    .line 408
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 409
    const/4 v3, 0x0

    .line 411
    :cond_0
    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 413
    const/4 v2, 0x0

    :cond_1
    :goto_1
    move-object v6, v0

    .line 419
    .end local v0    # "arrayByte":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    .end local v5    # "url":Ljava/net/URL;
    :cond_2
    :goto_2
    return-object v6

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 392
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arrayByte":[B
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    :cond_3
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 403
    .end local v4    # "read":I
    :catch_2
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 408
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 409
    const/4 v3, 0x0

    .line 411
    :cond_4
    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 413
    const/4 v2, 0x0

    goto :goto_2

    .line 405
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 407
    if-eqz v3, :cond_5

    .line 408
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 409
    const/4 v3, 0x0

    .line 411
    :cond_5
    if-eqz v2, :cond_6

    .line 412
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 413
    const/4 v2, 0x0

    .line 417
    :cond_6
    :goto_3
    throw v6

    .line 415
    .restart local v4    # "read":I
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v4    # "read":I
    :catch_4
    move-exception v7

    goto :goto_3

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method public static getNames()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getNotCacheResource(Ljava/lang/String;)Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    .locals 8
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 258
    if-nez p0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 292
    :cond_0
    return-object v0

    .line 261
    :cond_1
    sget-object v5, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 263
    :cond_2
    const/4 v4, 0x0

    .line 265
    .local v4, "in":Ljava/io/InputStream;
    const-string v5, "$"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 266
    .local v3, "filePath":Z
    if-nez v3, :cond_3

    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->isExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 268
    :cond_3
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 269
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4    # "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    .line 270
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 269
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_0
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayByte;

    invoke-direct {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;-><init>()V

    .line 283
    .local v0, "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->write(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 285
    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    :goto_1
    if-nez v0, :cond_0

    .line 290
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " file not found !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 271
    .end local v0    # "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "ex":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " file not found !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_4
    :try_start_2
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_0

    .line 277
    :catch_1
    move-exception v1

    .line 278
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " file not found !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    :catch_2
    move-exception v2

    .line 287
    .local v2, "ex":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNotCacheResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v2, "file:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, ":/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 322
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->getNotCacheResource(Ljava/lang/String;)Lorg/loon/framework/android/game/utils/collection/ArrayByte;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public static final getResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getResource(Ljava/lang/String;)Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    .locals 11
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 202
    if-nez p0, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    sget-object v8, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    :cond_2
    move-object v6, p0

    .line 208
    .local v6, "innerName":Ljava/lang/String;
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "keyName":Ljava/lang/String;
    sget-object v9, Lorg/loon/framework/android/game/core/resource/Resources;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 210
    :try_start_0
    sget-object v8, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/16 v10, 0x1e

    if-le v8, v10, :cond_3

    .line 211
    sget-object v8, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 213
    :cond_3
    sget-object v8, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 214
    .local v1, "data":[B
    if-eqz v1, :cond_4

    .line 215
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayByte;

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;-><init>([B)V

    monitor-exit v9

    goto :goto_0

    .line 209
    .end local v1    # "data":[B
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1    # "data":[B
    :cond_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    const/4 v5, 0x0

    .line 220
    .local v5, "in":Ljava/io/InputStream;
    const-string v8, "$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 221
    .local v4, "filePath":Z
    if-nez v4, :cond_5

    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->isExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 223
    :cond_5
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 224
    new-instance v5, Ljava/io/BufferedInputStream;

    .end local v5    # "in":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    .line 225
    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    .restart local v5    # "in":Ljava/io/InputStream;
    :goto_1
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayByte;

    invoke-direct {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;-><init>()V

    .line 238
    .local v0, "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    :try_start_3
    invoke-virtual {v0, v5}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->write(Ljava/io/InputStream;)V

    .line 239
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 240
    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->reset()V

    .line 241
    sget-object v8, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->getData()[B

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 245
    :goto_2
    if-nez v0, :cond_0

    .line 246
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " file not found !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 226
    .end local v0    # "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    .end local v5    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "ex":Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " file not found !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_6
    :try_start_4
    invoke-static {v6}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    goto :goto_1

    .line 232
    :catch_1
    move-exception v2

    .line 233
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " file not found !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 242
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "byteArray":Lorg/loon/framework/android/game/utils/collection/ArrayByte;
    :catch_2
    move-exception v3

    .line 243
    .local v3, "ex":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v2, "file:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, ":/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 304
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->getResource(Ljava/lang/String;)Lorg/loon/framework/android/game/utils/collection/ArrayByte;

    move-result-object v3

    invoke-virtual {v3}, Lorg/loon/framework/android/game/utils/collection/ArrayByte;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public static final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static isExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static openResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .param p0, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "fileName":Ljava/lang/String;
    const-string v9, "assets"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "assets"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 162
    :cond_0
    sget-object v9, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 163
    .local v4, "flag":Z
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 165
    .local v0, "asset":Landroid/content/res/AssetManager;
    if-eqz v4, :cond_2

    .line 166
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "file":Ljava/lang/String;
    :goto_0
    sget-object v9, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 171
    .local v6, "index":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 172
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 191
    .end local v0    # "asset":Landroid/content/res/AssetManager;
    .end local v2    # "file":Ljava/lang/String;
    .end local v4    # "flag":Z
    .end local v6    # "index":I
    :goto_2
    return-object v5

    .line 168
    .restart local v0    # "asset":Landroid/content/res/AssetManager;
    .restart local v4    # "flag":Z
    :cond_2
    move-object v2, p0

    .restart local v2    # "file":Ljava/lang/String;
    goto :goto_0

    .line 174
    .restart local v6    # "index":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 175
    .local v7, "length":I
    sget-object v9, Lorg/loon/framework/android/game/core/LSystem;->FS:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 176
    .local v8, "size":I
    if-ge v8, v7, :cond_1

    .line 177
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 182
    .end local v0    # "asset":Landroid/content/res/AssetManager;
    .end local v2    # "file":Ljava/lang/String;
    .end local v4    # "flag":Z
    .end local v6    # "index":I
    .end local v7    # "length":I
    .end local v8    # "size":I
    :cond_4
    sget-object v9, Lorg/loon/framework/android/game/core/resource/Resources;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_5

    .line 183
    const/4 v5, 0x0

    .line 185
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    sget-object v9, Lorg/loon/framework/android/game/core/resource/Resources;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v9, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " not found!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_2
.end method

.method public static openResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .locals 4
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "c"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    .local v0, "result":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 143
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception to load resource ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    const-string v3, "] ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    return-object v0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v1, Lorg/loon/framework/android/game/core/resource/Resources;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lorg/loon/framework/android/game/core/resource/Resources;->lazyResources:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v1

    .line 93
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lorg/loon/framework/android/game/core/resource/Resources;->destroy()V

    .line 101
    return-void
.end method
