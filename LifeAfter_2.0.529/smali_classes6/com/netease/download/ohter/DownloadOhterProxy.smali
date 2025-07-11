.class public Lcom/netease/download/ohter/DownloadOhterProxy;
.super Ljava/lang/Object;
.source "DownloadOhterProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadOhterProxy"

.field private static mDownloadOhterProxy:Lcom/netease/download/ohter/DownloadOhterProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutorServiceQueueSize:I

.field private mIndexHasSubmit:I

.field private mIndexhasResult:I

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    .line 37
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    .line 39
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mStatus:I

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mExecutorServiceQueueSize:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstances()Lcom/netease/download/ohter/DownloadOhterProxy;
    .locals 1

    .line 51
    sget-object v0, Lcom/netease/download/ohter/DownloadOhterProxy;->mDownloadOhterProxy:Lcom/netease/download/ohter/DownloadOhterProxy;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/netease/download/ohter/DownloadOhterProxy;

    invoke-direct {v0}, Lcom/netease/download/ohter/DownloadOhterProxy;-><init>()V

    sput-object v0, Lcom/netease/download/ohter/DownloadOhterProxy;->mDownloadOhterProxy:Lcom/netease/download/ohter/DownloadOhterProxy;

    .line 54
    :cond_0
    sget-object v0, Lcom/netease/download/ohter/DownloadOhterProxy;->mDownloadOhterProxy:Lcom/netease/download/ohter/DownloadOhterProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mStatus:I

    return v0
.end method

.method public init(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DownloadOhterProxy"

    const-string v1, "DownloadOhterProxy [init]"

    .line 58
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/netease/download/ohter/DownloadOhterProxy;->reset()V

    .line 60
    iput-object p1, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "DownloadOhterProxy"

    const-string v1, "DownloadOhterProxy [reset] \u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 64
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    .line 66
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    .line 67
    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 12

    const-string v0, "DownloadOhterProxy"

    const-string v1, "DownloadOhterProxy [start] \u5f00\u59cb\u5176\u4ed6\u6587\u4ef6\u4e0b\u8f7d"

    .line 79
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadOhterProxy [start] mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/network/NetController;->restore()V

    .line 85
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getThreadnum()I

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadOhterProxy [start] \u7ebf\u7a0b\u6c60\u603b\u7ebf\u7a0b\u6570="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    iget-object v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    mul-int/lit8 v1, v1, 0x2

    .line 97
    iget-object v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 98
    iput v1, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mExecutorServiceQueueSize:I

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mExecutorServiceQueueSize:I

    :goto_0
    const/4 v1, 0x0

    .line 103
    iput v1, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    :goto_1
    iget v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mExecutorServiceQueueSize:I

    const-string v6, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    const-string v7, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    const-string v8, "\u4e00\u5171\u6709"

    if-ge v4, v5, :cond_1

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v6, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v4, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v4}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 109
    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v6, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4, v5}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 110
    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/taskManager/TaskExecutor;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    goto :goto_1

    :cond_1
    const/16 v4, 0xb

    .line 114
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    if-eqz v5, :cond_6

    iget v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_6

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/download/downloader/DownloadParams;

    .line 120
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 121
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 122
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v5, :cond_4

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v11, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/taskManager/TaskExecutor;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 129
    :cond_4
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7b2c "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \u4e2a\u4e0b\u8f7d\u7ed3\u679c = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", \u6587\u4ef6\u8def\u5f84 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexhasResult:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :catch_0
    move-exception v5

    .line 145
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadOhterProxy [start] Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catch_1
    move-exception v5

    .line 141
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadOhterProxy [start] CancellationException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5}, Ljava/util/concurrent/CancellationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catch_2
    move-exception v5

    .line 137
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadOhterProxy [start] ExecutionException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catch_3
    move-exception v5

    .line 133
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadOhterProxy [start] InterruptedException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 151
    new-instance v5, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v5}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v9, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v10, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5, v9}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    .line 150
    :goto_4
    iget v2, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    iget-object v3, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 151
    new-instance v2, Lcom/netease/download/ohter/DownloadOtherCore;

    invoke-direct {v2}, Lcom/netease/download/ohter/DownloadOtherCore;-><init>()V

    .line 152
    iget-object v3, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2, v3}, Lcom/netease/download/ohter/DownloadOtherCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mParamsList:Ljava/util/List;

    iget v5, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mAl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/taskManager/TaskExecutor;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/download/ohter/DownloadOhterProxy;->mIndexHasSubmit:I

    .line 156
    :cond_5
    throw v1

    .line 164
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5168\u90e8\u4e0b\u8f7d\u82b1\u8d39\u603b\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->unregisterReceiver()V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u5927\u5c0f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getmTotalSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllSize\u7684\u603b\u5927\u5c0f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DownloadOhterProxy [start] \u4e0b\u8f7d\u540e\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08Other\u6587\u4ef6\uff09"

    .line 172
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
