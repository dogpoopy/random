.class public Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;
.super Ljava/lang/Object;
.source "UiThreadExecutor.java"


# static fields
.field private static executor:Ljava/util/concurrent/Executor;

.field private static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 14
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 15
    const-class v0, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;->INSTANCE:Lcom/netease/ntunisdk/piclib/thread/-$$Lambda$UiThreadExecutor$ql4bVTe4hqfZ_0dEYrMTVlcdai0;

    sput-object v1, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 17
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static synthetic lambda$ql4bVTe4hqfZ_0dEYrMTVlcdai0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 24
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/thread/UiThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
