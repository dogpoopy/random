.class public Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;
.super Ljava/lang/Object;
.source "ClientLogThreadPool.java"


# static fields
.field private static volatile instance:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;
    .locals 2

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->instance:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->instance:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    invoke-direct {v1}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->instance:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->instance:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    return-object v0
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public init()V
    .locals 10

    .line 34
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x32

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide/16 v3, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
