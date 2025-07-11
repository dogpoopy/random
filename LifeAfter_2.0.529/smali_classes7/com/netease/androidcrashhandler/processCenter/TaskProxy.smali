.class public Lcom/netease/androidcrashhandler/processCenter/TaskProxy;
.super Ljava/lang/Object;
.source "TaskProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherInfoProxy"

.field private static mTaskProxy:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;


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

.field private mStatus:I

.field private mTaskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mAl:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskProxy [TaskProxy] queue size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskProxy:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public put(Ljava/util/concurrent/Callable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "TaskProxy [put]"

    .line 42
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskProxy [put] call size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mTaskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "TaskProxy [put] mTaskQueue is null"

    .line 50
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskProxy [put] Throwable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskProxy [start] mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "TaskProxy [start] \u7ebf\u7a0b\u6c60\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 79
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iput v2, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    .line 85
    new-instance v0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;-><init>(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)V

    const-string v1, "appdump_http"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x5

    .line 120
    iput v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->mStatus:I

    return-void
.end method
