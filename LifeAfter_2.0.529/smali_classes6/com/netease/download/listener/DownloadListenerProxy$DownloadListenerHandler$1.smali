.class Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler$1;
.super Ljava/lang/Object;
.source "DownloadListenerProxy.java"

# interfaces
.implements Lcom/netease/download/reporter/ReportCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;


# direct methods
.method constructor <init>(Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler$1;->this$0:Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportFinish()V
    .locals 13

    const-string v0, "InnerDownloadHandler"

    const-string v1, "DownloadListenerCore [start] finish, report finish, callback to user"

    .line 424
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadListenerCore [start] mHasFinishFileCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalFileCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setTimeToEndTask(J)V

    .line 429
    sget v1, Lcom/netease/download/listener/DownloadListenerProxy;->mHasFinishFileCount:I

    sget v2, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    if-ne v1, v2, :cond_2

    .line 430
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$500()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailCodeCountMap(IJ)V

    .line 431
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/download/reporter/ReportProxy;->setmReportCallBack(Lcom/netease/download/reporter/ReportCallBack;)V

    .line 433
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->isAutoFree()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DownloadAllProxy [start] freeThreadPool"

    .line 434
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloadpart/DownloadAllProxy;->stop()V

    .line 436
    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/taskManager/TaskExecutor;->closeFixedThreadPool()V

    .line 437
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/handler/Dispatcher;->close()V

    .line 440
    :cond_0
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->unregisterReceiver()V

    .line 442
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v12

    const-string v8, "__DOWNLOAD_END__"

    const-string v9, "__DOWNLOAD_END__"

    invoke-virtual/range {v2 .. v12}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->getTimeToStartTask()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    .line 448
    sget-wide v3, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    div-long/2addr v3, v1

    .line 450
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ORBIT] Finish Count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/netease/download/listener/DownloadListenerProxy;->mTotalFileCount:I

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->access$400()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " DownBytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/netease/download/listener/DownloadListenerProxy;->mHasDownloadSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " DownCost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " DownSpeed="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[ORBIT] Log upload=true"

    .line 451
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setTimeToEndTask(J)V

    .line 454
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->showTime()V

    .line 456
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->reset()V

    .line 457
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->dispatch()V

    :cond_2
    return-void
.end method
