.class Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;
.super Ljava/lang/Object;
.source "LooperMessageLoggingManager.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, ">>>>> Dispatching"

    .line 245
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 248
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    new-instance v6, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    invoke-direct {v6}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;-><init>()V

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$102(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    .line 249
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartTime(J)V

    .line 250
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartCpuTime(J)V

    .line 251
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setStartInfo(Ljava/lang/String;)V

    .line 252
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 253
    :try_start_1
    iget-object v6, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v6}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;

    .line 254
    invoke-interface {v7, v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;->messageStart(JJ)V

    goto :goto_0

    .line 256
    :cond_0
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    :goto_1
    const-string v1, "<<<<< Finished"

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->getStartTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 259
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 261
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndTime(J)V

    .line 262
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndCpuTime(J)V

    .line 263
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->setEndInfo(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->addMessageCount()V

    .line 265
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->calculateDuration()V

    .line 266
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 267
    :try_start_3
    iget-object v5, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;

    .line 268
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;->messageEnd(JJ)V

    goto :goto_2

    .line 270
    :cond_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    :try_start_4
    iget-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->handleMessageInfoNew(Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 270
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 273
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
