.class Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;
.super Ljava/lang/Object;
.source "AStarFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/map/AStarFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoredPath"
.end annotation


# instance fields
.field private path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;"
        }
    .end annotation
.end field

.field private score:I

.field final synthetic this$0:Lorg/loon/framework/android/game/action/map/AStarFinder;


# direct methods
.method constructor <init>(Lorg/loon/framework/android/game/action/map/AStarFinder;ILjava/util/LinkedList;)V
    .locals 0
    .param p2, "score"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/action/map/shapes/Vector2D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/loon/framework/android/game/action/map/shapes/Vector2D;>;"
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->this$0:Lorg/loon/framework/android/game/action/map/AStarFinder;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p2, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->score:I

    .line 272
    iput-object p3, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->path:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$0(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;I)V
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->score:I

    return-void
.end method

.method static synthetic access$1(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->path:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$2(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->path:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3(Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;)I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lorg/loon/framework/android/game/action/map/AStarFinder$ScoredPath;->score:I

    return v0
.end method
