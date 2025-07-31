.class Lorg/loon/framework/android/game/physics/PolygonSprite$1;
.super Ljava/lang/Object;
.source "PolygonSprite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/loon/framework/android/game/physics/PolygonSprite;->rotate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

.field private final synthetic val$angle:I


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/physics/PolygonSprite;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    iput p2, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->val$angle:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 101
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$0(Lorg/loon/framework/android/game/physics/PolygonSprite;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$0(Lorg/loon/framework/android/game/physics/PolygonSprite;)Landroid/graphics/Bitmap;

    move-result-object v10

    monitor-enter v10

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$1(Lorg/loon/framework/android/game/physics/PolygonSprite;)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$1(Lorg/loon/framework/android/game/physics/PolygonSprite;)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$1(Lorg/loon/framework/android/game/physics/PolygonSprite;)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    iget v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->val$angle:I

    invoke-virtual {v0, v1}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->rotate(I)Lorg/loon/framework/android/game/action/sprite/SpriteRotate;

    move-result-object v8

    .line 106
    .local v8, "sr":Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/loon/framework/android/game/action/sprite/SpriteRotate;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 107
    .local v9, "tmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$2(Lorg/loon/framework/android/game/physics/PolygonSprite;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0, v9}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$3(Lorg/loon/framework/android/game/physics/PolygonSprite;Landroid/graphics/Bitmap;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v9}, Lorg/loon/framework/android/game/utils/GraphicsUtils;->getPixels(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$4(Lorg/loon/framework/android/game/physics/PolygonSprite;[I)V

    .line 111
    iget-object v12, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$1(Lorg/loon/framework/android/game/physics/PolygonSprite;)Lorg/loon/framework/android/game/action/sprite/SpriteImage;

    move-result-object v0

    iget-object v1, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v1}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$5(Lorg/loon/framework/android/game/physics/PolygonSprite;)[I

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 113
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 111
    invoke-virtual/range {v0 .. v7}, Lorg/loon/framework/android/game/action/sprite/SpriteImage;->makePolygon([IIIIIII)Lorg/loon/framework/android/game/core/graphics/geom/Polygon;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$6(Lorg/loon/framework/android/game/physics/PolygonSprite;Lorg/loon/framework/android/game/core/graphics/geom/Polygon;)V

    .line 114
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    invoke-static {v0}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$7(Lorg/loon/framework/android/game/physics/PolygonSprite;)V

    .line 104
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v8    # "sr":Lorg/loon/framework/android/game/action/sprite/SpriteRotate;
    .end local v9    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :cond_2
    iget-object v0, p0, Lorg/loon/framework/android/game/physics/PolygonSprite$1;->this$0:Lorg/loon/framework/android/game/physics/PolygonSprite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/loon/framework/android/game/physics/PolygonSprite;->access$8(Lorg/loon/framework/android/game/physics/PolygonSprite;Ljava/lang/Thread;)V

    .line 120
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
