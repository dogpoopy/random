.class public final synthetic Lcom/google/common/util/concurrent/ListeningExecutorService$-CC;
.super Ljava/lang/Object;
.source "ListeningExecutorService.java"


# direct methods
.method public static synthetic $default$submit(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 36
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$submit(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p1    # Ljava/lang/Runnable;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param

    .line 36
    invoke-interface {p0, p1, p2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$submit(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "_this"    # Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 36
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
