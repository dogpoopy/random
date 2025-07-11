.class public Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskExecutor"

.field private static sTaskExecutor:Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;


# instance fields
.field private mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 14
    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;
    .locals 2

    .line 23
    sget-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->sTaskExecutor:Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "TaskExecutor [getFixedThreadPool] new TaskExecutor()"

    .line 24
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->sTaskExecutor:Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->sTaskExecutor:Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;

    return-object v0
.end method


# virtual methods
.method public closeFixedThreadPool()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public getFixedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "TaskExecutor [getFixedThreadPool] getFixedThreadPool"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 35
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "TaskExecutor [getFixedThreadPool] getSingleThreadExecutor"

    .line 43
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-string v0, "trace"

    const-string v1, "TaskExecutor [getFixedThreadPool] newSingleThreadExecutor"

    .line 51
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
