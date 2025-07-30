.class public Lorg/loon/framework/android/game/action/map/TileList;
.super Ljava/lang/Object;
.source "TileList.java"


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/microedition/lcdui/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/loon/framework/android/game/action/map/TileList;->images:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public addImage(Ljavax/microedition/lcdui/Image;)V
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileList;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public elementAt(I)Ljavax/microedition/lcdui/Image;
    .locals 1
    .param p1, "mIndex"    # I

    .prologue
    .line 22
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileList;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileList;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/TileList;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
