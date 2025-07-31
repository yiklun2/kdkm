.class Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/utils/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field private last:I

.field final synthetic this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;


# direct methods
.method private constructor <init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;-><init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->access$0(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 396
    :try_start_0
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->access$1(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    aget-object v1, v2, v3

    .line 397
    .local v1, "n":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    iput v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-object v1

    .line 399
    .end local v1    # "n":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 405
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I

    if-ne v0, v2, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(I)Ljava/lang/Object;

    .line 409
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I

    iget v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    if-ge v0, v1, :cond_1

    .line 410
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->current:I

    .line 412
    :cond_1
    iput v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;->last:I

    .line 413
    return-void
.end method
