.class public Lorg/loon/framework/android/game/action/map/Field2D;
.super Ljava/lang/Object;
.source "Field2D.java"

# interfaces
.implements Lorg/loon/framework/android/game/action/map/Config;


# static fields
.field private static final directionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field

.field private static final directions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static vector2:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;


# instance fields
.field private data:[[I

.field private height:I

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field

.field private tileHeight:I

.field private tileWidth:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    const/16 v1, 0x9

    .line 34
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    .line 38
    const/16 v1, 0x9

    .line 37
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    .line 41
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v5, v6, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v7, v8, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v3, v4, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v7, v8, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v3, v4, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v5, v6, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v7, v8, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    new-instance v1, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v5, v6, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v7, v8, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v7, v8, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v3, v4, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v7, v8, v5, v6}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-direct {v2, v5, v6, v7, v8}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    :try_start_0
    invoke-static {p1}, Lorg/loon/framework/android/game/action/map/TileMapConfig;->loadAthwartArray(Ljava/lang/String;)[[I

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/loon/framework/android/game/action/map/Field2D;->set([[III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([[I)V
    .locals 1
    .param p1, "data"    # [[I

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lorg/loon/framework/android/game/action/map/Field2D;-><init>([[III)V

    .line 81
    return-void
.end method

.method public constructor <init>([[III)V
    .locals 0
    .param p1, "data"    # [[I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/loon/framework/android/game/action/map/Field2D;->set([[III)V

    .line 85
    return-void
.end method

.method private get([[III)I
    .locals 3
    .param p1, "data"    # [[I
    .param p2, "px"    # I
    .param p3, "py"    # I

    .prologue
    const/4 v1, -0x1

    .line 229
    :try_start_0
    iget v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->width:I

    if-ge p2, v2, :cond_0

    iget v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->height:I

    if-ge p3, v2, :cond_0

    .line 230
    aget-object v2, p1, p3

    aget v1, v2, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private get([[ILorg/loon/framework/android/game/action/map/shapes/Vector2D;)I
    .locals 4
    .param p1, "data"    # [[I
    .param p2, "point"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    const/4 v1, -0x1

    .line 241
    :try_start_0
    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/map/Field2D;->width:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    iget v3, p0, Lorg/loon/framework/android/game/action/map/Field2D;->height:I

    if-ge v2, v3, :cond_0

    .line 242
    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    aget-object v2, p1, v2

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v3

    aget v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getDirection(II)I
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 166
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->vector2:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v1, p0

    int-to-double v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->vector2:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .line 171
    :goto_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directions:Ljava/util/Map;

    sget-object v1, Lorg/loon/framework/android/game/action/map/Field2D;->vector2:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 169
    :cond_0
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->vector2:Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->set(FF)V

    goto :goto_0
.end method

.method public static getDirection(I)Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 175
    sget-object v0, Lorg/loon/framework/android/game/action/map/Field2D;->directionValues:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    return-object v0
.end method

.method private static insertArrays([[IIII)V
    .locals 2
    .param p0, "arrays"    # [[I
    .param p1, "index"    # I
    .param p2, "px"    # I
    .param p3, "py"    # I

    .prologue
    .line 179
    aget-object v0, p0, p1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 180
    aget-object v0, p0, p1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 181
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->height:I

    return v0
.end method

.method public getMap()[[I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->data:[[I

    return-object v0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileHeight:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileWidth:I

    return v0
.end method

.method public getType(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/loon/framework/android/game/action/map/Field2D;->data:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->width:I

    return v0
.end method

.method public isHit(II)Z
    .locals 2
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->data:[[I

    invoke-direct {p0, v0, p1, p2}, Lorg/loon/framework/android/game/action/map/Field2D;->get([[III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHit(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)Z
    .locals 2
    .param p1, "point"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->data:[[I

    invoke-direct {p0, v0, p1}, Lorg/loon/framework/android/game/action/map/Field2D;->get([[ILorg/loon/framework/android/game/action/map/shapes/Vector2D;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neighbors(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "pos"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    .line 204
    :goto_0
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v0

    .line 205
    .local v0, "x":I
    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v1

    .line 206
    .local v1, "y":I
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v4, v0

    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, 0x1

    int-to-double v4, v4

    int-to-double v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    int-to-double v4, v0

    add-int/lit8 v6, v1, 0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, -0x1

    int-to-double v4, v4

    int-to-double v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    if-eqz p2, :cond_0

    .line 211
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, -0x1

    int-to-double v4, v4

    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, 0x1

    int-to-double v4, v4

    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, 0x1

    int-to-double v4, v4

    add-int/lit8 v6, v1, 0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    add-int/lit8 v4, v0, -0x1

    int-to-double v4, v4

    add-int/lit8 v6, v1, 0x1

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;-><init>(DD)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    return-object v2

    .line 202
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    iget-object v2, p0, Lorg/loon/framework/android/game/action/map/Field2D;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method public neighbors(IIZ)[[I
    .locals 4
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 184
    const/16 v1, 0x8

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 185
    .local v0, "pos":[[I
    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v3, p1, v1}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 186
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v3, v1, p2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 187
    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v3, p1, v1}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 188
    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v3, v1, p2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 189
    if-eqz p3, :cond_0

    .line 190
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 191
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 192
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v3, v1, v2}, Lorg/loon/framework/android/game/action/map/Field2D;->insertArrays([[IIII)V

    .line 195
    :cond_0
    return-object v0
.end method

.method public pixelsToTilesHeight(I)I
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 108
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileHeight:I

    div-int v0, p1, v0

    return v0
.end method

.method public pixelsToTilesWidth(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 104
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileWidth:I

    div-int v0, p1, v0

    return v0
.end method

.method public score(IIII)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "px"    # I
    .param p4, "py"    # I

    .prologue
    .line 224
    sub-int v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public score(Lorg/loon/framework/android/game/action/map/shapes/Vector2D;Lorg/loon/framework/android/game/action/map/shapes/Vector2D;)I
    .locals 3
    .param p1, "goal"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;
    .param p2, "point"    # Lorg/loon/framework/android/game/action/map/shapes/Vector2D;

    .prologue
    .line 220
    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v0

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v1

    invoke-virtual {p1}, Lorg/loon/framework/android/game/action/map/shapes/Vector2D;->y()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public set([[III)V
    .locals 1
    .param p1, "data"    # [[I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/loon/framework/android/game/action/map/Field2D;->setMap([[I)V

    .line 89
    invoke-virtual {p0, p2}, Lorg/loon/framework/android/game/action/map/Field2D;->setTileWidth(I)V

    .line 90
    invoke-virtual {p0, p3}, Lorg/loon/framework/android/game/action/map/Field2D;->setTileHeight(I)V

    .line 91
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->width:I

    .line 92
    array-length v0, p1

    iput v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->height:I

    .line 93
    return-void
.end method

.method public setMap([[I)V
    .locals 0
    .param p1, "data"    # [[I

    .prologue
    .line 148
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/Field2D;->data:[[I

    .line 149
    return-void
.end method

.method public setTileHeight(I)V
    .locals 0
    .param p1, "tileHeight"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileHeight:I

    .line 125
    return-void
.end method

.method public setTileWidth(I)V
    .locals 0
    .param p1, "tileWidth"    # I

    .prologue
    .line 132
    iput p1, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileWidth:I

    .line 133
    return-void
.end method

.method public tilesToHeightPixels(I)I
    .locals 1
    .param p1, "tiles"    # I

    .prologue
    .line 116
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public tilesToWidthPixels(I)I
    .locals 1
    .param p1, "tiles"    # I

    .prologue
    .line 112
    iget v0, p0, Lorg/loon/framework/android/game/action/map/Field2D;->tileWidth:I

    mul-int/2addr v0, p1

    return v0
.end method
