.class Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap$1;
.super Ljava/lang/Object;
.source "TMXTiledMap.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;->load(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap$1;->this$0:Lorg/loon/framework/android/game/action/map/tmx/TMXTiledMap;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/xml/sax/InputSource;

    .line 240
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 239
    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
