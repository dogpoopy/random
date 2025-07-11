.class public abstract Lcom/netease/ntunisdk/piclib/thread/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private final CANCELLED:I

.field private final COMPLETING:I

.field private final EXCEPTIONAL:I

.field private final INTERRUPTED:I

.field private final NEW:I

.field private final RUNNING:I

.field private volatile runner:Ljava/lang/Thread;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->NEW:I

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->RUNNING:I

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->EXCEPTIONAL:I

    const/4 v1, 0x3

    .line 15
    iput v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->COMPLETING:I

    const/4 v1, 0x4

    .line 16
    iput v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->CANCELLED:I

    const/4 v1, 0x5

    .line 17
    iput v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->INTERRUPTED:I

    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 60
    monitor-exit v0

    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->runner:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->runner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 66
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$H-VWkQ-MaCCrUC5zD5djQbjKLNs;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$H-VWkQ-MaCCrUC5zD5djQbjKLNs;-><init>(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public isCanceled()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRunning()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$cancel$1$Task()V
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->removePriorityBlockingQueue(Ljava/lang/Runnable;)V

    .line 68
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/thread/Task;->onCancel()V

    .line 69
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/thread/Task;->onDone()V

    return-void
.end method

.method public synthetic lambda$run$0$Task(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/thread/Task;->onSuccess(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/thread/Task;->onDone()V

    return-void
.end method

.method public abstract onCancel()V
.end method

.method protected onDone()V
    .locals 1

    .line 86
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->TASK_POOL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    const-string v0, "Task"

    .line 29
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->runner:Ljava/lang/Thread;

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/thread/Task;->doInBackground()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;

    invoke-direct {v4, p0, v1}, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$Task$AvxAq5Xs2mOhr3SMBbZslpxDRDE;-><init>(Lcom/netease/ntunisdk/piclib/thread/Task;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 42
    sget-boolean v2, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run throwable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 47
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->getUiThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/piclib/thread/Task$1;

    invoke-direct {v2, p0, v1}, Lcom/netease/ntunisdk/piclib/thread/Task$1;-><init>(Lcom/netease/ntunisdk/piclib/thread/Task;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/thread/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :goto_0
    return-void
.end method
