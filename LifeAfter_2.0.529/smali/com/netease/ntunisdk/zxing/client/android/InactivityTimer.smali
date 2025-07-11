.class final Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "UniQR timer"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    .line 37
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->onActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized onActivity()V
    .locals 3

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->cancel()V

    .line 42
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->inactivityTask:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shutdown()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/client/android/InactivityTimer;->cancel()V

    return-void
.end method
