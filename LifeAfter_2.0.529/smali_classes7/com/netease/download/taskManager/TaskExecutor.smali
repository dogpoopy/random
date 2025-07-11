.class public Lcom/netease/download/taskManager/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskExecutor"

.field private static sTaskExecutor:Lcom/netease/download/taskManager/TaskExecutor;


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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 18
    iput-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/netease/download/taskManager/TaskExecutor;
    .locals 2

    .line 27
    sget-object v0, Lcom/netease/download/taskManager/TaskExecutor;->sTaskExecutor:Lcom/netease/download/taskManager/TaskExecutor;

    if-nez v0, :cond_0

    const-string v0, "TaskExecutor"

    const-string v1, "TaskExecutor [getFixedThreadPool] new TaskExecutor()"

    .line 28
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/netease/download/taskManager/TaskExecutor;

    invoke-direct {v0}, Lcom/netease/download/taskManager/TaskExecutor;-><init>()V

    sput-object v0, Lcom/netease/download/taskManager/TaskExecutor;->sTaskExecutor:Lcom/netease/download/taskManager/TaskExecutor;

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/download/taskManager/TaskExecutor;->sTaskExecutor:Lcom/netease/download/taskManager/TaskExecutor;

    return-object v0
.end method


# virtual methods
.method public closeFixedThreadPool()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public getFixedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "TaskExecutor"

    const-string v1, "TaskExecutor [getFixedThreadPool] newFixedThreadPool"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 39
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "TaskExecutor"

    const-string v1, "TaskExecutor [getFixedThreadPool] newSingleThreadExecutor"

    .line 47
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/netease/download/taskManager/TaskExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
