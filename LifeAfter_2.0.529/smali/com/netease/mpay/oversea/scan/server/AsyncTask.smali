.class public abstract Lcom/netease/mpay/oversea/scan/server/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;,
        Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;,
        Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;,
        Lcom/netease/mpay/oversea/scan/server/AsyncTask$SerialExecutor;,
        Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private volatile mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 35
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$SerialExecutor;-><init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask$1;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->CPU_COUNT:I

    .line 41
    sget v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->CORE_POOL_SIZE:I

    .line 42
    sget v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 44
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$1;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->CORE_POOL_SIZE:I

    sget v4, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->MAXIMUM_POOL_SIZE:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 63
    sput-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->PENDING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 97
    :goto_1
    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$2;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$2;-><init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mWorker:Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;

    .line 118
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mWorker:Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$3;-><init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$200(Lcom/netease/mpay/oversea/scan/server/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mpay/oversea/scan/server/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/mpay/oversea/scan/server/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 160
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 464
    :goto_0
    sget-object p1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->FINISHED:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 136
    const-class v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sHandler:Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sHandler:Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;

    .line 140
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sHandler:Lcom/netease/mpay/oversea/scan/server/AsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;-><init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 148
    sput-object p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/netease/mpay/oversea/scan/server/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/netease/mpay/oversea/scan/server/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/mpay/oversea/scan/server/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/mpay/oversea/scan/server/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/netease/mpay/oversea/scan/server/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    sget-object v1, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->PENDING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 417
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$4;->$SwitchMap$com$netease$mpay$oversea$scan$server$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_2
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;->RUNNING:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    .line 430
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onPreExecute()V

    .line 432
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mWorker:Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/netease/mpay/oversea/scan/server/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 433
    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mStatus:Lcom/netease/mpay/oversea/scan/server/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/scan/server/AsyncTask$AsyncTaskResult;-><init>(Lcom/netease/mpay/oversea/scan/server/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
