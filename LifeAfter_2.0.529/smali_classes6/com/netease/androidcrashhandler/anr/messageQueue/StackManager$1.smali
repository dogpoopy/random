.class Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;
.super Ljava/lang/Object;
.source "StackManager.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 92
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)J

    move-result-wide v1

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 95
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0xf4240

    .line 97
    :try_start_2
    div-long v7, v3, v5

    long-to-double v7, v7

    const-wide/high16 v9, 0x4089000000000000L    # 800.0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :try_start_3
    iget-object v7, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$300(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "trace"

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v3, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "mPointTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " dump stack trace"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v7, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getJavaMainThreadStackTrack()Ljava/lang/String;

    move-result-object v7

    .line 102
    iget-object v8, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$300(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "trace"

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v9}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$300(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 107
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->isNeedNativeStackTrace()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    div-long v7, v3, v5

    long-to-double v7, v7

    const-wide v9, 0x409c200000000000L    # 1800.0

    cmpl-double v0, v7, v9

    if-ltz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    :try_start_5
    iget-object v7, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v7}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$400(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "trace"

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v3, v5

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "mPointTime:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " dump  native stack trace"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getThreadFullUnwind()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$400(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trace"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-static {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->access$400(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v1

    .line 95
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "trace"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [start] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-wide/16 v0, 0x32

    .line 125
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
