.class public Lorg/loon/framework/android/game/utils/MultitouchUtils;
.super Ljava/lang/Object;
.source "MultitouchUtils.java"


# static fields
.field public static final ACTION_POINTER_1_DOWN:I = 0x5

.field public static final ACTION_POINTER_1_UP:I = 0x6

.field public static final ACTION_POINTER_2_DOWN:I = 0x105

.field public static final ACTION_POINTER_2_UP:I = 0x106

.field public static final ACTION_POINTER_3_DOWN:I = 0x205

.field public static final ACTION_POINTER_3_UP:I = 0x206

.field private static emptyObjectArray:[Ljava/lang/Object;

.field private static isMultitouch:Z

.field private static motionEvent_FindPointerIndex:Ljava/lang/reflect/Method;

.field private static motionEvent_GetPointerCount:Ljava/lang/reflect/Method;

.field private static motionEvent_GetPointerId:Ljava/lang/reflect/Method;

.field private static motionEvent_GetX:Ljava/lang/reflect/Method;

.field private static motionEvent_GetY:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 45
    new-array v1, v6, [Ljava/lang/Object;

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->emptyObjectArray:[Ljava/lang/Object;

    .line 49
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    .line 50
    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetPointerCount:Ljava/lang/reflect/Method;

    .line 51
    const-class v1, Landroid/view/MotionEvent;

    .line 52
    const-string v2, "getPointerId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetPointerId:Ljava/lang/reflect/Method;

    .line 53
    const-class v1, Landroid/view/MotionEvent;

    .line 54
    const-string v2, "findPointerIndex"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_FindPointerIndex:Ljava/lang/reflect/Method;

    .line 55
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getX"

    .line 56
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetX:Ljava/lang/reflect/Method;

    .line 57
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getY"

    .line 58
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetY:Ljava/lang/reflect/Method;

    .line 59
    const/4 v1, 0x1

    sput-boolean v1, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 60
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "ex":Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 6
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-boolean v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return v1

    .line 106
    :cond_0
    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_FindPointerIndex:Ljava/lang/reflect/Method;

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    .local v1, "pointerIndex":I
    goto :goto_0

    .line 109
    .end local v1    # "pointerIndex":I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflected multitouch method failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    sget-boolean v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    if-nez v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 85
    :cond_0
    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetPointerCount:Ljava/lang/reflect/Method;

    .line 86
    sget-object v3, Lorg/loon/framework/android/game/utils/MultitouchUtils;->emptyObjectArray:[Ljava/lang/Object;

    .line 85
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    .local v1, "pointerCount":I
    goto :goto_0

    .line 88
    .end local v1    # "pointerCount":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflected multitouch method failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 6
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-boolean v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    if-nez v2, :cond_0

    .line 129
    :goto_0
    return v1

    .line 127
    :cond_0
    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetPointerId:Ljava/lang/reflect/Method;

    .line 128
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    .local v1, "pointerCount":I
    goto :goto_0

    .line 130
    .end local v1    # "pointerCount":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflected multitouch method failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 144
    sget-boolean v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 148
    :cond_0
    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetX:Ljava/lang/reflect/Method;

    .line 149
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 148
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    .local v1, "pointerCount":F
    goto :goto_0

    .line 151
    .end local v1    # "pointerCount":F
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflected multitouch method failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 165
    sget-boolean v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 169
    :cond_0
    :try_start_0
    sget-object v2, Lorg/loon/framework/android/game/utils/MultitouchUtils;->motionEvent_GetY:Ljava/lang/reflect/Method;

    .line 170
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 169
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    .local v1, "pointerCount":F
    goto :goto_0

    .line 172
    .end local v1    # "pointerCount":F
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reflected multitouch method failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isMultitouch()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lorg/loon/framework/android/game/utils/MultitouchUtils;->isMultitouch:Z

    return v0
.end method
