.class public Lorg/loon/framework/android/game/action/avg/CG;
.super Ljava/lang/Object;
.source "CG.java"


# instance fields
.field private backgroundCG:Ljavax/microedition/lcdui/Image;

.field private charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    .line 35
    return-void
.end method


# virtual methods
.method public addChara(Ljava/lang/String;Lorg/loon/framework/android/game/action/avg/Chara;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "role"    # Lorg/loon/framework/android/game/action/avg/Chara;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public addImage(Ljava/lang/String;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I

    .prologue
    .line 58
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "keyName":Ljava/lang/String;
    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v2, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/avg/Chara;

    .line 60
    .local v0, "chara":Lorg/loon/framework/android/game/action/avg/Chara;
    if-nez v0, :cond_0

    .line 61
    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    new-instance v3, Lorg/loon/framework/android/game/action/avg/Chara;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/loon/framework/android/game/action/avg/Chara;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v1, v3}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0, p2}, Lorg/loon/framework/android/game/action/avg/Chara;->setX(I)V

    .line 64
    invoke-virtual {v0, p3}, Lorg/loon/framework/android/game/action/avg/Chara;->setY(I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v0}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 83
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v2}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->clear()V

    .line 79
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    invoke-virtual {v2, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/avg/Chara;

    .line 75
    .local v0, "ch":Lorg/loon/framework/android/game/action/avg/Chara;
    invoke-virtual {v0}, Lorg/loon/framework/android/game/action/avg/Chara;->dispose()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundCG()Ljavax/microedition/lcdui/Image;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->backgroundCG:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public getCharas()Lorg/loon/framework/android/game/utils/collection/ArrayMap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    return-object v0
.end method

.method public noneBackgroundCG()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->backgroundCG:Ljavax/microedition/lcdui/Image;

    .line 43
    return-void
.end method

.method public removeImage(Ljava/lang/String;)Lorg/loon/framework/android/game/action/avg/Chara;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->charas:Lorg/loon/framework/android/game/utils/collection/ArrayMap;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/utils/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/avg/Chara;

    return-object v0
.end method

.method public setBackgroundCG(Ljava/lang/String;)V
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->loadImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/loon/framework/android/game/action/avg/CG;->backgroundCG:Ljavax/microedition/lcdui/Image;

    .line 51
    return-void
.end method

.method public setBackgroundCG(Ljavax/microedition/lcdui/Image;)V
    .locals 0
    .param p1, "backgroundCG"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/loon/framework/android/game/action/avg/CG;->backgroundCG:Ljavax/microedition/lcdui/Image;

    .line 47
    return-void
.end method
