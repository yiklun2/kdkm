.class Lorg/loon/framework/android/game/action/ActionControl$ActionThread;
.super Ljava/lang/Thread;
.source "ActionControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/loon/framework/android/game/action/ActionControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionThread"
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Lorg/loon/framework/android/game/action/ActionControl;


# direct methods
.method public constructor <init>(Lorg/loon/framework/android/game/action/ActionControl;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    .line 152
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    .line 158
    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    .line 162
    invoke-static {}, Lorg/loon/framework/android/game/core/LSystem;->getSystemTimer()Lorg/loon/framework/android/game/core/timer/SystemTimer;

    move-result-object v15

    .line 163
    .local v15, "timer":Lorg/loon/framework/android/game/core/timer/SystemTimer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 164
    .local v4, "currentThread":Ljava/lang/Thread;
    const-wide/16 v2, 0x0

    .local v2, "currTimeMicros":J
    invoke-virtual {v15}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v11

    .local v11, "lastTimeMicros":J
    const-wide/16 v13, 0x0

    .line 166
    .local v13, "remainderMicros":J
    :cond_0
    sget-boolean v16, Lorg/loon/framework/android/game/core/LSystem;->isPaused:Z

    if-nez v16, :cond_1

    sget-boolean v16, Lorg/loon/framework/android/game/core/LSystem;->isLogo:Z

    if-eqz v16, :cond_3

    .line 168
    :cond_1
    const-wide/16 v16, 0x3e8

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    :goto_0
    invoke-virtual {v15}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->getTimeMicros()J

    move-result-wide v11

    .line 172
    const-wide/16 v5, 0x0

    .line 193
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$3(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    move-result-object v16

    move-object/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 195
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$3(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/ActionControl$ActionThread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/loon/framework/android/game/action/ActionControl;->access$4(Lorg/loon/framework/android/game/action/ActionControl;Lorg/loon/framework/android/game/action/ActionControl$ActionThread;)V

    .line 199
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    .line 201
    :goto_2
    return-void

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$0(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/Actions;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/loon/framework/android/game/action/Actions;->getCount()I

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$1(Lorg/loon/framework/android/game/action/ActionControl;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 177
    :cond_4
    const-wide/16 v16, 0x12c

    :try_start_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v16

    goto :goto_1

    .line 182
    :cond_5
    const-wide/32 v16, 0xf4240

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/loon/framework/android/game/action/ActionControl;->access$2(Lorg/loon/framework/android/game/action/ActionControl;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v9, v11, v16

    .line 183
    .local v9, "goalTimeMicros":J
    invoke-virtual {v15, v9, v10}, Lorg/loon/framework/android/game/core/timer/SystemTimer;->sleepTimeMicros(J)J

    move-result-wide v2

    .line 184
    sub-long v16, v2, v11

    add-long v7, v16, v13

    .line 186
    .local v7, "elapsedTimeMicros":J
    const/16 v16, 0x0

    const-wide/16 v17, 0x3e8

    div-long v17, v7, v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v5, v0

    .line 187
    .local v5, "elapsedTime":J
    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v5

    sub-long v13, v7, v16

    .line 188
    move-wide v11, v2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$0(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/Actions;

    move-result-object v17

    monitor-enter v17

    .line 190
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/loon/framework/android/game/action/ActionControl;->access$0(Lorg/loon/framework/android/game/action/ActionControl;)Lorg/loon/framework/android/game/action/Actions;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lorg/loon/framework/android/game/action/Actions;->update(J)V

    .line 189
    monitor-exit v17

    goto/16 :goto_1

    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v16

    .line 196
    .end local v5    # "elapsedTime":J
    .end local v7    # "elapsedTimeMicros":J
    .end local v9    # "goalTimeMicros":J
    :catch_1
    move-exception v16

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lorg/loon/framework/android/game/action/ActionControl;->access$4(Lorg/loon/framework/android/game/action/ActionControl;Lorg/loon/framework/android/game/action/ActionControl$ActionThread;)V

    .line 199
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    goto/16 :goto_2

    .line 197
    :catchall_1
    move-exception v16

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->this$0:Lorg/loon/framework/android/game/action/ActionControl;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/loon/framework/android/game/action/ActionControl;->access$4(Lorg/loon/framework/android/game/action/ActionControl;Lorg/loon/framework/android/game/action/ActionControl$ActionThread;)V

    .line 199
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/loon/framework/android/game/action/ActionControl$ActionThread;->isRunning:Z

    .line 200
    throw v16

    .line 169
    :catch_2
    move-exception v16

    goto/16 :goto_0
.end method
