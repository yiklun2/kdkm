.class public final Lorg/loon/framework/android/game/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static charCount(Ljava/lang/String;C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chr"    # C

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "count":I
    if-eqz p0, :cond_2

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 413
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    move v1, v0

    .line 420
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .local v1, "count":I
    :goto_1
    return v1

    .line 414
    .end local v1    # "count":I
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_1

    .line 415
    add-int/lit8 v0, v0, 0x1

    .line 413
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_2
    move v1, v0

    .line 420
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1
.end method

.method public static fillSpace(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 359
    .local v2, "strLength":I
    if-lt v2, p1, :cond_0

    .line 366
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 362
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v1, "spaceBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sub-int v3, p1, v2

    if-lt v0, v3, :cond_1

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 364
    :cond_1
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fillSpaceByByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 378
    .local v3, "strbyte":[B
    array-length v2, v3

    .line 379
    .local v2, "strLength":I
    if-lt v2, p1, :cond_0

    .line 386
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 382
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v1, "spaceBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sub-int v4, p1, v2

    if-lt v0, v4, :cond_1

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 384
    :cond_1
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getBytesLengthOfEncoding(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "encoding"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 231
    :cond_1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    .local v0, "bytes":[B
    array-length v2, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v2, "length":I
    goto :goto_0

    .line 234
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 235
    .local v1, "exception":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSpecialString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 249
    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 252
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "result":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "result":Ljava/lang/String;
    .end local p0    # "context":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 256
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local p0    # "context":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static final hasChinese(Ljava/lang/String;)Z
    .locals 7
    .param p0, "checkStr"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "checkedStatus":Z
    const/4 v4, 0x0

    .line 275
    .local v4, "isError":Z
    const-string v5, " _-"

    .line 276
    .local v5, "spStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 277
    .local v1, "checkStrLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-le v3, v1, :cond_0

    .line 287
    if-eqz v4, :cond_4

    const/4 v2, 0x0

    .line 288
    :goto_1
    return v2

    .line 278
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, "ch":C
    const/16 v6, 0x7e

    if-ge v0, v6, :cond_3

    .line 280
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 281
    const/16 v6, 0x41

    if-lt v0, v6, :cond_1

    const/16 v6, 0x5a

    if-le v0, v6, :cond_3

    :cond_1
    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-le v0, v6, :cond_3

    .line 282
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_3

    .line 283
    const/4 v4, 0x1

    .line 277
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "ch":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static final isAlphabet(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 298
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v2

    .line 300
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 302
    .local v0, "c":C
    const/16 v3, 0x41

    if-gt v3, v0, :cond_2

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_2

    .line 303
    const/4 v2, 0x1

    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAlphabetNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 315
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 317
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 319
    .local v1, "letter":C
    const/16 v3, 0x61

    if-gt v3, v1, :cond_2

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    .line 320
    :cond_2
    const/16 v3, 0x41

    if-gt v3, v1, :cond_3

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    .line 321
    :cond_3
    const/16 v3, 0x30

    if-gt v3, v1, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    .line 322
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 317
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isChinaLanguage(Ljava/lang/String;)Z
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xfe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 188
    .local v1, "chars":[C
    new-array v3, v10, [I

    .line 189
    .local v3, "ints":[I
    const/4 v4, 0x0

    .line 190
    .local v4, "isChinese":Z
    array-length v5, v1

    .line 191
    .local v5, "length":I
    const/4 v0, 0x0

    check-cast v0, [B

    .line 192
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 205
    .end local v4    # "isChinese":Z
    :goto_1
    return v4

    .line 193
    .restart local v4    # "isChinese":Z
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 194
    array-length v7, v0

    if-ne v7, v10, :cond_2

    .line 195
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v6

    .line 196
    aget-byte v7, v0, v9

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v9

    .line 197
    aget v7, v3, v6

    const/16 v8, 0x81

    if-lt v7, v8, :cond_1

    aget v7, v3, v6

    if-gt v7, v11, :cond_1

    aget v7, v3, v9

    const/16 v8, 0x40

    if-lt v7, v8, :cond_1

    .line 198
    aget v7, v3, v9

    if-gt v7, v11, :cond_1

    .line 199
    const/4 v4, 0x1

    .line 192
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 202
    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 45
    const/4 p0, 0x0

    .line 65
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 46
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "i":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 51
    .local v5, "string2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 52
    .local v3, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 53
    .local v4, "oLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 55
    add-int/2addr v1, v4

    .line 57
    move v2, v1

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 62
    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_2
    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 59
    add-int/2addr v1, v4

    .line 57
    move v2, v1

    goto :goto_1
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;
    .locals 9
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;
    .param p3, "count"    # [I

    .prologue
    const/4 v8, 0x0

    .line 154
    if-nez p0, :cond_1

    .line 155
    const/4 p0, 0x0

    .line 176
    .end local p0    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 156
    .restart local p0    # "line":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "i":I
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 159
    .local v1, "counter":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 160
    .local v4, "line2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 161
    .local v5, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 162
    .local v6, "oLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v7, v4

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v4, v8, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 164
    add-int/2addr v2, v6

    .line 166
    move v3, v2

    .local v3, "j":I
    :goto_1
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_2

    .line 172
    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-virtual {v0, v4, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 173
    aput v1, p3, v8

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 168
    sub-int v7, v2, v3

    invoke-virtual {v0, v4, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 169
    add-int/2addr v2, v6

    .line 166
    move v3, v2

    goto :goto_1
.end method

.method public static final replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "s":I
    const/4 v0, 0x0

    .line 339
    .local v0, "e":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 342
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    .line 346
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 80
    const/4 p0, 0x0

    .line 100
    .end local p0    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "lcLine":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "lcOldString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "i":I
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 86
    .local v5, "line2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 87
    .local v6, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 88
    .local v7, "oLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v8, v5

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 90
    add-int/2addr v1, v7

    .line 92
    move v2, v1

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 97
    array-length v8, v5

    sub-int/2addr v8, v2

    invoke-virtual {v0, v5, v2, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_2
    sub-int v8, v1, v2

    invoke-virtual {v0, v5, v2, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 94
    add-int/2addr v1, v7

    .line 92
    move v2, v1

    goto :goto_1
.end method

.method public static final replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "oldString"    # Ljava/lang/String;
    .param p2, "newString"    # Ljava/lang/String;
    .param p3, "count"    # [I

    .prologue
    const/4 v10, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 116
    const/4 p0, 0x0

    .line 139
    .end local p0    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 117
    .restart local p0    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "lcLine":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "lcOldString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 120
    .local v2, "i":I
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, "counter":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 123
    .local v6, "line2":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 124
    .local v7, "newString2":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 125
    .local v8, "oLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v9, v6

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 126
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6, v10, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    add-int/2addr v2, v8

    .line 129
    move v3, v2

    .local v3, "j":I
    :goto_1
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_2

    .line 135
    array-length v9, v6

    sub-int/2addr v9, v3

    invoke-virtual {v0, v6, v3, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 136
    aput v1, p3, v10

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 131
    sub-int v9, v2, v3

    invoke-virtual {v0, v6, v3, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 132
    add-int/2addr v2, v8

    .line 129
    move v3, v2

    goto :goto_1
.end method
