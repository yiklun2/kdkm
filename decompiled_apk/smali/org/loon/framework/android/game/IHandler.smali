.class public interface abstract Lorg/loon/framework/android/game/IHandler;
.super Ljava/lang/Object;
.source "IHandler.java"


# virtual methods
.method public abstract addScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentScreen()Lorg/loon/framework/android/game/core/graphics/Screen;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMaxHeight()I
.end method

.method public abstract getMaxWidth()I
.end method

.method public abstract getScreenBox()Lorg/loon/framework/android/game/action/map/shapes/RectBox;
.end method

.method public abstract getScreenCount()I
.end method

.method public abstract getScreenDimension()Lorg/loon/framework/android/game/core/graphics/geom/Dimension;
.end method

.method public abstract getScreens()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/loon/framework/android/game/core/graphics/Screen;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWidth()I
.end method

.method public abstract getWindow()Landroid/view/Window;
.end method

.method public abstract getWindowManager()Landroid/view/WindowManager;
.end method

.method public abstract initScreen()V
.end method

.method public abstract isScale()Z
.end method

.method public abstract runFirstScreen()V
.end method

.method public abstract runIndexScreen(I)V
.end method

.method public abstract runLastScreen()V
.end method

.method public abstract runNextScreen()V
.end method

.method public abstract runPreviousScreen()V
.end method
