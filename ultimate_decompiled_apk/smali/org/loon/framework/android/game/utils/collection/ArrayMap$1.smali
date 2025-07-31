.class Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;
.super Ljava/util/AbstractSet;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/utils/collection/ArrayMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 257
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 291
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 264
    instance-of v4, p1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    if-nez v4, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 267
    check-cast v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 268
    .local v1, "entry":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget v4, v1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iget-object v5, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {v5}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->access$2(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v5

    array-length v5, v5

    rem-int v2, v4, v5

    .line 269
    .local v2, "index":I
    iget-object v4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {v4}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->access$2(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)[Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    move-result-object v4

    aget-object v0, v4, v2

    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    :goto_1
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    const/4 v3, 0x1

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;

    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;-><init>(Lorg/loon/framework/android/game/utils/collection/ArrayMap;Lorg/loon/framework/android/game/utils/collection/ArrayMap$ArrayMapIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 278
    instance-of v2, p1, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    if-nez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 281
    check-cast v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 282
    .local v0, "entry":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    iget-object v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$1;->this$0:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-static {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->access$0(Lorg/loon/framework/android/game/utils/collection/ArrayMap;)I

    move-result v0

    return v0
.end method
