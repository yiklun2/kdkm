.class public interface abstract Lorg/loon/framework/android/game/IAndroid2DHandler;
.super Ljava/lang/Object;
.source "IAndroid2DHandler.java"

# interfaces
.implements Lorg/loon/framework/android/game/IHandler;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAssetsSound()Lorg/loon/framework/android/game/media/sound/AssetsSoundManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLGameActivity()Lorg/loon/framework/android/game/LGameAndroid2DActivity;
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

.method public abstract onAccuracyChanged(Landroid/hardware/Sensor;I)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setScreen(Lorg/loon/framework/android/game/core/graphics/Screen;)V
.end method
