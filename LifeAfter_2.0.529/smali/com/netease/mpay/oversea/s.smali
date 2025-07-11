.class public abstract Lcom/netease/mpay/oversea/s;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/s$e;,
        Lcom/netease/mpay/oversea/s$i;,
        Lcom/netease/mpay/oversea/s$f;,
        Lcom/netease/mpay/oversea/s$g;,
        Lcom/netease/mpay/oversea/s$h;
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
.field public static final g:Ljava/util/concurrent/Executor;

.field public static final h:Ljava/util/concurrent/Executor;

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:Ljava/util/concurrent/ThreadFactory;

.field private static final m:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile n:Ljava/util/concurrent/Executor;

.field private static o:Lcom/netease/mpay/oversea/s$f;


# instance fields
.field private final a:Lcom/netease/mpay/oversea/s$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/s$i<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Landroid/os/Handler;

.field private volatile f:Lcom/netease/mpay/oversea/s$h;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/s$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/s$g;-><init>(Lcom/netease/mpay/oversea/s$a;)V

    sput-object v0, Lcom/netease/mpay/oversea/s;->h:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Lcom/netease/mpay/oversea/s;->i:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x4

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/netease/mpay/oversea/s;->j:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 8
    sput v6, Lcom/netease/mpay/oversea/s;->k:I

    .line 10
    new-instance v11, Lcom/netease/mpay/oversea/s$a;

    invoke-direct {v11}, Lcom/netease/mpay/oversea/s$a;-><init>()V

    sput-object v11, Lcom/netease/mpay/oversea/s;->l:Ljava/util/concurrent/ThreadFactory;

    .line 17
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x100

    invoke-direct {v10, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v10, Lcom/netease/mpay/oversea/s;->m:Ljava/util/concurrent/BlockingQueue;

    .line 21
    sput-object v0, Lcom/netease/mpay/oversea/s;->n:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 29
    sput-object v0, Lcom/netease/mpay/oversea/s;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/s;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/s$h;->a:Lcom/netease/mpay/oversea/s$h;

    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->f:Lcom/netease/mpay/oversea/s$h;

    if-eqz p1, :cond_1

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/s;->b()Landroid/os/Handler;

    move-result-object v0

    .line 34
    :goto_1
    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->e:Landroid/os/Handler;

    .line 36
    new-instance p1, Lcom/netease/mpay/oversea/s$b;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/s$b;-><init>(Lcom/netease/mpay/oversea/s;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/s;->a:Lcom/netease/mpay/oversea/s$i;

    .line 55
    new-instance v0, Lcom/netease/mpay/oversea/s$c;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/s$c;-><init>(Lcom/netease/mpay/oversea/s;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s;->c(Ljava/lang/Object;)V

    .line 32
    :goto_0
    sget-object p1, Lcom/netease/mpay/oversea/s$h;->c:Lcom/netease/mpay/oversea/s$h;

    iput-object p1, p0, Lcom/netease/mpay/oversea/s;->f:Lcom/netease/mpay/oversea/s$h;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/s;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b()Landroid/os/Handler;
    .locals 3

    .line 3
    const-class v0, Lcom/netease/mpay/oversea/s;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/s;->o:Lcom/netease/mpay/oversea/s$f;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/s$f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/s$f;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/netease/mpay/oversea/s;->o:Lcom/netease/mpay/oversea/s$f;

    .line 7
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/s;->o:Lcom/netease/mpay/oversea/s$f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/netease/mpay/oversea/s;->n:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/s;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/s$e;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/netease/mpay/oversea/s$e;-><init>(Lcom/netease/mpay/oversea/s;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/netease/mpay/oversea/s<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/s;->f:Lcom/netease/mpay/oversea/s$h;

    sget-object v1, Lcom/netease/mpay/oversea/s$h;->a:Lcom/netease/mpay/oversea/s$h;

    if-eq v0, v1, :cond_2

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/s$d;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/oversea/s;->f:Lcom/netease/mpay/oversea/s$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/s$h;->b:Lcom/netease/mpay/oversea/s$h;

    iput-object v0, p0, Lcom/netease/mpay/oversea/s;->f:Lcom/netease/mpay/oversea/s$h;

    .line 23
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/s;->e()V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/s;->a:Lcom/netease/mpay/oversea/s$i;

    iput-object p2, v0, Lcom/netease/mpay/oversea/s$i;->a:[Ljava/lang/Object;

    .line 26
    iget-object p2, p0, Lcom/netease/mpay/oversea/s;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/netease/mpay/oversea/s<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/netease/mpay/oversea/s;->n:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/s;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/s;->d()V

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs c([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
