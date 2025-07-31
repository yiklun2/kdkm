.class public Lorg/loon/framework/android/game/action/avg/command/Command;
.super Lorg/loon/framework/android/game/action/avg/command/Conversion;
.source "Command.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cacheScript:Ljava/util/Map; = null

.field private static conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap; = null

.field private static functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap; = null

.field private static reader:Ljava/lang/StringBuffer; = null

.field private static final serialVersionUID:J = 0x1L

.field private static setEnvironmentList:Ljava/util/Map;


# instance fields
.field private addCommand:Z

.field private backIfBool:Z

.field private cacheCommandName:Ljava/lang/String;

.field private commandString:Ljava/lang/String;

.field private elseif_bool:Z

.field private esleflag:Z

.field private executeCommand:Ljava/lang/String;

.field private flaging:Z

.field private functioning:Z

.field private if_bool:Z

.field private ifing:Z

.field private innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

.field private isCache:Z

.field private isCall:Z

.field private isInnerCommand:Z

.field private isRead:Z

.field private nowPosFlagName:Ljava/lang/String;

.field private offsetPos:I

.field private printTags:Ljava/util/List;

.field private randTags:Ljava/util/List;

.field private scriptList:Ljava/util/List;

.field private scriptName:Ljava/lang/String;

.field private scriptSize:I

.field private temps:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Conversion;-><init>()V

    .line 70
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    .line 73
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    .line 76
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->functioning:Z

    .line 79
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 81
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    .line 127
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Command;->initCommand()V

    .line 128
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/avg/command/Command;->formatCommand(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Conversion;-><init>()V

    .line 70
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    .line 73
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    .line 76
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->functioning:Z

    .line 79
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 81
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    .line 137
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Command;->initCommand()V

    .line 138
    const-string v0, "function"

    invoke-virtual {p0, v0, p2}, Lorg/loon/framework/android/game/action/avg/command/Command;->formatCommand(Ljava/lang/String;Ljava/util/List;)V

    .line 139
    return-void
.end method

.method public static commandSplit(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 917
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "result":Ljava/lang/String;
    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 920
    const-string v2, "\t"

    const-string v3, "@"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    const/16 v2, 0x3d

    invoke-static {v1, v2}, Lorg/loon/framework/android/game/utils/StringUtils;->charCount(Ljava/lang/String;C)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 922
    const-string v2, " "

    const-string v3, "@"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    const-string v2, "="

    const-string v3, "@=@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    :cond_0
    :goto_0
    const-string v2, "@{2,}"

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 939
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "cmds":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 925
    .end local v0    # "cmds":[Ljava/lang/String;
    :cond_1
    const-string v2, " "

    const-string v3, "@"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v2, "<="

    const-string v3, "@<=@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    const-string v2, ">="

    const-string v3, "@>=@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 928
    const-string v2, "=="

    const-string v3, "@==@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    const-string v2, "!="

    const-string v3, "@!=@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 931
    const-string v2, "<"

    const-string v3, "@<@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 933
    :cond_2
    const-string v2, ">="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 934
    const-string v2, ">"

    const-string v3, "@>@"

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "messages"    # Ljava/lang/String;
    .param p1, "startString"    # Ljava/lang/String;
    .param p2, "endString"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Lorg/loon/framework/android/game/action/avg/command/Command;->getNameTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "results":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 323
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNameTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "messages"    # Ljava/lang/String;
    .param p1, "startString"    # Ljava/lang/String;
    .param p2, "endString"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 336
    invoke-static {v0, v1, v2}, Lorg/loon/framework/android/game/action/avg/command/Command;->getNameTags([C[C[C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNameTags([C[C[C)Ljava/util/List;
    .locals 13
    .param p0, "messages"    # [C
    .param p1, "startString"    # [C
    .param p2, "endString"    # [C

    .prologue
    .line 350
    array-length v0, p0

    .line 351
    .local v0, "dlength":I
    array-length v8, p1

    .line 352
    .local v8, "slength":I
    array-length v1, p2

    .line 353
    .local v1, "elength":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v10, "tagList":Ljava/util/List;
    const/4 v4, 0x0

    .line 355
    .local v4, "lookup":Z
    const/4 v6, 0x0

    .line 356
    .local v6, "lookupStartIndex":I
    const/4 v5, 0x0

    .line 358
    .local v5, "lookupEndIndex":I
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 359
    .local v7, "sbr":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 384
    return-object v10

    .line 360
    :cond_0
    aget-char v9, p0, v2

    .line 361
    .local v9, "tag":C
    aget-char v11, p1, v6

    if-ne v9, v11, :cond_1

    .line 362
    add-int/lit8 v6, v6, 0x1

    .line 364
    :cond_1
    if-ne v6, v8, :cond_2

    .line 365
    const/4 v6, 0x0

    .line 366
    const/4 v4, 0x1

    .line 368
    :cond_2
    if-eqz v4, :cond_3

    .line 369
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    :cond_3
    aget-char v11, p2, v5

    if-ne v9, v11, :cond_4

    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 374
    :cond_4
    if-ne v5, v1, :cond_5

    .line 375
    const/4 v5, 0x0

    .line 376
    const/4 v4, 0x0

    .line 377
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 378
    .local v3, "length":I
    if-lez v3, :cond_5

    .line 379
    const/4 v11, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 359
    .end local v3    # "length":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static includeFile(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 877
    const/4 v2, 0x0

    .line 878
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 879
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 881
    .local v6, "result":Ljava/util/List;
    :try_start_0
    invoke-static {p0}, Lorg/loon/framework/android/game/core/resource/Resources;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 882
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 883
    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 882
    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 885
    .local v5, "record":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-nez v5, :cond_2

    .line 898
    if-eqz v4, :cond_1

    .line 900
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 906
    :cond_1
    :goto_1
    return-object v6

    .line 886
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 888
    const-string v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 889
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 890
    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 891
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 895
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 896
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "record":Ljava/lang/String;
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 897
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 898
    :goto_3
    if-eqz v3, :cond_3

    .line 900
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 905
    :cond_3
    :goto_4
    throw v7

    .line 901
    :catch_1
    move-exception v0

    .line 902
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 901
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "record":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 902
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 897
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 895
    .end local v5    # "record":Ljava/lang/String;
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static initCommand()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 142
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x5dc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    .line 144
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-direct {v0, v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    .line 146
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    .line 149
    :cond_0
    return-void
.end method

.method private innerCallFalse()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCall:Z

    .line 595
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 597
    return-void
.end method

.method private innerCallTrue()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCall:Z

    .line 590
    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    .line 591
    return-void
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    :cond_0
    return-void
.end method

.method private setupIF(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 11
    .param p1, "commandString"    # Ljava/lang/String;
    .param p2, "nowPosFlagName"    # Ljava/lang/String;
    .param p3, "setEnvironmentList"    # Ljava/util/Map;
    .param p4, "conditionEnvironmentList"    # Ljava/util/Map;

    .prologue
    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, "result":Z
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :try_start_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 175
    .local v5, "temps":Ljava/util/List;
    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 176
    .local v6, "valueA":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 177
    .local v7, "valueB":Ljava/lang/String;
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 179
    .local v6, "valueA":Ljava/lang/Object;
    :goto_0
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 183
    .local v7, "valueB":Ljava/lang/Object;
    :goto_1
    invoke-static {v7}, Lorg/loon/framework/android/game/action/avg/command/Command;->isNumber(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 186
    :try_start_1
    iget-object v8, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->compute:Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;

    invoke-virtual {v8, v7}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->parse(Ljava/lang/Object;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 190
    .end local v7    # "valueB":Ljava/lang/Object;
    :cond_0
    :goto_2
    const/4 v8, 0x2

    :try_start_2
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "condition":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-nez v7, :cond_2

    .line 195
    :cond_1
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_2
    const-string v8, "=="

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    new-instance v8, Ljava/lang/Boolean;

    .line 202
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 201
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v0    # "condition":Ljava/lang/String;
    .end local v5    # "temps":Ljava/util/List;
    .end local v6    # "valueA":Ljava/lang/Object;
    :cond_3
    :goto_3
    return v4

    .line 178
    .restart local v5    # "temps":Ljava/util/List;
    .local v6, "valueA":Ljava/lang/String;
    .local v7, "valueB":Ljava/lang/String;
    :cond_4
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 180
    .local v6, "valueA":Ljava/lang/Object;
    :cond_5
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 204
    .end local v7    # "valueB":Ljava/lang/String;
    .restart local v0    # "condition":Ljava/lang/String;
    :cond_6
    const-string v8, "!="

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 205
    new-instance v8, Ljava/lang/Boolean;

    .line 206
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v4, 0x0

    :goto_4
    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 205
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 233
    .end local v0    # "condition":Ljava/lang/String;
    .end local v5    # "temps":Ljava/util/List;
    .end local v6    # "valueA":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "condition":Ljava/lang/String;
    .restart local v5    # "temps":Ljava/util/List;
    .restart local v6    # "valueA":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    .line 208
    :cond_8
    :try_start_3
    const-string v8, ">"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 209
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "numberA":I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "numberB":I
    new-instance v8, Ljava/lang/Boolean;

    .line 212
    if-le v2, v3, :cond_9

    const/4 v4, 0x1

    :goto_5
    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 211
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 212
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 214
    .end local v2    # "numberA":I
    .end local v3    # "numberB":I
    :cond_a
    const-string v8, "<"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 215
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 216
    .restart local v2    # "numberA":I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 217
    .restart local v3    # "numberB":I
    new-instance v8, Ljava/lang/Boolean;

    .line 218
    if-ge v2, v3, :cond_b

    const/4 v4, 0x1

    :goto_6
    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 217
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 218
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 221
    .end local v2    # "numberA":I
    .end local v3    # "numberB":I
    :cond_c
    const-string v8, ">="

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 222
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 223
    .restart local v2    # "numberA":I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    .restart local v3    # "numberB":I
    new-instance v8, Ljava/lang/Boolean;

    .line 225
    if-lt v2, v3, :cond_d

    const/4 v4, 0x1

    :goto_7
    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 224
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 225
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 227
    .end local v2    # "numberA":I
    .end local v3    # "numberB":I
    :cond_e
    const-string v8, "<="

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 228
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 229
    .restart local v2    # "numberA":I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 230
    .restart local v3    # "numberB":I
    new-instance v8, Ljava/lang/Boolean;

    .line 231
    if-gt v2, v3, :cond_f

    const/4 v4, 0x1

    :goto_8
    invoke-direct {v8, v4}, Ljava/lang/Boolean;-><init>(Z)V

    .line 230
    invoke-interface {p4, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 231
    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    .line 187
    .end local v0    # "condition":Ljava/lang/String;
    .end local v2    # "numberA":I
    .end local v3    # "numberB":I
    .local v7, "valueB":Ljava/lang/Object;
    :catch_1
    move-exception v8

    goto/16 :goto_2
.end method

.method private setupRandom()V
    .locals 7

    .prologue
    .line 549
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v4, "rand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 550
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v4, "rand("

    .line 551
    const-string v5, ")"

    .line 550
    invoke-static {v3, v4, v5}, Lorg/loon/framework/android/game/action/avg/command/Command;->getNameTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->randTags:Ljava/util/List;

    .line 552
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->randTags:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->randTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 554
    .restart local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 557
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 560
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rand("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-static {v3, v4, v5}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    goto :goto_0

    .line 564
    :cond_2
    invoke-static {v1}, Lorg/loon/framework/android/game/action/avg/command/Command;->isNumber(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rand("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 571
    sget-object v5, Lorg/loon/framework/android/game/action/avg/command/Command;->GLOBAL_RAND:Ljava/util/Random;

    .line 573
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 572
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 571
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-static {v3, v4, v5}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    goto :goto_0

    .line 578
    :cond_3
    iget-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rand("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 580
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 581
    sget-object v5, Lorg/loon/framework/android/game/action/avg/command/Command;->GLOBAL_RAND:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-static {v3, v4, v5}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    iput-object v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private setupSET()V
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x1

    .line 502
    iget-object v8, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 503
    iget-object v8, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-static {v8}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 504
    .local v7, "temps":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 505
    .local v3, "len":I
    const/4 v4, 0x0

    .line 506
    .local v4, "result":Ljava/lang/String;
    if-ne v3, v10, :cond_4

    .line 507
    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 518
    sget-object v8, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 519
    .local v6, "set":Ljava/util/Set;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 527
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 528
    sget-object v8, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 529
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 528
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v6    # "set":Ljava/util/Set;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 541
    .end local v3    # "len":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "temps":Ljava/util/List;
    :cond_3
    return-void

    .line 508
    .restart local v3    # "len":I
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v7    # "temps":Ljava/util/List;
    :cond_4
    if-le v3, v10, :cond_0

    .line 509
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 510
    .local v5, "sbr":Ljava/lang/StringBuffer;
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_5

    .line 513
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 511
    :cond_5
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 520
    .end local v1    # "i":I
    .end local v5    # "sbr":Ljava/lang/StringBuffer;
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v6    # "set":Ljava/util/Set;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 521
    .local v0, "entry":Ljava/util/Map$Entry;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 522
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 522
    invoke-static {v4, v8, v9}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 530
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_8
    invoke-static {v4}, Lorg/loon/framework/android/game/action/avg/command/Command;->isChinese(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v4}, Lorg/loon/framework/android/game/action/avg/command/Command;->isEnglishAndNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 531
    :cond_9
    sget-object v8, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 534
    :cond_a
    sget-object v8, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->compute:Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;

    invoke-virtual {v10, v4}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->parse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public batchToList()Ljava/util/List;
    .locals 3

    .prologue
    .line 474
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptSize:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    .local v1, "reslist":Ljava/util/List;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->next()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    return-object v1

    .line 476
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->doExecute()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "execute":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 478
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public batchToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptSize:I

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 491
    .local v1, "resString":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->next()Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 492
    :cond_1
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->doExecute()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "execute":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public closeCache()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCache:Z

    .line 253
    return-void
.end method

.method public declared-synchronized doExecute()Ljava/lang/String;
    .locals 15

    .prologue
    .line 606
    monitor-enter p0

    const/4 v11, 0x0

    :try_start_0
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    .line 608
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 610
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    .line 612
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->if_bool:Z

    .line 614
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->elseif_bool:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :try_start_1
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCall:Z

    if-eqz v11, :cond_3

    .line 619
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->getVariables()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->setVariables(Ljava/util/Map;)V

    .line 620
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 621
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->doExecute()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 862
    :try_start_2
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 610
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 623
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCallFalse()V

    .line 624
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 862
    :try_start_4
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 606
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 627
    :cond_3
    :try_start_5
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCall:Z

    if-nez v11, :cond_5

    .line 628
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->getVariables()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->setVariables(Ljava/util/Map;)V

    .line 629
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 630
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->doExecute()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 862
    :try_start_6
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 632
    :cond_4
    const/4 v11, 0x0

    :try_start_7
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 633
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    .line 634
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 862
    :try_start_8
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 638
    :cond_5
    :try_start_9
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->nowPosFlagName:Ljava/lang/String;

    .line 639
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v9

    .line 640
    .local v9, "length":I
    if-lez v9, :cond_6

    .line 641
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 642
    .local v6, "ifResult":Ljava/lang/Object;
    if-eqz v6, :cond_6

    .line 643
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "ifResult":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    .line 648
    :cond_6
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptList:Ljava/util/List;

    iget v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    .line 650
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "reset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 651
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Command;->resetCache()V

    .line 652
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 862
    :try_start_a
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 655
    :cond_7
    :try_start_b
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCache:Z

    if-eqz v11, :cond_8

    .line 657
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->nowCacheOffsetName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheCommandName:Ljava/lang/String;

    .line 659
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheCommandName:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    .local v0, "cache":Ljava/lang/Object;
    if-eqz v0, :cond_8

    .line 661
    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 862
    .end local v0    # "cache":Ljava/lang/Object;
    :try_start_c
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 666
    :cond_8
    :try_start_d
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    if-eqz v11, :cond_b

    .line 667
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    .line 668
    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    const/4 v11, 0x0

    .line 667
    :goto_2
    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    .line 669
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 862
    :try_start_e
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 668
    :cond_a
    const/4 v11, 0x1

    goto :goto_2

    .line 672
    :cond_b
    :try_start_f
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    if-nez v11, :cond_d

    .line 674
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "/*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 675
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 676
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    .line 677
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 862
    :try_start_10
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 678
    :cond_c
    :try_start_11
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "/*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 679
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "*/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 680
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 862
    :try_start_12
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 685
    :cond_d
    :try_start_13
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->setupRandom()V

    .line 688
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->setupSET()V

    .line 691
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "end"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 692
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->functioning:Z

    .line 693
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 862
    :try_start_14
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 697
    :cond_e
    :try_start_15
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "begin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 698
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-static {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    .line 699
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_f

    .line 700
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->functioning:Z

    .line 701
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11, v12, v13}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 862
    :try_start_16
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_1

    .line 707
    :cond_f
    :try_start_17
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->functioning:Z

    if-eqz v11, :cond_10

    .line 708
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 709
    sget-object v12, Lorg/loon/framework/android/game/action/avg/command/Command;->functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v12}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 708
    check-cast v3, Ljava/util/ArrayList;

    .line 710
    .local v3, "function":Ljava/util/ArrayList;
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 862
    :try_start_18
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 715
    .end local v3    # "function":Ljava/util/ArrayList;
    :cond_10
    :try_start_19
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "call"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCall:Z

    if-nez v11, :cond_12

    .line 716
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-static {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    .line 717
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_12

    .line 718
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 719
    .local v4, "functionName":Ljava/lang/String;
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->functions:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v11, v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 720
    .local v5, "funs":Ljava/util/List;
    if-eqz v5, :cond_12

    .line 721
    new-instance v11, Lorg/loon/framework/android/game/action/avg/command/Command;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptName:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 722
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Lorg/loon/framework/android/game/action/avg/command/Command;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 721
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 723
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->closeCache()V

    .line 724
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->getVariables()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/loon/framework/android/game/action/avg/command/Command;->setVariables(Ljava/util/Map;)V

    .line 725
    invoke-direct {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCallTrue()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 862
    :try_start_1a
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_11

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 726
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 731
    .end local v4    # "functionName":Ljava/lang/String;
    .end local v5    # "funs":Ljava/util/List;
    :cond_12
    :try_start_1b
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->if_bool:Z

    if-nez v11, :cond_13

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->elseif_bool:Z

    if-nez v11, :cond_13

    .line 733
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "if"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->if_bool:Z

    .line 734
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "else"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->elseif_bool:Z

    .line 739
    :cond_13
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->if_bool:Z

    if-eqz v11, :cond_16

    .line 740
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->nowPosFlagName:Ljava/lang/String;

    .line 741
    sget-object v13, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    sget-object v14, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 740
    invoke-direct {p0, v11, v12, v13, v14}, Lorg/loon/framework/android/game/action/avg/command/Command;->setupIF(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 742
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 743
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    .line 768
    :cond_14
    :goto_3
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "endif"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 769
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v11}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 770
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    .line 771
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 772
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    .line 773
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->if_bool:Z

    .line 774
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->elseif_bool:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 862
    :try_start_1c
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_15

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 775
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 745
    :cond_16
    :try_start_1d
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->elseif_bool:Z

    if-eqz v11, :cond_14

    .line 746
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lorg/loon/framework/android/game/action/avg/command/Command;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 747
    .local v10, "value":[Ljava/lang/String;
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    if-nez v11, :cond_19

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    if-nez v11, :cond_19

    .line 749
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_18

    const-string v11, "if"

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 750
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "else"

    .line 751
    const-string v13, ""

    .line 750
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 751
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->nowPosFlagName:Ljava/lang/String;

    sget-object v13, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    .line 752
    sget-object v14, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 750
    invoke-direct {p0, v11, v12, v13, v14}, Lorg/loon/framework/android/game/action/avg/command/Command;->setupIF(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 753
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_3

    .line 859
    .end local v9    # "length":I
    .end local v10    # "value":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 860
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1e
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 861
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    .line 862
    :try_start_1f
    iget-boolean v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v12, :cond_17

    .line 863
    iget v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    .line 865
    :cond_17
    throw v11
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 755
    .restart local v9    # "length":I
    .restart local v10    # "value":[Ljava/lang/String;
    :cond_18
    :try_start_20
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    const-string v11, "else"

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 756
    const-string v11, "if 1==1"

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->nowPosFlagName:Ljava/lang/String;

    .line 757
    sget-object v13, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    sget-object v14, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 756
    invoke-direct {p0, v11, v12, v13, v14}, Lorg/loon/framework/android/game/action/avg/command/Command;->setupIF(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 758
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    goto/16 :goto_3

    .line 761
    :cond_19
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 762
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->nowPosFlagName:Ljava/lang/String;

    new-instance v13, Ljava/lang/Boolean;

    .line 763
    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/lang/Boolean;-><init>(Z)V

    .line 762
    invoke-virtual {v11, v12, v13}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 777
    .end local v10    # "value":[Ljava/lang/String;
    :cond_1a
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    if-eqz v11, :cond_1c

    .line 779
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "include"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 780
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-static {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    .line 781
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 782
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 783
    new-instance v11, Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-direct {v11, v2}, Lorg/loon/framework/android/game/action/avg/command/Command;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 784
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 862
    :try_start_21
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_1b

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 785
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 788
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1c
    :try_start_22
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "include"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    if-nez v11, :cond_1e

    .line 789
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    if-nez v11, :cond_1e

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    if-nez v11, :cond_1e

    .line 790
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-static {v11}, Lorg/loon/framework/android/game/action/avg/command/Command;->commandSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    .line 791
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->temps:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 792
    .restart local v2    # "fileName":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 793
    new-instance v11, Lorg/loon/framework/android/game/action/avg/command/Command;

    invoke-direct {v11, v2}, Lorg/loon/framework/android/game/action/avg/command/Command;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    .line 794
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 862
    :try_start_23
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_1d

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 795
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 799
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1e
    :try_start_24
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "out"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 800
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isRead:Z

    .line 801
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 802
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "selects "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 803
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 802
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    .line 806
    :cond_1f
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isRead:Z

    if-eqz v11, :cond_20

    .line 807
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    .line 812
    :cond_20
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    const-string v12, "in"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 813
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    sget-object v13, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 814
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isRead:Z

    .line 815
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 862
    :try_start_25
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_0

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto/16 :goto_1

    .line 819
    :cond_21
    :try_start_26
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    if-eqz v11, :cond_26

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    if-eqz v11, :cond_26

    .line 820
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    if-eqz v11, :cond_22

    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    if-eqz v11, :cond_22

    .line 821
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    .line 829
    :cond_22
    :goto_4
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    if-eqz v11, :cond_24

    .line 830
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    const-string v12, "print("

    .line 831
    const-string v13, ")"

    .line 830
    invoke-static {v11, v12, v13}, Lorg/loon/framework/android/game/action/avg/command/Command;->getNameTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->printTags:Ljava/util/List;

    .line 832
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->printTags:Ljava/util/List;

    if-eqz v11, :cond_23

    .line 833
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->printTags:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_27

    .line 854
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_23
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCache:Z

    if-eqz v11, :cond_24

    .line 856
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheScript:Ljava/util/Map;

    iget-object v12, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->cacheCommandName:Ljava/lang/String;

    iget-object v13, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 862
    :cond_24
    :try_start_27
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isInnerCommand:Z

    if-nez v11, :cond_25

    .line 863
    iget v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    .line 867
    :cond_25
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_1

    .line 824
    :cond_26
    :try_start_28
    iget-boolean v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->addCommand:Z

    if-eqz v11, :cond_22

    .line 825
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    goto :goto_4

    .line 834
    .restart local v7    # "it":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 835
    .local v8, "key":Ljava/lang/String;
    sget-object v11, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 836
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_28

    .line 839
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    .line 840
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "print("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 841
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 838
    invoke-static {v11, v12, v13}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 837
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    goto :goto_5

    .line 845
    :cond_28
    iget-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;

    .line 846
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "print("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 847
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 844
    invoke-static {v11, v12, v8}, Lorg/loon/framework/android/game/action/avg/command/Command;->replaceMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 843
    iput-object v11, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->executeCommand:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    goto :goto_5
.end method

.method public formatCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Lorg/loon/framework/android/game/action/avg/command/Command;->includeFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/loon/framework/android/game/action/avg/command/Command;->formatCommand(Ljava/lang/String;Ljava/util/List;)V

    .line 153
    return-void
.end method

.method public formatCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 156
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->conditionEnvironmentList:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 157
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    const-string v1, "SELECT"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptName:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptList:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptSize:I

    .line 161
    iput v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    .line 162
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->flaging:Z

    .line 163
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->ifing:Z

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCache:Z

    .line 165
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->esleflag:Z

    .line 166
    iput-boolean v3, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->backIfBool:Z

    .line 167
    return-void
.end method

.method public declared-synchronized getRead(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/loon/framework/android/game/action/avg/command/Command;->getReads()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getReads()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/loon/framework/android/game/action/avg/command/Command;->reader:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "result":Ljava/lang/String;
    const-string v1, "selects"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v1, "@"

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/action/avg/command/Command;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 292
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/command/Command;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 432
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariables()Ljava/util/Map;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    return-object v0
.end method

.method public gotoIndex(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 460
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptSize:I

    if-ge p1, v1, :cond_1

    if-lez p1, :cond_1

    .line 461
    iget v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 462
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 463
    iput p1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    .line 465
    :cond_0
    return v0

    .line 461
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isRead:Z

    return v0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nowCacheOffsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "DELAULT_CACHE"

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->scriptName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->offsetPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->commandString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public openCache()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isCache:Z

    .line 245
    return-void
.end method

.method public removeVariable(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 441
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method public select(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->innerCommand:Lorg/loon/framework/android/game/action/avg/command/Command;

    const-string v1, "SELECT"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/avg/command/Command;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    :cond_0
    const-string v0, "SELECT"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/loon/framework/android/game/action/avg/command/Command;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lorg/loon/framework/android/game/action/avg/command/Command;->isRead:Z

    .line 284
    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 410
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public setVariables(Ljava/util/Map;)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Map;

    .prologue
    .line 419
    sget-object v0, Lorg/loon/framework/android/game/action/avg/command/Command;->setEnvironmentList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 420
    return-void
.end method
