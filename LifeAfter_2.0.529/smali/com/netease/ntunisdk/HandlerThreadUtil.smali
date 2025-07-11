.class public Lcom/netease/ntunisdk/HandlerThreadUtil;
.super Ljava/lang/Object;
.source "HandlerThreadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerThreadUtil"

.field private static mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWorkerThread()Landroid/os/HandlerThread;
    .locals 3

    .line 15
    sget-object v0, Lcom/netease/ntunisdk/HandlerThreadUtil;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/netease/ntunisdk/HandlerThreadUtil;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/HandlerThreadUtil;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HandlerThreadUtil"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/netease/ntunisdk/HandlerThreadUtil;->mThread:Landroid/os/HandlerThread;

    .line 19
    sget-object v1, Lcom/netease/ntunisdk/HandlerThreadUtil;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/HandlerThreadUtil;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method
