.class public Lcom/netease/download/downloadpart/DownloadAllProxy;
.super Ljava/lang/Object;
.source "DownloadAllProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadAllProxy"

.field private static mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

.field private static sObject:Ljava/lang/Object;


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

.field mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

.field private mExecutorServiceQueueSize:I

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mHasFinishCount:I

.field private mIndexHasSubmit:I

.field private mParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->sObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 39
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mHasFinishCount:I

    .line 43
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    const/16 v1, 0xa

    .line 45
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    .line 47
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStartTime:J

    .line 81
    new-instance v0, Lcom/netease/download/downloadpart/DownloadAllProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/download/downloadpart/DownloadAllProxy$1;-><init>(Lcom/netease/download/downloadpart/DownloadAllProxy;)V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->sObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/download/downloadpart/DownloadAllProxy;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mHasFinishCount:I

    return p0
.end method

.method static synthetic access$208(Lcom/netease/download/downloadpart/DownloadAllProxy;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mHasFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mHasFinishCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/netease/download/downloadpart/DownloadAllProxy;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    return p0
.end method

.method static synthetic access$308(Lcom/netease/download/downloadpart/DownloadAllProxy;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    return v0
.end method

.method static synthetic access$400(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/download/downloadpart/DownloadAllProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/download/downloadpart/DownloadAllProxy;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStartTime:J

    return-wide v0
.end method

.method public static getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;
    .locals 1

    .line 61
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-direct {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;-><init>()V

    sput-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    .line 64
    :cond_0
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->reset()V

    .line 69
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "DownloadAllProxy"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 171
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 173
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 5

    const-string v0, "DownloadAllProxy"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->restore()V

    .line 134
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getThreadnum()I

    move-result v0

    const-string v1, "DownloadAllProxy"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u4e0b\u8f7d\u7ebf\u7a0b\u6c60\u7ebf\u7a0b\u6570="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStartTime:J

    .line 143
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 146
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    .line 153
    :goto_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setTimeToStartDwonloadFile(J)V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 156
    :goto_1
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    iget v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    if-ge v0, v1, :cond_1

    .line 158
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->sObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DownloadAllProxy"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e00\u5171\u6709"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v1}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 161
    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/downloader/DownloadParams;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    iget v4, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/downloadpart/DownloadCallBack;I)V

    .line 162
    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 165
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "DownloadAllProxy"

    const-string v1, "DownloadAllProxy \u7ec8\u6b62\u7ebf\u7a0b\u6c60"

    .line 73
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method
