.class Lcom/netease/download/downloadpart/DownloadAllProxy$1;
.super Ljava/lang/Object;
.source "DownloadAllProxy.java"

# interfaces
.implements Lcom/netease/download/downloadpart/DownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloadpart/DownloadAllProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/downloadpart/DownloadAllProxy;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(IILcom/netease/download/downloader/DownloadParams;)I
    .locals 3

    const-string v0, "DownloadAllProxy"

    const-string v1, "DownloadAllProxy [DownloadCallBack] [onFinish]"

    .line 85
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllProxy"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllProxy [DownloadCallBack] [onFinish] \u4e00\u5171\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u4e2a\u4e0b\u8f7d\u7ed3\u679c = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", \u6587\u4ef6\u8def\u5f84 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 90
    :try_start_0
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$208(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    .line 92
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result p2

    iget-object p3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p3}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    const-string p2, "DownloadAllProxy"

    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e00\u5171\u6709"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p2, 0x2

    .line 96
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 98
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 100
    :goto_0
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p3}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/download/downloader/DownloadParams;

    .line 101
    new-instance p3, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {p3}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result v1

    invoke-virtual {p3, p2, v0, v1}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/downloadpart/DownloadCallBack;I)V

    .line 103
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$500(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$400(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$308(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p2}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$200(Lcom/netease/download/downloadpart/DownloadAllProxy;)I

    move-result p2

    iget-object p3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {p3}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    const-string p2, "DownloadAllProxy"

    const-string p3, "DownloadAllProxy [DownloadCallBack] [onFinish] \u5168\u90e8\u4e0b\u8f7d\u5b8c\u6210"

    .line 108
    invoke-static {p2, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/netease/download/downloader/TaskHandle;->setTimeToFinishDwonloadFile(J)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->access$600(Lcom/netease/download/downloadpart/DownloadAllProxy;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-string v0, "DownloadAllProxy"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllProxy [DownloadCallBack] [onFinish] \u5168\u90e8\u4e0b\u8f7d\u82b1\u8d39\u603b\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DownloadAllProxy"

    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadAllProxy [DownloadCallBack] [onFinish] \u4e00\u5171\u8981\u4e0b\u8f7d\u603b\u5927\u5c0f="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getmTotalSize()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DownloadAllProxy"

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadAllProxy [DownloadCallBack] [onFinish] \u76ee\u524d\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u603b\u5927\u5c0f="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
