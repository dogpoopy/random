.class public Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static final PRIORITY_THREAD_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TaskExecutor"

.field public static final TASK_POOL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netease/ntunisdk/piclib/thread/Task<",
            "*>;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->TASK_POOL_MAP:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    .line 56
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->TASK_POOL_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/thread/Task;

    .line 57
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/thread/Task;->cancel()V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 60
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    return-void
.end method

.method public static declared-synchronized clearPriorityBlockingQueue()V
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/ntunisdk/piclib/thread/Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->TASK_POOL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "TaskExecutor"

    const-string v0, "Task can only be executed once."

    .line 47
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->getExecutorPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 51
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getExecutorPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 22
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->getPriorityThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorityThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 26
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    :cond_0
    const-class v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_3
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized removePriorityBlockingQueue(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-class v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->priorityBlockingQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
