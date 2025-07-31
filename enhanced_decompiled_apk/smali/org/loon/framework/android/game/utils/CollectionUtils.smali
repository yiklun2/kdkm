.class public final Lorg/loon/framework/android/game/utils/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# static fields
.field public static final INITIAL_CAPACITY:I = 0xa


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static copyOf([B)[B
    .locals 1
    .param p0, "obj"    # [B

    .prologue
    .line 256
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "obj"    # [B
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 267
    new-array v0, p1, [B

    .line 268
    .local v0, "tempArr":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    return-object v0
.end method

.method public static copyOf([C)[C
    .locals 1
    .param p0, "obj"    # [C

    .prologue
    .line 279
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([CI)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "obj"    # [C
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    new-array v0, p1, [C

    .line 291
    .local v0, "tempArr":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    return-object v0
.end method

.method public static copyOf([D)[D
    .locals 1
    .param p0, "obj"    # [D

    .prologue
    .line 210
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "obj"    # [D
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 221
    new-array v0, p1, [D

    .line 222
    .local v0, "tempArr":[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-object v0
.end method

.method public static copyOf([F)[F
    .locals 1
    .param p0, "obj"    # [F

    .prologue
    .line 233
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 3
    .param p0, "obj"    # [F
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 244
    new-array v0, p1, [F

    .line 245
    .local v0, "tempArr":[F
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-object v0
.end method

.method public static copyOf([I)[I
    .locals 1
    .param p0, "obj"    # [I

    .prologue
    .line 187
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "obj"    # [I
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    new-array v0, p1, [I

    .line 199
    .local v0, "tempArr":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    return-object v0
.end method

.method public static copyOf([J)[J
    .locals 1
    .param p0, "obj"    # [J

    .prologue
    .line 302
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "obj"    # [J
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 313
    new-array v0, p1, [J

    .line 314
    .local v0, "tempArr":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 150
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # [Ljava/lang/Object;
    .param p1, "newSize"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # [Ljava/lang/Object;
    .param p1, "newSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v1, [Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    .line 177
    .local v0, "copy":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 175
    .end local v0    # "copy":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public static copyOf([Z)[Z
    .locals 1
    .param p0, "obj"    # [Z

    .prologue
    .line 325
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->copyOf([ZI)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 3
    .param p0, "obj"    # [Z
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 336
    new-array v0, p1, [Z

    .line 337
    .local v0, "tempArr":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    return-object v0
.end method

.method public static cut(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "j":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 140
    :goto_0
    return-object v2

    .line 134
    :cond_0
    sub-int v3, v0, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, "k":I
    if-lez v1, :cond_1

    .line 135
    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "obj1":Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static expand(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "size"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static expand(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 86
    .local v0, "j":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 87
    add-int v4, v0, p1

    .line 86
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "obj1":Ljava/lang/Object;
    if-eqz p2, :cond_0

    move p1, v2

    .end local p1    # "i":I
    :cond_0
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-object v1
.end method

.method public static expand(Ljava/lang/Object;IZLjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IZ",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/loon/framework/android/game/utils/CollectionUtils;->expand(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static hashCode([[I)I
    .locals 8
    .param p0, "arrays"    # [[I

    .prologue
    const/4 v7, 0x0

    .line 59
    if-nez p0, :cond_1

    move v4, v7

    .line 73
    :cond_0
    return v4

    .line 62
    :cond_1
    const/4 v4, 0x1

    .line 63
    .local v4, "result":I
    array-length v1, p0

    .line 64
    .local v1, "h":I
    aget-object v7, p0, v7

    array-length v6, v7

    .line 65
    .local v6, "w":I
    const/4 v5, 0x0

    .line 66
    .local v5, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 67
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v6, :cond_2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    aget-object v7, p0, v2

    aget v5, v7, v3

    .line 69
    ushr-int/lit8 v7, v5, 0x20

    xor-int v0, v5, v7

    .line 70
    .local v0, "elementHash":I
    mul-int/lit8 v7, v4, 0x1f

    add-int v4, v7, v0

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    aget-object v1, p0, v0

    if-ne p1, v1, :cond_1

    .line 46
    return v0

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
