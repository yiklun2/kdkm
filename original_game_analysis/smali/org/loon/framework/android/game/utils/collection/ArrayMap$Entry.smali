.class Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/utils/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5bf435ec6e776ef9L


# instance fields
.field transient hashCode:I

.field transient key:Ljava/lang/Object;

.field transient next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

.field transient value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;)V
    .locals 0
    .param p1, "hashCode"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "next"    # Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    .line 432
    iput-object p2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    .line 433
    iput-object p3, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 434
    iput-object p4, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 435
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    .line 453
    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 454
    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 455
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 458
    if-ne p0, p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 461
    check-cast v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 462
    .local v0, "e":Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    :goto_1
    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    iget-object v3, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    .line 462
    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    if-nez v2, :cond_2

    goto :goto_1

    .line 463
    :cond_4
    iget-object v2, v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    .line 484
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    .line 485
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 486
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    iput-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    .line 487
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 446
    move-object v0, p1

    .line 447
    .local v0, "oldValue":Ljava/lang/Object;
    iput-object p1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    .line 448
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    iget v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->hashCode:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 476
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;->next:Lorg/loon/framework/android/game/utils/collection/ArrayMap$Entry;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 479
    return-void
.end method
