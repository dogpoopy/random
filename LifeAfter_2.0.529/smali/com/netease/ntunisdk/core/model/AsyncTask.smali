.class public abstract Lcom/netease/ntunisdk/core/model/AsyncTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/model/AsyncTask$a;,
        Lcom/netease/ntunisdk/core/model/AsyncTask$d;,
        Lcom/netease/ntunisdk/core/model/AsyncTask$b;,
        Lcom/netease/ntunisdk/core/model/AsyncTask$c;,
        Lcom/netease/ntunisdk/core/model/AsyncTask$Status;
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
.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/concurrent/Executor;

.field private static g:Lcom/netease/ntunisdk/core/model/AsyncTask$b;


# instance fields
.field private final h:Lcom/netease/ntunisdk/core/model/AsyncTask$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/core/model/AsyncTask$d<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Landroid/os/Handler;

.field private volatile m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/netease/ntunisdk/core/model/AsyncTask$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/core/model/AsyncTask$c;-><init>(B)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->a:I

    sget v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->b:I

    sget v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->c:I

    new-instance v0, Lcom/netease/ntunisdk/core/model/AsyncTask$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/model/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->d:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/netease/ntunisdk/core/model/AsyncTask;->b:I

    sget v4, Lcom/netease/ntunisdk/core/model/AsyncTask;->c:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/netease/ntunisdk/core/model/AsyncTask;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/netease/ntunisdk/core/model/AsyncTask;->d:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/model/AsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask$Status;->PENDING:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/core/model/AsyncTask;->a()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->l:Landroid/os/Handler;

    new-instance p1, Lcom/netease/ntunisdk/core/model/AsyncTask$2;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/core/model/AsyncTask$2;-><init>(Lcom/netease/ntunisdk/core/model/AsyncTask;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->h:Lcom/netease/ntunisdk/core/model/AsyncTask$d;

    new-instance p1, Lcom/netease/ntunisdk/core/model/AsyncTask$3;

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->h:Lcom/netease/ntunisdk/core/model/AsyncTask$d;

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/core/model/AsyncTask$3;-><init>(Lcom/netease/ntunisdk/core/model/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->i:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/core/model/AsyncTask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/model/AsyncTask;->g:Lcom/netease/ntunisdk/core/model/AsyncTask$b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/model/AsyncTask$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/core/model/AsyncTask$b;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/netease/ntunisdk/core/model/AsyncTask;->g:Lcom/netease/ntunisdk/core/model/AsyncTask$b;

    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/core/model/AsyncTask;->g:Lcom/netease/ntunisdk/core/model/AsyncTask$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/model/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->l:Landroid/os/Handler;

    new-instance v1, Lcom/netease/ntunisdk/core/model/AsyncTask$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/netease/ntunisdk/core/model/AsyncTask$a;-><init>(Lcom/netease/ntunisdk/core/model/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/model/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/model/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/model/AsyncTask;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/netease/ntunisdk/core/model/AsyncTask;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/netease/ntunisdk/core/model/AsyncTask$Status;->FINISHED:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->i:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/netease/ntunisdk/core/model/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/netease/ntunisdk/core/model/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/ntunisdk/core/model/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/ntunisdk/core/model/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/netease/ntunisdk/core/model/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    sget-object v1, Lcom/netease/ntunisdk/core/model/AsyncTask$Status;->PENDING:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask$4;->a:[I

    iget-object v1, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/core/model/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/core/model/AsyncTask$Status;->RUNNING:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->h:Lcom/netease/ntunisdk/core/model/AsyncTask$d;

    iput-object p2, v0, Lcom/netease/ntunisdk/core/model/AsyncTask$d;->b:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->i:Ljava/util/concurrent/FutureTask;

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

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->i:Ljava/util/concurrent/FutureTask;

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

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/netease/ntunisdk/core/model/AsyncTask$Status;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->m:Lcom/netease/ntunisdk/core/model/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->onCancelled()V

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

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/model/AsyncTask;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    new-instance v2, Lcom/netease/ntunisdk/core/model/AsyncTask$a;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/core/model/AsyncTask$a;-><init>(Lcom/netease/ntunisdk/core/model/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
