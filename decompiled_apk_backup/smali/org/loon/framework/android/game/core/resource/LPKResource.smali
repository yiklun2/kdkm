.class public abstract Lorg/loon/framework/android/game/core/resource/LPKResource;
.super Ljava/lang/Object;
.source "LPKResource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLPKInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 94
    .local v3, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-static {v0}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readHeader(Ljava/io/DataInputStream;)Lorg/loon/framework/android/game/core/resource/LPKHeader;

    move-result-object v2

    .line 96
    .local v2, "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    invoke-virtual {v2}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->getTables()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v0, v5}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readLPKTable(Ljava/io/DataInputStream;I)[Lorg/loon/framework/android/game/core/resource/LPKTable;

    move-result-object v1

    .line 97
    .local v1, "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v4
.end method

.method public static makeBuffer([BI)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 249
    return-void

    .line 247
    :cond_0
    aget-byte v1, p0, v0

    xor-int/lit16 v1, v1, 0xf7

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static open8888Image(Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    check-cast v0, [B

    .line 123
    .local v0, "buffer":[B
    :try_start_0
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/core/resource/LPKResource;->openResource(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    invoke-static {v0}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->load8888Image([B)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File not found. ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    check-cast v0, [B

    .line 133
    .local v0, "buffer":[B
    :try_start_0
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/core/resource/LPKResource;->openResource(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadBitmap([BZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File not found. ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openImage(Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, [B

    .line 113
    .local v0, "buffer":[B
    :try_start_0
    invoke-static {p0, p1}, Lorg/loon/framework/android/game/core/resource/LPKResource;->openResource(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage([B)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File not found. ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openResource(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 14
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v9, 0x0

    .line 47
    .local v9, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 49
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 50
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-static {v2}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readHeader(Ljava/io/DataInputStream;)Lorg/loon/framework/android/game/core/resource/LPKHeader;

    move-result-object v7

    .line 52
    .local v7, "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    invoke-virtual {v7}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->getTables()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v2, v11}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readLPKTable(Ljava/io/DataInputStream;I)[Lorg/loon/framework/android/game/core/resource/LPKTable;

    move-result-object v5

    .line 53
    .local v5, "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    const/4 v6, 0x0

    .line 54
    .local v6, "find":Z
    const/4 v4, 0x0

    .line 55
    .local v4, "fileIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v11, v5

    if-lt v8, v11, :cond_1

    .line 64
    :goto_1
    if-nez v6, :cond_3

    .line 65
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "File not found. ( "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 66
    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .end local v4    # "fileIndex":I
    .end local v5    # "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    .end local v6    # "find":Z
    .end local v7    # "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .end local v8    # "i":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 72
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "File not found. ( "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 74
    :goto_3
    if-eqz v1, :cond_0

    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 77
    const/4 v1, 0x0

    .line 82
    :cond_0
    :goto_4
    throw v11

    .line 56
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fileIndex":I
    .restart local v5    # "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    .restart local v6    # "find":Z
    .restart local v7    # "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .restart local v8    # "i":I
    :cond_1
    :try_start_4
    new-instance v11, Ljava/lang/String;

    aget-object v12, v5, v8

    invoke-virtual {v12}, Lorg/loon/framework/android/game/core/resource/LPKTable;->getFileName()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 57
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "innerName":Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 59
    const/4 v6, 0x1

    .line 60
    move v4, v8

    .line 61
    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 68
    .end local v10    # "innerName":Ljava/lang/String;
    :cond_3
    aget-object v11, v5, v4

    invoke-static {v2, v7, v11}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readFileFromPak(Ljava/io/DataInputStream;Lorg/loon/framework/android/game/core/resource/LPKHeader;Lorg/loon/framework/android/game/core/resource/LPKTable;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 74
    .local v0, "buff":[B
    if-eqz v2, :cond_4

    .line 76
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 77
    const/4 v1, 0x0

    .line 69
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :goto_5
    return-object v0

    .line 78
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v0    # "buff":[B
    .end local v4    # "fileIndex":I
    .end local v5    # "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    .end local v6    # "find":Z
    .end local v7    # "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .end local v8    # "i":I
    :catch_2
    move-exception v12

    goto :goto_4

    .line 73
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .line 71
    :catch_3
    move-exception v3

    goto :goto_2

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "buff":[B
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fileIndex":I
    .restart local v5    # "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    .restart local v6    # "find":Z
    .restart local v7    # "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .restart local v8    # "i":I
    :cond_4
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_5
.end method

.method public static outputNextOffset(JJ)J
    .locals 2
    .param p0, "sourceFileSize"    # J
    .param p2, "lastFileOffset"    # J

    .prologue
    .line 236
    add-long v0, p2, p0

    return-wide v0
.end method

.method public static outputOffset(Lorg/loon/framework/android/game/core/resource/LPKHeader;)J
    .locals 6
    .param p0, "header"    # Lorg/loon/framework/android/game/core/resource/LPKHeader;

    .prologue
    .line 225
    invoke-static {}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->getTables()J

    move-result-wide v2

    invoke-static {}, Lorg/loon/framework/android/game/core/resource/LPKTable;->size()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static readByteArray(Ljava/io/DataInputStream;I)[B
    .locals 3
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    new-array v1, p1, [B

    .line 212
    .local v1, "readBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 215
    return-object v1

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readFileFromPak(Ljava/io/DataInputStream;Lorg/loon/framework/android/game/core/resource/LPKHeader;Lorg/loon/framework/android/game/core/resource/LPKTable;)[B
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "header"    # Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .param p2, "fileTable"    # Lorg/loon/framework/android/game/core/resource/LPKTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/resource/LPKTable;->getOffSet()J

    move-result-wide v3

    invoke-static {p1}, Lorg/loon/framework/android/game/core/resource/LPKResource;->outputOffset(Lorg/loon/framework/android/game/core/resource/LPKHeader;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 190
    invoke-virtual {p2}, Lorg/loon/framework/android/game/core/resource/LPKTable;->getFileSize()J

    move-result-wide v3

    long-to-int v1, v3

    .line 191
    .local v1, "fileLength":I
    new-array v0, v1, [B

    .line 192
    .local v0, "fileBuff":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 193
    .local v2, "readLength":I
    if-ge v2, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 197
    .end local v0    # "fileBuff":[B
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "fileBuff":[B
    :cond_0
    invoke-static {v0, v2}, Lorg/loon/framework/android/game/core/resource/LPKResource;->makeBuffer([BI)V

    goto :goto_0
.end method

.method public static readHeader(Ljava/io/DataInputStream;)Lorg/loon/framework/android/game/core/resource/LPKHeader;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/loon/framework/android/game/core/resource/LPKHeader;

    invoke-direct {v0}, Lorg/loon/framework/android/game/core/resource/LPKHeader;-><init>()V

    .line 149
    .local v0, "header":Lorg/loon/framework/android/game/core/resource/LPKHeader;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->setPAKIdentity(I)V

    .line 150
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v1

    .line 151
    .local v1, "pass":[B
    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->setPassword([B)V

    .line 152
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->setVersion(F)V

    .line 153
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/loon/framework/android/game/core/resource/LPKHeader;->setTables(J)V

    .line 154
    return-object v0
.end method

.method public static readLPKTable(Ljava/io/DataInputStream;I)[Lorg/loon/framework/android/game/core/resource/LPKTable;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "fileTableNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    new-array v0, p1, [Lorg/loon/framework/android/game/core/resource/LPKTable;

    .line 168
    .local v0, "fileTable":[Lorg/loon/framework/android/game/core/resource/LPKTable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 175
    return-object v0

    .line 169
    :cond_0
    new-instance v1, Lorg/loon/framework/android/game/core/resource/LPKTable;

    invoke-direct {v1}, Lorg/loon/framework/android/game/core/resource/LPKTable;-><init>()V

    .line 170
    .local v1, "ft":Lorg/loon/framework/android/game/core/resource/LPKTable;
    const/16 v3, 0x1e

    invoke-static {p0, v3}, Lorg/loon/framework/android/game/core/resource/LPKResource;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/loon/framework/android/game/core/resource/LPKTable;->setFileName([B)V

    .line 171
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/loon/framework/android/game/core/resource/LPKTable;->setFileSize(J)V

    .line 172
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/loon/framework/android/game/core/resource/LPKTable;->setOffSet(J)V

    .line 173
    aput-object v1, v0, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
