.class public Lcom/netease/pharos/netlag/NetworkCheckProxy;
.super Ljava/lang/Object;
.source "NetworkCheckProxy.java"


# static fields
.field private static sInstance:Lcom/netease/pharos/netlag/NetworkCheckProxy;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

.field private mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

.field private final mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

.field private final mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimer:Ljava/util/Timer;

.field private mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Lcom/netease/pharos/netlag/NetworkCheckProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy$1;-><init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Lcom/netease/pharos/OnNetLagCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/Timer;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/pharos/netlag/NetworkCheckProxy;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->stopExecutorService()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/pharos/netlag/NetworkCheckProxy;Lcom/netease/pharos/netlag/NetworkResult;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->uploadResult(Lcom/netease/pharos/netlag/NetworkResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Lcom/netease/pharos/netlag/NetworkCheck;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;
    .locals 2

    .line 53
    sget-object v0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->sInstance:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/netease/pharos/netlag/NetworkCheckProxy;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/netease/pharos/netlag/NetworkCheckProxy;->sInstance:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-direct {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/netlag/NetworkCheckProxy;->sInstance:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->sInstance:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    return-object v0
.end method

.method private declared-synchronized stopExecutorService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "NetLag"

    const-string v1, "stopExecutorService"

    .line 182
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/netease/pharos/netlag/LogUploadTask;->finish()V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uploadResult(Lcom/netease/pharos/netlag/NetworkResult;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-direct {v0}, Lcom/netease/pharos/netlag/LogUploadTask;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/LogUploadTask;->start()V

    .line 162
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mUploadTask:Lcom/netease/pharos/netlag/LogUploadTask;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getResult()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/pharos/netlag/LogUploadTask;->add(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/netease/pharos/OnNetLagCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "NetLag cancel udp speed "

    .line 166
    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheck;->cancel()V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 172
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    .line 174
    :cond_1
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    .line 175
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkResult;->cancel()Lcom/netease/pharos/netlag/NetworkResult;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/pharos/OnNetLagCallback;->onCancel(Lorg/json/JSONObject;)V

    .line 177
    invoke-direct {p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->stopExecutorService()V

    .line 178
    invoke-direct {p0, p1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->uploadResult(Lcom/netease/pharos/netlag/NetworkResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    return-object v0
.end method

.method public isOversea()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized start(Lorg/json/JSONObject;Lcom/netease/pharos/OnNetLagCallback;)V
    .locals 6

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetLag start udp speed :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const-string p2, "getNetworkType"

    .line 73
    invoke-static {p2}, Lcom/netease/pharos/util/Util;->getSystemParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/pharos/network/NetworkStatus;->setNetwork(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetLag is Running :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/netease/pharos/netlag/NetworkResult;->isProcessing(Lorg/json/JSONObject;)Lcom/netease/pharos/netlag/NetworkResult;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getResult()Lorg/json/JSONObject;

    move-result-object p2

    .line 79
    invoke-direct {p0, p1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->uploadResult(Lcom/netease/pharos/netlag/NetworkResult;)V

    .line 80
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

    invoke-interface {p1, p2}, Lcom/netease/pharos/OnNetLagCallback;->onFinish(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    new-instance p2, Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-direct {p2}, Lcom/netease/pharos/netlag/NetworkCheck;-><init>()V

    iput-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance v1, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;

    invoke-direct {v1, p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;-><init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V

    invoke-virtual {p2, p1, v1}, Lcom/netease/pharos/netlag/NetworkCheck;->init(Lorg/json/JSONObject;Lcom/netease/pharos/netlag/NetworkCheckListener;)V

    .line 103
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheck;->getNetworkCheckConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    .line 104
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryCount()I

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {p2}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 119
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    .line 120
    new-instance v1, Lcom/netease/pharos/netlag/NetworkCheckProxy$3;

    invoke-direct {v1, p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy$3;-><init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V

    const-wide/16 v2, 0x0

    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    .line 125
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    .line 120
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryCount()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 127
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    .line 129
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheck;->exec()V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTaskRepeatCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {p2}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 132
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mTimer:Ljava/util/Timer;

    .line 133
    new-instance v1, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;

    invoke-direct {v1, p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;-><init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V

    const-wide/16 v2, 0x0

    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    .line 148
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getRetryInterval()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    .line 133
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheck:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkCheck;->getNetworkCheckConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    .line 109
    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkResult;->fail(I)Lcom/netease/pharos/netlag/NetworkResult;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->uploadResult(Lcom/netease/pharos/netlag/NetworkResult;)V

    .line 111
    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getResult()Lorg/json/JSONObject;

    move-result-object p1

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetLag result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy;->mPharosListener:Lcom/netease/pharos/OnNetLagCallback;

    invoke-interface {p2, p1}, Lcom/netease/pharos/OnNetLagCallback;->onFinish(Lorg/json/JSONObject;)V

    .line 114
    invoke-direct {p0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->stopExecutorService()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
