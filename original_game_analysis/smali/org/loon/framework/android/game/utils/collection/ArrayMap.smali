.class public Lorg/loon/framework/android/game/utils/collection/ArrayMap;
.super Ljava/util/AbstractMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;,
        Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient length:I

.field private transient listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

.field private transient mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->entrySet:Ljava/util/Set;

    .line 62
    if-gtz p1, :cond_0

    .line 63
    const/16 p1, 0xa

    .line 65
    :cond_0
    new-array v0, p1, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 66
    new-array v0, p1, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 67
    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    return v0
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    return-object v0
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    return-object v0
.end method

.method private final ensureCapacity()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 358
    iget v8, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    iget v9, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    if-lt v8, v9, :cond_0

    .line 359
    iget-object v7, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 360
    .local v7, "oldTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v3, v8, 0x1

    .line 361
    .local v3, "newCapacity":I
    new-array v5, v3, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 362
    .local v5, "newMapTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    new-array v4, v3, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 363
    .local v4, "newListTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    int-to-float v8, v3

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    .line 364
    iget v8, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    invoke-static {v7, v10, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt v1, v8, :cond_1

    .line 373
    iput-object v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 374
    iput-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 376
    .end local v1    # "i":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newListTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .end local v5    # "newMapTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .end local v7    # "oldTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :cond_0
    return-void

    .line 366
    .restart local v1    # "i":I
    .restart local v3    # "newCapacity":I
    .restart local v4    # "newListTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .restart local v5    # "newMapTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .restart local v7    # "oldTable":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :cond_1
    aget-object v6, v7, v1

    .line 367
    .local v6, "old":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget v8, v6, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    rem-int v2, v8, v3

    .line 368
    .local v2, "index":I
    move-object v0, v6

    .line 369
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v6, v6, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 370
    aget-object v8, v5, v2

    iput-object v8, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 371
    aput-object v0, v5, v2

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final indexOf(Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;)I
    .locals 2
    .param p1, "entry"    # Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt v0, v1, :cond_1

    .line 312
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 308
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final removeList(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 348
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v0, v2, p1

    .line 349
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 350
    .local v1, "numMoved":I
    if-lez v1, :cond_0

    .line 351
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iget v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 354
    return-object v0
.end method

.method private final removeMap(Ljava/lang/Object;)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, "hashCode":I
    const/4 v2, 0x0

    .line 319
    .local v2, "index":I
    if-eqz p1, :cond_4

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 321
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    iget-object v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 322
    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v0, v4, v2

    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    const/4 v3, 0x0

    .local v3, "prev":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 344
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 323
    :cond_1
    iget v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    if-ne v4, v1, :cond_3

    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    if-eqz v3, :cond_2

    .line 325
    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v4, v3, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    :goto_2
    move-object v4, v0

    .line 329
    goto :goto_1

    .line 327
    :cond_2
    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iget-object v5, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aput-object v5, v4, v2

    goto :goto_2

    .line 322
    :cond_3
    move-object v3, v0

    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_0

    .line 333
    .end local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .end local v3    # "prev":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :cond_4
    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v0, v4, v2

    .restart local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    const/4 v3, 0x0

    .restart local v3    # "prev":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_3
    if-eqz v0, :cond_0

    .line 334
    iget v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    if-ne v4, v1, :cond_6

    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-nez v4, :cond_6

    .line 335
    if-eqz v3, :cond_5

    .line 336
    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v4, v3, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    :goto_4
    move-object v4, v0

    .line 340
    goto :goto_1

    .line 338
    :cond_5
    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iget-object v5, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aput-object v5, v4, v2

    goto :goto_4

    .line 333
    :cond_6
    move-object v3, v0

    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_3
.end method

.method private final swapValue(Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 379
    iget-object v0, p1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 380
    .local v0, "old":Ljava/lang/Object;
    iput-object p2, p1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 381
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 227
    const/4 v1, 0x0

    iput v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    .line 228
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aput-object v2, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-direct {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>()V

    .line 299
    .local v0, "copy":Lorg/loon/framework/android/game/utils/collection/ArrayMap;
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    iput v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    .line 300
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 301
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 302
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    iput v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    .line 303
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 110
    .local v3, "table":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    if-eqz p1, :cond_4

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 112
    .local v1, "hashCode":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v3

    rem-int v2, v6, v7

    .line 113
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_0
    if-nez v0, :cond_2

    .end local v1    # "hashCode":I
    .end local v2    # "index":I
    :cond_0
    move v4, v5

    .line 125
    :cond_1
    return v4

    .line 114
    .restart local v1    # "hashCode":I
    .restart local v2    # "index":I
    :cond_2
    iget v6, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    if-ne v6, v1, :cond_3

    iget-object v6, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_3
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_0

    .line 119
    .end local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .end local v1    # "hashCode":I
    .end local v2    # "index":I
    :cond_4
    aget-object v0, v3, v5

    .restart local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_1
    if-eqz v0, :cond_0

    .line 120
    iget-object v6, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 119
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;

    invoke-direct {v0, p0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;-><init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)V

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->entrySet:Ljava/util/Set;

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 242
    check-cast v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 243
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap;
    iget v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    iget v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-ne v3, v4, :cond_0

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt v1, v3, :cond_2

    .line 251
    const/4 v2, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v3, v3, v1

    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->getEntry(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 129
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 130
    .local v3, "table":[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 132
    .local v1, "hashCode":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 133
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 145
    .end local v1    # "hashCode":I
    .end local v2    # "index":I
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 134
    .restart local v1    # "hashCode":I
    .restart local v2    # "index":I
    :cond_1
    iget v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    if-ne v4, v1, :cond_2

    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_0

    .line 139
    .end local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .end local v1    # "hashCode":I
    .end local v2    # "index":I
    :cond_3
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .restart local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_2
    if-eqz v0, :cond_0

    .line 140
    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 141
    iget-object v4, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_2
.end method

.method public final getEntry(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 157
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt p1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->getEntry(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v0

    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-eqz p1, :cond_3

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt v0, v1, :cond_1

    .line 105
    :cond_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 94
    :cond_1
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 95
    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    if-nez v1, :cond_4

    move v1, v0

    .line 101
    goto :goto_1

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;-><init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7fffffff

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "hashCode":I
    const/4 v2, 0x0

    .line 167
    .local v2, "index":I
    if-eqz p1, :cond_3

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 169
    and-int v3, v1, v5

    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v4, v4

    rem-int v2, v3, v4

    .line 170
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v0, v3, v2

    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 182
    :cond_0
    invoke-direct {p0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->ensureCapacity()V

    .line 183
    and-int v3, v1, v5

    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v4, v4

    rem-int v2, v3, v4

    .line 184
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .end local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v3, v3, v2

    invoke-direct {v0, v1, p1, p2, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;)V

    .line 185
    .restart local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aput-object v0, v3, v2

    .line 186
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iget v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    aput-object v0, v3, v4

    .line 187
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 171
    :cond_1
    iget v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    if-ne v3, v1, :cond_2

    iget-object v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-direct {p0, v0, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->swapValue(Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_0

    .line 176
    .end local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :cond_3
    iget-object v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .restart local v0    # "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_2
    if-eqz v0, :cond_0

    .line 177
    iget-object v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 178
    invoke-direct {p0, v0, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->swapValue(Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    return-void

    .line 215
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 216
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 503
    .local v2, "num":I
    new-array v5, v2, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->mapTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 504
    new-array v5, v2, [Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 505
    int-to-float v5, v2

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->threshold:I

    .line 506
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 507
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 512
    return-void

    .line 508
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 509
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 510
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->removeList(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v0

    .line 207
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 208
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->removeMap(Ljava/lang/Object;)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 209
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 210
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->removeMap(Ljava/lang/Object;)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v0

    .line 196
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 198
    .local v1, "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->indexOf(Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->removeList(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 199
    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->clear()V

    .line 202
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->getEntry(I)Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 231
    iget v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 232
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 235
    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 492
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->length:I

    if-lt v0, v1, :cond_0

    .line 497
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 495
    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->listTable:[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
