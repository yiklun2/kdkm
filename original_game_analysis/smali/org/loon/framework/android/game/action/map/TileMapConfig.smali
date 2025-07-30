.class public Lorg/loon/framework/android/game/action/map/TileMapConfig;
.super Ljava/lang/Object;
.source "TileMapConfig.java"


# instance fields
.field private backMap:[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAthwartArray(Ljava/lang/String;)[[I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lorg/loon/framework/android/game/action/map/TileMapConfig;->loadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 104
    .local v0, "col":I
    new-array v3, v0, [[I

    .line 105
    .local v3, "result":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 108
    return-object v3

    .line 106
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v3, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static loadJustArray(Ljava/lang/String;)[[I
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lorg/loon/framework/android/game/action/map/TileMapConfig;->loadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 115
    .local v0, "col":I
    new-array v3, v0, [[I

    .line 116
    .local v3, "mapArray":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 119
    if-lez v0, :cond_1

    add-int/lit8 v8, v0, -0x1

    :goto_1
    aget-object v8, v3, v8

    array-length v5, v8

    .line 120
    .local v5, "row":I
    filled-new-array {v5, v0}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 121
    .local v4, "result":[[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_2
    if-lt v7, v0, :cond_2

    .line 126
    return-object v4

    .line 117
    .end local v4    # "result":[[I
    .end local v5    # "row":I
    .end local v7    # "y":I
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aput-object v8, v3, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 122
    .restart local v4    # "result":[[I
    .restart local v5    # "row":I
    .restart local v7    # "y":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_3
    if-lt v6, v5, :cond_3

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 123
    :cond_3
    aget-object v8, v4, v6

    aget-object v9, v3, v7

    aget v9, v9, v6

    aput v9, v8, v7

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static loadList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 49
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v5, 0x0

    .line 53
    .local v5, "result":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_2

    .line 65
    if-eqz v3, :cond_1

    .line 67
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    const/4 v3, 0x0

    .line 73
    :cond_1
    :goto_1
    return-object v4

    .line 54
    :cond_2
    :try_start_2
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 55
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "stringArray":[Ljava/lang/String;
    array-length v6, v7

    .line 57
    .local v6, "size":I
    new-array v2, v6, [I

    .line 58
    .local v2, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v6, :cond_4

    .line 61
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    .end local v2    # "intArray":[I
    .end local v6    # "size":I
    .end local v7    # "stringArray":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 65
    if-eqz v3, :cond_3

    .line 67
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 68
    const/4 v3, 0x0

    .line 72
    :cond_3
    :goto_3
    throw v8

    .line 59
    .restart local v0    # "i":I
    .restart local v2    # "intArray":[I
    .restart local v6    # "size":I
    .restart local v7    # "stringArray":[Ljava/lang/String;
    :cond_4
    :try_start_4
    aget-object v8, v7, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 69
    .end local v0    # "i":I
    .end local v2    # "intArray":[I
    .end local v6    # "size":I
    .end local v7    # "stringArray":[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_3

    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public static reversalXandY([[I)[[I
    .locals 7
    .param p0, "array"    # [[I

    .prologue
    .line 89
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v0, v5

    .line 90
    .local v0, "col":I
    array-length v2, p0

    .line 91
    .local v2, "row":I
    filled-new-array {v0, v2}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 92
    .local v1, "result":[[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 97
    return-object v1

    .line 93
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    aget-object v5, v1, v3

    aget-object v6, p0, v4

    aget v6, v6, v3

    aput v6, v5, v4

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static reversalXandY([[Ljavax/microedition/lcdui/Image;)[[Ljavax/microedition/lcdui/Image;
    .locals 7
    .param p0, "array"    # [[Ljavax/microedition/lcdui/Image;

    .prologue
    .line 77
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v0, v5

    .line 78
    .local v0, "col":I
    array-length v2, p0

    .line 79
    .local v2, "row":I
    filled-new-array {v0, v2}, [I

    move-result-object v5

    const-class v6, Ljavax/microedition/lcdui/Image;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljavax/microedition/lcdui/Image;

    .line 80
    .local v1, "result":[[Ljavax/microedition/lcdui/Image;
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 85
    return-object v1

    .line 81
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_1
    aget-object v5, v1, v3

    aget-object v6, p0, v4

    aget-object v6, v6, v3

    aput-object v6, v5, v4

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getBackMap()[[I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileMapConfig;->backMap:[[I

    return-object v0
.end method

.method public setBackMap([[I)V
    .locals 0
    .param p1, "backMap"    # [[I

    .prologue
    .line 44
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/TileMapConfig;->backMap:[[I

    .line 45
    return-void
.end method
