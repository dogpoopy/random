.class public Lcom/netease/cc/videoedit/ffmpeg/handler/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeSingleThreadPool(Ljava/lang/Runnable;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 10
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0
.end method
