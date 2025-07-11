.class public Lcom/netease/pharos/threadManager/TimerManager;
.super Ljava/lang/Object;
.source "TimerManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimerManager"

.field private static sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/threadManager/TimerManager;
    .locals 3

    .line 20
    sget-object v0, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/netease/pharos/threadManager/TimerManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    if-nez v1, :cond_0

    const-string v1, "TimerManager"

    const-string v2, "TimerManager [getInstance] new TimerManager()"

    .line 23
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/netease/pharos/threadManager/TimerManager;

    invoke-direct {v1}, Lcom/netease/pharos/threadManager/TimerManager;-><init>()V

    sput-object v1, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/threadManager/TimerManager;->sTimerManager:Lcom/netease/pharos/threadManager/TimerManager;

    return-object v0
.end method


# virtual methods
.method public getTimer()Ljava/util/Timer;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    const-string v0, "TimerManager"

    const-string v1, "ThreadPoolManager [getTimer] new Timer"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/threadManager/TimerManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method
