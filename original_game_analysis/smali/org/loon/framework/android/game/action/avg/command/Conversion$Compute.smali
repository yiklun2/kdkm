.class Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;
.super Ljava/lang/Object;
.source "Conversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/avg/command/Conversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Compute"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/action/avg/command/Conversion;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/action/avg/command/Conversion;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->this$0:Lorg/loon/framework/android/game/action/avg/command/Conversion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private exp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 234
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 235
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 234
    goto :goto_0
.end method

.method private match(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 275
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->isNumber(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 278
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->access$0()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lt v1, v9, :cond_1

    .line 283
    const/4 v7, 0x0

    .line 284
    .local v7, "v1":Ljava/lang/String;
    const/4 v8, 0x0

    .line 285
    .local v8, "v2":Ljava/lang/String;
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 286
    .local v5, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    const-string v9, "@"

    invoke-static {p1, v9}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "exps":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 288
    .local v6, "type":Ljava/lang/String;
    const/4 v3, -0x1

    .line 289
    .local v3, "sort1":I
    const/4 v4, -0x1

    .line 290
    .local v4, "sort2":I
    const/4 v1, 0x0

    :goto_1
    array-length v9, v0

    if-lt v1, v9, :cond_2

    .line 316
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 318
    invoke-static {v6, v8, v7}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->operate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 279
    .end local v0    # "exps":[Ljava/lang/String;
    .end local v3    # "sort1":I
    .end local v4    # "sort2":I
    .end local v5    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "v1":Ljava/lang/String;
    .end local v8    # "v2":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->access$0()[Ljava/lang/String;

    move-result-object v9

    aget-object v2, v9, v1

    .line 280
    .local v2, "operator":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "@"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 281
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 280
    invoke-virtual {p1, v2, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "operator":Ljava/lang/String;
    .restart local v0    # "exps":[Ljava/lang/String;
    .restart local v3    # "sort1":I
    .restart local v4    # "sort2":I
    .restart local v5    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "v1":Ljava/lang/String;
    .restart local v8    # "v2":Ljava/lang/String;
    :cond_2
    aget-object v9, v0, v1

    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->exp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 292
    if-nez v6, :cond_4

    .line 293
    aget-object v6, v0, v1

    .line 290
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    :cond_4
    invoke-direct {p0, v6}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->sort(Ljava/lang/String;)I

    move-result v3

    .line 296
    aget-object v9, v0, v1

    invoke-direct {p0, v9}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->sort(Ljava/lang/String;)I

    move-result v4

    .line 297
    if-lt v3, v4, :cond_7

    .line 298
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 299
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 300
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_6

    :cond_5
    const-string v9, ""

    :goto_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v6, v7, v8}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->operate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    aget-object v6, v0, v1

    goto :goto_2

    :cond_6
    move-object v9, v6

    .line 300
    goto :goto_3

    .line 305
    :cond_7
    if-ge v3, v4, :cond_3

    .line 306
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 307
    add-int/lit8 v9, v1, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 308
    aget-object v9, v0, v1

    invoke-static {v9, v7, v8}, Lorg/loon/framework/android/game/action/avg/command/Conversion;->operate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_8
    aget-object v9, v0, v1

    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private sort(C)I
    .locals 1
    .param p1, "flag"    # C

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 222
    :pswitch_0
    const/4 v0, -0x1

    .line 224
    :goto_0
    return v0

    .line 210
    :pswitch_1
    const/4 v0, 0x0

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    const/4 v0, 0x0

    .line 214
    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v0, 0x1

    .line 217
    goto :goto_0

    .line 219
    :pswitch_4
    const/4 v0, 0x1

    .line 220
    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private sort(Ljava/lang/String;)I
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->sort(C)I

    move-result v0

    return v0
.end method


# virtual methods
.method public parse(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1, "exp"    # Ljava/lang/Object;

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->parse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "endIndex":I
    const-string v4, "("

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "startIndex":I
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->match(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 258
    :cond_0
    const-string v4, ")"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 259
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "segment":Ljava/lang/String;
    const-string v4, "("

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    .line 261
    const-string v6, ""

    .line 260
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/loon/framework/android/game/action/avg/command/Conversion$Compute;->match(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 262
    .local v3, "tResult":Ljava/lang/Integer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    const-string v4, "("

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method
