.class public Lcom/netease/download/downloader/DownloadProxy;
.super Ljava/lang/Object;
.source "DownloadProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProxy"

.field public static mContext:Landroid/content/Context;

.field private static mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

.field private static sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

.field public static sOnceStop:Z


# instance fields
.field private mListener:Lcom/netease/download/listener/DownloadListener;

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 64
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/downloader/DownloadProxy;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadProxy;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/download/downloader/DownloadProxy;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadProxy;->createBaseInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/download/downloader/DownloadProxy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/netease/download/downloader/DownloadProxy;->parseParam(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/download/downloader/DownloadProxy;)Lcom/netease/download/listener/DownloadListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/download/downloader/DownloadProxy;Lcom/netease/download/listener/DownloadListener;)Lcom/netease/download/listener/DownloadListener;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/download/downloader/DownloadProxy;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadProxy;->init()V

    return-void
.end method

.method public static clearDownloadId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDownloadId downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadProxy"

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 426
    invoke-static {v1, p0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "clearDownloadId param error"

    .line 431
    invoke-static {v1, p0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 435
    :cond_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string p0, ""

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v13

    const-string v8, "__DOWNLOAD_CLEAN_CACHE__"

    const-string v9, "__DOWNLOAD_CLEAN_CACHE__"

    const-string v11, ""

    invoke-virtual/range {v2 .. v13}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createBaseInfo()V
    .locals 4

    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [createBaseInfo] start"

    .line 412
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-static {}, Lcom/netease/download/util/Util;->createSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setSessionid(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getmTransid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/download/util/HashUtil;->calculateStrHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/download/downloader/TaskHandle;->setNtesOrbitId(Ljava/lang/String;)V

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadProxy [createBaseInfo] X-Ntes-Orbit-ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DownloadProxy [createBaseInfo] end"

    .line 419
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized freeAllThreadPool()V
    .locals 3

    const-class v0, Lcom/netease/download/downloader/DownloadProxy;

    monitor-enter v0

    :try_start_0
    const-string v1, "DownloadProxy"

    const-string v2, "DownloadProxy [freeAllThreadPool] start"

    .line 449
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloadpart/DownloadAllProxy;->stop()V

    .line 451
    invoke-static {}, Lcom/netease/download/taskManager/TaskExecutor;->getInstance()Lcom/netease/download/taskManager/TaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/taskManager/TaskExecutor;->closeFixedThreadPool()V

    .line 452
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/handler/Dispatcher;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCurrentSessionId()Ljava/lang/String;
    .locals 1

    .line 461
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadId()Ljava/lang/String;
    .locals 2

    const-string v0, "DownloadProxy"

    const-string v1, "getDownloadId"

    .line 456
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/netease/download/util/Util;->getRandomId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/netease/download/downloader/DownloadProxy;
    .locals 1

    .line 53
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/netease/download/downloader/DownloadProxy;

    invoke-direct {v0}, Lcom/netease/download/downloader/DownloadProxy;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    .line 57
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->restore()V

    .line 104
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/network/NetworkStatus;->initialize(Landroid/content/Context;)V

    .line 106
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->registerReceiver(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static initReportInfo(Landroid/content/Context;)V
    .locals 3

    const-string p0, "DownloadProxy"

    const-string v0, "DownloadProxy [initReportInfo] start"

    .line 466
    invoke-static {p0, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportUtil;->init(Landroid/content/Context;)V

    .line 469
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/reporter/ReportUtil;->getUnisdkVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmUnisdkVersion(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/reporter/ReportUtil;->getChanelVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmUnisdkChannelVersion(Ljava/lang/String;)V

    const-string v0, "DownloadProxy [init] \u4e0b\u8f7d\u524d\u671f\uff0c\u53d1\u9001\u65e5\u5fd7"

    .line 483
    invoke-static {p0, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object p0

    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->reportInfo(Landroid/content/Context;II)V

    return-void
.end method

.method private isFreeSpaceEnough(Lcom/netease/download/downloader/DownloadParams;J)Z
    .locals 6

    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [isFreeSpaceEnough] start"

    .line 1084
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isCheckFreeSpace()Z

    move-result v2

    .line 1095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProxy [isFreeSpaceEnough] checkFreeSpace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", param.getFilePath()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", taskFileAllSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1097
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-static {p1, p2, p3, v4, v5}, Lcom/netease/download/storage/StorageUtil;->canStore(Ljava/lang/String;JD)I

    move-result p1

    .line 1098
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DownloadProxy [isFreeSpaceEnough] canStore="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p1, "DownloadProxy [isFreeSpaceEnough] param error"

    .line 1089
    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private parseParam(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 74
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "DownloadProxy [parseParam] get priority Exception="

    const-string v3, "DownloadProxy"

    const-string v0, "DownloadProxy [parseParam]"

    .line 503
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadProxy [parseParam] \u89e3\u6790\u53c2\u6570"

    .line 504
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    const-string v0, "DownloadProxy [parseParam] paramsJson is null"

    .line 509
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    :try_start_0
    const-string v0, "type"

    .line 516
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_d

    const-string v0, "projectid"

    .line 524
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netease/download/downloader/DownloadInitInfo;->setProjectId(Ljava/lang/String;)V

    const-string v0, "wifionly"

    .line 527
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadProxy [parseParam] wifiOnly="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netease/download/downloader/TaskHandle;->setWifiOnly(Z)V

    const-string v0, "logopen"

    .line 531
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 532
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/netease/download/downloader/TaskHandle;->setLogOpen(Z)V

    .line 533
    invoke-static {v9}, Lcom/netease/download/util/LogUtil;->setIsShowLog(Z)V

    const-string v0, "oversea"

    .line 535
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 536
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/netease/download/downloader/TaskHandle;->setOverSea(Ljava/lang/String;)V

    const-string v0, "-1"

    .line 537
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "1"

    const/4 v12, 0x1

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v12

    const-string v13, "2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v12

    and-int/2addr v0, v13

    if-eqz v0, :cond_1

    const-string v0, "DownloadProxy [parseParam] oversea error"

    .line 538
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    const-string v0, "needrefresh"

    .line 542
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 543
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/netease/download/config/ConfigProxy;->setNeedRefresh(Ljava/lang/String;)V

    const-string v0, "notusecdn"

    .line 546
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "false"

    if-eqz v14, :cond_2

    .line 547
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/TaskHandle;->setNotUseCdn(Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_0

    :cond_2
    move-object v14, v15

    :goto_0
    const/16 v16, 0x3

    :try_start_1
    const-string v0, "threadnum"

    .line 553
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v5

    move v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 556
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "DownloadProxy [parseParam] get threadnum Exception="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 558
    :goto_1
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/TaskHandle;->setThreadnum(I)V

    :try_start_2
    const-string v0, "priority"

    .line 562
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 565
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v12, -0x1

    .line 568
    :goto_2
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/netease/download/downloader/TaskHandle;->setPriority(I)V

    move/from16 v19, v12

    :try_start_3
    const-string v0, "priority_task"

    .line 572
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 575
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 578
    :goto_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setPriorityTask(Z)V

    const-string v0, "testlog"

    .line 580
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 581
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 582
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/netease/download/downloader/TaskHandle;->setLogTest(I)V

    goto :goto_4

    .line 586
    :cond_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/netease/download/downloader/TaskHandle;->setLogTest(I)V

    :cond_4
    :goto_4
    const-string v0, "isrenew"

    .line 590
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 591
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 593
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    move/from16 v20, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setIsRenew(Z)V

    goto :goto_5

    :cond_5
    move/from16 v20, v2

    .line 597
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setIsRenew(Z)V

    goto :goto_5

    :cond_6
    move/from16 v20, v2

    :goto_5
    const-string v0, "chf"

    .line 601
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v13

    const-string v13, "DownloadProxy [parseParam] chf="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v13, "md5"

    if-nez v2, :cond_8

    .line 605
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 606
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const-string v2, "MD5"

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setEncryptionAlgorithm(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string v2, "sha1"

    .line 608
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 609
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const-string v2, "SHA1"

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setEncryptionAlgorithm(Ljava/lang/String;)V

    :cond_8
    :goto_6
    const-string v0, "checkfs"

    .line 613
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string v4, "DownloadProxy [parseParam] checkfs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 617
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 618
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setCheckfs(Z)V

    :cond_9
    const-string v0, "buffercount"

    .line 622
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "DownloadProxy [parseParam] Exception="

    if-nez v0, :cond_c

    .line 626
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v23, v2

    if-lez v0, :cond_a

    const/16 v2, 0xa

    if-le v0, v2, :cond_b

    :cond_a
    const/4 v0, 0x3

    .line 632
    :cond_b
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/TaskHandle;->setBufferCount(I)V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    const-string v14, "DownloadProxy [parseParam] buffercount="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_c
    move-object/from16 v23, v2

    move-object/from16 v16, v14

    :goto_7
    const-string v0, "netlimit"

    .line 642
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 645
    :try_start_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x44800000    # 1024.0f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_d

    const/high16 v2, 0x4cc80000    # 1.048576E8f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_e

    :cond_d
    const/4 v0, 0x0

    .line 651
    :cond_e
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/TaskHandle;->setNetAllSpeedLimit(F)V

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadProxy [parseParam] netlimitFloat="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_f
    :goto_8
    :try_start_6
    const-string v0, "rammode"

    .line 663
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadProxy [parseParam] get rammode Exception="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 669
    :goto_9
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/TaskHandle;->setRammode(Z)V

    const-string v2, "ramlimit"

    .line 671
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-wide/32 v24, 0x2000000

    const-wide/16 v26, 0x0

    if-nez v14, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 675
    :try_start_7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    cmp-long v14, v28, v26

    if-ltz v14, :cond_11

    const-wide/32 v30, 0x40000000

    cmp-long v14, v28, v30

    if-lez v14, :cond_10

    goto :goto_a

    :cond_10
    move-wide/from16 v72, v28

    move-object/from16 v28, v15

    move-wide/from16 v14, v72

    goto :goto_b

    :cond_11
    :goto_a
    move-object/from16 v28, v15

    move-wide/from16 v14, v24

    .line 681
    :goto_b
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v24

    move-object/from16 v29, v13

    invoke-virtual/range {v24 .. v24}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Lcom/netease/download/downloader/TaskHandle;->setRamlimit(J)V

    .line 682
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v11

    const-string v11, "DownloadProxy [parseParam] netlimitLong="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_12
    move-object/from16 v30, v11

    move-object/from16 v29, v13

    move-object/from16 v28, v15

    move-wide/from16 v14, v24

    .line 691
    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownloadProxy [parseParam] rammode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", ramlimit="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ramlimitLong="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mergemax"

    .line 693
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/32 v24, 0x80000

    .line 695
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    invoke-static {v11}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    move-wide/from16 v31, v14

    .line 697
    :try_start_8
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 698
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v0

    const-string v0, "DownloadProxy [parseParam] mergeMaxInt="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_13
    move/from16 v33, v0

    move-wide/from16 v31, v14

    move-wide/from16 v13, v24

    .line 706
    :goto_d
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/netease/download/downloader/TaskHandle;->setMergeMax(J)V

    const-string v0, "mergespace"

    .line 708
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-static {v0}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    move-wide/from16 v24, v13

    .line 713
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 714
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v2

    const-string v2, "DownloadProxy [parseParam] mergeSpaceInt="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_14
    move-object/from16 v34, v2

    move-wide/from16 v24, v13

    move-wide/from16 v13, v26

    .line 722
    :goto_e
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Lcom/netease/download/downloader/TaskHandle;->setMergeSpace(J)V

    const-string v2, "autofree"

    .line 725
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 728
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 729
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v15

    move-object/from16 v35, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/netease/download/downloader/TaskHandle;->setAutoFree(Z)V

    goto :goto_f

    :cond_15
    move-object/from16 v35, v2

    .line 732
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/netease/download/downloader/TaskHandle;->setAutoFree(Z)V

    goto :goto_f

    :cond_16
    move-object/from16 v35, v2

    :goto_f
    const-string v2, "mergemode"

    .line 737
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v36, v11

    const-string v11, "DownloadProxy [parseParam] mMergeMode="

    if-eqz v15, :cond_17

    .line 738
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v37, v0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setDownloadMode(Ljava/lang/String;)V

    goto :goto_10

    :cond_17
    move-object/from16 v37, v0

    move-object/from16 v15, v28

    .line 742
    :goto_10
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setMergeMode(Z)V

    const-string v0, "configurl"

    .line 745
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/16 v38, 0x0

    if-eqz v2, :cond_18

    .line 746
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_18
    move-object/from16 v0, v38

    .line 748
    :goto_11
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/TaskHandle;->setConfigurl(Ljava/lang/String;)V

    const-string v2, "downloadid"

    .line 751
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_19

    .line 752
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_19
    move-object/from16 v2, v38

    .line 754
    :goto_12
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v39

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v39}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setDownloadId(Ljava/lang/String;)V

    const-string v0, "callback_interval"

    .line 756
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1b

    invoke-static {v0}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 761
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    cmp-long v39, v41, v26

    move-wide/from16 v43, v13

    if-gez v39, :cond_1a

    move-wide/from16 v13, v26

    goto :goto_13

    :cond_1a
    move-wide/from16 v13, v41

    .line 767
    :goto_13
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v39

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v39}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/netease/download/downloader/TaskHandle;->setCallBackInterval(J)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownloadProxy [parseParam] callBackIntervalLong="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/downloader/TaskHandle;->getCallBackInterval()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1b
    move-object/from16 v41, v0

    move-wide/from16 v43, v13

    :goto_14
    const-string v0, "downfile"

    .line 791
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 795
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gtz v13, :cond_1c

    goto/16 :goto_20

    .line 800
    :cond_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 801
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {v13}, Lcom/netease/download/listener/DownloadListenerProxy;->setmTotalFileCount(I)V

    .line 802
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/netease/download/downloader/TaskHandle;->setTaskFileCount(I)V

    .line 803
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProxy [parseParam] \u9700\u8981\u4e0b\u8f7d\u7684\u6587\u4ef6\u603b\u4e2a\u6570 ="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v13, 0x64

    if-ge v1, v13, :cond_1d

    const-string v1, "DownloadProxy [parseParam] \u53c2\u6570\u6587\u4ef6\u6570\u91cf\u5c0f\u4e8e100\u4e2a\uff0c\u663e\u793a\u53c2\u6570\u4fe1\u606f"

    .line 809
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DownloadProxy [parseParam] \u53c2\u6570\u6587\u4ef6\u6570\u91cf\u5c0f\u4e8e100\u4e2a\uff0c\u663e\u793a\u53c2\u6570\u4fe1\u606f paramsJson="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v30

    move-object/from16 v30, v2

    goto :goto_15

    :cond_1d
    const-string v1, "DownloadProxy [parseParam] \u53c2\u6570\u6587\u4ef6\u6570\u91cf\u5927\u4e8e100\u4e2a\uff0c\u53ea\u663e\u793a\u7b2c\u4e00\u4e2a\u53c2\u6570"

    .line 813
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 814
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadProxy [parseParam] \u53c2\u6570\u6587\u4ef6\u6570\u91cf\u5927\u4e8e100\u4e2a\uff0c\u53ea\u663e\u793a\u7b2c\u4e00\u4e2a\u53c2\u6570  projectId="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", wifiOnly="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", logOpen="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", oversea="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", threadnum="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", testLog="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", isRenew="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v30

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v2

    const-string v2, ", downfile[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    move/from16 v42, v5

    move-object/from16 v39, v6

    move/from16 v46, v8

    move v2, v9

    move-object/from16 v13, v18

    move-wide/from16 v47, v26

    move-wide/from16 v49, v47

    move-object/from16 p1, v38

    move-object/from16 v51, p1

    const/4 v1, 0x0

    const-wide/16 v5, -0x64

    const-wide/16 v8, -0x64

    move-object/from16 v18, v10

    .line 820
    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_3c

    .line 822
    new-instance v10, Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {v10}, Lcom/netease/download/downloader/DownloadParams;-><init>()V

    move-object/from16 v59, v14

    .line 824
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_1e

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1e
    move-object/from16 v60, v0

    const-string v0, "targeturl"

    .line 830
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-virtual {v10, v0}, Lcom/netease/download/downloader/DownloadParams;->setTargetUrl(Ljava/lang/String;)V

    move-object/from16 v61, v12

    const-string v12, "http://"

    .line 833
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "https://"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 837
    :cond_1f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v62, v2

    const-string v2, "DownloadProxy [parseParam] type="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 840
    invoke-static {v0}, Lcom/netease/download/util/Util;->parseType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 842
    :cond_20
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/netease/download/downloader/TaskHandle;->setType(Ljava/lang/String;)V

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownloadProxy [parseParam] \u6700\u7ec8type="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/download/downloader/TaskHandle;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 847
    invoke-static {v0}, Lcom/netease/download/util/Util;->parseChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/netease/download/downloader/TaskHandle;->setChannel1(Ljava/lang/String;)V

    .line 851
    :cond_21
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/download/util/Util;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    const-string v2, "filepath"

    .line 853
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "filepath"

    .line 854
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_22
    const-string v12, "filename"

    .line 865
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    const-string v12, "filename"

    .line 866
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 867
    invoke-virtual {v10, v12}, Lcom/netease/download/downloader/DownloadParams;->setUserFileName(Ljava/lang/String;)V

    .line 870
    :cond_23
    invoke-virtual {v10, v2}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Lcom/netease/download/util/Util;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/netease/download/downloader/DownloadParams;->setmUrlResName(Ljava/lang/String;)V

    .line 872
    invoke-static {v0}, Lcom/netease/download/util/Util;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/netease/download/downloader/DownloadParams;->setOriginUrl(Ljava/lang/String;)V

    .line 873
    invoke-static {v0}, Lcom/netease/download/util/Util;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 874
    invoke-virtual {v10, v12}, Lcom/netease/download/downloader/DownloadParams;->setmWriteToExistFile(Z)V

    move-object/from16 v12, v29

    move/from16 v29, v1

    .line 875
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    const-string v1, "size"

    .line 880
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "DownloadProxy [parseParam] \u53c2\u6570\u4e2d\u5305\u542bsize\u5b57\u6bb5\uff0c\u89e3\u6790size"

    .line 881
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    const-string v1, "size"

    .line 884
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_25

    invoke-static {v1}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_24

    goto :goto_17

    .line 890
    :cond_24
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    cmp-long v1, v51, v26

    if-gez v1, :cond_27

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 887
    :cond_25
    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_26
    move-wide/from16 v51, v26

    :cond_27
    const-string v1, "first"

    .line 903
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "last"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "DownloadProxy [parseParam] \u53c2\u6570\u4e2d\u5305\u542bfirst\u3001last\u5b57\u6bb5\uff0c\u89e3\u6790first\u3001last"

    .line 904
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    const-string v1, "first"

    .line 907
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v63, v12

    const-string v12, "last"

    .line 908
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 911
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_2b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_2b

    invoke-static {v1}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2b

    invoke-static {v12}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_28

    goto :goto_19

    :cond_28
    move-object/from16 v53, v0

    .line 916
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-object/from16 v64, v11

    .line 917
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v51, v0, v26

    if-ltz v51, :cond_2a

    cmp-long v51, v11, v26

    if-lez v51, :cond_2a

    cmp-long v51, v11, v0

    if-gez v51, :cond_29

    goto :goto_18

    .line 925
    :cond_29
    invoke-virtual {v10, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setStart(J)V

    .line 926
    invoke-virtual {v10, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setmPriSegmentStart(J)V

    .line 927
    invoke-virtual {v10, v11, v12}, Lcom/netease/download/downloader/DownloadParams;->setLast(J)V

    sub-long v51, v11, v0

    goto :goto_1a

    :cond_2a
    :goto_18
    const-string v0, "DownloadProxy [parseParam] \u53c2\u6570\u9519\u8bef\uff0cfirst last \u6570\u503c\u4e0d\u6b63\u786e"

    .line 921
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_2b
    :goto_19
    const-string v0, "DownloadProxy [parseParam] \u53c2\u6570\u9519\u8bef\uff0cfirst last \u4e3a\u7a7a\uff0c\u6216\u8005 \u4e0d\u662f\u6570\u5b57\u5f62\u5f0f\uff0c\u76f4\u63a5\u8fd4\u56de"

    .line 912
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_2c
    move-object/from16 v53, v0

    move-object/from16 v64, v11

    move-object/from16 v63, v12

    :goto_1a
    move-wide/from16 v0, v51

    .line 937
    invoke-virtual {v10, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSize(J)V

    .line 938
    invoke-virtual {v10, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setRealFileSize(J)V

    const-wide/16 v11, -0x64

    cmp-long v45, v11, v5

    if-eqz v45, :cond_2d

    cmp-long v45, v0, v5

    if-gez v45, :cond_2e

    :cond_2d
    move-wide v5, v0

    :cond_2e
    cmp-long v45, v11, v8

    if-eqz v45, :cond_2f

    cmp-long v45, v0, v8

    if-lez v45, :cond_30

    :cond_2f
    move-wide v8, v0

    :cond_30
    const-string v11, "woffset"

    .line 948
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_36

    const-string v12, "patch"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    move-object/from16 v12, v28

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 951
    :try_start_d
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 953
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_34

    invoke-static {v14}, Lcom/netease/download/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_31

    goto :goto_1b

    :cond_31
    move-object/from16 v28, v4

    move-wide/from16 v65, v5

    .line 957
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v26

    if-gez v6, :cond_32

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_32
    cmp-long v6, v4, v26

    if-ltz v6, :cond_33

    .line 964
    invoke-virtual {v10, v4, v5}, Lcom/netease/download/downloader/DownloadParams;->setmWoffset(J)V

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v10, v2}, Lcom/netease/download/downloader/DownloadParams;->setmOffsetTempFileName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 968
    invoke-virtual {v10, v2}, Lcom/netease/download/downloader/DownloadParams;->setmWriteToExistFile(Z)V

    .line 971
    :cond_33
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/netease/download/downloader/TaskHandle;->setDownloadMode(Ljava/lang/String;)V

    goto :goto_1c

    .line 954
    :cond_34
    :goto_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProxy [parseParam] woffset Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_35
    move-object/from16 v28, v4

    move-wide/from16 v65, v5

    goto :goto_1c

    :cond_36
    move-wide/from16 v65, v5

    move-object/from16 v12, v28

    move-object/from16 v28, v4

    .line 980
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-long v49, v49, v0

    .line 985
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "patch"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v2, v16

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 987
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_37

    .line 989
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v53

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v54

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v56

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v52, v10

    invoke-virtual/range {v52 .. v58}, Lcom/netease/download/downloader/DownloadParams;->addElement(Ljava/lang/String;JJLjava/lang/String;)V

    move-object/from16 v11, v22

    .line 990
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadProxy [parseParam] preParams11="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v67, v0

    move-object/from16 v64, v4

    move-object/from16 v16, v7

    move-wide/from16 v69, v8

    move-object v0, v10

    move-object/from16 v22, v12

    move-object/from16 v71, v13

    move-wide/from16 v8, v43

    const/4 v12, 0x1

    move-object v4, v2

    move-wide/from16 v1, v24

    goto/16 :goto_1e

    :cond_37
    move-object/from16 v11, v22

    .line 996
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v51

    move-wide/from16 v67, v0

    .line 998
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v0

    move-wide/from16 v69, v8

    .line 1000
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v8

    move-object v6, v12

    move-object v14, v13

    sub-long v12, v8, v0

    .line 1003
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v54

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v56

    move-object/from16 v22, v6

    move-object/from16 v16, v7

    sub-long v6, v54, v56

    move-object/from16 v64, v4

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v71, v14

    const-string v14, "DownloadProxy [parseParam] curStart="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", preLast="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", curParams.getLast()="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", preParams.getStart()="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProxy [parseParam] interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mergeSpaceInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v43

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mergeMaxInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v2

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", t_size="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    cmp-long v0, v6, v26

    if-ltz v0, :cond_38

    cmp-long v0, v12, v26

    if-ltz v0, :cond_38

    cmp-long v0, v12, v8

    if-gtz v0, :cond_38

    cmp-long v0, v6, v1

    if-gtz v0, :cond_38

    sub-long v47, v47, v51

    move-object/from16 v0, p1

    .line 1010
    invoke-virtual {v0, v6, v7}, Lcom/netease/download/downloader/DownloadParams;->setSize(J)V

    .line 1011
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setLast(J)V

    .line 1013
    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getRealFileSize()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getRealFileSize()J

    move-result-wide v24

    add-long v12, v12, v24

    invoke-virtual {v0, v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setRealFileSize(J)V

    .line 1015
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v52

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v53

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v55

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v57}, Lcom/netease/download/downloader/DownloadParams;->addElement(Ljava/lang/String;JJLjava/lang/String;)V

    .line 1016
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1017
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v67, v6

    goto :goto_1e

    :cond_38
    const/4 v12, 0x1

    .line 1021
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v53

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v54

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v56

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v52, v10

    invoke-virtual/range {v52 .. v58}, Lcom/netease/download/downloader/DownloadParams;->addElement(Ljava/lang/String;JJLjava/lang/String;)V

    .line 1022
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v10

    goto :goto_1e

    :cond_39
    move-wide/from16 v67, v0

    move-object/from16 v64, v4

    move-object/from16 v16, v7

    move-wide/from16 v69, v8

    move-object/from16 v71, v13

    move-object/from16 v11, v22

    move-wide/from16 v8, v43

    move-object/from16 v0, p1

    move-object v4, v2

    move-object/from16 v22, v12

    move-wide/from16 v1, v24

    goto :goto_1d

    :cond_3a
    move-wide/from16 v67, v0

    move-object/from16 v64, v4

    move-wide/from16 v69, v8

    move-object/from16 v71, v13

    move-object/from16 v4, v16

    move-object/from16 v11, v22

    move-wide/from16 v1, v24

    move-wide/from16 v8, v43

    move-object/from16 v0, p1

    move-object/from16 v16, v7

    move-object/from16 v22, v12

    :goto_1d
    const/4 v12, 0x1

    .line 1028
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-long v47, v47, v67

    add-int/lit8 v5, v29, 0x1

    move-object/from16 p1, v0

    move-wide/from16 v24, v1

    move v1, v5

    move-wide/from16 v43, v8

    move-object/from16 v51, v10

    move-object/from16 v7, v16

    move-object/from16 v14, v59

    move-object/from16 v0, v60

    move-object/from16 v12, v61

    move/from16 v2, v62

    move-object/from16 v29, v63

    move-wide/from16 v5, v65

    move-wide/from16 v8, v69

    move-object/from16 v13, v71

    move-object/from16 v16, v4

    move-object/from16 v4, v28

    move-object/from16 v28, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v64

    goto/16 :goto_16

    .line 861
    :cond_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_3c
    move-object/from16 v60, v0

    move/from16 v62, v2

    move-object/from16 v61, v12

    move-object/from16 v59, v14

    move-object/from16 v4, v16

    move-object/from16 v11, v22

    move-wide/from16 v1, v24

    move-wide/from16 v13, v43

    move-object/from16 v16, v7

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadProxy [parseParam] curAllSize="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v24, v5

    move-wide/from16 v5, v47

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", preAllSize="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v49

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v13, v26

    if-ltz v0, :cond_3d

    cmp-long v0, v1, v26

    if-lez v0, :cond_3d

    cmp-long v0, v26, v10

    if-eqz v0, :cond_3d

    move-object/from16 v1, v16

    .line 1036
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sub-long v0, v5, v10

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ORBIT] Merge mergespace="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v37

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mergemax="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v36

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " mergerate="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    long-to-float v1, v10

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/download/downloader/TaskHandle;->setMergeRate(F)V

    goto :goto_1f

    :cond_3d
    move-object/from16 v12, v36

    move-object/from16 v7, v37

    .line 1042
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/download/downloader/TaskHandle;->mMergeRate:F

    .line 1044
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProxy [parseParam] maxBytes * threadnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v42

    int-to-long v13, v1

    mul-long v13, v13, v8

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v5

    move-wide/from16 v5, v31

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v33, :cond_3e

    cmp-long v0, v26, v8

    if-eqz v0, :cond_3e

    cmp-long v0, v13, v5

    if-lez v0, :cond_3e

    const-string v0, "DownloadProxy [parseParam] \u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\uff0c\u53ef\u80fd\u51fa\u73b0\u5185\u5b58\u6ea2\u51fa"

    .line 1046
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1051
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ORBIT] Params projectid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wifiOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v46

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", logOpen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v62

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oversea="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needrefresh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notusecdn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority_task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", threadnum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", testlog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buffercount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mergemax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mergespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autofree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mergemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callback_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProxy [parseParam] \u6240\u6709\u53c2\u6570\u7ed3\u679c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/netease/download/downloader/TaskHandle;->setTaskAllSizes(J)V

    .line 1058
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setTaskMergeAllSizes(J)V

    .line 1059
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {v10, v11}, Lcom/netease/download/listener/DownloadListenerProxy;->setmTotalSize(J)V

    .line 1060
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {v1, v2}, Lcom/netease/download/listener/DownloadListenerProxy;->setmMergeTotalSize(J)V

    .line 1062
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isCheckfs()Z

    move-result v0

    move-object/from16 v4, p0

    if-eqz v0, :cond_3f

    move-object/from16 v0, v51

    .line 1063
    invoke-direct {v4, v0, v1, v2}, Lcom/netease/download/downloader/DownloadProxy;->isFreeSpaceEnough(Lcom/netease/download/downloader/DownloadParams;J)Z

    move-result v5

    .line 1064
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadProxy [parseParam] \u6240\u6709isFreeSpaceEnough\u7ed3\u679c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_3f

    const-string v1, "DownloadProxy [parseParam] \u89e3\u6790\u53c2\u6570\u65f6\uff0c\u53d1\u73b0\u7a7a\u95f4\u4e0d\u8db3\uff0c\u7ec8\u6b62\u4e0b\u8f7d"

    .line 1067
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 1069
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/storage/StorageUtil;->getFreeSpaceSize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/downloader/TaskHandle;->setFreeSpace(J)V

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1074
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadProxy [parseParam] \u6240\u6709\u6587\u4ef6\u603b\u5927\u5c0f="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ORBIT] Downfile Count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v60 .. v60}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Bytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " MinBytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v24

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " MaxBytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AvgBytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v60 .. v60}, Lorg/json/JSONArray;->length()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadProxy [parseParam] \u6240\u6709\u6587\u4ef6\u603b\u5927\u5c0f result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static/range {v22 .. v22}, Lcom/netease/download/util/Util;->getDownloadedSize(Ljava/util/List;)J

    move-result-wide v0

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadProxy [parseParam] \u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u603b\u5927\u5c0f\u4e3a="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :cond_40
    :goto_20
    move-object/from16 v4, p0

    const-string v0, "DownloadProxy [parseParam] fileArray is error"

    .line 796
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v22

    :catch_d
    move-exception v0

    move-object/from16 v4, p0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProxy [parseParam] NumberFormatException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DownloadProxy"

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 71
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    if-nez v1, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Lcom/netease/download/network/ConnectionChangeReceiver;

    invoke-direct {v1}, Lcom/netease/download/network/ConnectionChangeReceiver;-><init>()V

    sput-object v1, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    .line 76
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668 Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 488
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/listener/DownloadListenerProxy;->clear()V

    .line 489
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportProxy;->clean()V

    .line 490
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->clean()V

    .line 491
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/CdnIpController;->clean()V

    .line 492
    invoke-static {}, Lcom/netease/download/check/CheckTime;->clean()V

    .line 493
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->clean()V

    .line 494
    invoke-static {}, Lcom/netease/download/woffset/WoffsetProxy;->getInstances()Lcom/netease/download/woffset/WoffsetProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/woffset/WoffsetProxy;->reset()V

    return-void
.end method

.method public static declared-synchronized stopAll()V
    .locals 3

    const-class v0, Lcom/netease/download/downloader/DownloadProxy;

    monitor-enter v0

    :try_start_0
    const-string v1, "DownloadProxy"

    const-string v2, "DownloadProxy [stopAll] start"

    .line 442
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 443
    sput-boolean v1, Lcom/netease/download/downloader/DownloadProxy;->sOnceStop:Z

    .line 445
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static unregisterReceiver()V
    .locals 4

    const-string v0, "DownloadProxy"

    const-string v1, "\u6ce8\u9500\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 84
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    if-eqz v2, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 90
    sput-object v1, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ce8\u9500\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668 Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public asyncDownloadArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V
    .locals 30

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "DownloadProxy"

    const-string v4, "DownloadParams [createParamsArray] start"

    .line 258
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    const-string v5, ""

    const-string v17, ""

    if-nez v1, :cond_0

    const-string v0, "DownloadProxy [asyncDownloadArray] paramsJson is null"

    .line 265
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_START__"

    const-string v13, "__DOWNLOAD_START__"

    const-string v16, ""

    move-object/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v18

    const/16 v19, 0xe

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    const-string v24, "__DOWNLOAD_PARAM_ERROR__"

    const-string v25, "__DOWNLOAD_PARAM_ERROR__"

    const-string v27, "0"

    const-string v28, "__DOWNLOAD_PARAM_ERROR__"

    const-string v29, ""

    invoke-virtual/range {v18 .. v29}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 269
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_END__"

    const-string v13, "__DOWNLOAD_END__"

    const-string v16, ""

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "downloadid"

    .line 273
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 274
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 277
    :cond_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_START__"

    const-string v13, "__DOWNLOAD_START__"

    const-string v16, ""

    move-object/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v0, "DownloadProxy [asyncDownloadArray] pContext is null"

    .line 281
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v18

    const/16 v19, 0xe

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    const-string v24, "__DOWNLOAD_PARAM_ERROR__"

    const-string v25, "__DOWNLOAD_PARAM_ERROR__"

    const-string v27, "0"

    const-string v28, "__DOWNLOAD_PARAM_ERROR__"

    const-string v29, ""

    invoke-virtual/range {v18 .. v29}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 284
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_END__"

    const-string v13, "__DOWNLOAD_END__"

    const-string v16, ""

    move-object/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    const-string v0, "DownloadProxy [asyncDownloadArray] pListener is null"

    .line 289
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v18

    const/16 v19, 0xe

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    const-string v24, "__DOWNLOAD_PARAM_ERROR__"

    const-string v25, "__DOWNLOAD_PARAM_ERROR__"

    const-string v27, "0"

    const-string v28, "__DOWNLOAD_PARAM_ERROR__"

    const-string v29, ""

    invoke-virtual/range {v18 .. v29}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 292
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_END__"

    const-string v13, "__DOWNLOAD_END__"

    const-string v16, ""

    move-object/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/netease/download/network/NetworkStatus;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 297
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/16 v7, 0xc

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_NETWORK_LOST__"

    const-string v13, "__DOWNLOAD_NETWORK_LOST__"

    const-string v16, ""

    move-object/from16 v15, v17

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string v12, "__DOWNLOAD_END__"

    const-string v13, "__DOWNLOAD_END__"

    const-string v16, ""

    invoke-virtual/range {v6 .. v16}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadProxy [asyncDownloadArray] no network connected"

    .line 299
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/netease/download/downloader/DownloadProxy$1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1, v0, v2}, Lcom/netease/download/downloader/DownloadProxy$1;-><init>(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 408
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispachMethod(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "methodId"

    const-string v1, "DownloadProxy"

    const-string v2, "DownloadProxy [dispachMethod] start"

    .line 223
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 227
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadProxy [downloadFunc] methodId22 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "download"

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DownloadProxy [downloadFunc] download"

    .line 236
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    invoke-virtual {p0, v0, p1, v2}, Lcom/netease/download/downloader/DownloadProxy;->asyncDownloadArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "DownloadProxy [downloadFunc] methodId is error"

    .line 241
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "DownloadProxy [downloadFunc] params has not methodId"

    .line 245
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadProxy [downloadFunc] Exception ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public downloadFunc(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "DownloadProxy"

    const-string v4, "Downloader"

    const-string v5, "DownloadProxy [downloadFunc] downloadFunc"

    .line 118
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xe

    const-string v6, ""

    if-nez p1, :cond_0

    const-string v0, "DownloadProxy [downloadFunc] pContext is null"

    .line 121
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v13, "__DOWNLOAD_PARAM_ERROR__"

    const-string v14, "__DOWNLOAD_PARAM_ERROR__"

    const-string v16, "__DOWNLOAD_PARAM_ERROR__"

    const-string v17, ""

    invoke-virtual/range {v7 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "DownloadProxy [downloadFunc] pListener is null"

    .line 128
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v13, "__DOWNLOAD_PARAM_ERROR__"

    const-string v14, "__DOWNLOAD_PARAM_ERROR__"

    const-string v16, "__DOWNLOAD_PARAM_ERROR__"

    const-string v17, ""

    invoke-virtual/range {v7 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "DownloadProxy [downloadFunc] paramsJson is null"

    .line 135
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v13, "__DOWNLOAD_PARAM_ERROR__"

    const-string v14, "__DOWNLOAD_PARAM_ERROR__"

    const-string v16, "__DOWNLOAD_PARAM_ERROR__"

    const-string v17, ""

    invoke-virtual/range {v7 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    return-void

    .line 141
    :cond_2
    sget-object v4, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-nez v4, :cond_3

    .line 142
    sput-object p1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    .line 145
    :cond_3
    sget-object v4, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/download/util/Util;->getUniqueData(Landroid/content/Context;)V

    .line 147
    iget-object v4, v1, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    if-nez v4, :cond_4

    .line 148
    iput-object v2, v1, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 151
    :cond_4
    invoke-static {}, Lcom/netease/download/util/LogUtil;->containLogFile()Z

    move-result v2

    sput-boolean v2, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    const-string v2, "methodId"

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 156
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadProxy [downloadFunc] methodId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "downloadqueueclear"

    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "downloadid"

    if-eqz v4, :cond_7

    :try_start_1
    const-string v0, "DownloadProxy [downloadFunc] TaskManager clear"

    .line 160
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->pause()V

    .line 163
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getParamsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 169
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-string v13, "__DOWNLOAD_QUEUE_CLEAR__"

    const-string v14, "__DOWNLOAD_QUEUE_CLEAR__"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v18, ""

    move-object/from16 v16, v17

    invoke-virtual/range {v7 .. v18}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_6
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->clear()V

    goto/16 :goto_2

    :cond_7
    const-string v4, "downloadcancel"

    .line 176
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v0, "DownloadProxy [downloadFunc] downloadcancel"

    .line 177
    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 180
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 183
    :cond_8
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    goto/16 :goto_2

    :cond_9
    const-string v4, "downloadversion"

    .line 185
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 186
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-string v13, "2.8.2"

    const-string v14, ""

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v16, "0"

    const-string v17, ""

    const-string v18, ""

    invoke-virtual/range {v7 .. v18}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsgWithOtherSatus(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v4, "cleancache"

    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "DownloadProxy [downloadFunc] cleancache"

    .line 189
    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 193
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x0

    .line 197
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 201
    sget-object v5, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/netease/download/downloader/DownloadProxy;->clearDownloadId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 209
    :cond_c
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v2

    iget-object v4, v1, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    invoke-virtual {v2, v4}, Lcom/netease/download/listener/DownloadListenerProxy;->init(Lcom/netease/download/listener/DownloadListener;)V

    const-string v2, "DownloadProxy [downloadFunc] put"

    .line 211
    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->put(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProxy [downloadFunc] Exception ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_2
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 499
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
